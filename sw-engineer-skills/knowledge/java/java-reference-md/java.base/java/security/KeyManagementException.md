Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyManagementException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

[java.security.KeyException](KeyException.md "class in java.security")

java.security.KeyManagementException

All Implemented Interfaces:
:   `Serializable`

---

public class KeyManagementException
extends [KeyException](KeyException.md "class in java.security")

This is the general key management exception for all operations
dealing with key management. Examples of subclasses of
`KeyManagementException` that developers might create for
giving more detailed information could include:

* KeyIDConflictException* KeyAuthorizationFailureException* ExpiredKeyException

Since:
:   1.1

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`KeyException`](KeyException.md "class in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.KeyManagementException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyManagementException()`

  Constructs a `KeyManagementException` with no detail message.

  `KeyManagementException(String msg)`

  Constructs a `KeyManagementException` with the specified detail
  message.

  `KeyManagementException(String message,
  Throwable cause)`

  Creates a `KeyManagementException` with the specified
  detail message and cause.

  `KeyManagementException(Throwable cause)`

  Creates a `KeyManagementException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KeyManagementException

    public KeyManagementException()

    Constructs a `KeyManagementException` with no detail message. A
    detail message is a `String` that describes this particular
    exception.
  + ### KeyManagementException

    public KeyManagementException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `KeyManagementException` with the specified detail
    message. A detail message is a `String` that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.
  + ### KeyManagementException

    public KeyManagementException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `KeyManagementException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### KeyManagementException

    public KeyManagementException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `KeyManagementException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5