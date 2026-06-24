Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class InvalidPathException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.file.InvalidPathException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidPathException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when path string cannot be converted into a
[`Path`](Path.md "interface in java.nio.file") because the path string contains invalid characters, or
the path string is invalid for other file system specific reasons.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.InvalidPathException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidPathException(String input,
  String reason)`

  Constructs an instance from the given input string and reason.

  `InvalidPathException(String input,
  String reason,
  int index)`

  Constructs an instance from the given input string, reason, and error
  index.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIndex()`

  Returns an index into the input string of the position at which the
  error occurred, or `-1` if this position is not known.

  `String`

  `getInput()`

  Returns the input string.

  `String`

  `getMessage()`

  Returns a string describing the error.

  `String`

  `getReason()`

  Returns a string explaining why the input string was rejected.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidPathException

    public InvalidPathException([String](../../lang/String.md "class in java.lang") input,
    [String](../../lang/String.md "class in java.lang") reason,
    int index)

    Constructs an instance from the given input string, reason, and error
    index.

    Parameters:
    :   `input` - the input string
    :   `reason` - a string explaining why the input was rejected
    :   `index` - the index at which the error occurred,
        or `-1` if the index is not known

    Throws:
    :   `NullPointerException` - if either the input or reason strings are `null`
    :   `IllegalArgumentException` - if the error index is less than `-1`
  + ### InvalidPathException

    public InvalidPathException([String](../../lang/String.md "class in java.lang") input,
    [String](../../lang/String.md "class in java.lang") reason)

    Constructs an instance from the given input string and reason. The
    resulting object will have an error index of `-1`.

    Parameters:
    :   `input` - the input string
    :   `reason` - a string explaining why the input was rejected

    Throws:
    :   `NullPointerException` - if either the input or reason strings are `null`
* ## Method Details

  + ### getInput

    public [String](../../lang/String.md "class in java.lang") getInput()

    Returns the input string.

    Returns:
    :   the input string
  + ### getReason

    public [String](../../lang/String.md "class in java.lang") getReason()

    Returns a string explaining why the input string was rejected.

    Returns:
    :   the reason string
  + ### getIndex

    public int getIndex()

    Returns an index into the input string of the position at which the
    error occurred, or `-1` if this position is not known.

    Returns:
    :   the error index
  + ### getMessage

    public [String](../../lang/String.md "class in java.lang") getMessage()

    Returns a string describing the error. The resulting string
    consists of the reason string followed by a colon character
    (`':'`), a space, and the input string. If the error index is
    defined then the string `" at index "` followed by the index, in
    decimal, is inserted after the reason string and before the colon
    character.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   a string describing the error