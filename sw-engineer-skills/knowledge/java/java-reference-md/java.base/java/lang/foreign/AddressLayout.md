Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface AddressLayout

All Superinterfaces:
:   `MemoryLayoutPREVIEW`, `ValueLayoutPREVIEW`

---

public sealed interface AddressLayout
extends [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

`AddressLayout` is a preview API of the Java platform.

Programs can only use `AddressLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A value layout used to model the address of some region of memory. The carrier associated with an address layout is
`MemorySegment.class`. The size and alignment of an address layout are platform-dependent
(e.g. on a 64-bit platform, the size and alignment of an address layout are set to 8 bytes).

An address layout may optionally feature a [target layout](#targetLayout()). An address layout with
target layout `T` can be used to model the address of a region of memory whose layout is `T`.
For instance, an address layout with target layout [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) can be used to model the address
of a region of memory that is 4 bytes long. Specifying a target layout can be useful in the following situations:

* When accessing a memory segment that has been obtained by reading an address from another
  memory segment, e.g. using [`MemorySegment.getAtIndex(AddressLayout, long)`](MemorySegment.md#getAtIndex(java.lang.foreign.AddressLayout,long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment);
* When creating a downcall method handle, using [`Linker.downcallHandle(FunctionDescriptor, Option...)`](Linker.md#downcallHandle(java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker);* When creating an upcall stub, using [`Linker.upcallStub(MethodHandle, FunctionDescriptor, Arena, Option...)`](Linker.md#upcallStub(java.lang.invoke.MethodHandle,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Arena,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker).

Since:
:   19

See Also:
:   * [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
    * [`ValueLayout.ADDRESS_UNALIGNED`](ValueLayout.md#ADDRESS_UNALIGNED)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `MemoryLayout.PathElementPREVIEW`

  ## Nested classes/interfaces inherited from interface java.lang.foreign.[ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  `ValueLayout.OfBooleanPREVIEW, ValueLayout.OfBytePREVIEW, ValueLayout.OfCharPREVIEW, ValueLayout.OfDoublePREVIEW, ValueLayout.OfFloatPREVIEW, ValueLayout.OfIntPREVIEW, ValueLayout.OfLongPREVIEW, ValueLayout.OfShortPREVIEW`
* ## Field Summary

  ### Fields inherited from interface java.lang.foreign.[ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  `ADDRESS, ADDRESS_UNALIGNED, JAVA_BOOLEAN, JAVA_BYTE, JAVA_CHAR, JAVA_CHAR_UNALIGNED, JAVA_DOUBLE, JAVA_DOUBLE_UNALIGNED, JAVA_FLOAT, JAVA_FLOAT_UNALIGNED, JAVA_INT, JAVA_INT_UNALIGNED, JAVA_LONG, JAVA_LONG_UNALIGNED, JAVA_SHORT, JAVA_SHORT_UNALIGNED`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Optional<MemoryLayoutPREVIEW>`

  `targetLayout()`

  Returns the target layout associated with this address layout (if any).

  `AddressLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `AddressLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `AddressLayoutPREVIEW`

  `withOrder(ByteOrder order)`

  Returns a value layout with the same characteristics as this layout, but with the given byte order.

  `AddressLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  `AddressLayoutPREVIEW`

  `withoutTargetLayout()`

  Returns an address layout with the same carrier, alignment constraint, name and order as this address layout,
  but with no target layout.

  `AddressLayoutPREVIEW`

  `withTargetLayout(MemoryLayoutPREVIEW layout)`

  Returns an address layout with the same carrier, alignment constraint, name and order as this address layout,
  but associated with the specified target layout.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

  ### Methods inherited from interface java.lang.foreign.[ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  `arrayElementVarHandle, carrier, order`

* ## Method Details

  + ### withName

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withName([String](../String.md "class in java.lang") name)

    Returns a memory layout with the same characteristics as this layout, but with the given name.

    Specified by:
    :   `withName` in interface `MemoryLayoutPREVIEW`

    Specified by:
    :   `withName` in interface `ValueLayoutPREVIEW`

    Parameters:
    :   `name` - the layout name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withoutName

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Specified by:
    :   `withoutName` in interface `ValueLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withByteAlignment(long byteAlignment)

    Returns a memory layout with the same characteristics as this layout, but with the given
    alignment constraint (in bytes).

    Specified by:
    :   `withByteAlignment` in interface `MemoryLayoutPREVIEW`

    Specified by:
    :   `withByteAlignment` in interface `ValueLayoutPREVIEW`

    Parameters:
    :   `byteAlignment` - the layout alignment constraint, expressed in bytes.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given
        alignment constraint (in bytes)
  + ### withOrder

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withOrder([ByteOrder](../../nio/ByteOrder.md "class in java.nio") order)

    Returns a value layout with the same characteristics as this layout, but with the given byte order.

    Specified by:
    :   `withOrder` in interface `ValueLayoutPREVIEW`

    Parameters:
    :   `order` - the desired byte order.

    Returns:
    :   a value layout with the same characteristics as this layout, but with the given byte order
  + ### withTargetLayout

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withTargetLayout([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) layout)

    Returns an address layout with the same carrier, alignment constraint, name and order as this address layout,
    but associated with the specified target layout. The returned address layout allows raw addresses to be accessed
    as [memory segments](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) whose size is set to the size of the specified layout. Moreover,
    if the accessed raw address is not compatible with the alignment constraint in the provided layout,
    [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang") will be thrown.

    Parameters:
    :   `layout` - the target layout.

    Returns:
    :   an address layout with same characteristics as this layout, but with the provided target layout.

    Throws:
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.

    See Also:
    :   - [`targetLayout()`](#targetLayout())
  + ### withoutTargetLayout

    [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.AddressLayout) withoutTargetLayout()

    Returns an address layout with the same carrier, alignment constraint, name and order as this address layout,
    but with no target layout.

    Returns:
    :   an address layout with same characteristics as this layout, but with no target layout.

    See Also:
    :   - [`targetLayout()`](#targetLayout())
  + ### targetLayout

    [Optional](../../util/Optional.md "class in java.util")<[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)> targetLayout()

    Returns the target layout associated with this address layout (if any)..

    Returns:
    :   the target layout associated with this address layout (if any)