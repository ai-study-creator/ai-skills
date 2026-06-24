Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class InvalidParameterException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

java.security.InvalidParameterException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidParameterException
extends [IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

This exception, designed for use by the JCA/JCE engine classes,
is thrown when an invalid parameter is passed
to a method.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.InvalidParameterException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidParameterException()`

  Constructs an `InvalidParameterException` with no detail message.

  `InvalidParameterException(String msg)`

  Constructs an `InvalidParameterException` with the specified
  detail message.

  `InvalidParameterException(String msg,
  Throwable cause)`

  Constructs an `InvalidParameterException` with the specified
  detail message and cause.

  `InvalidParameterException(Throwable cause)`

  Constructs an `InvalidParameterException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidParameterException

    public InvalidParameterException()

    Constructs an `InvalidParameterException` with no detail message.
    A detail message is a `String` that describes this particular
    exception.
  + ### InvalidParameterException

    public InvalidParameterException([String](../lang/String.md "class in java.lang") msg)

    Constructs an `InvalidParameterException` with the specified
    detail message. A detail message is a `String` that describes
    this particular exception.

    Parameters:
    :   `msg` - the detail message.
  + ### InvalidParameterException

    public InvalidParameterException([String](../lang/String.md "class in java.lang") msg,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an `InvalidParameterException` with the specified
    detail message and cause. A detail message is a `String`
    that describes this particular exception.

    Note that the detail message associated with `cause` is
    *not* automatically incorporated in this exception's detail
    message.

    Parameters:
    :   `msg` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value
        is permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   20
  + ### InvalidParameterException

    public InvalidParameterException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an `InvalidParameterException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of `cause`).
    This constructor is useful for exceptions that are little more than
    wrappers for other throwables.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   20