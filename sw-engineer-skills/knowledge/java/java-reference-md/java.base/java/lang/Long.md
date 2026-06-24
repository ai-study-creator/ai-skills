Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Long

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Number](Number.md "class in java.lang")

java.lang.Long

All Implemented Interfaces:
:   `Serializable`, `Comparable<Long>`, `Constable`, `ConstantDesc`

---

public final class Long
extends [Number](Number.md "class in java.lang")
implements [Comparable](Comparable.md "interface in java.lang")<[Long](Long.md "class in java.lang")>, [Constable](constant/Constable.md "interface in java.lang.constant"), [ConstantDesc](constant/ConstantDesc.md "interface in java.lang.constant")

The `Long` class wraps a value of the primitive type `long` in an object. An object of type `Long` contains a
single field whose type is `long`.

In addition, this class provides several methods for converting
a `long` to a `String` and a `String` to a `long`, as well as other constants and methods useful when dealing
with a `long`.

This is a [value-based](../../../java.base/java/lang/doc-files/ValueBased.md)
class; programmers should treat instances that are
[equal](#equals(java.lang.Object)) as interchangeable and should not
use instances for synchronization, or unpredictable behavior may
occur. For example, in a future release, synchronization may fail.

Implementation note: The implementations of the "bit twiddling"
methods (such as [`highestOneBit`](#highestOneBit(long)) and
[`numberOfTrailingZeros`](#numberOfTrailingZeros(long))) are
based on material from Henry S. Warren, Jr.'s *Hacker's
Delight*, (Addison Wesley, 2002).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.Long)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BYTES`

  The number of bytes used to represent a `long` value in two's
  complement binary form.

  `static final long`

  `MAX_VALUE`

  A constant holding the maximum value a `long` can
  have, 263-1.

  `static final long`

  `MIN_VALUE`

  A constant holding the minimum value a `long` can
  have, -263.

  `static final int`

  `SIZE`

  The number of bits used to represent a `long` value in two's
  complement binary form.

  `static final Class<Long>`

  `TYPE`

  The `Class` instance representing the primitive type
  `long`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Long(long value)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is rarely appropriate to use this constructor.

  `Long(String s)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is rarely appropriate to use this constructor.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static int`

  `bitCount(long i)`

  Returns the number of one-bits in the two's complement binary
  representation of the specified `long` value.

  `byte`

  `byteValue()`

  Returns the value of this `Long` as a `byte` after
  a narrowing primitive conversion.

  `static int`

  `compare(long x,
  long y)`

  Compares two `long` values numerically.

  `int`

  `compareTo(Long anotherLong)`

  Compares two `Long` objects numerically.

  `static int`

  `compareUnsigned(long x,
  long y)`

  Compares two `long` values numerically treating the values
  as unsigned.

  `static long`

  `compress(long i,
  long mask)`

  Returns the value obtained by compressing the bits of the
  specified `long` value, `i`, in accordance with
  the specified bit mask.

  `static Long`

  `decode(String nm)`

  Decodes a `String` into a `Long`.

  `Optional<Long>`

  `describeConstable()`

  Returns an [`Optional`](../util/Optional.md "class in java.util") containing the nominal descriptor for this
  instance, which is the instance itself.

  `static long`

  `divideUnsigned(long dividend,
  long divisor)`

  Returns the unsigned quotient of dividing the first argument by
  the second where each argument and the result is interpreted as
  an unsigned value.

  `double`

  `doubleValue()`

  Returns the value of this `Long` as a `double`
  after a widening primitive conversion.

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `static long`

  `expand(long i,
  long mask)`

  Returns the value obtained by expanding the bits of the
  specified `long` value, `i`, in accordance with
  the specified bit mask.

  `float`

  `floatValue()`

  Returns the value of this `Long` as a `float` after
  a widening primitive conversion.

  `static Long`

  `getLong(String nm)`

  Determines the `long` value of the system property
  with the specified name.

  `static Long`

  `getLong(String nm,
  long val)`

  Determines the `long` value of the system property
  with the specified name.

  `static Long`

  `getLong(String nm,
  Long val)`

  Returns the `long` value of the system property with
  the specified name.

  `int`

  `hashCode()`

  Returns a hash code for this `Long`.

  `static int`

  `hashCode(long value)`

  Returns a hash code for a `long` value; compatible with
  `Long.hashCode()`.

  `static long`

  `highestOneBit(long i)`

  Returns a `long` value with at most a single one-bit, in the
  position of the highest-order ("leftmost") one-bit in the specified
  `long` value.

  `int`

  `intValue()`

  Returns the value of this `Long` as an `int` after
  a narrowing primitive conversion.

  `long`

  `longValue()`

  Returns the value of this `Long` as a
  `long` value.

  `static long`

  `lowestOneBit(long i)`

  Returns a `long` value with at most a single one-bit, in the
  position of the lowest-order ("rightmost") one-bit in the specified
  `long` value.

  `static long`

  `max(long a,
  long b)`

  Returns the greater of two `long` values
  as if by calling [`Math.max`](Math.md#max(long,long)).

  `static long`

  `min(long a,
  long b)`

  Returns the smaller of two `long` values
  as if by calling [`Math.min`](Math.md#min(long,long)).

  `static int`

  `numberOfLeadingZeros(long i)`

  Returns the number of zero bits preceding the highest-order
  ("leftmost") one-bit in the two's complement binary representation
  of the specified `long` value.

  `static int`

  `numberOfTrailingZeros(long i)`

  Returns the number of zero bits following the lowest-order ("rightmost")
  one-bit in the two's complement binary representation of the specified
  `long` value.

  `static long`

  `parseLong(CharSequence s,
  int beginIndex,
  int endIndex,
  int radix)`

  Parses the [`CharSequence`](CharSequence.md "interface in java.lang") argument as a signed `long` in
  the specified `radix`, beginning at the specified
  `beginIndex` and extending to `endIndex - 1`.

  `static long`

  `parseLong(String s)`

  Parses the string argument as a signed decimal `long`.

  `static long`

  `parseLong(String s,
  int radix)`

  Parses the string argument as a signed `long` in the
  radix specified by the second argument.

  `static long`

  `parseUnsignedLong(CharSequence s,
  int beginIndex,
  int endIndex,
  int radix)`

  Parses the [`CharSequence`](CharSequence.md "interface in java.lang") argument as an unsigned `long` in
  the specified `radix`, beginning at the specified
  `beginIndex` and extending to `endIndex - 1`.

  `static long`

  `parseUnsignedLong(String s)`

  Parses the string argument as an unsigned decimal `long`.

  `static long`

  `parseUnsignedLong(String s,
  int radix)`

  Parses the string argument as an unsigned `long` in the
  radix specified by the second argument.

  `static long`

  `remainderUnsigned(long dividend,
  long divisor)`

  Returns the unsigned remainder from dividing the first argument
  by the second where each argument and the result is interpreted
  as an unsigned value.

  `Long`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this instance as a [`ConstantDesc`](constant/ConstantDesc.md "interface in java.lang.constant"), the result of which is
  the instance itself.

  `static long`

  `reverse(long i)`

  Returns the value obtained by reversing the order of the bits in the
  two's complement binary representation of the specified `long`
  value.

  `static long`

  `reverseBytes(long i)`

  Returns the value obtained by reversing the order of the bytes in the
  two's complement representation of the specified `long` value.

  `static long`

  `rotateLeft(long i,
  int distance)`

  Returns the value obtained by rotating the two's complement binary
  representation of the specified `long` value left by the
  specified number of bits.

  `static long`

  `rotateRight(long i,
  int distance)`

  Returns the value obtained by rotating the two's complement binary
  representation of the specified `long` value right by the
  specified number of bits.

  `short`

  `shortValue()`

  Returns the value of this `Long` as a `short` after
  a narrowing primitive conversion.

  `static int`

  `signum(long i)`

  Returns the signum function of the specified `long` value.

  `static long`

  `sum(long a,
  long b)`

  Adds two `long` values together as per the + operator.

  `static String`

  `toBinaryString(long i)`

  Returns a string representation of the `long`
  argument as an unsigned integer in base 2.

  `static String`

  `toHexString(long i)`

  Returns a string representation of the `long`
  argument as an unsigned integer in base 16.

  `static String`

  `toOctalString(long i)`

  Returns a string representation of the `long`
  argument as an unsigned integer in base 8.

  `String`

  `toString()`

  Returns a `String` object representing this
  `Long`'s value.

  `static String`

  `toString(long i)`

  Returns a `String` object representing the specified
  `long`.

  `static String`

  `toString(long i,
  int radix)`

  Returns a string representation of the first argument in the
  radix specified by the second argument.

  `static String`

  `toUnsignedString(long i)`

  Returns a string representation of the argument as an unsigned
  decimal value.

  `static String`

  `toUnsignedString(long i,
  int radix)`

  Returns a string representation of the first argument as an
  unsigned integer value in the radix specified by the second
  argument.

  `static Long`

  `valueOf(long l)`

  Returns a `Long` instance representing the specified
  `long` value.

  `static Long`

  `valueOf(String s)`

  Returns a `Long` object holding the value
  of the specified `String`.

  `static Long`

  `valueOf(String s,
  int radix)`

  Returns a `Long` object holding the value
  extracted from the specified `String` when parsed
  with the radix given by the second argument.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MIN\_VALUE

    [@Native](annotation/Native.md "annotation interface in java.lang.annotation")
    public static final long MIN\_VALUE

    A constant holding the minimum value a `long` can
    have, -263.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Long.MIN_VALUE)
  + ### MAX\_VALUE

    [@Native](annotation/Native.md "annotation interface in java.lang.annotation")
    public static final long MAX\_VALUE

    A constant holding the maximum value a `long` can
    have, 263-1.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Long.MAX_VALUE)
  + ### TYPE

    public static final [Class](Class.md "class in java.lang")<[Long](Long.md "class in java.lang")> TYPE

    The `Class` instance representing the primitive type
    `long`.

    Since:
    :   1.1
  + ### SIZE

    [@Native](annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int SIZE

    The number of bits used to represent a `long` value in two's
    complement binary form.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Long.SIZE)
  + ### BYTES

    public static final int BYTES

    The number of bytes used to represent a `long` value in two's
    complement binary form.

    Since:
    :   1.8

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Long.BYTES)
* ## Constructor Details

  + ### Long

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public Long(long value)

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is rarely appropriate to use this constructor. The static factory
    [`valueOf(long)`](#valueOf(long)) is generally a better choice, as it is
    likely to yield significantly better space and time performance.

    Constructs a newly allocated `Long` object that
    represents the specified `long` argument.

    Parameters:
    :   `value` - the value to be represented by the
        `Long` object.
  + ### Long

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public Long([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is rarely appropriate to use this constructor.
    Use [`parseLong(String)`](#parseLong(java.lang.String)) to convert a string to a
    `long` primitive, or use [`valueOf(String)`](#valueOf(java.lang.String))
    to convert a string to a `Long` object.

    Constructs a newly allocated `Long` object that
    represents the `long` value indicated by the
    `String` parameter. The string is converted to a
    `long` value in exactly the manner used by the
    `parseLong` method for radix 10.

    Parameters:
    :   `s` - the `String` to be converted to a
        `Long`.

    Throws:
    :   `NumberFormatException` - if the `String` does not
        contain a parsable `long`.
* ## Method Details

  + ### toString

    public static [String](String.md "class in java.lang") toString(long i,
    int radix)

    Returns a string representation of the first argument in the
    radix specified by the second argument.

    If the radix is smaller than `Character.MIN_RADIX`
    or larger than `Character.MAX_RADIX`, then the radix
    `10` is used instead.

    If the first argument is negative, the first element of the
    result is the ASCII minus sign `'-'`
    (`'\u002d'`). If the first argument is not
    negative, no sign character appears in the result.

    The remaining characters of the result represent the magnitude
    of the first argument. If the magnitude is zero, it is
    represented by a single zero character `'0'`
    (`'\u0030'`); otherwise, the first character of
    the representation of the magnitude will not be the zero
    character. The following ASCII characters are used as digits:
    > `0123456789abcdefghijklmnopqrstuvwxyz`

    These are `'\u0030'` through
    `'\u0039'` and `'\u0061'` through
    `'\u007a'`. If `radix` is
    N, then the first N of these characters
    are used as radix-N digits in the order shown. Thus,
    the digits for hexadecimal (radix 16) are
    `0123456789abcdef`. If uppercase letters are
    desired, the [`String.toUpperCase()`](String.md#toUpperCase()) method may
    be called on the result:
    > `Long.toString(n, 16).toUpperCase()`

    Parameters:
    :   `i` - a `long` to be converted to a string.
    :   `radix` - the radix to use in the string representation.

    Returns:
    :   a string representation of the argument in the specified radix.

    See Also:
    :   - [`Character.MAX_RADIX`](Character.md#MAX_RADIX)
        - [`Character.MIN_RADIX`](Character.md#MIN_RADIX)
  + ### toUnsignedString

    public static [String](String.md "class in java.lang") toUnsignedString(long i,
    int radix)

    Returns a string representation of the first argument as an
    unsigned integer value in the radix specified by the second
    argument.

    If the radix is smaller than `Character.MIN_RADIX`
    or larger than `Character.MAX_RADIX`, then the radix
    `10` is used instead.

    Note that since the first argument is treated as an unsigned
    value, no leading sign character is printed.

    If the magnitude is zero, it is represented by a single zero
    character `'0'` (`'\u0030'`); otherwise,
    the first character of the representation of the magnitude will
    not be the zero character.

    The behavior of radixes and the characters used as digits
    are the same as [`toString`](#toString(long,int)).

    Parameters:
    :   `i` - an integer to be converted to an unsigned string.
    :   `radix` - the radix to use in the string representation.

    Returns:
    :   an unsigned string representation of the argument in the specified radix.

    Since:
    :   1.8

    See Also:
    :   - [`toString(long, int)`](#toString(long,int))
  + ### toHexString

    public static [String](String.md "class in java.lang") toHexString(long i)

    Returns a string representation of the `long`
    argument as an unsigned integer in base 16.

    The unsigned `long` value is the argument plus
    264 if the argument is negative; otherwise, it is
    equal to the argument. This value is converted to a string of
    ASCII digits in hexadecimal (base 16) with no extra
    leading `0`s.

    The value of the argument can be recovered from the returned
    string `s` by calling [`Long.parseUnsignedLong(s,
    16)`](#parseUnsignedLong(java.lang.String,int)).

    If the unsigned magnitude is zero, it is represented by a
    single zero character `'0'` (`'\u0030'`);
    otherwise, the first character of the representation of the
    unsigned magnitude will not be the zero character. The
    following characters are used as hexadecimal digits:
    > `0123456789abcdef`

    These are the characters `'\u0030'` through
    `'\u0039'` and `'\u0061'` through
    `'\u0066'`. If uppercase letters are desired,
    the [`String.toUpperCase()`](String.md#toUpperCase()) method may be called
    on the result:
    > `Long.toHexString(n).toUpperCase()`

    Parameters:
    :   `i` - a `long` to be converted to a string.

    Returns:
    :   the string representation of the unsigned `long`
        value represented by the argument in hexadecimal
        (base 16).

    Since:
    :   1.0.2

    See Also:
    :   - [`HexFormat`](../util/HexFormat.md "class in java.util")
        - [`parseUnsignedLong(String, int)`](#parseUnsignedLong(java.lang.String,int))
        - [`toUnsignedString(long, int)`](#toUnsignedString(long,int))
  + ### toOctalString

    public static [String](String.md "class in java.lang") toOctalString(long i)

    Returns a string representation of the `long`
    argument as an unsigned integer in base 8.

    The unsigned `long` value is the argument plus
    264 if the argument is negative; otherwise, it is
    equal to the argument. This value is converted to a string of
    ASCII digits in octal (base 8) with no extra leading
    `0`s.

    The value of the argument can be recovered from the returned
    string `s` by calling [`Long.parseUnsignedLong(s,
    8)`](#parseUnsignedLong(java.lang.String,int)).

    If the unsigned magnitude is zero, it is represented by a
    single zero character `'0'` (`'\u0030'`);
    otherwise, the first character of the representation of the
    unsigned magnitude will not be the zero character. The
    following characters are used as octal digits:
    > `01234567`

    These are the characters `'\u0030'` through
    `'\u0037'`.

    Parameters:
    :   `i` - a `long` to be converted to a string.

    Returns:
    :   the string representation of the unsigned `long`
        value represented by the argument in octal (base 8).

    Since:
    :   1.0.2

    See Also:
    :   - [`parseUnsignedLong(String, int)`](#parseUnsignedLong(java.lang.String,int))
        - [`toUnsignedString(long, int)`](#toUnsignedString(long,int))
  + ### toBinaryString

    public static [String](String.md "class in java.lang") toBinaryString(long i)

    Returns a string representation of the `long`
    argument as an unsigned integer in base 2.

    The unsigned `long` value is the argument plus
    264 if the argument is negative; otherwise, it is
    equal to the argument. This value is converted to a string of
    ASCII digits in binary (base 2) with no extra leading
    `0`s.

    The value of the argument can be recovered from the returned
    string `s` by calling [`Long.parseUnsignedLong(s,
    2)`](#parseUnsignedLong(java.lang.String,int)).

    If the unsigned magnitude is zero, it is represented by a
    single zero character `'0'` (`'\u0030'`);
    otherwise, the first character of the representation of the
    unsigned magnitude will not be the zero character. The
    characters `'0'` (`'\u0030'`) and `'1'` (`'\u0031'`) are used as binary digits.

    Parameters:
    :   `i` - a `long` to be converted to a string.

    Returns:
    :   the string representation of the unsigned `long`
        value represented by the argument in binary (base 2).

    Since:
    :   1.0.2

    See Also:
    :   - [`parseUnsignedLong(String, int)`](#parseUnsignedLong(java.lang.String,int))
        - [`toUnsignedString(long, int)`](#toUnsignedString(long,int))
  + ### toString

    public static [String](String.md "class in java.lang") toString(long i)

    Returns a `String` object representing the specified
    `long`. The argument is converted to signed decimal
    representation and returned as a string, exactly as if the
    argument and the radix 10 were given as arguments to the [`toString(long, int)`](#toString(long,int)) method.

    Parameters:
    :   `i` - a `long` to be converted.

    Returns:
    :   a string representation of the argument in base 10.
  + ### toUnsignedString

    public static [String](String.md "class in java.lang") toUnsignedString(long i)

    Returns a string representation of the argument as an unsigned
    decimal value.
    The argument is converted to unsigned decimal representation
    and returned as a string exactly as if the argument and radix
    10 were given as arguments to the [`toUnsignedString(long, int)`](#toUnsignedString(long,int)) method.

    Parameters:
    :   `i` - an integer to be converted to an unsigned string.

    Returns:
    :   an unsigned string representation of the argument.

    Since:
    :   1.8

    See Also:
    :   - [`toUnsignedString(long, int)`](#toUnsignedString(long,int))
  + ### parseLong

    public static long parseLong([String](String.md "class in java.lang") s,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as a signed `long` in the
    radix specified by the second argument. The characters in the
    string must all be digits of the specified radix (as determined
    by whether [`Character.digit(char, int)`](Character.md#digit(char,int)) returns
    a nonnegative value), except that the first character may be an
    ASCII minus sign `'-'` (`'\u002D'`) to
    indicate a negative value or an ASCII plus sign `'+'`
    (`'\u002B'`) to indicate a positive value. The
    resulting `long` value is returned.

    Note that neither the character `L`
    (`'\u004C'`) nor `l`
    (`'\u006C'`) is permitted to appear at the end
    of the string as a type indicator, as would be permitted in
    Java programming language source code - except that either
    `L` or `l` may appear as a digit for a
    radix greater than or equal to 22.

    An exception of type `NumberFormatException` is
    thrown if any of the following situations occurs:
    - The first argument is `null` or is a string of
      length zero.- The `radix` is either smaller than [`Character.MIN_RADIX`](Character.md#MIN_RADIX) or larger than [`Character.MAX_RADIX`](Character.md#MAX_RADIX).- Any character of the string is not a digit of the specified
          radix, except that the first character may be a minus sign
          `'-'` (`'\u002d'`) or plus sign `'+'` (`'\u002B'`) provided that the string is
          longer than length 1.- The value represented by the string is not a value of type
            `long`.

    Examples:
    > ```
    >  parseLong("0", 10) returns 0L
    >  parseLong("473", 10) returns 473L
    >  parseLong("+42", 10) returns 42L
    >  parseLong("-0", 10) returns 0L
    >  parseLong("-FF", 16) returns -255L
    >  parseLong("1100110", 2) returns 102L
    >  parseLong("99", 8) throws a NumberFormatException
    >  parseLong("Hazelnut", 10) throws a NumberFormatException
    >  parseLong("Hazelnut", 36) returns 1356099454469L
    > ```

    Parameters:
    :   `s` - the `String` containing the
        `long` representation to be parsed.
    :   `radix` - the radix to be used while parsing `s`.

    Returns:
    :   the `long` represented by the string argument in
        the specified radix.

    Throws:
    :   `NumberFormatException` - if the string does not contain a
        parsable `long`.
  + ### parseLong

    public static long parseLong([CharSequence](CharSequence.md "interface in java.lang") s,
    int beginIndex,
    int endIndex,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the [`CharSequence`](CharSequence.md "interface in java.lang") argument as a signed `long` in
    the specified `radix`, beginning at the specified
    `beginIndex` and extending to `endIndex - 1`.

    The method does not take steps to guard against the
    `CharSequence` being mutated while parsing.

    Parameters:
    :   `s` - the `CharSequence` containing the `long`
        representation to be parsed
    :   `beginIndex` - the beginning index, inclusive.
    :   `endIndex` - the ending index, exclusive.
    :   `radix` - the radix to be used while parsing `s`.

    Returns:
    :   the signed `long` represented by the subsequence in
        the specified radix.

    Throws:
    :   `NullPointerException` - if `s` is null.
    :   `IndexOutOfBoundsException` - if `beginIndex` is
        negative, or if `beginIndex` is greater than
        `endIndex` or if `endIndex` is greater than
        `s.length()`.
    :   `NumberFormatException` - if the `CharSequence` does not
        contain a parsable `long` in the specified
        `radix`, or if `radix` is either smaller than
        [`Character.MIN_RADIX`](Character.md#MIN_RADIX) or larger than
        [`Character.MAX_RADIX`](Character.md#MAX_RADIX).

    Since:
    :   9
  + ### parseLong

    public static long parseLong([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as a signed decimal `long`.
    The characters in the string must all be decimal digits, except
    that the first character may be an ASCII minus sign `'-'`
    (`\u002D'`) to indicate a negative value or an
    ASCII plus sign `'+'` (`'\u002B'`) to
    indicate a positive value. The resulting `long` value is
    returned, exactly as if the argument and the radix `10`
    were given as arguments to the [`parseLong(java.lang.String, int)`](#parseLong(java.lang.String,int)) method.

    Note that neither the character `L`
    (`'\u004C'`) nor `l`
    (`'\u006C'`) is permitted to appear at the end
    of the string as a type indicator, as would be permitted in
    Java programming language source code.

    Parameters:
    :   `s` - a `String` containing the `long`
        representation to be parsed

    Returns:
    :   the `long` represented by the argument in
        decimal.

    Throws:
    :   `NumberFormatException` - if the string does not contain a
        parsable `long`.
  + ### parseUnsignedLong

    public static long parseUnsignedLong([String](String.md "class in java.lang") s,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as an unsigned `long` in the
    radix specified by the second argument. An unsigned integer
    maps the values usually associated with negative numbers to
    positive numbers larger than `MAX_VALUE`.
    The characters in the string must all be digits of the
    specified radix (as determined by whether [`Character.digit(char, int)`](Character.md#digit(char,int)) returns a nonnegative
    value), except that the first character may be an ASCII plus
    sign `'+'` (`'\u002B'`). The resulting
    integer value is returned.

    An exception of type `NumberFormatException` is
    thrown if any of the following situations occurs:
    - The first argument is `null` or is a string of
      length zero.- The radix is either smaller than
        [`Character.MIN_RADIX`](Character.md#MIN_RADIX) or
        larger than [`Character.MAX_RADIX`](Character.md#MAX_RADIX).- Any character of the string is not a digit of the specified
          radix, except that the first character may be a plus sign
          `'+'` (`'\u002B'`) provided that the
          string is longer than length 1.- The value represented by the string is larger than the
            largest unsigned `long`, 264-1.

    Parameters:
    :   `s` - the `String` containing the unsigned integer
        representation to be parsed
    :   `radix` - the radix to be used while parsing `s`.

    Returns:
    :   the unsigned `long` represented by the string
        argument in the specified radix.

    Throws:
    :   `NumberFormatException` - if the `String`
        does not contain a parsable `long`.

    Since:
    :   1.8
  + ### parseUnsignedLong

    public static long parseUnsignedLong([CharSequence](CharSequence.md "interface in java.lang") s,
    int beginIndex,
    int endIndex,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the [`CharSequence`](CharSequence.md "interface in java.lang") argument as an unsigned `long` in
    the specified `radix`, beginning at the specified
    `beginIndex` and extending to `endIndex - 1`.

    The method does not take steps to guard against the
    `CharSequence` being mutated while parsing.

    Parameters:
    :   `s` - the `CharSequence` containing the unsigned
        `long` representation to be parsed
    :   `beginIndex` - the beginning index, inclusive.
    :   `endIndex` - the ending index, exclusive.
    :   `radix` - the radix to be used while parsing `s`.

    Returns:
    :   the unsigned `long` represented by the subsequence in
        the specified radix.

    Throws:
    :   `NullPointerException` - if `s` is null.
    :   `IndexOutOfBoundsException` - if `beginIndex` is
        negative, or if `beginIndex` is greater than
        `endIndex` or if `endIndex` is greater than
        `s.length()`.
    :   `NumberFormatException` - if the `CharSequence` does not
        contain a parsable unsigned `long` in the specified
        `radix`, or if `radix` is either smaller than
        [`Character.MIN_RADIX`](Character.md#MIN_RADIX) or larger than
        [`Character.MAX_RADIX`](Character.md#MAX_RADIX).

    Since:
    :   9
  + ### parseUnsignedLong

    public static long parseUnsignedLong([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Parses the string argument as an unsigned decimal `long`. The
    characters in the string must all be decimal digits, except
    that the first character may be an ASCII plus sign `'+'` (`'\u002B'`). The resulting integer value
    is returned, exactly as if the argument and the radix 10 were
    given as arguments to the [`parseUnsignedLong(java.lang.String, int)`](#parseUnsignedLong(java.lang.String,int)) method.

    Parameters:
    :   `s` - a `String` containing the unsigned `long`
        representation to be parsed

    Returns:
    :   the unsigned `long` value represented by the decimal string argument

    Throws:
    :   `NumberFormatException` - if the string does not contain a
        parsable unsigned integer.

    Since:
    :   1.8
  + ### valueOf

    public static [Long](Long.md "class in java.lang") valueOf([String](String.md "class in java.lang") s,
    int radix)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Returns a `Long` object holding the value
    extracted from the specified `String` when parsed
    with the radix given by the second argument. The first
    argument is interpreted as representing a signed
    `long` in the radix specified by the second
    argument, exactly as if the arguments were given to the [`parseLong(java.lang.String, int)`](#parseLong(java.lang.String,int)) method. The result is a
    `Long` object that represents the `long`
    value specified by the string.

    In other words, this method returns a `Long` object equal
    to the value of:
    > `Long.valueOf(Long.parseLong(s, radix))`

    Parameters:
    :   `s` - the string to be parsed
    :   `radix` - the radix to be used in interpreting `s`

    Returns:
    :   a `Long` object holding the value
        represented by the string argument in the specified
        radix.

    Throws:
    :   `NumberFormatException` - If the `String` does not
        contain a parsable `long`.
  + ### valueOf

    public static [Long](Long.md "class in java.lang") valueOf([String](String.md "class in java.lang") s)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Returns a `Long` object holding the value
    of the specified `String`. The argument is
    interpreted as representing a signed decimal `long`,
    exactly as if the argument were given to the [`parseLong(java.lang.String)`](#parseLong(java.lang.String)) method. The result is a
    `Long` object that represents the integer value
    specified by the string.

    In other words, this method returns a `Long` object
    equal to the value of:
    > `Long.valueOf(Long.parseLong(s))`

    Parameters:
    :   `s` - the string to be parsed.

    Returns:
    :   a `Long` object holding the value
        represented by the string argument.

    Throws:
    :   `NumberFormatException` - If the string cannot be parsed
        as a `long`.
  + ### valueOf

    public static [Long](Long.md "class in java.lang") valueOf(long l)

    Returns a `Long` instance representing the specified
    `long` value.
    If a new `Long` instance is not required, this method
    should generally be used in preference to the constructor
    [`Long(long)`](#%3Cinit%3E(long)), as this method is likely to yield
    significantly better space and time performance by caching
    frequently requested values.
    This method will always cache values in the range -128 to 127,
    inclusive, and may cache other values outside of this range.

    Parameters:
    :   `l` - a long value.

    Returns:
    :   a `Long` instance representing `l`.

    Since:
    :   1.5
  + ### decode

    public static [Long](Long.md "class in java.lang") decode([String](String.md "class in java.lang") nm)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Decodes a `String` into a `Long`.
    Accepts decimal, hexadecimal, and octal numbers given by the
    following grammar:
    > *DecodableString:*: *Signopt DecimalNumeral*: *Signopt* `0x` *HexDigits*: *Signopt* `0X` *HexDigits*: *Signopt* `#` *HexDigits*: *Signopt* `0` *OctalDigits* *Sign:*: `-`: `+`

    *DecimalNumeral*, *HexDigits*, and *OctalDigits*
    are as defined in section of
    The Java Language Specification,
    except that underscores are not accepted between digits.

    The sequence of characters following an optional
    sign and/or radix specifier ("`0x`", "`0X`",
    "`#`", or leading zero) is parsed as by the `Long.parseLong` method with the indicated radix (10, 16, or 8).
    This sequence of characters must represent a positive value or
    a [`NumberFormatException`](NumberFormatException.md "class in java.lang") will be thrown. The result is
    negated if first character of the specified `String` is
    the minus sign. No whitespace characters are permitted in the
    `String`.

    Parameters:
    :   `nm` - the `String` to decode.

    Returns:
    :   a `Long` object holding the `long`
        value represented by `nm`

    Throws:
    :   `NumberFormatException` - if the `String` does not
        contain a parsable `long`.

    Since:
    :   1.2

    See Also:
    :   - [`parseLong(String, int)`](#parseLong(java.lang.String,int))
  + ### byteValue

    public byte byteValue()

    Returns the value of this `Long` as a `byte` after
    a narrowing primitive conversion.

    Overrides:
    :   `byteValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `byte`.
  + ### shortValue

    public short shortValue()

    Returns the value of this `Long` as a `short` after
    a narrowing primitive conversion.

    Overrides:
    :   `shortValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `short`.
  + ### intValue

    public int intValue()

    Returns the value of this `Long` as an `int` after
    a narrowing primitive conversion.

    Specified by:
    :   `intValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `int`.
  + ### longValue

    public long longValue()

    Returns the value of this `Long` as a
    `long` value.

    Specified by:
    :   `longValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `long`.
  + ### floatValue

    public float floatValue()

    Returns the value of this `Long` as a `float` after
    a widening primitive conversion.

    Specified by:
    :   `floatValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `float`.
  + ### doubleValue

    public double doubleValue()

    Returns the value of this `Long` as a `double`
    after a widening primitive conversion.

    Specified by:
    :   `doubleValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `double`.
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a `String` object representing this
    `Long`'s value. The value is converted to signed
    decimal representation and returned as a string, exactly as if
    the `long` value were given as an argument to the
    [`toString(long)`](#toString(long)) method.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the value of this object in
        base 10.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `Long`. The result is
    the exclusive OR of the two halves of the primitive
    `long` value held by this `Long`
    object. That is, the hashcode is the value of the expression:
    > `(int)(this.longValue()^(this.longValue()>>>32))`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### hashCode

    public static int hashCode(long value)

    Returns a hash code for a `long` value; compatible with
    `Long.hashCode()`.

    Parameters:
    :   `value` - the value to hash

    Returns:
    :   a hash code value for a `long` value.

    Since:
    :   1.8
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Compares this object to the specified object. The result is
    `true` if and only if the argument is not
    `null` and is a `Long` object that
    contains the same `long` value as this object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare with.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### getLong

    public static [Long](Long.md "class in java.lang") getLong([String](String.md "class in java.lang") nm)

    Determines the `long` value of the system property
    with the specified name.

    The first argument is treated as the name of a system
    property. System properties are accessible through the [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String)) method. The
    string value of this property is then interpreted as a `long` value using the grammar supported by [`decode`](#decode(java.lang.String))
    and a `Long` object representing this value is returned.

    If there is no property with the specified name, if the
    specified name is empty or `null`, or if the property
    does not have the correct numeric format, then `null` is
    returned.

    In other words, this method returns a `Long` object
    equal to the value of:
    > `getLong(nm, null)`

    Parameters:
    :   `nm` - property name.

    Returns:
    :   the `Long` value of the property.

    Throws:
    :   `SecurityException` - for the same reasons as
        [`System.getProperty`](System.md#getProperty(java.lang.String))

    See Also:
    :   - [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String))
        - [`System.getProperty(java.lang.String, java.lang.String)`](System.md#getProperty(java.lang.String,java.lang.String))
  + ### getLong

    public static [Long](Long.md "class in java.lang") getLong([String](String.md "class in java.lang") nm,
    long val)

    Determines the `long` value of the system property
    with the specified name.

    The first argument is treated as the name of a system
    property. System properties are accessible through the [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String)) method. The
    string value of this property is then interpreted as a `long` value using the grammar supported by [`decode`](#decode(java.lang.String))
    and a `Long` object representing this value is returned.

    The second argument is the default value. A `Long` object
    that represents the value of the second argument is returned if there
    is no property of the specified name, if the property does not have
    the correct numeric format, or if the specified name is empty or null.

    In other words, this method returns a `Long` object equal
    to the value of:
    > `getLong(nm, Long.valueOf(val))`

    but in practice it may be implemented in a manner such as:
    > ```
    >  Long result = getLong(nm, null);
    >  return (result == null) ? Long.valueOf(val) : result;
    > ```

    to avoid the unnecessary allocation of a `Long` object when
    the default value is not needed.

    Parameters:
    :   `nm` - property name.
    :   `val` - default value.

    Returns:
    :   the `Long` value of the property.

    Throws:
    :   `SecurityException` - for the same reasons as
        [`System.getProperty`](System.md#getProperty(java.lang.String))

    See Also:
    :   - [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String))
        - [`System.getProperty(java.lang.String, java.lang.String)`](System.md#getProperty(java.lang.String,java.lang.String))
  + ### getLong

    public static [Long](Long.md "class in java.lang") getLong([String](String.md "class in java.lang") nm,
    [Long](Long.md "class in java.lang") val)

    Returns the `long` value of the system property with
    the specified name. The first argument is treated as the name
    of a system property. System properties are accessible through
    the [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String))
    method. The string value of this property is then interpreted
    as a `long` value, as per the
    [`decode`](#decode(java.lang.String)) method, and a `Long` object
    representing this value is returned; in summary:
    - If the property value begins with the two ASCII characters
      `0x` or the ASCII character `#`, not followed by
      a minus sign, then the rest of it is parsed as a hexadecimal integer
      exactly as for the method [`valueOf(java.lang.String, int)`](#valueOf(java.lang.String,int))
      with radix 16.- If the property value begins with the ASCII character
        `0` followed by another character, it is parsed as
        an octal integer exactly as by the method [`valueOf(java.lang.String, int)`](#valueOf(java.lang.String,int)) with radix 8.- Otherwise the property value is parsed as a decimal
          integer exactly as by the method
          [`valueOf(java.lang.String, int)`](#valueOf(java.lang.String,int)) with radix 10.

    Note that, in every case, neither `L`
    (`'\u004C'`) nor `l`
    (`'\u006C'`) is permitted to appear at the end
    of the property value as a type indicator, as would be
    permitted in Java programming language source code.

    The second argument is the default value. The default value is
    returned if there is no property of the specified name, if the
    property does not have the correct numeric format, or if the
    specified name is empty or `null`.

    Parameters:
    :   `nm` - property name.
    :   `val` - default value.

    Returns:
    :   the `Long` value of the property.

    Throws:
    :   `SecurityException` - for the same reasons as
        [`System.getProperty`](System.md#getProperty(java.lang.String))

    See Also:
    :   - [`System.getProperty(java.lang.String)`](System.md#getProperty(java.lang.String))
        - [`System.getProperty(java.lang.String, java.lang.String)`](System.md#getProperty(java.lang.String,java.lang.String))
  + ### compareTo

    public int compareTo([Long](Long.md "class in java.lang") anotherLong)

    Compares two `Long` objects numerically.

    Specified by:
    :   `compareTo` in interface `Comparable<Long>`

    Parameters:
    :   `anotherLong` - the `Long` to be compared.

    Returns:
    :   the value `0` if this `Long` is
        equal to the argument `Long`; a value less than
        `0` if this `Long` is numerically less
        than the argument `Long`; and a value greater
        than `0` if this `Long` is numerically
        greater than the argument `Long` (signed
        comparison).

    Since:
    :   1.2
  + ### compare

    public static int compare(long x,
    long y)

    Compares two `long` values numerically.
    The value returned is identical to what would be returned by:

    ```
        Long.valueOf(x).compareTo(Long.valueOf(y))
    ```

    Parameters:
    :   `x` - the first `long` to compare
    :   `y` - the second `long` to compare

    Returns:
    :   the value `0` if `x == y`;
        a value less than `0` if `x < y`; and
        a value greater than `0` if `x > y`

    Since:
    :   1.7
  + ### compareUnsigned

    public static int compareUnsigned(long x,
    long y)

    Compares two `long` values numerically treating the values
    as unsigned.

    Parameters:
    :   `x` - the first `long` to compare
    :   `y` - the second `long` to compare

    Returns:
    :   the value `0` if `x == y`; a value less
        than `0` if `x < y` as unsigned values; and
        a value greater than `0` if `x > y` as
        unsigned values

    Since:
    :   1.8
  + ### divideUnsigned

    public static long divideUnsigned(long dividend,
    long divisor)

    Returns the unsigned quotient of dividing the first argument by
    the second where each argument and the result is interpreted as
    an unsigned value.

    Note that in two's complement arithmetic, the three other
    basic arithmetic operations of add, subtract, and multiply are
    bit-wise identical if the two operands are regarded as both
    being signed or both being unsigned. Therefore separate `addUnsigned`, etc. methods are not provided.

    Parameters:
    :   `dividend` - the value to be divided
    :   `divisor` - the value doing the dividing

    Returns:
    :   the unsigned quotient of the first argument divided by
        the second argument

    Since:
    :   1.8

    See Also:
    :   - [`remainderUnsigned(long, long)`](#remainderUnsigned(long,long))
  + ### remainderUnsigned

    public static long remainderUnsigned(long dividend,
    long divisor)

    Returns the unsigned remainder from dividing the first argument
    by the second where each argument and the result is interpreted
    as an unsigned value.

    Parameters:
    :   `dividend` - the value to be divided
    :   `divisor` - the value doing the dividing

    Returns:
    :   the unsigned remainder of the first argument divided by
        the second argument

    Since:
    :   1.8

    See Also:
    :   - [`divideUnsigned(long, long)`](#divideUnsigned(long,long))
  + ### highestOneBit

    public static long highestOneBit(long i)

    Returns a `long` value with at most a single one-bit, in the
    position of the highest-order ("leftmost") one-bit in the specified
    `long` value. Returns zero if the specified value has no
    one-bits in its two's complement binary representation, that is, if it
    is equal to zero.

    Parameters:
    :   `i` - the value whose highest one bit is to be computed

    Returns:
    :   a `long` value with a single one-bit, in the position
        of the highest-order one-bit in the specified value, or zero if
        the specified value is itself equal to zero.

    Since:
    :   1.5
  + ### lowestOneBit

    public static long lowestOneBit(long i)

    Returns a `long` value with at most a single one-bit, in the
    position of the lowest-order ("rightmost") one-bit in the specified
    `long` value. Returns zero if the specified value has no
    one-bits in its two's complement binary representation, that is, if it
    is equal to zero.

    Parameters:
    :   `i` - the value whose lowest one bit is to be computed

    Returns:
    :   a `long` value with a single one-bit, in the position
        of the lowest-order one-bit in the specified value, or zero if
        the specified value is itself equal to zero.

    Since:
    :   1.5
  + ### numberOfLeadingZeros

    public static int numberOfLeadingZeros(long i)

    Returns the number of zero bits preceding the highest-order
    ("leftmost") one-bit in the two's complement binary representation
    of the specified `long` value. Returns 64 if the
    specified value has no one-bits in its two's complement representation,
    in other words if it is equal to zero.

    Note that this method is closely related to the logarithm base 2.
    For all positive `long` values x:
    - floor(log2(x)) = `63 - numberOfLeadingZeros(x)`- ceil(log2(x)) = `64 - numberOfLeadingZeros(x - 1)`

    Parameters:
    :   `i` - the value whose number of leading zeros is to be computed

    Returns:
    :   the number of zero bits preceding the highest-order
        ("leftmost") one-bit in the two's complement binary representation
        of the specified `long` value, or 64 if the value
        is equal to zero.

    Since:
    :   1.5
  + ### numberOfTrailingZeros

    public static int numberOfTrailingZeros(long i)

    Returns the number of zero bits following the lowest-order ("rightmost")
    one-bit in the two's complement binary representation of the specified
    `long` value. Returns 64 if the specified value has no
    one-bits in its two's complement representation, in other words if it is
    equal to zero.

    Parameters:
    :   `i` - the value whose number of trailing zeros is to be computed

    Returns:
    :   the number of zero bits following the lowest-order ("rightmost")
        one-bit in the two's complement binary representation of the
        specified `long` value, or 64 if the value is equal
        to zero.

    Since:
    :   1.5
  + ### bitCount

    public static int bitCount(long i)

    Returns the number of one-bits in the two's complement binary
    representation of the specified `long` value. This function is
    sometimes referred to as the *population count*.

    Parameters:
    :   `i` - the value whose bits are to be counted

    Returns:
    :   the number of one-bits in the two's complement binary
        representation of the specified `long` value.

    Since:
    :   1.5
  + ### rotateLeft

    public static long rotateLeft(long i,
    int distance)

    Returns the value obtained by rotating the two's complement binary
    representation of the specified `long` value left by the
    specified number of bits. (Bits shifted out of the left hand, or
    high-order, side reenter on the right, or low-order.)

    Note that left rotation with a negative distance is equivalent to
    right rotation: `rotateLeft(val, -distance) == rotateRight(val,
    distance)`. Note also that rotation by any multiple of 64 is a
    no-op, so all but the last six bits of the rotation distance can be
    ignored, even if the distance is negative: `rotateLeft(val,
    distance) == rotateLeft(val, distance & 0x3F)`.

    Parameters:
    :   `i` - the value whose bits are to be rotated left
    :   `distance` - the number of bit positions to rotate left

    Returns:
    :   the value obtained by rotating the two's complement binary
        representation of the specified `long` value left by the
        specified number of bits.

    Since:
    :   1.5
  + ### rotateRight

    public static long rotateRight(long i,
    int distance)

    Returns the value obtained by rotating the two's complement binary
    representation of the specified `long` value right by the
    specified number of bits. (Bits shifted out of the right hand, or
    low-order, side reenter on the left, or high-order.)

    Note that right rotation with a negative distance is equivalent to
    left rotation: `rotateRight(val, -distance) == rotateLeft(val,
    distance)`. Note also that rotation by any multiple of 64 is a
    no-op, so all but the last six bits of the rotation distance can be
    ignored, even if the distance is negative: `rotateRight(val,
    distance) == rotateRight(val, distance & 0x3F)`.

    Parameters:
    :   `i` - the value whose bits are to be rotated right
    :   `distance` - the number of bit positions to rotate right

    Returns:
    :   the value obtained by rotating the two's complement binary
        representation of the specified `long` value right by the
        specified number of bits.

    Since:
    :   1.5
  + ### reverse

    public static long reverse(long i)

    Returns the value obtained by reversing the order of the bits in the
    two's complement binary representation of the specified `long`
    value.

    Parameters:
    :   `i` - the value to be reversed

    Returns:
    :   the value obtained by reversing order of the bits in the
        specified `long` value.

    Since:
    :   1.5
  + ### compress

    public static long compress(long i,
    long mask)

    Returns the value obtained by compressing the bits of the
    specified `long` value, `i`, in accordance with
    the specified bit mask.

    For each one-bit value `mb` of the mask, from least
    significant to most significant, the bit value of `i` at
    the same bit location as `mb` is assigned to the compressed
    value contiguously starting from the least significant bit location.
    All the upper remaining bits of the compressed value are set
    to zero.

    Parameters:
    :   `i` - the value whose bits are to be compressed
    :   `mask` - the bit mask

    Returns:
    :   the compressed value

    Since:
    :   19

    See Also:
    :   - [`expand(long, long)`](#expand(long,long))
  + ### expand

    public static long expand(long i,
    long mask)

    Returns the value obtained by expanding the bits of the
    specified `long` value, `i`, in accordance with
    the specified bit mask.

    For each one-bit value `mb` of the mask, from least
    significant to most significant, the next contiguous bit value
    of `i` starting at the least significant bit is assigned
    to the expanded value at the same bit location as `mb`.
    All other remaining bits of the expanded value are set to zero.

    Parameters:
    :   `i` - the value whose bits are to be expanded
    :   `mask` - the bit mask

    Returns:
    :   the expanded value

    Since:
    :   19

    See Also:
    :   - [`compress(long, long)`](#compress(long,long))
  + ### signum

    public static int signum(long i)

    Returns the signum function of the specified `long` value. (The
    return value is -1 if the specified value is negative; 0 if the
    specified value is zero; and 1 if the specified value is positive.)

    Parameters:
    :   `i` - the value whose signum is to be computed

    Returns:
    :   the signum function of the specified `long` value.

    Since:
    :   1.5
  + ### reverseBytes

    public static long reverseBytes(long i)

    Returns the value obtained by reversing the order of the bytes in the
    two's complement representation of the specified `long` value.

    Parameters:
    :   `i` - the value whose bytes are to be reversed

    Returns:
    :   the value obtained by reversing the bytes in the specified
        `long` value.

    Since:
    :   1.5
  + ### sum

    public static long sum(long a,
    long b)

    Adds two `long` values together as per the + operator.

    Parameters:
    :   `a` - the first operand
    :   `b` - the second operand

    Returns:
    :   the sum of `a` and `b`

    Since:
    :   1.8

    See Also:
    :   - [`BinaryOperator`](../util/function/BinaryOperator.md "interface in java.util.function")
  + ### max

    public static long max(long a,
    long b)

    Returns the greater of two `long` values
    as if by calling [`Math.max`](Math.md#max(long,long)).

    Parameters:
    :   `a` - the first operand
    :   `b` - the second operand

    Returns:
    :   the greater of `a` and `b`

    Since:
    :   1.8

    See Also:
    :   - [`BinaryOperator`](../util/function/BinaryOperator.md "interface in java.util.function")
  + ### min

    public static long min(long a,
    long b)

    Returns the smaller of two `long` values
    as if by calling [`Math.min`](Math.md#min(long,long)).

    Parameters:
    :   `a` - the first operand
    :   `b` - the second operand

    Returns:
    :   the smaller of `a` and `b`

    Since:
    :   1.8

    See Also:
    :   - [`BinaryOperator`](../util/function/BinaryOperator.md "interface in java.util.function")
  + ### describeConstable

    public [Optional](../util/Optional.md "class in java.util")<[Long](Long.md "class in java.lang")> describeConstable()

    Returns an [`Optional`](../util/Optional.md "class in java.util") containing the nominal descriptor for this
    instance, which is the instance itself.

    Specified by:
    :   `describeConstable` in interface `Constable`

    Returns:
    :   an [`Optional`](../util/Optional.md "class in java.util") describing the [Long](Long.md "class in java.lang") instance

    Since:
    :   12
  + ### resolveConstantDesc

    public [Long](Long.md "class in java.lang") resolveConstantDesc([MethodHandles.Lookup](invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)

    Resolves this instance as a [`ConstantDesc`](constant/ConstantDesc.md "interface in java.lang.constant"), the result of which is
    the instance itself.

    Specified by:
    :   `resolveConstantDesc` in interface `ConstantDesc`

    Parameters:
    :   `lookup` - ignored

    Returns:
    :   the [Long](Long.md "class in java.lang") instance

    Since:
    :   12