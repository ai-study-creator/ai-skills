Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class RuntimeOperationsException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.management.JMRuntimeException](JMRuntimeException.md "class in javax.management")

javax.management.RuntimeOperationsException

All Implemented Interfaces:
:   `Serializable`

---

public class RuntimeOperationsException
extends [JMRuntimeException](JMRuntimeException.md "class in javax.management")

Represents runtime exceptions thrown in the agent when performing operations on MBeans.
It wraps the actual `java.lang.RuntimeException` thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.RuntimeOperationsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RuntimeOperationsException(RuntimeException e)`

  Creates a `RuntimeOperationsException` that wraps the actual `java.lang.RuntimeException`.

  `RuntimeOperationsException(RuntimeException e,
  String message)`

  Creates a `RuntimeOperationsException` that wraps the actual `java.lang.RuntimeException`
  with a detailed message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the actual [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang") thrown.

  `RuntimeException`

  `getTargetException()`

  Returns the actual [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang") thrown.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RuntimeOperationsException

    public RuntimeOperationsException([RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang") e)

    Creates a `RuntimeOperationsException` that wraps the actual `java.lang.RuntimeException`.

    Parameters:
    :   `e` - the wrapped exception.
  + ### RuntimeOperationsException

    public RuntimeOperationsException([RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a `RuntimeOperationsException` that wraps the actual `java.lang.RuntimeException`
    with a detailed message.

    Parameters:
    :   `e` - the wrapped exception.
    :   `message` - the detail message.
* ## Method Details

  + ### getTargetException

    public [RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang") getTargetException()

    Returns the actual [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang") thrown.

    Returns:
    :   the wrapped [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang").
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the actual [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang") thrown.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the wrapped [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang").