Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLHandshakeException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java/io/IOException.md "class in java.io")

[javax.net.ssl.SSLException](SSLException.md "class in javax.net.ssl")

javax.net.ssl.SSLHandshakeException

All Implemented Interfaces:
:   `Serializable`

---

public class SSLHandshakeException
extends [SSLException](SSLException.md "class in javax.net.ssl")

Indicates that the client and server could not negotiate the
desired level of security. The connection is no longer usable.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLHandshakeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLHandshakeException(String reason)`

  Constructs an exception reporting an error found by
  an SSL subsystem during handshaking.

  `SSLHandshakeException(String message,
  Throwable cause)`

  Creates a `SSLHandshakeException` with the specified detail
  message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLHandshakeException

    public SSLHandshakeException([String](../../../java/lang/String.md "class in java.lang") reason)

    Constructs an exception reporting an error found by
    an SSL subsystem during handshaking.

    Parameters:
    :   `reason` - describes the problem.
  + ### SSLHandshakeException

    public SSLHandshakeException([String](../../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLHandshakeException` with the specified detail
    message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../../java/lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../java/lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   19