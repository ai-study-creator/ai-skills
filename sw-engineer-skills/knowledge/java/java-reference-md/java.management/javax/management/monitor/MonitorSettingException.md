Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class MonitorSettingException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.management.JMRuntimeException](../JMRuntimeException.md "class in javax.management")

javax.management.monitor.MonitorSettingException

All Implemented Interfaces:
:   `Serializable`

---

public class MonitorSettingException
extends [JMRuntimeException](../JMRuntimeException.md "class in javax.management")

Exception thrown by the monitor when a monitor setting becomes invalid while the monitor is running.

As the monitor attributes may change at runtime, a check is performed before each observation.
If a monitor attribute has become invalid, a monitor setting exception is thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.monitor.MonitorSettingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MonitorSettingException()`

  Default constructor.

  `MonitorSettingException(String message)`

  Constructor that allows an error message to be specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MonitorSettingException

    public MonitorSettingException()

    Default constructor.
  + ### MonitorSettingException

    public MonitorSettingException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor that allows an error message to be specified.

    Parameters:
    :   `message` - The specific error message.