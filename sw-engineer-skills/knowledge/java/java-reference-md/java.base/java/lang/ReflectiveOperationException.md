Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ReflectiveOperationException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

java.lang.ReflectiveOperationException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ClassNotFoundException`, `IllegalAccessException`, `InstantiationException`, `InvocationTargetException`, `NoSuchFieldException`, `NoSuchMethodException`

---

public class ReflectiveOperationException
extends [Exception](Exception.md "class in java.lang")

Common superclass of exceptions thrown by reflective operations in
core reflection.

Since:
:   1.7

See Also:
:   * [`LinkageError`](LinkageError.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.ReflectiveOperationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReflectiveOperationException()`

  Constructs a new exception with `null` as its detail
  message.

  `ReflectiveOperationException(String message)`

  Constructs a new exception with the specified detail message.

  `ReflectiveOperationException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message
  and cause.

  `ReflectiveOperationException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReflectiveOperationException

    public ReflectiveOperationException()

    Constructs a new exception with `null` as its detail
    message. The cause is not initialized, and may subsequently be
    initialized by a call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).
  + ### ReflectiveOperationException

    public ReflectiveOperationException([String](String.md "class in java.lang") message)

    Constructs a new exception with the specified detail message.
    The cause is not initialized, and may subsequently be
    initialized by a call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method.
  + ### ReflectiveOperationException

    public ReflectiveOperationException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message
    and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)
  + ### ReflectiveOperationException

    public ReflectiveOperationException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)