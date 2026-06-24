Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllegalFormatCodePointException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.IllegalFormatCodePointException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class IllegalFormatCodePointException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when a character with an invalid Unicode code
point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)) is passed to the
[`Formatter`](Formatter.md "class in java.util").

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.IllegalFormatCodePointException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalFormatCodePointException(int c)`

  Constructs an instance of this class with the specified illegal code
  point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCodePoint()`

  Returns the illegal code point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)).

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalFormatCodePointException

    public IllegalFormatCodePointException(int c)

    Constructs an instance of this class with the specified illegal code
    point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)).

    Parameters:
    :   `c` - The illegal Unicode code point
* ## Method Details

  + ### getCodePoint

    public int getCodePoint()

    Returns the illegal code point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)).

    Returns:
    :   The illegal Unicode code point
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).