Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface SegmentAllocator

All Known Subinterfaces:
:   `ArenaPREVIEW`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../FunctionalInterface.md "annotation interface in java.lang")
public interface SegmentAllocator

`SegmentAllocator` is a preview API of the Java platform.

Programs can only use `SegmentAllocator` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

An object that may be used to allocate [memory segments](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment). Clients implementing this interface
must implement the [`allocate(long, long)`](#allocate(long,long)) method. A segment allocator defines several methods
which can be useful to create segments from several kinds of Java values such as primitives and arrays.

`SegmentAllocator` is a [functional interface](../FunctionalInterface.md "annotation interface in java.lang"). Clients can easily obtain a new
segment allocator by using either a lambda expression or a method reference:

Copy![Copy snippet](../../../../copy.svg)

```
SegmentAllocator autoAllocator = (byteSize, byteAlignment) -> Arena.ofAuto().allocate(byteSize, byteAlignment);
```

This interface defines factories for commonly used allocators:

* [`slicingAllocator(MemorySegment)`](#slicingAllocator(java.lang.foreign.MemorySegment)) obtains an efficient slicing allocator, where memory
  is allocated by repeatedly slicing the provided memory segment;
* [`prefixAllocator(MemorySegment)`](#prefixAllocator(java.lang.foreign.MemorySegment)) obtains an allocator which wraps a segment
  and recycles its content upon each new allocation request.

Passing a segment allocator to an API can be especially useful in circumstances where a client wants to communicate *where*
the results of a certain operation (performed by the API) should be stored, as a memory segment. For instance,
[downcall method handles](Linker.md#downcallHandle(java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) can accept an additional
[`SegmentAllocator`](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SegmentAllocator) parameter if the underlying foreign function is known to return a struct by-value. Effectively,
the allocator parameter tells the linker where to store the return value of the foreign function.

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default MemorySegmentPREVIEW`

  `allocate(long byteSize)`

  Allocates a memory segment with the given size.

  `MemorySegmentPREVIEW`

  `allocate(long byteSize,
  long byteAlignment)`

  Allocates a memory segment with the given size and alignment constraint.

  `default MemorySegmentPREVIEW`

  `allocate(AddressLayoutPREVIEW layout,
  MemorySegmentPREVIEW value)`

  Allocates a memory segment with the given layout and initializes it with the given address value.

  `default MemorySegmentPREVIEW`

  `allocate(MemoryLayoutPREVIEW layout)`

  Allocates a memory segment with the given layout.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfBytePREVIEW layout,
  byte value)`

  Allocates a memory segment with the given layout and initializes it with the given byte value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfCharPREVIEW layout,
  char value)`

  Allocates a memory segment with the given layout and initializes it with the given char value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfDoublePREVIEW layout,
  double value)`

  Allocates a memory segment with the given layout and initializes it with the given double value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfFloatPREVIEW layout,
  float value)`

  Allocates a memory segment with the given layout and initializes it with the given float value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfIntPREVIEW layout,
  int value)`

  Allocates a memory segment with the given layout and initializes it with the given int value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfLongPREVIEW layout,
  long value)`

  Allocates a memory segment with the given layout and initializes it with the given long value.

  `default MemorySegmentPREVIEW`

  `allocate(ValueLayout.OfShortPREVIEW layout,
  short value)`

  Allocates a memory segment with the given layout and initializes it with the given short value.

  `default MemorySegmentPREVIEW`

  `allocateArray(MemoryLayoutPREVIEW elementLayout,
  long count)`

  Allocates a memory segment with the given element layout and size.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfBytePREVIEW elementLayout,
  byte... elements)`

  Allocates a memory segment with the given layout and initializes it with the given byte elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfCharPREVIEW elementLayout,
  char... elements)`

  Allocates a memory segment with the given layout and initializes it with the given char elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfDoublePREVIEW elementLayout,
  double... elements)`

  Allocates a memory segment with the given layout and initializes it with the given double elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfFloatPREVIEW elementLayout,
  float... elements)`

  Allocates a memory segment with the given layout and initializes it with the given float elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfIntPREVIEW elementLayout,
  int... elements)`

  Allocates a memory segment with the given layout and initializes it with the given int elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfLongPREVIEW elementLayout,
  long... elements)`

  Allocates a memory segment with the given layout and initializes it with the given long elements.

  `default MemorySegmentPREVIEW`

  `allocateArray(ValueLayout.OfShortPREVIEW elementLayout,
  short... elements)`

  Allocates a memory segment with the given layout and initializes it with the given short elements.

  `default MemorySegmentPREVIEW`

  `allocateUtf8String(String str)`

  Converts a Java string into a UTF-8 encoded, null-terminated C string,
  storing the result into a memory segment.

  `static SegmentAllocatorPREVIEW`

  `prefixAllocator(MemorySegmentPREVIEW segment)`

  Returns a segment allocator which responds to allocation requests by recycling a single segment.

  `static SegmentAllocatorPREVIEW`

  `slicingAllocator(MemorySegmentPREVIEW segment)`

  Returns a segment allocator which responds to allocation requests by returning consecutive slices
  obtained from the provided segment.

* ## Method Details

  + ### allocateUtf8String

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateUtf8String([String](../String.md "class in java.lang") str)

    Converts a Java string into a UTF-8 encoded, null-terminated C string,
    storing the result into a memory segment.

    This method always replaces malformed-input and unmappable-character
    sequences with this charset's default replacement byte array. The
    [`CharsetEncoder`](../../nio/charset/CharsetEncoder.md "class in java.nio.charset") class should be used when more
    control over the encoding process is required.

    If the given string contains any `'\0'` characters, they will be
    copied as well. This means that, depending on the method used to read
    the string, such as [`MemorySegment.getUtf8String(long)`](MemorySegment.md#getUtf8String(long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment), the string
    will appear truncated when read again.

    Parameters:
    :   `str` - the Java string to be converted into a C string.

    Returns:
    :   a new native segment containing the converted C string.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfByte](ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte) layout,
    byte value)

    Allocates a memory segment with the given layout and initializes it with the given byte value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar) layout,
    char value)

    Allocates a memory segment with the given layout and initializes it with the given char value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort) layout,
    short value)

    Allocates a memory segment with the given layout and initializes it with the given short value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt) layout,
    int value)

    Allocates a memory segment with the given layout and initializes it with the given int value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat) layout,
    float value)

    Allocates a memory segment with the given layout and initializes it with the given float value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong) layout,
    long value)

    Allocates a memory segment with the given layout and initializes it with the given long value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble) layout,
    double value)

    Allocates a memory segment with the given layout and initializes it with the given double value.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) layout,
    [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) value)

    Allocates a memory segment with the given layout and initializes it with the given address value.
    The address value might be narrowed according to the platform address size (see [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)).

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.
    :   `value` - the value to be set on the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfByte](ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte) elementLayout,
    byte... elements)

    Allocates a memory segment with the given layout and initializes it with the given byte elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the byte elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort) elementLayout,
    short... elements)

    Allocates a memory segment with the given layout and initializes it with the given short elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the short elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar) elementLayout,
    char... elements)

    Allocates a memory segment with the given layout and initializes it with the given char elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the char elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt) elementLayout,
    int... elements)

    Allocates a memory segment with the given layout and initializes it with the given int elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the int elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat) elementLayout,
    float... elements)

    Allocates a memory segment with the given layout and initializes it with the given float elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the float elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong) elementLayout,
    long... elements)

    Allocates a memory segment with the given layout and initializes it with the given long elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the long elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble) elementLayout,
    double... elements)

    Allocates a memory segment with the given layout and initializes it with the given double elements.

    Parameters:
    :   `elementLayout` - the element layout of the array to be allocated.
    :   `elements` - the double elements to be copied to the newly allocated memory block.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) layout)

    Allocates a memory segment with the given layout.

    Parameters:
    :   `layout` - the layout of the block of memory to be allocated.

    Returns:
    :   a segment for the newly allocated memory block.
  + ### allocateArray

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocateArray([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) elementLayout,
    long count)

    Allocates a memory segment with the given element layout and size.

    Parameters:
    :   `elementLayout` - the array element layout.
    :   `count` - the array element count.

    Returns:
    :   a segment for the newly allocated memory block.

    Throws:
    :   `IllegalArgumentException` - if `elementLayout.byteSize() * count` overflows.
    :   `IllegalArgumentException` - if `count < 0`.
  + ### allocate

    default [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate(long byteSize)

    Allocates a memory segment with the given size.

    Parameters:
    :   `byteSize` - the size (in bytes) of the block of memory to be allocated.

    Returns:
    :   a segment for the newly allocated memory block.

    Throws:
    :   `IllegalArgumentException` - if `byteSize < 0`
  + ### allocate

    [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) allocate(long byteSize,
    long byteAlignment)

    Allocates a memory segment with the given size and alignment constraint.

    Parameters:
    :   `byteSize` - the size (in bytes) of the block of memory to be allocated.
    :   `byteAlignment` - the alignment (in bytes) of the block of memory to be allocated.

    Returns:
    :   a segment for the newly allocated memory block.

    Throws:
    :   `IllegalArgumentException` - if `byteSize < 0`, `byteAlignment <= 0`,
        or if `byteAlignment` is not a power of 2.
  + ### slicingAllocator

    static [SegmentAllocator](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SegmentAllocator) slicingAllocator([MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) segment)

    Returns a segment allocator which responds to allocation requests by returning consecutive slices
    obtained from the provided segment. Each new allocation request will return a new slice starting at the
    current offset (modulo additional padding to satisfy alignment constraint), with given size.

    The returned allocator throws [`IndexOutOfBoundsException`](../IndexOutOfBoundsException.md "class in java.lang") when a slice of the provided
    segment with the requested size and alignment cannot be found.

    Parameters:
    :   `segment` - the segment which the returned allocator should slice from.

    Returns:
    :   a new slicing allocator
  + ### prefixAllocator

    static [SegmentAllocator](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SegmentAllocator) prefixAllocator([MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) segment)

    Returns a segment allocator which responds to allocation requests by recycling a single segment. Each
    new allocation request will return a new slice starting at the segment offset `0`, hence the name
    *prefix allocator*.
    Equivalent to (but likely more efficient than) the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    MemorySegment segment = ...
    SegmentAllocator prefixAllocator = (size, align) -> segment.asSlice(0, size, align);
    ```

    The returned allocator throws [`IndexOutOfBoundsException`](../IndexOutOfBoundsException.md "class in java.lang") when a slice of the provided
    segment with the requested size and alignment cannot be found.

    Parameters:
    :   `segment` - the memory segment to be recycled by the returned allocator.

    Returns:
    :   an allocator which recycles an existing segment upon each new allocation request.