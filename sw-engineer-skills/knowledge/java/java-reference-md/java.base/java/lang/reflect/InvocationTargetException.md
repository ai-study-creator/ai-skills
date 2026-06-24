Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class InvocationTargetException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

java.lang.reflect.InvocationTargetException

All Implemented Interfaces:
:   `Serializable`

---

public class InvocationTargetException
extends [ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

InvocationTargetException is a checked exception that wraps
an exception thrown by an invoked method or constructor.

Since:
:   1.1

See Also:
:   * [`Method`](Method.md "class in java.lang.reflect")
    * [`Constructor`](Constructor.md "class in java.lang.reflect")
    * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.InvocationTargetException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InvocationTargetException()`

  Constructs an `InvocationTargetException` with
  `null` as the target exception.

  `InvocationTargetException(Throwable target)`

  Constructs a InvocationTargetException with a target exception.

  `InvocationTargetException(Throwable target,
  String s)`

  Constructs a InvocationTargetException with a target exception
  and a detail message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this exception (the thrown target exception,
  which may be `null`).

  `Throwable`

  `getTargetException()`

  Get the thrown target exception.

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvocationTargetException

    protected InvocationTargetException()

    Constructs an `InvocationTargetException` with
    `null` as the target exception.
  + ### InvocationTargetException

    public InvocationTargetException([Throwable](../Throwable.md "class in java.lang") target)

    Constructs a InvocationTargetException with a target exception.

    Parameters:
    :   `target` - the target exception
  + ### InvocationTargetException

    public InvocationTargetException([Throwable](../Throwable.md "class in java.lang") target,
    [String](../String.md "class in java.lang") s)

    Constructs a InvocationTargetException with a target exception
    and a detail message.

    Parameters:
    :   `target` - the target exception
    :   `s` - the detail message
* ## Method Details

  + ### getTargetException

    public [Throwable](../Throwable.md "class in java.lang") getTargetException()

    Get the thrown target exception.

    Returns:
    :   the thrown target exception (cause of this exception).
  + ### getCause

    public [Throwable](../Throwable.md "class in java.lang") getCause()

    Returns the cause of this exception (the thrown target exception,
    which may be `null`).

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this exception.

    Since:
    :   1.4