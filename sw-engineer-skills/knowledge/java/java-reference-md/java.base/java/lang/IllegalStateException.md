Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalStateException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.IllegalStateException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AcceptPendingException`, `AlreadyBoundException`, `AlreadyConnectedException`, `CancellationException`, `CancelledKeyException`, `ClosedDirectoryStreamException`, `ClosedFileSystemException`, `ClosedSelectorException`, `ClosedWatchServiceException`, `ConnectionPendingException`, `FormatterClosedException`, `IllegalBlockingModeException`, `IllegalComponentStateException`, `InvalidDnDOperationException`, `InvalidMarkException`, `NoConnectionPendingException`, `NonReadableChannelException`, `NonWritableChannelException`, `NotYetBoundException`, `NotYetConnectedException`, `OverlappingFileLockException`, `ReadPendingException`, `ShutdownChannelGroupException`, `WritePendingException`

---

public class IllegalStateException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Signals that a method has been invoked at an illegal or
inappropriate time. In other words, the Java environment or
Java application is not in an appropriate state for the requested
operation.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.IllegalStateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalStateException()`

  Constructs an IllegalStateException with no detail message.

  `IllegalStateException(String s)`

  Constructs an IllegalStateException with the specified detail
  message.

  `IllegalStateException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `IllegalStateException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalStateException

    public IllegalStateException()

    Constructs an IllegalStateException with no detail message.
    A detail message is a String that describes this particular exception.
  + ### IllegalStateException

    public IllegalStateException([String](String.md "class in java.lang") s)

    Constructs an IllegalStateException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `s` - the String that contains a detailed message
  + ### IllegalStateException

    public IllegalStateException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message and
    cause.

    Note that the detail message associated with `cause` is
    *not* automatically incorporated in this exception's detail
    message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value
        is permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5
  + ### IllegalStateException

    public IllegalStateException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).
    This constructor is useful for exceptions that are little more than
    wrappers for other throwables (for example, [`PrivilegedActionException`](../security/PrivilegedActionException.md "class in java.security")).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5