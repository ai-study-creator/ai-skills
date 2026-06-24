Module [java.base](../../../module-summary.md)

# Package java.lang.foreign

---

package java.lang.foreign

Provides low-level access to memory and functions outside the Java runtime.

## Foreign memory access

The main abstraction introduced to support foreign memory access is [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment), which
models a contiguous region of memory, residing either inside or outside the Java heap. Memory segments are
typically allocated using an [`Arena`](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena), which controls the lifetime of the regions of memory
backing the segments it allocates. The contents of a memory segment can be described using a
[`memory layout`](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout), which provides basic operations to query sizes, offsets and
alignment constraints. Memory layouts also provide an alternate, more abstract way, to
[access memory segments](MemorySegment.md#segment-deref) using
[var handles](MemoryLayout.md#varHandle(java.lang.foreign.MemoryLayout.PathElement...))[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout),
which can be computed using [*layout paths*](MemoryLayout.md#layout-paths).
For example, to allocate an off-heap region of memory big enough to hold 10 values of the primitive type `int`,
and fill it with values ranging from `0` to `9`, we can use the following code:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena arena = Arena.ofConfined()) {
    MemorySegment segment = arena.allocate(10 * 4);
    for (int i = 0 ; i < 10 ; i++) {
        segment.setAtIndex(ValueLayout.JAVA_INT, i, i);
    }
}
```

This code creates a *native* memory segment, that is, a memory segment backed by
off-heap memory; the size of the segment is 40 bytes, enough to store 10 values of the primitive type `int`.
The native segment is allocated using a [confined arena](Arena.md#ofConfined())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena).
As such, access to the native segment is restricted to the current thread (the thread that created the arena).
Moreover, when the arena is closed, the native segment is invalidated, and its backing region of memory is
deallocated. Note the use of the *try-with-resources* construct: this idiom ensures that the off-heap region
of memory backing the native segment will be released at the end of the block, according to the semantics described
in Section of The Java Language Specification.

Memory segments provide strong safety guarantees when it comes to memory access. First, when accessing a memory segment,
the access coordinates are validated (upon access), to make sure that access does not occur at any address which resides
*outside* the boundaries of the memory segment used by the access operation. We call this guarantee *spatial safety*;
in other words, access to memory segments is bounds-checked, in the same way as array access is, as described in
Section of The Java Language Specification.

Additionally, to prevent a region of memory from being accessed *after* it has been deallocated
(i.e. *use-after-free*), a segment is also validated (upon access) to make sure that the arena from which it
has been obtained has not been closed. We call this guarantee *temporal safety*.

Together, spatial and temporal safety ensure that each memory access operation either succeeds - and accesses a valid
location within the region of memory backing the memory segment - or fails.

## Foreign function access

The key abstractions introduced to support foreign function access are [`SymbolLookup`](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](SymbolLookup.md#preview-java.lang.foreign.SymbolLookup),
[`FunctionDescriptor`](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) and [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker). The first is used to look up symbols
inside libraries; the second is used to model the signature of foreign functions, while the third is used
to link foreign functions as [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") instances,
so that clients can perform foreign function calls directly in Java, without the need for intermediate layers of C/C++
code (as is the case with the [Java Native Interface (JNI)](../../../../../specs/jni/index.md)).

For example, to compute the length of a string using the C standard library function `strlen` on a Linux/x64 platform,
we can use the following code:

Copy![Copy snippet](../../../../copy.svg)

```
 Linker linker = Linker.nativeLinker();
 SymbolLookup stdlib = linker.defaultLookup();
 MethodHandle strlen = linker.downcallHandle(
     stdlib.find("strlen").orElseThrow(),
     FunctionDescriptor.of(ValueLayout.JAVA_LONG, ValueLayout.ADDRESS)
 );

 try (Arena arena = Arena.ofConfined()) {
     MemorySegment cString = arena.allocateUtf8String("Hello");
     long len = (long)strlen.invokeExact(cString); // 5
 }
```

Here, we obtain a [native linker](Linker.md#nativeLinker())[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) and we use it
to [look up](SymbolLookup.md#find(java.lang.String))[PREVIEW](SymbolLookup.md#preview-java.lang.foreign.SymbolLookup) the `strlen` function in the
standard C library; a *downcall method handle* targeting said function is subsequently
[obtained](Linker.md#downcallHandle(java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker).
To complete the linking successfully, we must provide a [`FunctionDescriptor`](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) instance,
describing the signature of the `strlen` function.
From this information, the linker will uniquely determine the sequence of steps which will turn
the method handle invocation (here performed using [`MethodHandle.invokeExact(java.lang.Object...)`](../invoke/MethodHandle.md#invokeExact(java.lang.Object...)))
into a foreign function call, according to the rules specified by the ABI of the underlying platform.
The [`Arena`](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena) class also provides many useful methods for
interacting with foreign code, such as
[converting](SegmentAllocator.md#allocateUtf8String(java.lang.String))[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator) Java strings into
zero-terminated, UTF-8 strings, as demonstrated in the above example.

## Restricted methods

Some methods in this package are considered *restricted*. Restricted methods are typically used to bind native
foreign data and/or functions to first-class Java API elements which can then be used directly by clients. For instance
the restricted method [`MemorySegment.reinterpret(long)`](MemorySegment.md#reinterpret(long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)
can be used to create a fresh segment with the same address and temporal bounds,
but with the provided size. This can be useful to resize memory segments obtained when interacting with native functions.

Binding foreign data and/or functions is generally unsafe and, if done incorrectly, can result in VM crashes,
or memory corruption when the bound Java API element is accessed. For instance, incorrectly resizing a native
memory sgement using [`MemorySegment.reinterpret(long)`](MemorySegment.md#reinterpret(long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) can lead to a JVM crash, or, worse,
lead to silent memory corruption when attempting to access the resized segment. For these reasons, it is crucial for
code that calls a restricted method to never pass arguments that might cause incorrect binding of foreign data and/or
functions to a Java API.

Given the potential danger of restricted methods, the Java runtime issues a warning on the standard error stream
every time a restricted method is invoked. Such warnings can be disabled by granting access to restricted methods
to selected modules. This can be done either via implementation-specific command line options, or programmatically, e.g. by calling
[`ModuleLayer.Controller.enableNativeAccess(java.lang.Module)`](../ModuleLayer.Controller.md#enableNativeAccess(java.lang.Module))[PREVIEW](../ModuleLayer.Controller.md#preview-enableNativeAccess(java.lang.Module)).

For every class in this package, unless specified otherwise, any method arguments of reference
type must not be null, and any null argument will elicit a `NullPointerException`. This fact is not individually
documented for methods of this API.

External Specifications
:   * [Java Native Interface Specification](../../../../../specs/jni/index.md)

* Related Packages

  Package

  Description

  [java.lang](../package-summary.md)

  Provides classes that are fundamental to the design of the Java
  programming language.
* Interfaces

  Class

  Description

  [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout)

  Preview.

  A value layout used to model the address of some region of memory.

  [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena)

  Preview.

  An arena controls the lifecycle of native memory segments, providing both flexible allocation and timely deallocation.

  [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor)

  Preview.

  A function descriptor models the signature of a foreign function.

  [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout)

  Preview.

  A compound layout that is an aggregation of multiple, heterogeneous *member layouts*.

  [Linker](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker)

  Preview.

  A linker provides access to foreign functions from Java code, and access to Java code from foreign functions.

  [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option)

  Preview.

  A linker option is used to provide additional parameters to a linkage request.

  [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  Preview.

  A memory layout describes the contents of a memory segment.

  [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)

  Preview.

  An element in a [*layout path*](MemoryLayout.md#layout-paths).

  [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)

  Preview.

  A memory segment provides access to a contiguous region of memory.

  [MemorySegment.Scope](MemorySegment.Scope.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope)

  Preview.

  A scope models the *lifetime* of all the memory segments associated with it.

  [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout)

  Preview.

  A padding layout.

  [SegmentAllocator](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator)

  Preview.

  An object that may be used to allocate [memory segments](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment).

  [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout)

  Preview.

  A compound layout that denotes a homogeneous repetition of a given *element layout*.

  [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout)

  Preview.

  A group layout whose member layouts are laid out one after the other.

  [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](SymbolLookup.md#preview-java.lang.foreign.SymbolLookup)

  Preview.

  A *symbol lookup* retrieves the address of a symbol in one or more libraries.

  [UnionLayout](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout)

  Preview.

  A group layout whose member layouts are laid out at the same starting offset.

  [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  Preview.

  A layout that models values of basic data types.

  [ValueLayout.OfBoolean](ValueLayout.OfBoolean.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfBoolean.md#preview-java.lang.foreign.ValueLayout.OfBoolean)

  Preview.

  A value layout whose carrier is `boolean.class`.

  [ValueLayout.OfByte](ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte)

  Preview.

  A value layout whose carrier is `byte.class`.

  [ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar)

  Preview.

  A value layout whose carrier is `char.class`.

  [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble)

  Preview.

  A value layout whose carrier is `double.class`.

  [ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat)

  Preview.

  A value layout whose carrier is `float.class`.

  [ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt)

  Preview.

  A value layout whose carrier is `int.class`.

  [ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong)

  Preview.

  A value layout whose carrier is `long.class`.

  [ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort)

  Preview.

  A value layout whose carrier is `short.class`.