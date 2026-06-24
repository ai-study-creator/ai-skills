Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Byte

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Number](Number.md "class in java.lang")

java.lang.Byte

All Implemented Interfaces:
:   `Serializable`, `Comparable<Byte>`, `Constable`

---

public final class Byte
extends [Number](Number.md "class in java.lang")
implements [Comparable](Comparable.md "interface in java.lang")<[Byte](Byte.md "class in java.lang")>, [Constable](constant/Constable.md "interface in java.lang.constant")

The `Byte` class wraps a value of primitive type `byte`
in an object. An object of type `Byte` contains a single
field whose type is `byte`.

In addition, this class provides several methods for converting
a `byte` to a `String` and a `String` to a `byte`, as well as other constants and methods useful when dealing
with a `byte`.

This is a [value-based](../../../java.base/java/lang/doc-files/ValueBased.md)
class; programmers should treat instances that are
[equal](#equals(java.lang.Object)) as interchangeable and should not
use instances for synchronization, or unpredictable behavior may
occur. For example, in a future release, synchronization may fail.

Since:
:   1.1

See Also:
:   * [`Number`](Number.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.Byte)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BYTES`

  The number of bytes used to represent a `byte` value in two's
  complement binary form.

  `static final byte`

  `MAX_VALUE`

  A constant holding the maximum value a `byte` can
  have, 27-1.

  `static final byte`

  `MIN_VALUE`

  A constant holding the minimum value a `byte` can
  have, -27.

  `static final int`

  `SIZE`

  The number of bits used to represent a `byte` value in two's
  complement binary form.

  `static final Class<Byte>`

  `TYPE`

  The `Class` instance representing the primitive type
  `byte`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Byte(byte value)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is rarely appropriate to use this constructor.

  `Byte(String s)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is rarely appropriate to use this constructor.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte`

  `byteValue()`

  Returns the value of this `Byte` as a
  `byte`.

  `static int`

  `compare(byte x,
  byte y)`

  Compares two `byte` values numerically.

  `int`

  `compareTo(Byte anotherByte)`

  Compares two `Byte` objects numerically.

  `static int`

  `compareUnsigned(byte x,
  byte y)`

  Compares two `byte` values numerically treating the values
  as unsigned.

  `static Byte`

  `decode(String nm)`

  Decodes a `String` into a `Byte`.

  `Optional<DynamicConstantDesc<Byte>>`

  `describeConstable()`

  Returns an [`Optional`](../util/Optional.md "class in java.util") containing the nominal descriptor for this
  instance.

  `double`

  `doubleValue()`

  Returns the value of this `Byte` as a `double`
  after a widening primitive conversion.

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `float`

  `floatValue()`

  Returns the value of this `Byte` as a `float` after
  a widening primitive conversion.

  `int`

  `hashCode()`

  Returns a hash code for this `Byte`; equal to the result
  of invoking `intValue()`.

  `static int`

  `hashCode(byte value)`

  Returns a hash code for a `byte` value; compatible with
  `Byte.hashCode()`.

  `int`

  `intValue()`

  Returns the value of this `Byte` as an `int` after
  a widening primitive conversion.

  `long`

  `longValue()`

  Returns the value of this `Byte` as a `long` after
  a widening primitive conversion.

  `static byte`

  `parseByte(String s)`

  Parses the string argument as a signed decimal `byte`.

  `static byte`

  `parseByte(String s,
  int radix)`

  Parses the string argument as a signed `byte` in the
  radix specified by the second argument.

  `short`

  `shortValue()`

  Returns the value of this `Byte` as a `short` after
  a widening primitive conversion.

  `String`

  `toString()`

  Returns a `String` object representing this
  `Byte`'s value.

  `static String`

  `toString(byte b)`

  Returns a new `String` object representing the
  specified `byte`.

  `static int`

  `toUnsignedInt(byte x)`

  Converts the argument to an `int` by an unsigned
  conversion.

  `static long`

  `toUnsignedLong(byte x)`

  Converts the argument to a `long` by an unsigned
  conversion.

  `static Byte`

  `valueOf(byte b)`

  Returns a `Byte` instance representing the specified
  `byte` value.

  `static Byte`

  `valueOf(String s)`

  Returns a `Byte` object holding the value
  given by the specified `String`.

  `static Byte`

  `valueOf(String s,
  int radix)`

  Returns a `Byte` object holding the value
  extracted from the specified `String` when parsed
  with the radix given by the second argument.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MIN\_VALUE

    public static final byte MIN\_VALUE

    A constant holding the minimum value a `byte` can
    have, -27.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Byte.MIN_VALUE)
  + ### MAX\_VALUE

    public static final byte MAX\_VALUE

    A constant holding the maximum value a `byte` can
    have, 27-1.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Byte.MAX_VALUE)
  + ### TYPE

    public static final [Class](Class.md "class in java.lang")<[Byte](Byte.md "class in java.lang")> TYPE

    The `Class` instance representing the primitive type
    `byte`.
  + ### SIZE

    public static final int SIZE

    The number of bits used to represent a `byte` value in two's
    complement binary form.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Byte.SIZE)
  + ### BYTES

    public static final int BYTES

    The number of bytes used to represent a `byte` value in two's
    complement binary form.

    Since:
    :   1.8

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Byte.BYTES)
* ## Constructor Details

  + ### Byte

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public Byte(byte value)

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is rarely appropriate to use this constructor. The static factory
    [`valueOf(byte)`](#valueOf(byte)) is generally a better choice, as it is
    likely to yield significantly better space and time performance.

    Constructs a newly allocated `Byte` object that
    represents the specified `byte` value.

    Parameters:
    :   `value` - the value to be represented by the
        `Byte`.
  + ### Byte

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public Byte([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is rarely appropriate to use this constructor.
    Use [`parseByte(String)`](#parseByte(java.lang.String)) to convert a string to a
    `byte` primitive, or use [`valueOf(String)`](#valueOf(java.lang.String))
    to convert a string to a `Byte` object.

    Constructs a newly allocated `Byte` object that
    represents the `byte` value indicated by the
    `String` parameter. The string is converted to a
    `byte` value in exactly the manner used by the
    `parseByte` method for radix 10.

    Parameters:
    :   `s` - the `String` to be converted to a
        `Byte`

    Throws:
    :   `NumberFormatException` - if the `String`
        does not contain a parsable `byte`.
* ## Method Details

  + ### toString

    public static [String](String.md "class in java.lang") toString(byte b)

    Returns a new `String` object representing the
    specified `byte`. The radix is assumed to be 10.

    Parameters:
    :   `b` - the `byte` to be converted

    Returns:
    :   the string representation of the specified `byte`

    See Also:
    :   - [`Integer.toString(int)`](Integer.md#toString(int))
  + ### describeConstable

    public [Optional](../util/Optional.md "class in java.util")<[DynamicConstantDesc](constant/DynamicConstantDesc.md "class in java.lang.constant")<[Byte](Byte.md "class in java.lang")>> describeConstable()

    Returns an [`Optional`](../util/Optional.md "class in java.util") containing the nominal descriptor for this
    instance.

    Specified by:
    :   `describeConstable` in interface `Constable`

    Returns:
    :   an [`Optional`](../util/Optional.md "class in java.util") describing the [Byte](Byte.md "class in java.lang") instance

    Since:
    :   15
  + ### valueOf

    public static [Byte](Byte.md "class in java.lang") valueOf(byte b)

    Returns a `Byte` instance representing the specified
    `byte` value.
    If a new `Byte` instance is not required, this method
    should generally be used in preference to the constructor
    [`Byte(byte)`](#%3Cinit%3E(byte)), as this method is likely to yield
    significantly better space and time performance since
    all byte values are cached.

    Parameters:
    :   `b` - a byte value.

    Returns:
    :   a `Byte` instance representing `b`.

    Since:
    :   1.5
  + ### parseByte

    public static byte parseByte([String](String.md "class in java.lang") s,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as a signed `byte` in the
    radix specified by the second argument. The characters in the
    string must all be digits, of the specified radix (as
    determined by whether [`Character.digit(char, int)`](Character.md#digit(char,int)) returns a nonnegative value) except that the first
    character may be an ASCII minus sign `'-'`
    (`'\u002D'`) to indicate a negative value or an
    ASCII plus sign `'+'` (`'\u002B'`) to
    indicate a positive value. The resulting `byte` value is
    returned.

    An exception of type `NumberFormatException` is
    thrown if any of the following situations occurs:
    - The first argument is `null` or is a string of
      length zero.- The radix is either smaller than [`Character.MIN_RADIX`](Character.md#MIN_RADIX) or larger than [`Character.MAX_RADIX`](Character.md#MAX_RADIX).- Any character of the string is not a digit of the
          specified radix, except that the first character may be a minus
          sign `'-'` (`'\u002D'`) or plus sign
          `'+'` (`'\u002B'`) provided that the
          string is longer than length 1.- The value represented by the string is not a value of type
            `byte`.

    Parameters:
    :   `s` - the `String` containing the
        `byte`
        representation to be parsed
    :   `radix` - the radix to be used while parsing `s`

    Returns:
    :   the `byte` value represented by the string
        argument in the specified radix

    Throws:
    :   `NumberFormatException` - If the string does
        not contain a parsable `byte`.
  + ### parseByte

    public static byte parseByte([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as a signed decimal `byte`. The characters in the string must all be decimal digits,
    except that the first character may be an ASCII minus sign
    `'-'` (`'\u002D'`) to indicate a negative
    value or an ASCII plus sign `'+'`
    (`'\u002B'`) to indicate a positive value. The
    resulting `byte` value is returned, exactly as if the
    argument and the radix 10 were given as arguments to the [`parseByte(java.lang.String, int)`](#parseByte(java.lang.String,int)) method.

    Parameters:
    :   `s` - a `String` containing the
        `byte` representation to be parsed

    Returns:
    :   the `byte` value represented by the
        argument in decimal

    Throws:
    :   `NumberFormatException` - if the string does not
        contain a parsable `byte`.
  + ### valueOf

    public static [Byte](Byte.md "class in java.lang") valueOf([String](String.md "class in java.lang") s,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Returns a `Byte` object holding the value
    extracted from the specified `String` when parsed
    with the radix given by the second argument. The first argument
    is interpreted as representing a signed `byte` in
    the radix specified by the second argument, exactly as if the
    argument were given to the [`parseByte(java.lang.String, int)`](#parseByte(java.lang.String,int)) method. The result is a `Byte` object that
    represents the `byte` value specified by the string.

    In other words, this method returns a `Byte` object
    equal to the value of:
    > `Byte.valueOf(Byte.parseByte(s, radix))`

    Parameters:
    :   `s` - the string to be parsed
    :   `radix` - the radix to be used in interpreting `s`

    Returns:
    :   a `Byte` object holding the value
        represented by the string argument in the
        specified radix.

    Throws:
    :   `NumberFormatException` - If the `String` does
        not contain a parsable `byte`.
  + ### valueOf

    public static [Byte](Byte.md "class in java.lang") valueOf([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Returns a `Byte` object holding the value
    given by the specified `String`. The argument is
    interpreted as representing a signed decimal `byte`,
    exactly as if the argument were given to the [`parseByte(java.lang.String)`](#parseByte(java.lang.String)) method. The result is a
    `Byte` object that represents the `byte`
    value specified by the string.

    In other words, this method returns a `Byte` object
    equal to the value of:
    > `Byte.valueOf(Byte.parseByte(s))`

    Parameters:
    :   `s` - the string to be parsed

    Returns:
    :   a `Byte` object holding the value
        represented by the string argument

    Throws:
    :   `NumberFormatException` - If the `String` does
        not contain a parsable `byte`.
  + ### decode

    public static [Byte](Byte.md "class in java.lang") decode([String](String.md "class in java.lang") nm)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Decodes a `String` into a `Byte`.
    Accepts decimal, hexadecimal, and octal numbers given by
    the following grammar:
    > *DecodableString:*: *Signopt DecimalNumeral*: *Signopt* `0x` *HexDigits*: *Signopt* `0X` *HexDigits*: *Signopt* `#` *HexDigits*: *Signopt* `0` *OctalDigits* *Sign:*: `-`: `+`

    *DecimalNumeral*, *HexDigits*, and *OctalDigits*
    are as defined in section of
    The Java Language Specification,
    except that underscores are not accepted between digits.

    The sequence of characters following an optional
    sign and/or radix specifier ("`0x`", "`0X`",
    "`#`", or leading zero) is parsed as by the `Byte.parseByte` method with the indicated radix (10, 16, or 8).
    This sequence of characters must represent a positive value or
    a [`NumberFormatException`](NumberFormatException.md "class in java.lang") will be thrown. The result is
    negated if first character of the specified `String` is
    the minus sign. No whitespace characters are permitted in the
    `String`.

    Parameters:
    :   `nm` - the `String` to decode.

    Returns:
    :   a `Byte` object holding the `byte`
        value represented by `nm`

    Throws:
    :   `NumberFormatException` - if the `String` does not
        contain a parsable `byte`.

    See Also:
    :   - [`parseByte(java.lang.String, int)`](#parseByte(java.lang.String,int))
  + ### byteValue

    public byte byteValue()

    Returns the value of this `Byte` as a
    `byte`.

    Overrides:
    :   `byteValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `byte`.
  + ### shortValue

    public short shortValue()

    Returns the value of this `Byte` as a `short` after
    a widening primitive conversion.

    Overrides:
    :   `shortValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `short`.
  + ### intValue

    public int intValue()

    Returns the value of this `Byte` as an `int` after
    a widening primitive conversion.

    Specified by:
    :   `intValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `int`.
  + ### longValue

    public long longValue()

    Returns the value of this `Byte` as a `long` after
    a widening primitive conversion.

    Specified by:
    :   `longValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `long`.
  + ### floatValue

    public float floatValue()

    Returns the value of this `Byte` as a `float` after
    a widening primitive conversion.

    Specified by:
    :   `floatValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `float`.
  + ### doubleValue

    public double doubleValue()

    Returns the value of this `Byte` as a `double`
    after a widening primitive conversion.

    Specified by:
    :   `doubleValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `double`.
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a `String` object representing this
    `Byte`'s value. The value is converted to signed
    decimal representation and returned as a string, exactly as if
    the `byte` value were given as an argument to the
    [`toString(byte)`](#toString(byte)) method.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the value of this object in
        base 10.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `Byte`; equal to the result
    of invoking `intValue()`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this `Byte`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### hashCode

    public static int hashCode(byte value)

    Returns a hash code for a `byte` value; compatible with
    `Byte.hashCode()`.

    Parameters:
    :   `value` - the value to hash

    Returns:
    :   a hash code value for a `byte` value.

    Since:
    :   1.8
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Compares this object to the specified object. The result is
    `true` if and only if the argument is not
    `null` and is a `Byte` object that
    contains the same `byte` value as this object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare with

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### compareTo

    public int compareTo([Byte](Byte.md "class in java.lang") anotherByte)

    Compares two `Byte` objects numerically.

    Specified by:
    :   `compareTo` in interface `Comparable<Byte>`

    Parameters:
    :   `anotherByte` - the `Byte` to be compared.

    Returns:
    :   the value `0` if this `Byte` is
        equal to the argument `Byte`; a value less than
        `0` if this `Byte` is numerically less
        than the argument `Byte`; and a value greater than
        `0` if this `Byte` is numerically
        greater than the argument `Byte` (signed
        comparison).

    Since:
    :   1.2
  + ### compare

    public static int compare(byte x,
    byte y)

    Compares two `byte` values numerically.
    The value returned is identical to what would be returned by:

    ```
        Byte.valueOf(x).compareTo(Byte.valueOf(y))
    ```

    Parameters:
    :   `x` - the first `byte` to compare
    :   `y` - the second `byte` to compare

    Returns:
    :   the value `0` if `x == y`;
        a value less than `0` if `x < y`; and
        a value greater than `0` if `x > y`

    Since:
    :   1.7
  + ### compareUnsigned

    public static int compareUnsigned(byte x,
    byte y)

    Compares two `byte` values numerically treating the values
    as unsigned.

    Parameters:
    :   `x` - the first `byte` to compare
    :   `y` - the second `byte` to compare

    Returns:
    :   the value `0` if `x == y`; a value less
        than `0` if `x < y` as unsigned values; and
        a value greater than `0` if `x > y` as
        unsigned values

    Since:
    :   9
  + ### toUnsignedInt

    public static int toUnsignedInt(byte x)

    Converts the argument to an `int` by an unsigned
    conversion. In an unsigned conversion to an `int`, the
    high-order 24 bits of the `int` are zero and the
    low-order 8 bits are equal to the bits of the `byte` argument.
    Consequently, zero and positive `byte` values are mapped
    to a numerically equal `int` value and negative `byte` values are mapped to an `int` value equal to the
    input plus 28.

    Parameters:
    :   `x` - the value to convert to an unsigned `int`

    Returns:
    :   the argument converted to `int` by an unsigned
        conversion

    Since:
    :   1.8
  + ### toUnsignedLong

    public static long toUnsignedLong(byte x)

    Converts the argument to a `long` by an unsigned
    conversion. In an unsigned conversion to a `long`, the
    high-order 56 bits of the `long` are zero and the
    low-order 8 bits are equal to the bits of the `byte` argument.
    Consequently, zero and positive `byte` values are mapped
    to a numerically equal `long` value and negative `byte` values are mapped to a `long` value equal to the
    input plus 28.

    Parameters:
    :   `x` - the value to convert to an unsigned `long`

    Returns:
    :   the argument converted to `long` by an unsigned
        conversion

    Since:
    :   1.8