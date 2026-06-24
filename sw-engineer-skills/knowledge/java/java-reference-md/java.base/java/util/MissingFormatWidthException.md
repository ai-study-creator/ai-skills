Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class MissingFormatWidthException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.MissingFormatWidthException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class MissingFormatWidthException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when the format width is required.

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.MissingFormatWidthException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MissingFormatWidthException(String s)`

  Constructs an instance of this class with the specified format
  specifier.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getFormatSpecifier()`

  Returns the format specifier which does not have a width.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MissingFormatWidthException

    public MissingFormatWidthException([String](../lang/String.md "class in java.lang") s)

    Constructs an instance of this class with the specified format
    specifier.

    Parameters:
    :   `s` - The format specifier which does not have a width
* ## Method Details

  + ### getFormatSpecifier

    public [String](../lang/String.md "class in java.lang") getFormatSpecifier()

    Returns the format specifier which does not have a width.

    Returns:
    :   The format specifier which does not have a width
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).