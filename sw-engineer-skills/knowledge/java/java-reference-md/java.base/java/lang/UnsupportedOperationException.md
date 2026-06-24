Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class UnsupportedOperationException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.UnsupportedOperationException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `HeadlessException`, `ReadOnlyBufferException`, `ReadOnlyFileSystemException`

---

public class UnsupportedOperationException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that the requested operation is not supported.

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.UnsupportedOperationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedOperationException()`

  Constructs an UnsupportedOperationException with no detail message.

  `UnsupportedOperationException(String message)`

  Constructs an UnsupportedOperationException with the specified
  detail message.

  `UnsupportedOperationException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `UnsupportedOperationException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedOperationException

    public UnsupportedOperationException()

    Constructs an UnsupportedOperationException with no detail message.
  + ### UnsupportedOperationException

    public UnsupportedOperationException([String](String.md "class in java.lang") message)

    Constructs an UnsupportedOperationException with the specified
    detail message.

    Parameters:
    :   `message` - the detail message
  + ### UnsupportedOperationException

    public UnsupportedOperationException([String](String.md "class in java.lang") message,
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
  + ### UnsupportedOperationException

    public UnsupportedOperationException([Throwable](Throwable.md "class in java.lang") cause)

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