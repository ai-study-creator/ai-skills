Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLProtocolException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java/io/IOException.md "class in java.io")

[javax.net.ssl.SSLException](SSLException.md "class in javax.net.ssl")

javax.net.ssl.SSLProtocolException

All Implemented Interfaces:
:   `Serializable`

---

public class SSLProtocolException
extends [SSLException](SSLException.md "class in javax.net.ssl")

Reports an error in the operation of the SSL protocol. Normally
this indicates a flaw in one of the protocol implementations.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLProtocolException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLProtocolException(String reason)`

  Constructs an exception reporting an SSL protocol error
  detected by an SSL subsystem.

  `SSLProtocolException(String message,
  Throwable cause)`

  Creates a `SSLProtocolException` with the specified detail
  message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLProtocolException

    public SSLProtocolException([String](../../../java/lang/String.md "class in java.lang") reason)

    Constructs an exception reporting an SSL protocol error
    detected by an SSL subsystem.

    Parameters:
    :   `reason` - describes the problem.
  + ### SSLProtocolException

    public SSLProtocolException([String](../../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `SSLProtocolException` with the specified detail
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