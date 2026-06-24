Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllformedLocaleException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.util.IllformedLocaleException

All Implemented Interfaces:
:   `Serializable`

---

public class IllformedLocaleException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Thrown by methods in [`Locale`](Locale.md "class in java.util") and [`Locale.Builder`](Locale.Builder.md "class in java.util") to
indicate that an argument is not a well-formed BCP 47 tag.

Since:
:   1.7

See Also:
:   * [`Locale`](Locale.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.IllformedLocaleException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllformedLocaleException()`

  Constructs a new `IllformedLocaleException` with no
  detail message and -1 as the error index.

  `IllformedLocaleException(String message)`

  Constructs a new `IllformedLocaleException` with the
  given message and -1 as the error index.

  `IllformedLocaleException(String message,
  int errorIndex)`

  Constructs a new `IllformedLocaleException` with the
  given message and the error index.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getErrorIndex()`

  Returns the index where the error was found.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllformedLocaleException

    public IllformedLocaleException()

    Constructs a new `IllformedLocaleException` with no
    detail message and -1 as the error index.
  + ### IllformedLocaleException

    public IllformedLocaleException([String](../lang/String.md "class in java.lang") message)

    Constructs a new `IllformedLocaleException` with the
    given message and -1 as the error index.

    Parameters:
    :   `message` - the message
  + ### IllformedLocaleException

    public IllformedLocaleException([String](../lang/String.md "class in java.lang") message,
    int errorIndex)

    Constructs a new `IllformedLocaleException` with the
    given message and the error index. The error index is the approximate
    offset from the start of the ill-formed value to the point where the
    parse first detected an error. A negative error index value indicates
    either the error index is not applicable or unknown.

    Parameters:
    :   `message` - the message
    :   `errorIndex` - the index
* ## Method Details

  + ### getErrorIndex

    public int getErrorIndex()

    Returns the index where the error was found. A negative value indicates
    either the error index is not applicable or unknown.

    Returns:
    :   the error index