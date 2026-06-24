Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Error

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

java.lang.Error

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AnnotationFormatError`, `AssertionError`, `AWTError`, `CoderMalfunctionError`, `FactoryConfigurationError`, `FactoryConfigurationError`, `IOError`, `LinkageError`, `SchemaFactoryConfigurationError`, `ServiceConfigurationError`, `ThreadDeath`, `TransformerFactoryConfigurationError`, `VirtualMachineError`

---

public class Error
extends [Throwable](Throwable.md "class in java.lang")

An `Error` is a subclass of `Throwable`
that indicates serious problems that a reasonable application
should not try to catch. Most such errors are abnormal conditions.

A method is not required to declare in its `throws`
clause any subclasses of `Error` that might be thrown
during the execution of the method but not caught, since these
errors are abnormal conditions that should never occur.
That is, `Error` and its subclasses are regarded as unchecked
exceptions for the purposes of compile-time checking of exceptions.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.Error)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `Error()`

  Constructs a new error with `null` as its detail message.

  `Error(String message)`

  Constructs a new error with the specified detail message.

  `Error(String message,
  Throwable cause)`

  Constructs a new error with the specified detail message and
  cause.

  `protected`

  `Error(String message,
  Throwable cause,
  boolean enableSuppression,
  boolean writableStackTrace)`

  Constructs a new error with the specified detail message,
  cause, suppression enabled or disabled, and writable stack
  trace enabled or disabled.

  `Error(Throwable cause)`

  Constructs a new error with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Error

    public Error()

    Constructs a new error with `null` as its detail message.
    The cause is not initialized, and may subsequently be initialized by a
    call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).
  + ### Error

    public Error([String](String.md "class in java.lang") message)

    Constructs a new error with the specified detail message. The
    cause is not initialized, and may subsequently be initialized by
    a call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method.
  + ### Error

    public Error([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new error with the specified detail message and
    cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this error's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### Error

    public Error([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new error with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).
    This constructor is useful for errors that are little more than
    wrappers for other throwables.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### Error

    protected Error([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause,
    boolean enableSuppression,
    boolean writableStackTrace)

    Constructs a new error with the specified detail message,
    cause, suppression enabled or disabled, and writable stack
    trace enabled or disabled.

    Parameters:
    :   `message` - the detail message.
    :   `cause` - the cause. (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)
    :   `enableSuppression` - whether or not suppression is enabled
        or disabled
    :   `writableStackTrace` - whether or not the stack trace should
        be writable

    Since:
    :   1.7