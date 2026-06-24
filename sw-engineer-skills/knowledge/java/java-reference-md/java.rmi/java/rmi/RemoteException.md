Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class RemoteException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

java.rmi.RemoteException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AccessException`, `ConnectException`, `ConnectIOException`, `ExportException`, `MarshalException`, `NoSuchObjectException`, `ServerError`, `ServerException`, `ServerRuntimeException`, `SkeletonMismatchException`, `SkeletonNotFoundException`, `StubNotFoundException`, `UnexpectedException`, `UnknownHostException`, `UnmarshalException`

---

public class RemoteException
extends [IOException](../../../java.base/java/io/IOException.md "class in java.io")

A `RemoteException` is the common superclass for a number of
communication-related exceptions that may occur during the execution of a
remote method call. Each method of a remote interface, an interface that
extends `java.rmi.Remote`, must list
`RemoteException` in its throws clause.

As of release 1.4, this exception has been retrofitted to conform to
the general purpose exception-chaining mechanism. The "wrapped remote
exception" that may be provided at construction time and accessed via
the public [`detail`](#detail) field is now known as the *cause*, and
may be accessed via the [`Throwable.getCause()`](../../../java.base/java/lang/Throwable.md#getCause()) method, as well as
the aforementioned "legacy field."

Invoking the method [`Throwable.initCause(Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) on an
instance of `RemoteException` always throws [`IllegalStateException`](../../../java.base/java/lang/IllegalStateException.md "class in java.lang").

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.RemoteException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `Throwable`

  `detail`

  The cause of the remote exception.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RemoteException()`

  Constructs a `RemoteException`.

  `RemoteException(String s)`

  Constructs a `RemoteException` with the specified
  detail message.

  `RemoteException(String s,
  Throwable cause)`

  Constructs a `RemoteException` with the specified detail
  message and cause.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this exception.

  `String`

  `getMessage()`

  Returns the detail message, including the message from the cause, if
  any, of this exception.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### detail

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") detail

    The cause of the remote exception.

    This field predates the general-purpose exception chaining facility.
    The [`Throwable.getCause()`](../../../java.base/java/lang/Throwable.md#getCause()) method is now the preferred means of
    obtaining this information.
* ## Constructor Details

  + ### RemoteException

    public RemoteException()

    Constructs a `RemoteException`.
  + ### RemoteException

    public RemoteException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `RemoteException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message
  + ### RemoteException

    public RemoteException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `RemoteException` with the specified detail
    message and cause. This constructor sets the [`detail`](#detail)
    field to the specified `Throwable`.

    Parameters:
    :   `s` - the detail message
    :   `cause` - the cause
* ## Method Details

  + ### getMessage

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns the detail message, including the message from the cause, if
    any, of this exception.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this exception. This method returns the value
    of the [`detail`](#detail) field.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause, which may be `null`.

    Since:
    :   1.4