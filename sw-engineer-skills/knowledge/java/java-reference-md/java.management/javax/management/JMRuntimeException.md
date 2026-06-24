Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class JMRuntimeException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.management.JMRuntimeException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MonitorSettingException`, `RuntimeErrorException`, `RuntimeMBeanException`, `RuntimeOperationsException`

---

public class JMRuntimeException
extends [RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Runtime exceptions emitted by JMX implementations.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.JMRuntimeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMRuntimeException()`

  Default constructor.

  `JMRuntimeException(String message)`

  Constructor that allows a specific error message to be specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMRuntimeException

    public JMRuntimeException()

    Default constructor.
  + ### JMRuntimeException

    public JMRuntimeException([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor that allows a specific error message to be specified.

    Parameters:
    :   `message` - the detail message.