Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class MissingFormatArgumentException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.MissingFormatArgumentException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class MissingFormatArgumentException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when there is a format specifier which does not
have a corresponding argument or if an argument index refers to an argument
that does not exist.

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.MissingFormatArgumentException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MissingFormatArgumentException(String s)`

  Constructs an instance of this class with the unmatched format
  specifier.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getFormatSpecifier()`

  Returns the unmatched format specifier.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MissingFormatArgumentException

    public MissingFormatArgumentException([String](../lang/String.md "class in java.lang") s)

    Constructs an instance of this class with the unmatched format
    specifier.

    Parameters:
    :   `s` - Format specifier which does not have a corresponding argument
* ## Method Details

  + ### getFormatSpecifier

    public [String](../lang/String.md "class in java.lang") getFormatSpecifier()

    Returns the unmatched format specifier.

    Returns:
    :   The unmatched format specifier
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).