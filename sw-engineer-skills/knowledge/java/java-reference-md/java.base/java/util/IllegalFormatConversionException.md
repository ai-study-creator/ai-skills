Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllegalFormatConversionException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.IllegalFormatConversionException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class IllegalFormatConversionException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when the argument corresponding to the format
specifier is of an incompatible type.

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.IllegalFormatConversionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalFormatConversionException(char c,
  Class<?> arg)`

  Constructs an instance of this class with the mismatched conversion and
  the corresponding argument class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getArgumentClass()`

  Returns the class of the mismatched argument.

  `char`

  `getConversion()`

  Returns the inapplicable conversion.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalFormatConversionException

    public IllegalFormatConversionException(char c,
    [Class](../lang/Class.md "class in java.lang")<?> arg)

    Constructs an instance of this class with the mismatched conversion and
    the corresponding argument class.

    Parameters:
    :   `c` - Inapplicable conversion
    :   `arg` - Class of the mismatched argument
* ## Method Details

  + ### getConversion

    public char getConversion()

    Returns the inapplicable conversion.

    Returns:
    :   The inapplicable conversion
  + ### getArgumentClass

    public [Class](../lang/Class.md "class in java.lang")<?> getArgumentClass()

    Returns the class of the mismatched argument.

    Returns:
    :   The class of the mismatched argument
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).