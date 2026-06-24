Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class ReflectionException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](JMException.md "class in javax.management")

javax.management.ReflectionException

All Implemented Interfaces:
:   `Serializable`

---

public class ReflectionException
extends [JMException](JMException.md "class in javax.management")

Represents exceptions thrown in the MBean server when using the
java.lang.reflect classes to invoke methods on MBeans. It "wraps" the
actual java.lang.Exception thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.ReflectionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReflectionException(Exception e)`

  Creates a `ReflectionException` that wraps the actual `java.lang.Exception`.

  `ReflectionException(Exception e,
  String message)`

  Creates a `ReflectionException` that wraps the actual `java.lang.Exception` with
  a detail message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

  `Exception`

  `getTargetException()`

  Returns the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReflectionException

    public ReflectionException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Creates a `ReflectionException` that wraps the actual `java.lang.Exception`.

    Parameters:
    :   `e` - the wrapped exception.
  + ### ReflectionException

    public ReflectionException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a `ReflectionException` that wraps the actual `java.lang.Exception` with
    a detail message.

    Parameters:
    :   `e` - the wrapped exception.
    :   `message` - the detail message.
* ## Method Details

  + ### getTargetException

    public [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") getTargetException()

    Returns the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

    Returns:
    :   the wrapped [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang").
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the wrapped [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang").