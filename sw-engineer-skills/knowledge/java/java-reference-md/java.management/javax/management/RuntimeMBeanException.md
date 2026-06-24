Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class RuntimeMBeanException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.management.JMRuntimeException](JMRuntimeException.md "class in javax.management")

javax.management.RuntimeMBeanException

All Implemented Interfaces:
:   `Serializable`

---

public class RuntimeMBeanException
extends [JMRuntimeException](JMRuntimeException.md "class in javax.management")

Represents runtime exceptions thrown by MBean methods in
the agent. It "wraps" the actual `java.lang.RuntimeException` exception thrown.
This exception will be built by the MBeanServer when a call to an
MBean method throws a runtime exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.RuntimeMBeanException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RuntimeMBeanException(RuntimeException e)`

  Creates a `RuntimeMBeanException` that wraps the actual `java.lang.RuntimeException`.

  `RuntimeMBeanException(RuntimeException e,
  String message)`

  Creates a `RuntimeMBeanException` that wraps the actual `java.lang.RuntimeException` with
  a detailed message.
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

  + ### RuntimeMBeanException

    public RuntimeMBeanException([RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang") e)

    Creates a `RuntimeMBeanException` that wraps the actual `java.lang.RuntimeException`.

    Parameters:
    :   `e` - the wrapped exception.
  + ### RuntimeMBeanException

    public RuntimeMBeanException([RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a `RuntimeMBeanException` that wraps the actual `java.lang.RuntimeException` with
    a detailed message.

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