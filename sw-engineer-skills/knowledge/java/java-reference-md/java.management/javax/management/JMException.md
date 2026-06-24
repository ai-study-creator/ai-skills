Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class JMException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.JMException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MBeanException`, `OpenDataException`, `OperationsException`, `ReflectionException`, `RelationException`

---

public class JMException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Exceptions thrown by JMX implementations.
It does not include the runtime exceptions.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.JMException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMException()`

  Default constructor.

  `JMException(String msg)`

  Constructor that allows a specific error message to be specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMException

    public JMException()

    Default constructor.
  + ### JMException

    public JMException([String](../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructor that allows a specific error message to be specified.

    Parameters:
    :   `msg` - the detail message.