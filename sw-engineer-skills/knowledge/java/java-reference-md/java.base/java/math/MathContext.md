Module [java.base](../../module-summary.md)

Package [java.math](package-summary.md)

# Class MathContext

[java.lang.Object](../lang/Object.md "class in java.lang")

java.math.MathContext

All Implemented Interfaces:
:   `Serializable`

---

public final class MathContext
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

Immutable objects which encapsulate the context settings which
describe certain rules for numerical operators, such as those
implemented by the [`BigDecimal`](BigDecimal.md "class in java.math") class.

The base-independent settings are:

1. `precision`:
   the number of digits to be used for an operation; results are
   rounded to this precision- `roundingMode`:
     a [`RoundingMode`](RoundingMode.md "enum class in java.math") object which specifies the algorithm to be
     used for rounding.

Since:
:   1.5

See Also:
:   * [`BigDecimal`](BigDecimal.md "class in java.math")
    * [`RoundingMode`](RoundingMode.md "enum class in java.math")
    * [IEEE Standard for Floating-Point Arithmetic](https://standards.ieee.org/ieee/754/6210/)
    * [Serialized Form](../../../serialized-form.md#java.math.MathContext)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MathContext`

  `DECIMAL128`

  A `MathContext` object with a precision setting
  matching the precision of the IEEE 754-2019 decimal128 format, 34 digits, and a
  rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).

  `static final MathContext`

  `DECIMAL32`

  A `MathContext` object with a precision setting
  matching the precision of the IEEE 754-2019 decimal32 format, 7 digits, and a
  rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).

  `static final MathContext`

  `DECIMAL64`

  A `MathContext` object with a precision setting
  matching the precision of the IEEE 754-2019 decimal64 format, 16 digits, and a
  rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).

  `static final MathContext`

  `UNLIMITED`

  A `MathContext` object whose settings have the values
  required for unlimited precision arithmetic.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MathContext(int setPrecision)`

  Constructs a new `MathContext` with the specified
  precision and the [`HALF_UP`](RoundingMode.md#HALF_UP) rounding
  mode.

  `MathContext(int setPrecision,
  RoundingMode setRoundingMode)`

  Constructs a new `MathContext` with a specified
  precision and rounding mode.

  `MathContext(String val)`

  Constructs a new `MathContext` from a string.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object x)`

  Compares this `MathContext` with the specified
  `Object` for equality.

  `int`

  `getPrecision()`

  Returns the `precision` setting.

  `RoundingMode`

  `getRoundingMode()`

  Returns the roundingMode setting.

  `int`

  `hashCode()`

  Returns the hash code for this `MathContext`.

  `String`

  `toString()`

  Returns the string representation of this `MathContext`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### UNLIMITED

    public static final [MathContext](MathContext.md "class in java.math") UNLIMITED

    A `MathContext` object whose settings have the values
    required for unlimited precision arithmetic.
    The values of the settings are: `precision=0 roundingMode=HALF_UP`
  + ### DECIMAL32

    public static final [MathContext](MathContext.md "class in java.math") DECIMAL32

    A `MathContext` object with a precision setting
    matching the precision of the IEEE 754-2019 decimal32 format, 7 digits, and a
    rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).
    Note the exponent range of decimal32 is *not* used for
    rounding.
  + ### DECIMAL64

    public static final [MathContext](MathContext.md "class in java.math") DECIMAL64

    A `MathContext` object with a precision setting
    matching the precision of the IEEE 754-2019 decimal64 format, 16 digits, and a
    rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).
    Note the exponent range of decimal64 is *not* used for
    rounding.
  + ### DECIMAL128

    public static final [MathContext](MathContext.md "class in java.math") DECIMAL128

    A `MathContext` object with a precision setting
    matching the precision of the IEEE 754-2019 decimal128 format, 34 digits, and a
    rounding mode of [`HALF_EVEN`](RoundingMode.md#HALF_EVEN).
    Note the exponent range of decimal64 is *not* used for
    rounding.
* ## Constructor Details

  + ### MathContext

    public MathContext(int setPrecision)

    Constructs a new `MathContext` with the specified
    precision and the [`HALF_UP`](RoundingMode.md#HALF_UP) rounding
    mode.

    Parameters:
    :   `setPrecision` - The non-negative `int` precision setting.

    Throws:
    :   `IllegalArgumentException` - if the `setPrecision` parameter is less
        than zero.
  + ### MathContext

    public MathContext(int setPrecision,
    [RoundingMode](RoundingMode.md "enum class in java.math") setRoundingMode)

    Constructs a new `MathContext` with a specified
    precision and rounding mode.

    Parameters:
    :   `setPrecision` - The non-negative `int` precision setting.
    :   `setRoundingMode` - The rounding mode to use.

    Throws:
    :   `IllegalArgumentException` - if the `setPrecision` parameter is less
        than zero.
    :   `NullPointerException` - if the rounding mode argument is `null`
  + ### MathContext

    public MathContext([String](../lang/String.md "class in java.lang") val)

    Constructs a new `MathContext` from a string.
    The string must be in the same format as that produced by the
    [`toString()`](#toString()) method.

    An `IllegalArgumentException` is thrown if the precision
    section of the string is out of range (`< 0`) or the string is
    not in the format created by the [`toString()`](#toString()) method.

    Parameters:
    :   `val` - The string to be parsed

    Throws:
    :   `IllegalArgumentException` - if the precision section is out of range
        or of incorrect format
    :   `NullPointerException` - if the argument is `null`
* ## Method Details

  + ### getPrecision

    public int getPrecision()

    Returns the `precision` setting.
    This value is always non-negative.

    Returns:
    :   an `int` which is the value of the `precision`
        setting
  + ### getRoundingMode

    public [RoundingMode](RoundingMode.md "enum class in java.math") getRoundingMode()

    Returns the roundingMode setting.
    This will be one of
    [`RoundingMode.CEILING`](RoundingMode.md#CEILING),
    [`RoundingMode.DOWN`](RoundingMode.md#DOWN),
    [`RoundingMode.FLOOR`](RoundingMode.md#FLOOR),
    [`RoundingMode.HALF_DOWN`](RoundingMode.md#HALF_DOWN),
    [`RoundingMode.HALF_EVEN`](RoundingMode.md#HALF_EVEN),
    [`RoundingMode.HALF_UP`](RoundingMode.md#HALF_UP),
    [`RoundingMode.UNNECESSARY`](RoundingMode.md#UNNECESSARY), or
    [`RoundingMode.UP`](RoundingMode.md#UP).

    Returns:
    :   a `RoundingMode` object which is the value of the
        `roundingMode` setting
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") x)

    Compares this `MathContext` with the specified
    `Object` for equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `x` - `Object` to which this `MathContext` is to
        be compared.

    Returns:
    :   `true` if and only if the specified `Object` is
        a `MathContext` object which has exactly the same
        settings as this object

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code for this `MathContext`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   hash code for this `MathContext`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns the string representation of this `MathContext`.
    The `String` returned represents the settings of the
    `MathContext` object as two space-delimited words
    (separated by a single space character, `'\u0020'`,
    and with no leading or trailing white space), as follows:
    1. The string `"precision="`, immediately followed
       by the value of the precision setting as a numeric string as if
       generated by the [`Integer.toString`](../lang/Integer.md#toString(int))
       method.+ The string `"roundingMode="`, immediately
         followed by the value of the `roundingMode` setting as a
         word. This word will be the same as the name of the
         corresponding public constant in the [`RoundingMode`](RoundingMode.md "enum class in java.math")
         enum.

    For example:

    ```
     precision=9 roundingMode=HALF_UP
    ```

    Additional words may be appended to the result of
    `toString` in the future if more properties are added to
    this class.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representing the context settings