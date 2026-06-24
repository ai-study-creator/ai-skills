Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Class DateTimeParseException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.time.DateTimeException](../DateTimeException.md "class in java.time")

java.time.format.DateTimeParseException

All Implemented Interfaces:
:   `Serializable`

---

public class DateTimeParseException
extends [DateTimeException](../DateTimeException.md "class in java.time")

An exception thrown when an error occurs during parsing.

This exception includes the text being parsed and the error index.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.time.format.DateTimeParseException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DateTimeParseException(String message,
  CharSequence parsedData,
  int errorIndex)`

  Constructs a new exception with the specified message.

  `DateTimeParseException(String message,
  CharSequence parsedData,
  int errorIndex,
  Throwable cause)`

  Constructs a new exception with the specified message and cause.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getErrorIndex()`

  Returns the index where the error was found.

  `String`

  `getParsedString()`

  Returns the string that was being parsed.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DateTimeParseException

    public DateTimeParseException([String](../../lang/String.md "class in java.lang") message,
    [CharSequence](../../lang/CharSequence.md "interface in java.lang") parsedData,
    int errorIndex)

    Constructs a new exception with the specified message.

    Parameters:
    :   `message` - the message to use for this exception, may be null
    :   `parsedData` - the parsed text, should not be null
    :   `errorIndex` - the index in the parsed string that was invalid, should be a valid index
  + ### DateTimeParseException

    public DateTimeParseException([String](../../lang/String.md "class in java.lang") message,
    [CharSequence](../../lang/CharSequence.md "interface in java.lang") parsedData,
    int errorIndex,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified message and cause.

    Parameters:
    :   `message` - the message to use for this exception, may be null
    :   `parsedData` - the parsed text, should not be null
    :   `errorIndex` - the index in the parsed string that was invalid, should be a valid index
    :   `cause` - the cause exception, may be null
* ## Method Details

  + ### getParsedString

    public [String](../../lang/String.md "class in java.lang") getParsedString()

    Returns the string that was being parsed.

    Returns:
    :   the string that was being parsed, should not be null.
  + ### getErrorIndex

    public int getErrorIndex()

    Returns the index where the error was found.

    Returns:
    :   the index in the parsed string that was invalid, should be a valid index