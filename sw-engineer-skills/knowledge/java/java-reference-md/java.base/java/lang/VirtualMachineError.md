Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class VirtualMachineError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

java.lang.VirtualMachineError

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InternalError`, `OutOfMemoryError`, `StackOverflowError`, `UnknownError`

---

public abstract class VirtualMachineError
extends [Error](Error.md "class in java.lang")

Thrown to indicate that the Java Virtual Machine is broken or has
run out of resources necessary for it to continue operating.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.VirtualMachineError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VirtualMachineError()`

  Constructs a `VirtualMachineError` with no detail message.

  `VirtualMachineError(String message)`

  Constructs a `VirtualMachineError` with the specified
  detail message.

  `VirtualMachineError(String message,
  Throwable cause)`

  Constructs a `VirtualMachineError` with the specified
  detail message and cause.

  `VirtualMachineError(Throwable cause)`

  Constructs a `VirtualMachineError` with the specified
  cause and a detail message of `(cause==null ? null :
  cause.toString())` (which typically contains the class and
  detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### VirtualMachineError

    public VirtualMachineError()

    Constructs a `VirtualMachineError` with no detail message.
  + ### VirtualMachineError

    public VirtualMachineError([String](String.md "class in java.lang") message)

    Constructs a `VirtualMachineError` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message.
  + ### VirtualMachineError

    public VirtualMachineError([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `VirtualMachineError` with the specified
    detail message and cause.

    Note that the detail message
    associated with `cause` is *not* automatically
    incorporated in this error's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.8
  + ### VirtualMachineError

    public VirtualMachineError([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `VirtualMachineError` with the specified
    cause and a detail message of `(cause==null ? null :
    cause.toString())` (which typically contains the class and
    detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.8