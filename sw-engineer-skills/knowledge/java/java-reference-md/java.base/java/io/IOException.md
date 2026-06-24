Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class IOException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.io.IOException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ChangedCharSetException`, `CharacterCodingException`, `CharConversionException`, `ClosedChannelException`, `EOFException`, `FileLockInterruptionException`, `FileNotFoundException`, `FilerException`, `FileSystemException`, `HttpRetryException`, `HttpTimeoutException`, `IIOException`, `InterruptedByTimeoutException`, `InterruptedIOException`, `InvalidPropertiesFormatException`, `JMXProviderException`, `JMXServerErrorException`, `MalformedURLException`, `ObjectStreamException`, `ProtocolException`, `RemoteException`, `SaslException`, `SocketException`, `SSLException`, `SyncFailedException`, `UnknownHostException`, `UnknownServiceException`, `UnsupportedEncodingException`, `UserPrincipalNotFoundException`, `UTFDataFormatException`, `WebSocketHandshakeException`, `ZipException`

---

public class IOException
extends [Exception](../lang/Exception.md "class in java.lang")

Signals that an I/O exception of some sort has occurred. This
class is the general class of exceptions produced by failed or
interrupted I/O operations.

Since:
:   1.0

See Also:
:   * [`InputStream`](InputStream.md "class in java.io")
    * [`OutputStream`](OutputStream.md "class in java.io")
    * [Serialized Form](../../../serialized-form.md#java.io.IOException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IOException()`

  Constructs an `IOException` with `null`
  as its error detail message.

  `IOException(String message)`

  Constructs an `IOException` with the specified detail message.

  `IOException(String message,
  Throwable cause)`

  Constructs an `IOException` with the specified detail message
  and cause.

  `IOException(Throwable cause)`

  Constructs an `IOException` with the specified cause and a
  detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IOException

    public IOException()

    Constructs an `IOException` with `null`
    as its error detail message.
  + ### IOException

    public IOException([String](../lang/String.md "class in java.lang") message)

    Constructs an `IOException` with the specified detail message.

    Parameters:
    :   `message` - The detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method)
  + ### IOException

    public IOException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an `IOException` with the specified detail message
    and cause.

    Note that the detail message associated with `cause` is
    *not* automatically incorporated into this exception's detail
    message.

    Parameters:
    :   `message` - The detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method)
    :   `cause` - The cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A null value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.6
  + ### IOException

    public IOException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an `IOException` with the specified cause and a
    detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of `cause`).
    This constructor is useful for IO exceptions that are little more
    than wrappers for other throwables.

    Parameters:
    :   `cause` - The cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A null value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.6