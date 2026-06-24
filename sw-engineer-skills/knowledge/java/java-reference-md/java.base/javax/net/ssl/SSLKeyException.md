Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLKeyException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java/io/IOException.md "class in java.io")

[javax.net.ssl.SSLException](SSLException.md "class in javax.net.ssl")

javax.net.ssl.SSLKeyException

All Implemented Interfaces:
:   `Serializable`

---

public class SSLKeyException
extends [SSLException](SSLException.md "class in javax.net.ssl")

Reports a bad SSL key. Normally, this indicates misconfiguration
of the server or client SSL certificate and private key.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLKeyException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLKeyException(String reason)`

  Constructs an exception reporting a key management error
  found by an SSL subsystem.

  `SSLKeyException(String message,
  Throwable cause)`

  Creates a `SSLKeyException` with the specified detail
  message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLKeyException

    public SSLKeyException([String](../../../java/lang/String.md "class in java.lang") reason)

    Constructs an exception reporting a key management error
    found by an SSL subsystem.

    Parameters:
    :   `reason` - describes the problem.
  + ### SSLKeyException

    public SSLKeyException([String](../../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLKeyException` with the specified detail
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