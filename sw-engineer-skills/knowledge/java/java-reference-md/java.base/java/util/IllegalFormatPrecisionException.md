Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllegalFormatPrecisionException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.IllegalFormatPrecisionException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class IllegalFormatPrecisionException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when the precision is a negative value other than
`-1`, the conversion does not support a precision, or the value is
otherwise unsupported. If the precision is not representable by an
`int` type, then the value `Integer.MIN_VALUE` will be used
in the exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.IllegalFormatPrecisionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalFormatPrecisionException(int p)`

  Constructs an instance of this class with the specified precision.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  `int`

  `getPrecision()`

  Returns the precision.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalFormatPrecisionException

    public IllegalFormatPrecisionException(int p)

    Constructs an instance of this class with the specified precision.

    Parameters:
    :   `p` - The precision
* ## Method Details

  + ### getPrecision

    public int getPrecision()

    Returns the precision. If the precision isn't representable by an
    `int`, then will return `Integer.MIN_VALUE`.

    Returns:
    :   The precision
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).