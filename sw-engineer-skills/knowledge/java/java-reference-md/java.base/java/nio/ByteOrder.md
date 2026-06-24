Module [java.base](../../module-summary.md)

Package [java.nio](package-summary.md)

# Class ByteOrder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.nio.ByteOrder

---

public final class ByteOrder
extends [Object](../lang/Object.md "class in java.lang")

A typesafe enumeration for byte orders.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ByteOrder`

  `BIG_ENDIAN`

  Constant denoting big-endian byte order.

  `static final ByteOrder`

  `LITTLE_ENDIAN`

  Constant denoting little-endian byte order.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ByteOrder`

  `nativeOrder()`

  Retrieves the native byte order of the underlying platform.

  `String`

  `toString()`

  Constructs a string describing this object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BIG\_ENDIAN

    public static final [ByteOrder](ByteOrder.md "class in java.nio") BIG\_ENDIAN

    Constant denoting big-endian byte order. In this order, the bytes of a
    multibyte value are ordered from most significant to least significant.
  + ### LITTLE\_ENDIAN

    public static final [ByteOrder](ByteOrder.md "class in java.nio") LITTLE\_ENDIAN

    Constant denoting little-endian byte order. In this order, the bytes of
    a multibyte value are ordered from least significant to most
    significant.
* ## Method Details

  + ### nativeOrder

    public static [ByteOrder](ByteOrder.md "class in java.nio") nativeOrder()

    Retrieves the native byte order of the underlying platform.

    This method is defined so that performance-sensitive Java code can
    allocate direct buffers with the same byte order as the hardware.
    Native code libraries are often more efficient when such buffers are
    used.

    Returns:
    :   The native byte order of the hardware upon which this Java
        virtual machine is running
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Constructs a string describing this object.

    This method returns the string
    `"BIG_ENDIAN"` for [`BIG_ENDIAN`](#BIG_ENDIAN) and
    `"LITTLE_ENDIAN"` for [`LITTLE_ENDIAN`](#LITTLE_ENDIAN).

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The specified string