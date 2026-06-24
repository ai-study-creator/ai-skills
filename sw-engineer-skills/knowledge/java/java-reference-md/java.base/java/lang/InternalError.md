Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class InternalError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.VirtualMachineError](VirtualMachineError.md "class in java.lang")

java.lang.InternalError

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ZipError`

---

public class InternalError
extends [VirtualMachineError](VirtualMachineError.md "class in java.lang")

Thrown to indicate some unexpected internal error has occurred in
the Java Virtual Machine.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.InternalError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InternalError()`

  Constructs an `InternalError` with no detail message.

  `InternalError(String message)`

  Constructs an `InternalError` with the specified
  detail message.

  `InternalError(String message,
  Throwable cause)`

  Constructs an `InternalError` with the specified detail
  message and cause.

  `InternalError(Throwable cause)`

  Constructs an `InternalError` with the specified cause
  and a detail message of `(cause==null ? null :
  cause.toString())` (which typically contains the class and
  detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InternalError

    public InternalError()

    Constructs an `InternalError` with no detail message.
  + ### InternalError

    public InternalError([String](String.md "class in java.lang") message)

    Constructs an `InternalError` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message.
  + ### InternalError

    public InternalError([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs an `InternalError` with the specified detail
    message and cause.

    Note that the detail message associated
    with `cause` is *not* automatically incorporated in
    this error's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.8
  + ### InternalError

    public InternalError([Throwable](Throwable.md "class in java.lang") cause)

    Constructs an `InternalError` with the specified cause
    and a detail message of `(cause==null ? null :
    cause.toString())` (which typically contains the class and
    detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.8