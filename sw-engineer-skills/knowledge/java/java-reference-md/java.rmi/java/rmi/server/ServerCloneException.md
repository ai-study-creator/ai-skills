Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class ServerCloneException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.CloneNotSupportedException](../../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")

java.rmi.server.ServerCloneException

All Implemented Interfaces:
:   `Serializable`

---

public class ServerCloneException
extends [CloneNotSupportedException](../../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")

A `ServerCloneException` is thrown if a remote exception occurs
during the cloning of a `UnicastRemoteObject`.

As of release 1.4, this exception has been retrofitted to conform to
the general purpose exception-chaining mechanism. The "nested exception"
that may be provided at construction time and accessed via the public
[`detail`](#detail) field is now known as the *cause*, and may be
accessed via the [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method, as well as
the aforementioned "legacy field."

Invoking the method [`Throwable.initCause(Throwable)`](../../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) on an
instance of `ServerCloneException` always throws [`IllegalStateException`](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang").

Since:
:   1.1

See Also:
:   * [`UnicastRemoteObject.clone()`](UnicastRemoteObject.md#clone())
    * [Serialized Form](../../../../serialized-form.md#java.rmi.server.ServerCloneException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `Exception`

  `detail`

  The cause of the exception.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServerCloneException(String s)`

  Constructs a `ServerCloneException` with the specified
  detail message.

  `ServerCloneException(String s,
  Exception cause)`

  Constructs a `ServerCloneException` with the specified
  detail message and cause.
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

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### detail

    public [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") detail

    The cause of the exception.

    This field predates the general-purpose exception chaining facility.
    The [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method is now the preferred means of
    obtaining this information.
* ## Constructor Details

  + ### ServerCloneException

    public ServerCloneException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `ServerCloneException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.
  + ### ServerCloneException

    public ServerCloneException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") cause)

    Constructs a `ServerCloneException` with the specified
    detail message and cause.

    Parameters:
    :   `s` - the detail message.
    :   `cause` - the cause
* ## Method Details

  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns the detail message, including the message from the cause, if
    any, of this exception.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this exception. This method returns the value
    of the [`detail`](#detail) field.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause, which may be `null`.

    Since:
    :   1.4