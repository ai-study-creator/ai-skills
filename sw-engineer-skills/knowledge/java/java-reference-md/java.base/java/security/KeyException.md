Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

java.security.KeyException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InvalidKeyException`, `KeyManagementException`

---

public class KeyException
extends [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

This is the basic key exception.

Since:
:   1.1

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`InvalidKeyException`](InvalidKeyException.md "class in java.security")
    * [`KeyManagementException`](KeyManagementException.md "class in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.KeyException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyException()`

  Constructs a `KeyException` with no detail message.

  `KeyException(String msg)`

  Constructs a `KeyException` with the specified detail message.

  `KeyException(String message,
  Throwable cause)`

  Creates a `KeyException` with the specified
  detail message and cause.

  `KeyException(Throwable cause)`

  Creates a `KeyException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KeyException

    public KeyException()

    Constructs a `KeyException` with no detail message. A detail
    message is a `String` that describes this particular exception.
  + ### KeyException

    public KeyException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `KeyException` with the specified detail message.
    A detail message is a `String` that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.
  + ### KeyException

    public KeyException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `KeyException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### KeyException

    public KeyException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `KeyException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5