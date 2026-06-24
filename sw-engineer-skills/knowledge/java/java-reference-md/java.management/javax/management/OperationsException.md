Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class OperationsException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](JMException.md "class in javax.management")

javax.management.OperationsException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AttributeNotFoundException`, `InstanceAlreadyExistsException`, `InstanceNotFoundException`, `IntrospectionException`, `InvalidAttributeValueException`, `ListenerNotFoundException`, `MalformedObjectNameException`, `NotCompliantMBeanException`, `ServiceNotFoundException`

---

public class OperationsException
extends [JMException](JMException.md "class in javax.management")

Represents exceptions thrown in the MBean server when performing operations
on MBeans.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.OperationsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OperationsException()`

  Default constructor.

  `OperationsException(String message)`

  Constructor that allows a specific error message to be specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OperationsException

    public OperationsException()

    Default constructor.
  + ### OperationsException

    public OperationsException([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor that allows a specific error message to be specified.

    Parameters:
    :   `message` - the detail message.