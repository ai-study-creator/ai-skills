Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface ValueLayout.OfDouble

All Superinterfaces:
:   `MemoryLayoutPREVIEW`, `ValueLayoutPREVIEW`

Enclosing interface:
:   `ValueLayoutPREVIEW`

---

public static sealed interface ValueLayout.OfDouble
extends [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

`OfDouble` is a preview API of the Java platform.

Programs can only use `OfDouble` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A value layout whose carrier is `double.class`.

Since:
:   19

See Also:
:   * [`ValueLayout.JAVA_DOUBLE`](ValueLayout.md#JAVA_DOUBLE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
    * [`ValueLayout.JAVA_DOUBLE_UNALIGNED`](ValueLayout.md#JAVA_DOUBLE_UNALIGNED)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

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

  `ValueLayout.OfDoublePREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `ValueLayout.OfDoublePREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `ValueLayout.OfDoublePREVIEW`

  `withOrder(ByteOrder order)`

  Returns a value layout with the same characteristics as this layout, but with the given byte order.

  `ValueLayout.OfDoublePREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

  ### Methods inherited from interface java.lang.foreign.[ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  `arrayElementVarHandle, carrier, order`

* ## Method Details

  + ### withName

    [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout.OfDouble) withName([String](../String.md "class in java.lang") name)

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

    [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout.OfDouble) withoutName()

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

    [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout.OfDouble) withByteAlignment(long byteAlignment)

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

    Throws:
    :   `IllegalArgumentException` - if `byteAlignment` is not a power of two.
  + ### withOrder

    [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout.OfDouble) withOrder([ByteOrder](../../nio/ByteOrder.md "class in java.nio") order)

    Returns a value layout with the same characteristics as this layout, but with the given byte order.

    Specified by:
    :   `withOrder` in interface `ValueLayoutPREVIEW`

    Parameters:
    :   `order` - the desired byte order.

    Returns:
    :   a value layout with the same characteristics as this layout, but with the given byte order