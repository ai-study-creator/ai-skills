Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class RuntimeErrorException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.management.JMRuntimeException](JMRuntimeException.md "class in javax.management")

javax.management.RuntimeErrorException

All Implemented Interfaces:
:   `Serializable`

---

public class RuntimeErrorException
extends [JMRuntimeException](JMRuntimeException.md "class in javax.management")

When a `java.lang.Error` occurs in the agent it should be caught and
re-thrown as a `RuntimeErrorException`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.RuntimeErrorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RuntimeErrorException(Error e)`

  Default constructor.

  `RuntimeErrorException(Error e,
  String message)`

  Constructor that allows a specific error message to be specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the actual [`Error`](../../../java.base/java/lang/Error.md "class in java.lang") thrown.

  `Error`

  `getTargetError()`

  Returns the actual [`Error`](../../../java.base/java/lang/Error.md "class in java.lang") thrown.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RuntimeErrorException

    public RuntimeErrorException([Error](../../../java.base/java/lang/Error.md "class in java.lang") e)

    Default constructor.

    Parameters:
    :   `e` - the wrapped error.
  + ### RuntimeErrorException

    public RuntimeErrorException([Error](../../../java.base/java/lang/Error.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor that allows a specific error message to be specified.

    Parameters:
    :   `e` - the wrapped error.
    :   `message` - the detail message.
* ## Method Details

  + ### getTargetError

    public [Error](../../../java.base/java/lang/Error.md "class in java.lang") getTargetError()

    Returns the actual [`Error`](../../../java.base/java/lang/Error.md "class in java.lang") thrown.

    Returns:
    :   the wrapped [`Error`](../../../java.base/java/lang/Error.md "class in java.lang").
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the actual [`Error`](../../../java.base/java/lang/Error.md "class in java.lang") thrown.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the wrapped [`Error`](../../../java.base/java/lang/Error.md "class in java.lang").