Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java/io/IOException.md "class in java.io")

javax.net.ssl.SSLException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SSLHandshakeException`, `SSLKeyException`, `SSLPeerUnverifiedException`, `SSLProtocolException`

---

public class SSLException
extends [IOException](../../../java/io/IOException.md "class in java.io")

Indicates some kind of error detected by an SSL subsystem.
This class is the general class of exceptions produced
by failed SSL-related operations.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLException(String reason)`

  Constructs an exception reporting an error found by
  an SSL subsystem.

  `SSLException(String message,
  Throwable cause)`

  Creates a `SSLException` with the specified
  detail message and cause.

  `SSLException(Throwable cause)`

  Creates a `SSLException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLException

    public SSLException([String](../../../java/lang/String.md "class in java.lang") reason)

    Constructs an exception reporting an error found by
    an SSL subsystem.

    Parameters:
    :   `reason` - describes the problem.
  + ### SSLException

    public SSLException([String](../../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../../java/lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../java/lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5
  + ### SSLException

    public SSLException([Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../java/lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5