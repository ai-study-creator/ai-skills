Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](JMException.md "class in javax.management")

javax.management.MBeanException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MBeanRegistrationException`

---

public class MBeanException
extends [JMException](JMException.md "class in javax.management")

Represents "user defined" exceptions thrown by MBean methods
in the agent. It "wraps" the actual "user defined" exception thrown.
This exception will be built by the MBeanServer when a call to an
MBean method results in an unknown exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanException(Exception e)`

  Creates an `MBeanException` that wraps the actual `java.lang.Exception`.

  `MBeanException(Exception e,
  String message)`

  Creates an `MBeanException` that wraps the actual `java.lang.Exception` with
  a detail message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Return the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

  `Exception`

  `getTargetException()`

  Return the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanException

    public MBeanException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Creates an `MBeanException` that wraps the actual `java.lang.Exception`.

    Parameters:
    :   `e` - the wrapped exception.
  + ### MBeanException

    public MBeanException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates an `MBeanException` that wraps the actual `java.lang.Exception` with
    a detail message.

    Parameters:
    :   `e` - the wrapped exception.
    :   `message` - the detail message.
* ## Method Details

  + ### getTargetException

    public [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") getTargetException()

    Return the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

    Returns:
    :   the wrapped exception.
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Return the actual [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang") thrown.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the wrapped exception.