Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Class ScriptException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.script.ScriptException

All Implemented Interfaces:
:   `Serializable`

---

public class ScriptException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

The generic `Exception` class for the Scripting APIs. Checked
exception types thrown by underlying scripting implementations must be wrapped in instances of
`ScriptException`. The class has members to store line and column numbers and
filenames if this information is available.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.script.ScriptException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScriptException(Exception e)`

  Creates a `ScriptException` wrapping an `Exception` thrown by an underlying
  interpreter.

  `ScriptException(String s)`

  Creates a `ScriptException` with a String to be used in its message.

  `ScriptException(String message,
  String fileName,
  int lineNumber)`

  Creates a `ScriptException` with message, filename and linenumber to
  be used in error messages.

  `ScriptException(String message,
  String fileName,
  int lineNumber,
  int columnNumber)`

  `ScriptException` constructor specifying message, filename, line number
  and column number.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColumnNumber()`

  Get the column number on which an error occurred.

  `String`

  `getFileName()`

  Get the source of the script causing the error.

  `int`

  `getLineNumber()`

  Get the line number on which an error occurred.

  `String`

  `getMessage()`

  Returns a message containing the String passed to a constructor as well as
  line and column numbers and filename if any of these are known.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ScriptException

    public ScriptException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Creates a `ScriptException` with a String to be used in its message.
    Filename, and line and column numbers are unspecified.

    Parameters:
    :   `s` - The String to use in the message.
  + ### ScriptException

    public ScriptException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Creates a `ScriptException` wrapping an `Exception` thrown by an underlying
    interpreter. Line and column numbers and filename are unspecified.

    Parameters:
    :   `e` - The wrapped `Exception`.
  + ### ScriptException

    public ScriptException([String](../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../java.base/java/lang/String.md "class in java.lang") fileName,
    int lineNumber)

    Creates a `ScriptException` with message, filename and linenumber to
    be used in error messages.

    Parameters:
    :   `message` - The string to use in the message
    :   `fileName` - The file or resource name describing the location of a script error
        causing the `ScriptException` to be thrown.
    :   `lineNumber` - A line number describing the location of a script error causing
        the `ScriptException` to be thrown.
  + ### ScriptException

    public ScriptException([String](../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../java.base/java/lang/String.md "class in java.lang") fileName,
    int lineNumber,
    int columnNumber)

    `ScriptException` constructor specifying message, filename, line number
    and column number.

    Parameters:
    :   `message` - The message.
    :   `fileName` - The filename
    :   `lineNumber` - the line number.
    :   `columnNumber` - the column number.
* ## Method Details

  + ### getMessage

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns a message containing the String passed to a constructor as well as
    line and column numbers and filename if any of these are known.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   The error message.
  + ### getLineNumber

    public int getLineNumber()

    Get the line number on which an error occurred.

    Returns:
    :   The line number. Returns -1 if a line number is unavailable.
  + ### getColumnNumber

    public int getColumnNumber()

    Get the column number on which an error occurred.

    Returns:
    :   The column number. Returns -1 if a column number is unavailable.
  + ### getFileName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getFileName()

    Get the source of the script causing the error.

    Returns:
    :   The file name of the script or some other string describing the script
        source. May return some implementation-defined string such as *<unknown>*
        if a description of the source is unavailable.