Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllegalFormatWidthException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

[java.util.IllegalFormatException](IllegalFormatException.md "class in java.util")

java.util.IllegalFormatWidthException

All Implemented Interfaces:
:   `Serializable`

---

public non-sealed class IllegalFormatWidthException
extends [IllegalFormatException](IllegalFormatException.md "class in java.util")

Unchecked exception thrown when the format width is a negative value other
than `-1` or is otherwise unsupported. If a given format width is not
representable by an `int` type, then the value
`Integer.MIN_VALUE` will be used in the exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.IllegalFormatWidthException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalFormatWidthException(int w)`

  Constructs an instance of this class with the specified width.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  `int`

  `getWidth()`

  Returns the width.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalFormatWidthException

    public IllegalFormatWidthException(int w)

    Constructs an instance of this class with the specified width.

    Parameters:
    :   `w` - The width
* ## Method Details

  + ### getWidth

    public int getWidth()

    Returns the width. If the width is not representable by an `int`,
    then returns `Integer.MIN_VALUE`.

    Returns:
    :   The width
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).