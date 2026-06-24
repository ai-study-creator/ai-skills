Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class UndeclaredThrowableException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.reflect.UndeclaredThrowableException

All Implemented Interfaces:
:   `Serializable`

---

public class UndeclaredThrowableException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown by a method invocation on a proxy instance if its invocation
handler's [`invoke`](InvocationHandler.md#invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object%5B%5D)) method throws a
checked exception (a `Throwable` that is not assignable
to `RuntimeException` or `Error`) that
is not assignable to any of the exception types declared in the
`throws` clause of the method that was invoked on the
proxy instance and dispatched to the invocation handler.

An `UndeclaredThrowableException` instance contains
the undeclared checked exception that was thrown by the invocation
handler, and it can be retrieved with the
`getUndeclaredThrowable()` method.
`UndeclaredThrowableException` extends
`RuntimeException`, so it is an unchecked exception
that wraps a checked exception.

Since:
:   1.3

See Also:
:   * [`InvocationHandler`](InvocationHandler.md "interface in java.lang.reflect")
    * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.UndeclaredThrowableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UndeclaredThrowableException(Throwable undeclaredThrowable)`

  Constructs an `UndeclaredThrowableException` with the
  specified `Throwable`.

  `UndeclaredThrowableException(Throwable undeclaredThrowable,
  String s)`

  Constructs an `UndeclaredThrowableException` with the
  specified `Throwable` and a detail message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getUndeclaredThrowable()`

  Returns the `Throwable` instance wrapped in this
  `UndeclaredThrowableException`, which may be `null`.

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UndeclaredThrowableException

    public UndeclaredThrowableException([Throwable](../Throwable.md "class in java.lang") undeclaredThrowable)

    Constructs an `UndeclaredThrowableException` with the
    specified `Throwable`.

    Parameters:
    :   `undeclaredThrowable` - the undeclared checked exception
        that was thrown
  + ### UndeclaredThrowableException

    public UndeclaredThrowableException([Throwable](../Throwable.md "class in java.lang") undeclaredThrowable,
    [String](../String.md "class in java.lang") s)

    Constructs an `UndeclaredThrowableException` with the
    specified `Throwable` and a detail message.

    Parameters:
    :   `undeclaredThrowable` - the undeclared checked exception
        that was thrown
    :   `s` - the detail message
* ## Method Details

  + ### getUndeclaredThrowable

    public [Throwable](../Throwable.md "class in java.lang") getUndeclaredThrowable()

    Returns the `Throwable` instance wrapped in this
    `UndeclaredThrowableException`, which may be `null`.

    Returns:
    :   the undeclared checked exception that was thrown