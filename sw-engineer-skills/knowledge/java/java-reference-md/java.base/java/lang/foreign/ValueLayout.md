Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface ValueLayout

All Superinterfaces:
:   `MemoryLayoutPREVIEW`

All Known Subinterfaces:
:   `AddressLayoutPREVIEW`, `ValueLayout.OfBooleanPREVIEW`, `ValueLayout.OfBytePREVIEW`, `ValueLayout.OfCharPREVIEW`, `ValueLayout.OfDoublePREVIEW`, `ValueLayout.OfFloatPREVIEW`, `ValueLayout.OfIntPREVIEW`, `ValueLayout.OfLongPREVIEW`, `ValueLayout.OfShortPREVIEW`

---

public sealed interface ValueLayout
extends [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
permits [ValueLayout.OfBoolean](ValueLayout.OfBoolean.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfBoolean.md#preview-java.lang.foreign.ValueLayout.OfBoolean), [ValueLayout.OfByte](ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte), [ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar), [ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort), [ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt), [ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat), [ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong), [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble), [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout)

`ValueLayout` is a preview API of the Java platform.

Programs can only use `ValueLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A layout that models values of basic data types. Examples of values modelled by a value layout are
*integral* values (either signed or unsigned), *floating-point* values and
*address* values.

Each value layout has a size, an alignment (both expressed in bytes),
a [byte order](../../nio/ByteOrder.md "class in java.nio"), and a *carrier*, that is, the Java type that should be used when
[accessing](MemorySegment.md#get(java.lang.foreign.ValueLayout.OfInt,long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) a region of memory using the value layout.

This class defines useful value layout constants for Java primitive types and addresses.

Since:
:   19

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `ValueLayout.OfBooleanPREVIEW`

  Preview.

  A value layout whose carrier is `boolean.class`.

  `static interface`

  `ValueLayout.OfBytePREVIEW`

  Preview.

  A value layout whose carrier is `byte.class`.

  `static interface`

  `ValueLayout.OfCharPREVIEW`

  Preview.

  A value layout whose carrier is `char.class`.

  `static interface`

  `ValueLayout.OfDoublePREVIEW`

  Preview.

  A value layout whose carrier is `double.class`.

  `static interface`

  `ValueLayout.OfFloatPREVIEW`

  Preview.

  A value layout whose carrier is `float.class`.

  `static interface`

  `ValueLayout.OfIntPREVIEW`

  Preview.

  A value layout whose carrier is `int.class`.

  `static interface`

  `ValueLayout.OfLongPREVIEW`

  Preview.

  A value layout whose carrier is `long.class`.

  `static interface`

  `ValueLayout.OfShortPREVIEW`

  Preview.

  A value layout whose carrier is `short.class`.

  ## Nested classes/interfaces inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `MemoryLayout.PathElementPREVIEW`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AddressLayoutPREVIEW`

  `ADDRESS`

  An address layout constant whose size is the same as that of a machine address (`size_t`),
  byte alignment set to `sizeof(size_t)`, byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final AddressLayoutPREVIEW`

  `ADDRESS_UNALIGNED`

  An unaligned address layout constant whose size is the same as that of a machine address (`size_t`),
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfBooleanPREVIEW`

  `JAVA_BOOLEAN`

  A value layout constant whose size is the same as that of a Java `boolean`,
  byte alignment set to 1, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfBytePREVIEW`

  `JAVA_BYTE`

  A value layout constant whose size is the same as that of a Java `byte`,
  byte alignment set to 1, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfCharPREVIEW`

  `JAVA_CHAR`

  A value layout constant whose size is the same as that of a Java `char`,
  byte alignment set to 2, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfCharPREVIEW`

  `JAVA_CHAR_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `char`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfDoublePREVIEW`

  `JAVA_DOUBLE`

  A value layout constant whose size is the same as that of a Java `double`,
  (platform-dependent) byte alignment set to `ADDRESS.byteSize()`,
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfDoublePREVIEW`

  `JAVA_DOUBLE_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `double`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfFloatPREVIEW`

  `JAVA_FLOAT`

  A value layout constant whose size is the same as that of a Java `float`,
  byte alignment set to 4, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfFloatPREVIEW`

  `JAVA_FLOAT_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `float`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfIntPREVIEW`

  `JAVA_INT`

  A value layout constant whose size is the same as that of a Java `int`,
  byte alignment set to 4, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfIntPREVIEW`

  `JAVA_INT_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `int`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfLongPREVIEW`

  `JAVA_LONG`

  A value layout constant whose size is the same as that of a Java `long`,
  (platform-dependent) byte alignment set to `ADDRESS.byteSize()`,
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfLongPREVIEW`

  `JAVA_LONG_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `long`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfShortPREVIEW`

  `JAVA_SHORT`

  A value layout constant whose size is the same as that of a Java `short`,
  byte alignment set to 2, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).

  `static final ValueLayout.OfShortPREVIEW`

  `JAVA_SHORT_UNALIGNED`

  An unaligned value layout constant whose size is the same as that of a Java `short`
  and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `VarHandle`

  `arrayElementVarHandle(int... shape)`

  Creates a *strided* var handle that can be used to access a memory segment as multi-dimensional
  array.

  `Class<?>`

  `carrier()`

  Returns the carrier associated with this value layout.

  `ByteOrder`

  `order()`

  Returns the value's byte order.

  `ValueLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `ValueLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `ValueLayoutPREVIEW`

  `withOrder(ByteOrder order)`

  Returns a value layout with the same characteristics as this layout, but with the given byte order.

  `ValueLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

* ## Field Details

  + ### ADDRESS

    static final [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) ADDRESS

    An address layout constant whose size is the same as that of a machine address (`size_t`),
    byte alignment set to `sizeof(size_t)`, byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_BYTE

    static final [ValueLayout.OfByte](ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte) JAVA\_BYTE

    A value layout constant whose size is the same as that of a Java `byte`,
    byte alignment set to 1, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_BOOLEAN

    static final [ValueLayout.OfBoolean](ValueLayout.OfBoolean.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfBoolean.md#preview-java.lang.foreign.ValueLayout.OfBoolean) JAVA\_BOOLEAN

    A value layout constant whose size is the same as that of a Java `boolean`,
    byte alignment set to 1, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_CHAR

    static final [ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar) JAVA\_CHAR

    A value layout constant whose size is the same as that of a Java `char`,
    byte alignment set to 2, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_SHORT

    static final [ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort) JAVA\_SHORT

    A value layout constant whose size is the same as that of a Java `short`,
    byte alignment set to 2, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_INT

    static final [ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt) JAVA\_INT

    A value layout constant whose size is the same as that of a Java `int`,
    byte alignment set to 4, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_LONG

    static final [ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong) JAVA\_LONG

    A value layout constant whose size is the same as that of a Java `long`,
    (platform-dependent) byte alignment set to `ADDRESS.byteSize()`,
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_FLOAT

    static final [ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat) JAVA\_FLOAT

    A value layout constant whose size is the same as that of a Java `float`,
    byte alignment set to 4, and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### JAVA\_DOUBLE

    static final [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble) JAVA\_DOUBLE

    A value layout constant whose size is the same as that of a Java `double`,
    (platform-dependent) byte alignment set to `ADDRESS.byteSize()`,
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
  + ### ADDRESS\_UNALIGNED

    static final [AddressLayout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) ADDRESS\_UNALIGNED

    An unaligned address layout constant whose size is the same as that of a machine address (`size_t`),
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    ADDRESS.withByteAlignment(1);
    ```
  + ### JAVA\_CHAR\_UNALIGNED

    static final [ValueLayout.OfChar](ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar) JAVA\_CHAR\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `char`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_CHAR.withByteAlignment(1);
    ```
  + ### JAVA\_SHORT\_UNALIGNED

    static final [ValueLayout.OfShort](ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort) JAVA\_SHORT\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `short`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_SHORT.withByteAlignment(1);
    ```
  + ### JAVA\_INT\_UNALIGNED

    static final [ValueLayout.OfInt](ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt) JAVA\_INT\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `int`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_INT.withByteAlignment(1);
    ```
  + ### JAVA\_LONG\_UNALIGNED

    static final [ValueLayout.OfLong](ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong) JAVA\_LONG\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `long`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_LONG.withByteAlignment(1);
    ```
  + ### JAVA\_FLOAT\_UNALIGNED

    static final [ValueLayout.OfFloat](ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat) JAVA\_FLOAT\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `float`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_FLOAT.withByteAlignment(1);
    ```
  + ### JAVA\_DOUBLE\_UNALIGNED

    static final [ValueLayout.OfDouble](ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble) JAVA\_DOUBLE\_UNALIGNED

    An unaligned value layout constant whose size is the same as that of a Java `double`
    and byte order set to [`ByteOrder.nativeOrder()`](../../nio/ByteOrder.md#nativeOrder()).
    Equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    JAVA_DOUBLE.withByteAlignment(1);
    ```
* ## Method Details

  + ### order

    [ByteOrder](../../nio/ByteOrder.md "class in java.nio") order()

    Returns the value's byte order.

    Returns:
    :   the value's byte order
  + ### withOrder

    [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout) withOrder([ByteOrder](../../nio/ByteOrder.md "class in java.nio") order)

    Returns a value layout with the same characteristics as this layout, but with the given byte order.

    Parameters:
    :   `order` - the desired byte order.

    Returns:
    :   a value layout with the same characteristics as this layout, but with the given byte order
  + ### withoutName

    [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### arrayElementVarHandle

    [VarHandle](../invoke/VarHandle.md "class in java.lang.invoke") arrayElementVarHandle(int... shape)

    Creates a *strided* var handle that can be used to access a memory segment as multi-dimensional
    array. This array has a notional sequence layout featuring `shape.length` nested sequence layouts. The element
    layout of the innermost sequence layout in the notional sequence layout is this value layout. The resulting var handle
    is obtained as if calling the [`MemoryLayout.varHandle(PathElement...)`](MemoryLayout.md#varHandle(java.lang.foreign.MemoryLayout.PathElement...))[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) method on the notional layout, with a layout
    path containing exactly `shape.length + 1` [open sequence layout path elements](MemoryLayout.PathElement.md#sequenceElement())[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement).

    For instance, the following method call:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    VarHandle arrayHandle = ValueLayout.JAVA_INT.arrayElementVarHandle(10, 20);
    ```

    Is equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
     SequenceLayout notionalLayout = MemoryLayout.sequenceLayout(
                                             MemoryLayout.sequenceLayout(10, MemoryLayout.sequenceLayout(20, ValueLayout.JAVA_INT)));
     VarHandle arrayHandle = notionalLayout.varHandle(PathElement.sequenceElement(),
                                                      PathElement.sequenceElement(),
                                                      PathElement.sequenceElement());
    ```

    The resulting var handle `arrayHandle` will feature 3 coordinates of type `long`; each coordinate
    is interpreted as an index into the corresponding sequence layout. If we refer to the var handle coordinates, from left
    to right, as `x`, `y` and `z` respectively, the final offset accessed by the var handle can be
    computed with the following formula:
    > ```
    >  offset = (10 * 20 * 4 * x) + (20 * 4 * y) + (4 * z)
    > ```

    Additionally, the values of `x`, `y` and `z` are constrained as follows:
    - `0 <= x < notionalLayout.elementCount()`
    - `0 <= y < 10`
    - `0 <= z < 20`

    Consider the following access expressions:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    int value1 = (int) arrayHandle.get(10, 2, 4); // ok, accessed offset = 8176
    int value2 = (int) arrayHandle.get(0, 0, 30); // out of bounds value for z
    ```

    In the first case, access is well-formed, as the values for `x`, `y` and `z` conform to
    the bounds specified above. In the second case, access fails with [`IndexOutOfBoundsException`](../IndexOutOfBoundsException.md "class in java.lang"),
    as the value for `z` is outside its specified bounds.

    Parameters:
    :   `shape` - the size of each nested array dimension.

    Returns:
    :   a var handle which can be used to access a memory segment as a multi-dimensional array,
        featuring `shape.length + 1`
        `long` coordinates.

    Throws:
    :   `IllegalArgumentException` - if `shape[i] < 0`, for at least one index `i`.
    :   `UnsupportedOperationException` - if `byteAlignment() > byteSize()`.

    See Also:
    :   - [`MethodHandles.memorySegmentViewVarHandle(java.lang.foreign.ValueLayout)`](../invoke/MethodHandles.md#memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))[PREVIEW](../invoke/MethodHandles.md#preview-memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))
        - [`MemoryLayout.varHandle(PathElement...)`](MemoryLayout.md#varHandle(java.lang.foreign.MemoryLayout.PathElement...))[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
        - [`SequenceLayout`](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout)
  + ### carrier

    [Class](../Class.md "class in java.lang")<?> carrier()

    Returns the carrier associated with this value layout.

    Returns:
    :   the carrier associated with this value layout
  + ### withName

    [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout) withName([String](../String.md "class in java.lang") name)

    Returns a memory layout with the same characteristics as this layout, but with the given name.

    Specified by:
    :   `withName` in interface `MemoryLayoutPREVIEW`

    Parameters:
    :   `name` - the layout name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.ValueLayout) withByteAlignment(long byteAlignment)

    Returns a memory layout with the same characteristics as this layout, but with the given
    alignment constraint (in bytes).

    Specified by:
    :   `withByteAlignment` in interface `MemoryLayoutPREVIEW`

    Parameters:
    :   `byteAlignment` - the layout alignment constraint, expressed in bytes.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given
        alignment constraint (in bytes)

    Throws:
    :   `IllegalArgumentException` - if `byteAlignment` is not a power of two.