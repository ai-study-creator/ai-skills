Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class InvalidAlgorithmParameterException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

java.security.InvalidAlgorithmParameterException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidAlgorithmParameterException
extends [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

This is the exception for invalid or inappropriate algorithm parameters.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameters`](AlgorithmParameters.md "class in java.security")
    * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")
    * [Serialized Form](../../../serialized-form.md#java.security.InvalidAlgorithmParameterException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidAlgorithmParameterException()`

  Constructs an `InvalidAlgorithmParameterException` with no detail
  message.

  `InvalidAlgorithmParameterException(String msg)`

  Constructs an `InvalidAlgorithmParameterException` with the
  specified detail message.

  `InvalidAlgorithmParameterException(String message,
  Throwable cause)`

  Creates an `InvalidAlgorithmParameterException` with the
  specified detail message and cause.

  `InvalidAlgorithmParameterException(Throwable cause)`

  Creates an `InvalidAlgorithmParameterException` with the
  specified cause and a detail message of
  `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidAlgorithmParameterException

    public InvalidAlgorithmParameterException()

    Constructs an `InvalidAlgorithmParameterException` with no detail
    message.
    A detail message is a `String` that describes this particular
    exception.
  + ### InvalidAlgorithmParameterException

    public InvalidAlgorithmParameterException([String](../lang/String.md "class in java.lang") msg)

    Constructs an `InvalidAlgorithmParameterException` with the
    specified detail message.
    A detail message is a `String` that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.
  + ### InvalidAlgorithmParameterException

    public InvalidAlgorithmParameterException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates an `InvalidAlgorithmParameterException` with the
    specified detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### InvalidAlgorithmParameterException

    public InvalidAlgorithmParameterException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates an `InvalidAlgorithmParameterException` with the
    specified cause and a detail message of
    `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5