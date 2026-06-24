Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class FormatFlagsConversionMismatchException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.FormatFlagsConversionMismatchException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class FormatFlagsConversionMismatchException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when a conversion and flag are incompatible.

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.FormatFlagsConversionMismatchException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FormatFlagsConversionMismatchException(String f,
  char c)`

  Constructs an instance of this class with the specified flag
  and conversion.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `char`

  `getConversion()`

  Returns the incompatible conversion.

  `String`

  `getFlags()`

  Returns the incompatible flag.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FormatFlagsConversionMismatchException

    public FormatFlagsConversionMismatchException([String](../lang/String.md "class in java.lang") f,
    char c)

    Constructs an instance of this class with the specified flag
    and conversion.

    Parameters:
    :   `f` - The flag
    :   `c` - The conversion
* ## Method Details

  + ### getFlags

    public [String](../lang/String.md "class in java.lang") getFlags()

    Returns the incompatible flag.

    Returns:
    :   The flag
  + ### getConversion

    public char getConversion()

    Returns the incompatible conversion.

    Returns:
    :   The conversion
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).