Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class URISyntaxException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.net.URISyntaxException

All Implemented Interfaces:
:   `Serializable`

---

public class URISyntaxException
extends [Exception](../lang/Exception.md "class in java.lang")

Checked exception thrown to indicate that a string could not be parsed as a
URI reference.

Since:
:   1.4

See Also:
:   * [`URI`](URI.md "class in java.net")
    * [Serialized Form](../../../serialized-form.md#java.net.URISyntaxException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `URISyntaxException(String input,
  String reason)`

  Constructs an instance from the given input string and reason.

  `URISyntaxException(String input,
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
  parse error occurred, or `-1` if this position is not known.

  `String`

  `getInput()`

  Returns the input string.

  `String`

  `getMessage()`

  Returns a string describing the parse error.

  `String`

  `getReason()`

  Returns a string explaining why the input string could not be parsed.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### URISyntaxException

    public URISyntaxException([String](../lang/String.md "class in java.lang") input,
    [String](../lang/String.md "class in java.lang") reason,
    int index)

    Constructs an instance from the given input string, reason, and error
    index.

    Parameters:
    :   `input` - The input string
    :   `reason` - A string explaining why the input could not be parsed
    :   `index` - The index at which the parse error occurred,
        or `-1` if the index is not known

    Throws:
    :   `NullPointerException` - If either the input or reason strings are `null`
    :   `IllegalArgumentException` - If the error index is less than `-1`
  + ### URISyntaxException

    public URISyntaxException([String](../lang/String.md "class in java.lang") input,
    [String](../lang/String.md "class in java.lang") reason)

    Constructs an instance from the given input string and reason. The
    resulting object will have an error index of `-1`.

    Parameters:
    :   `input` - The input string
    :   `reason` - A string explaining why the input could not be parsed

    Throws:
    :   `NullPointerException` - If either the input or reason strings are `null`
* ## Method Details

  + ### getInput

    public [String](../lang/String.md "class in java.lang") getInput()

    Returns the input string.

    Returns:
    :   The input string
  + ### getReason

    public [String](../lang/String.md "class in java.lang") getReason()

    Returns a string explaining why the input string could not be parsed.

    Returns:
    :   The reason string
  + ### getIndex

    public int getIndex()

    Returns an index into the input string of the position at which the
    parse error occurred, or `-1` if this position is not known.

    Returns:
    :   The error index
  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Returns a string describing the parse error. The resulting string
    consists of the reason string followed by a colon character
    (`':'`), a space, and the input string. If the error index is
    defined then the string `" at index "` followed by the index, in
    decimal, is inserted after the reason string and before the colon
    character.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   A string describing the parse error