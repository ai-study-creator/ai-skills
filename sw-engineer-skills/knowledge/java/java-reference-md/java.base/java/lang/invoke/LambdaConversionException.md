Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class LambdaConversionException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

java.lang.invoke.LambdaConversionException

All Implemented Interfaces:
:   `Serializable`

---

public class LambdaConversionException
extends [Exception](../Exception.md "class in java.lang")

LambdaConversionException

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.invoke.LambdaConversionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LambdaConversionException()`

  Constructs a `LambdaConversionException`.

  `LambdaConversionException(String message)`

  Constructs a `LambdaConversionException` with a message.

  `LambdaConversionException(String message,
  Throwable cause)`

  Constructs a `LambdaConversionException` with a message and cause.

  `LambdaConversionException(String message,
  Throwable cause,
  boolean enableSuppression,
  boolean writableStackTrace)`

  Constructs a `LambdaConversionException` with a message,
  cause, and other settings.

  `LambdaConversionException(Throwable cause)`

  Constructs a `LambdaConversionException` with a cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LambdaConversionException

    public LambdaConversionException()

    Constructs a `LambdaConversionException`.
  + ### LambdaConversionException

    public LambdaConversionException([String](../String.md "class in java.lang") message)

    Constructs a `LambdaConversionException` with a message.

    Parameters:
    :   `message` - the detail message
  + ### LambdaConversionException

    public LambdaConversionException([String](../String.md "class in java.lang") message,
    [Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a `LambdaConversionException` with a message and cause.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause
  + ### LambdaConversionException

    public LambdaConversionException([Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a `LambdaConversionException` with a cause.

    Parameters:
    :   `cause` - the cause
  + ### LambdaConversionException

    public LambdaConversionException([String](../String.md "class in java.lang") message,
    [Throwable](../Throwable.md "class in java.lang") cause,
    boolean enableSuppression,
    boolean writableStackTrace)

    Constructs a `LambdaConversionException` with a message,
    cause, and other settings.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause
    :   `enableSuppression` - whether or not suppressed exceptions are enabled
    :   `writableStackTrace` - whether or not the stack trace is writable