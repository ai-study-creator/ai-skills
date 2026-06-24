Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLPeerUnverifiedException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java/io/IOException.md "class in java.io")

[javax.net.ssl.SSLException](SSLException.md "class in javax.net.ssl")

javax.net.ssl.SSLPeerUnverifiedException

All Implemented Interfaces:
:   `Serializable`

---

public class SSLPeerUnverifiedException
extends [SSLException](SSLException.md "class in javax.net.ssl")

Indicates that the peer's identity has not been verified.

When the peer was not able to
identify itself (for example; no certificate, the particular
cipher suite being used does not support authentication, or no
peer authentication was established during SSL handshaking) this
exception is thrown.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLPeerUnverifiedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLPeerUnverifiedException(String reason)`

  Constructs an exception reporting that the SSL peer's
  identity has not been verified.

  `SSLPeerUnverifiedException(String message,
  Throwable cause)`

  Creates a `SSLPeerUnverifiedException` with the specified detail
  message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLPeerUnverifiedException

    public SSLPeerUnverifiedException([String](../../../java/lang/String.md "class in java.lang") reason)

    Constructs an exception reporting that the SSL peer's
    identity has not been verified.

    Parameters:
    :   `reason` - describes the problem.
  + ### SSLPeerUnverifiedException

    public SSLPeerUnverifiedException([String](../../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLPeerUnverifiedException` with the specified detail
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