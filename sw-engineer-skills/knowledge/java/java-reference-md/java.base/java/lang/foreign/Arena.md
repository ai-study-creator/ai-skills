Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface Arena

All Superinterfaces:
:   `AutoCloseable`, `SegmentAllocatorPREVIEW`

---

public interface Arena
extends [SegmentAllocator](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator), [AutoCloseable](../AutoCloseable.md "interface in java.lang")

`Arena` is a preview API of the Java platform.

Programs can only use `Arena` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

An arena controls the lifecycle of native memory segments, providing both flexible allocation and timely deallocation.

An arena has a [scope](MemorySegment.Scope.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope) - the *arena scope*. All the segments allocated
by the arena are associated with the arena scope. As such, the arena determines the temporal bounds
of all the memory segments allocated by it.

Moreover, an arena also determines whether access to memory segments allocated by it should be
[restricted](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) to specific threads.
An arena is a [`SegmentAllocator`](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator) and features several allocation methods that can be used by clients
to obtain native segments.

The simplest arena is the [global arena](#global()). The global arena
features an *unbounded lifetime*. As such, native segments allocated with the global arena are always
accessible and their backing regions of memory are never deallocated. Moreover, memory segments allocated with the
global arena can be [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) from any thread.

Copy![Copy snippet](../../../../copy.svg)

```
 MemorySegment segment = Arena.global().allocate(100, 1);
 ...
 // segment is never deallocated!
```

Alternatively, clients can obtain an [automatic arena](#ofAuto()), that is an arena
which features a *bounded lifetime* that is managed, automatically, by the garbage collector. As such, the regions
of memory backing memory segments allocated with the automatic arena are deallocated at some unspecified time
*after* the automatic arena (and all the segments allocated by it) becomes
[unreachable](../../../java/lang/ref/package.md#reachability), as shown below:

Copy![Copy snippet](../../../../copy.svg)

```
 MemorySegment segment = Arena.ofAuto().allocate(100, 1);
 ...
 segment = null; // the segment region becomes available for deallocation after this point
```

Memory segments allocated with an automatic arena can also be [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) from any thread.

Rather than leaving deallocation in the hands of the Java runtime, clients will often wish to exercise control over
the timing of deallocation for regions of memory that back memory segments. Two kinds of arenas support this,
namely [confined](#ofConfined()) and [shared](#ofShared()) arenas. They both feature
bounded lifetimes that are managed manually. For instance, the lifetime of a confined arena starts when the confined
arena is created, and ends when the confined arena is [closed](#close()). As a result, the regions of memory
backing memory segments allocated with a confined arena are deallocated when the confined arena is closed.
When this happens, all the segments allocated with the confined arena are invalidated, and subsequent access
operations on these segments will fail [`IllegalStateException`](../IllegalStateException.md "class in java.lang"):

Copy![Copy snippet](../../../../copy.svg)

```
 MemorySegment segment = null;
 try (Arena arena = Arena.ofConfined()) {
     segment = arena.allocate(100);
     ...
 } // segment region deallocated here
 segment.get(ValueLayout.JAVA_BYTE, 0); // throws IllegalStateException
```

Memory segments allocated with a [confined arena](#ofConfined()) can only be accessed (and closed) by the
thread that created the arena. If access to a memory segment from multiple threads is required, clients can allocate
segments in a [shared arena](#ofShared()) instead.

The characteristics of the various arenas are summarized in the following table:
> Arenas characteristics
>
> | Kind | Bounded lifetime | Explicitly closeable | Accessible from multiple threads |
> | --- | --- | --- | --- |
> | Global | No | No | Yes |
> | Automatic | Yes | No | Yes |
> | Confined | Yes | Yes | No |
> | Shared | Yes | Yes | Yes |

## Safety and thread-confinement

Arenas provide strong temporal safety guarantees: a memory segment allocated by an arena cannot be accessed
*after* the arena has been closed. The cost of providing this guarantee varies based on the
number of threads that have access to the memory segments allocated by the arena. For instance, if an arena
is always created and closed by one thread, and the memory segments allocated by the arena are always
accessed by that same thread, then ensuring correctness is trivial.

Conversely, if an arena allocates segments that can be accessed by multiple threads, or if the arena can be closed
by a thread other than the accessing thread, then ensuring correctness is much more complex. For example, a segment
allocated with the arena might be accessed *while* another thread attempts, concurrently, to close the arena.
To provide the strong temporal safety guarantee without forcing every client, even simple ones, to incur a performance
impact, arenas are divided into *thread-confined* arenas, and *shared* arenas.

Confined arenas, support strong thread-confinement guarantees. Upon creation, they are assigned an
*owner thread*, typically the thread which initiated the creation operation.
The segments created by a confined arena can only be [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)
by the owner thread. Moreover, any attempt to close the confined arena from a thread other than the owner thread will
fail with [`WrongThreadException`](../WrongThreadException.md "class in java.lang").

Shared arenas, on the other hand, have no owner thread. The segments created by a shared arena
can be [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) by any thread. This might be useful when
multiple threads need to access the same memory segment concurrently (e.g. in the case of parallel processing).
Moreover, a shared arena can be closed by any thread.

## Custom arenas

Clients can define custom arenas to implement more efficient allocation strategies, or to have better control over
when (and by whom) an arena can be closed. As an example, the following code defines a *slicing arena* that behaves
like a confined arena (i.e., single-threaded access), but internally uses a
[slicing allocator](SegmentAllocator.md#slicingAllocator(java.lang.foreign.MemorySegment))[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator) to respond to allocation requests.
When the slicing arena is closed, the underlying confined arena is also closed; this will invalidate all segments
allocated with the slicing arena (since the scope of the slicing arena is the same as that of the underlying
confined arena):

Copy![Copy snippet](../../../../copy.svg)

```
class SlicingArena implements Arena {
    final Arena arena = Arena.ofConfined();
    final SegmentAllocator slicingAllocator;

    SlicingArena(long size) {
        slicingAllocator = SegmentAllocator.slicingAllocator(arena.allocate(size));
    }

    public MemorySegment allocate(long byteSize, long byteAlignment) {
        return slicingAllocator.allocate(byteSize, byteAlignment);
    }

    public MemorySegment.Scope scope() {
        return arena.scope();
    }

    public void close() {
        arena.close();
    }

}
```

In other words, a slicing arena provides a vastly more efficient and scalable allocation strategy, while still retaining
the timely deallocation guarantee provided by the underlying confined arena:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena slicingArena = new SlicingArena(1000)) {
    for (int i = 0; i < 10; i++) {
        MemorySegment s = slicingArena.allocateArray(JAVA_INT, 1, 2, 3, 4, 5);
        ...
    }
} // all memory allocated is released here
```

Since:
:   20

See Also:
:   * [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default MemorySegmentPREVIEW`

  `allocate(long byteSize,
  long byteAlignment)`

  Returns a native memory segment with the given size (in bytes) and alignment constraint (in bytes).

  `void`

  `close()`

  Closes this arena.

  `static ArenaPREVIEW`

  `global()`

  Obtains the global arena.

  `static ArenaPREVIEW`

  `ofAuto()`

  Creates a new arena that is managed, automatically, by the garbage collector.

  `static ArenaPREVIEW`

  `ofConfined()`

  Returns a new confined arena.

  `static ArenaPREVIEW`

  `ofShared()`

  Returns a new shared arena.

  `MemorySegment.ScopePREVIEW`

  `scope()`

  Returns the arena scope.

  ### Methods inherited from interface java.lang.foreign.[SegmentAllocator](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator)

  `allocate, allocate, allocate, allocate, allocate, allocate, allocate, allocate, allocate, allocate, allocateArray, allocateArray, allocateArray, allocateArray, allocateArray, allocateArray, allocateArray, allocateArray, allocateUtf8String`

* ## Method Details

  + ### ofAuto

    static [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Arena) ofAuto()

    Creates a new arena that is managed, automatically, by the garbage collector.
    Segments allocated with the returned arena can be
    [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) by any thread.
    Calling [`close()`](#close()) on the returned arena will result in an [`UnsupportedOperationException`](../UnsupportedOperationException.md "class in java.lang").

    Returns:
    :   a new arena that is managed, automatically, by the garbage collector.
  + ### global

    static [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Arena) global()

    Obtains the global arena. Segments allocated with the global arena can be
    [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) by any thread.
    Calling [`close()`](#close()) on the returned arena will result in an [`UnsupportedOperationException`](../UnsupportedOperationException.md "class in java.lang").

    Returns:
    :   the global arena.
  + ### ofConfined

    static [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Arena) ofConfined()

    Returns a new confined arena. Segments allocated with the confined arena can be
    [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) by the thread that created the arena,
    the arena's *owner thread*.

    Returns:
    :   a new confined arena
  + ### ofShared

    static [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Arena) ofShared()

    Returns a new shared arena. Segments allocated with the global arena can be
    [accessed](MemorySegment.md#isAccessibleBy(java.lang.Thread))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) by any thread.

    Returns:
    :   a new shared arena
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate(long byteSize,
    long byteAlignment)

    Returns a native memory segment with the given size (in bytes) and alignment constraint (in bytes).
    The returned segment is associated with this [arena scope](#scope()).
    The segment's [`address`](MemorySegment.md#address())[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) is the starting address of the
    allocated off-heap region of memory backing the segment, and the address is
    aligned according the provided alignment constraint.

    Specified by:
    :   `allocate` in interface `SegmentAllocatorPREVIEW`

    Parameters:
    :   `byteSize` - the size (in bytes) of the off-heap region of memory backing the native memory segment.
    :   `byteAlignment` - the alignment constraint (in bytes) of the off-heap region of memory backing the native memory segment.

    Returns:
    :   a new native memory segment.

    Throws:
    :   `IllegalArgumentException` - if `bytesSize < 0`, `byteAlignment <= 0`, or if `byteAlignment`
        is not a power of 2.
    :   `IllegalStateException` - if this arena has already been [closed](#close()).
    :   `WrongThreadException` - if this arena is confined, and this method is called from a thread
        other than the arena's owner thread.
  + ### scope

    [MemorySegment.Scope](MemorySegment.Scope.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope) scope()

    Returns the arena scope.

    Returns:
    :   the arena scope
  + ### close

    void close()

    Closes this arena. If this method completes normally, the arena scope is no longer [alive](MemorySegment.Scope.md#isAlive())[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope),
    and all the memory segments associated with it can no longer be accessed. Furthermore, any off-heap region of memory backing the
    segments obtained from this arena are also released.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Throws:
    :   `IllegalStateException` - if the arena has already been closed.
    :   `IllegalStateException` - if a segment associated with this arena is being accessed concurrently, e.g.
        by a [downcall method handle](Linker.md#downcallHandle(java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker).
    :   `WrongThreadException` - if this arena is confined, and this method is called from a thread
        other than the arena's owner thread.
    :   `UnsupportedOperationException` - if this arena cannot be closed explicitly.

    See Also:
    :   - [`MemorySegment.Scope.isAlive()`](MemorySegment.Scope.md#isAlive())[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope)