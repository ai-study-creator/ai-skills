Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class MonitorNotification

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](../Notification.md "class in javax.management")

javax.management.monitor.MonitorNotification

All Implemented Interfaces:
:   `Serializable`

---

public class MonitorNotification
extends [Notification](../Notification.md "class in javax.management")

Provides definitions of the notifications sent by monitor MBeans.

The notification source and a set of parameters concerning the monitor MBean's state
need to be specified when creating a new object of this class.
The list of notifications fired by the monitor MBeans is the following:

* Common to all kind of monitors:
  + The observed object is not registered in the MBean server.+ The observed attribute is not contained in the observed object.+ The type of the observed attribute is not correct.+ Any exception (except the cases described above) occurs when trying to get the value of the observed attribute.* Common to the counter and the gauge monitors:
    + The threshold high or threshold low are not of the same type as the gauge (gauge monitors).+ The threshold or the offset or the modulus are not of the same type as the counter (counter monitors).* Counter monitors only:
      + The observed attribute has reached the threshold value.* Gauge monitors only:
        + The observed attribute has exceeded the threshold high value.+ The observed attribute has exceeded the threshold low value.* String monitors only:
          + The observed attribute has matched the "string to compare" value.+ The observed attribute has differed from the "string to compare" value.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.monitor.MonitorNotification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OBSERVED_ATTRIBUTE_ERROR`

  Notification type denoting that the observed attribute is not contained in the observed object.

  `static final String`

  `OBSERVED_ATTRIBUTE_TYPE_ERROR`

  Notification type denoting that the type of the observed attribute is not correct.

  `static final String`

  `OBSERVED_OBJECT_ERROR`

  Notification type denoting that the observed object is not registered in the MBean server.

  `static final String`

  `RUNTIME_ERROR`

  Notification type denoting that a non-predefined error type has occurred when trying to get the value of the observed attribute.

  `static final String`

  `STRING_TO_COMPARE_VALUE_DIFFERED`

  Notification type denoting that the observed attribute has differed from the "string to compare" value.

  `static final String`

  `STRING_TO_COMPARE_VALUE_MATCHED`

  Notification type denoting that the observed attribute has matched the "string to compare" value.

  `static final String`

  `THRESHOLD_ERROR`

  Notification type denoting that the type of the thresholds, offset or modulus is not correct.

  `static final String`

  `THRESHOLD_HIGH_VALUE_EXCEEDED`

  Notification type denoting that the observed attribute has exceeded the threshold high value.

  `static final String`

  `THRESHOLD_LOW_VALUE_EXCEEDED`

  Notification type denoting that the observed attribute has exceeded the threshold low value.

  `static final String`

  `THRESHOLD_VALUE_EXCEEDED`

  Notification type denoting that the observed attribute has reached the threshold value.

  ### Fields inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `source`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getDerivedGauge()`

  Gets the derived gauge of this monitor notification.

  `String`

  `getObservedAttribute()`

  Gets the observed attribute of this monitor notification.

  `ObjectName`

  `getObservedObject()`

  Gets the observed object of this monitor notification.

  `Object`

  `getTrigger()`

  Gets the threshold/string (depending on the monitor type) that triggered off this monitor notification.

  ### Methods inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OBSERVED\_OBJECT\_ERROR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OBSERVED\_OBJECT\_ERROR

    Notification type denoting that the observed object is not registered in the MBean server.
    This notification is fired by all kinds of monitors.
      
    The value of this notification type is `jmx.monitor.error.mbean`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.OBSERVED_OBJECT_ERROR)
  + ### OBSERVED\_ATTRIBUTE\_ERROR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OBSERVED\_ATTRIBUTE\_ERROR

    Notification type denoting that the observed attribute is not contained in the observed object.
    This notification is fired by all kinds of monitors.
      
    The value of this notification type is `jmx.monitor.error.attribute`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.OBSERVED_ATTRIBUTE_ERROR)
  + ### OBSERVED\_ATTRIBUTE\_TYPE\_ERROR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OBSERVED\_ATTRIBUTE\_TYPE\_ERROR

    Notification type denoting that the type of the observed attribute is not correct.
    This notification is fired by all kinds of monitors.
      
    The value of this notification type is `jmx.monitor.error.type`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.OBSERVED_ATTRIBUTE_TYPE_ERROR)
  + ### THRESHOLD\_ERROR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") THRESHOLD\_ERROR

    Notification type denoting that the type of the thresholds, offset or modulus is not correct.
    This notification is fired by counter and gauge monitors.
      
    The value of this notification type is `jmx.monitor.error.threshold`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.THRESHOLD_ERROR)
  + ### RUNTIME\_ERROR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RUNTIME\_ERROR

    Notification type denoting that a non-predefined error type has occurred when trying to get the value of the observed attribute.
    This notification is fired by all kinds of monitors.
      
    The value of this notification type is `jmx.monitor.error.runtime`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.RUNTIME_ERROR)
  + ### THRESHOLD\_VALUE\_EXCEEDED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") THRESHOLD\_VALUE\_EXCEEDED

    Notification type denoting that the observed attribute has reached the threshold value.
    This notification is only fired by counter monitors.
      
    The value of this notification type is `jmx.monitor.counter.threshold`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.THRESHOLD_VALUE_EXCEEDED)
  + ### THRESHOLD\_HIGH\_VALUE\_EXCEEDED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") THRESHOLD\_HIGH\_VALUE\_EXCEEDED

    Notification type denoting that the observed attribute has exceeded the threshold high value.
    This notification is only fired by gauge monitors.
      
    The value of this notification type is `jmx.monitor.gauge.high`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.THRESHOLD_HIGH_VALUE_EXCEEDED)
  + ### THRESHOLD\_LOW\_VALUE\_EXCEEDED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") THRESHOLD\_LOW\_VALUE\_EXCEEDED

    Notification type denoting that the observed attribute has exceeded the threshold low value.
    This notification is only fired by gauge monitors.
      
    The value of this notification type is `jmx.monitor.gauge.low`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.THRESHOLD_LOW_VALUE_EXCEEDED)
  + ### STRING\_TO\_COMPARE\_VALUE\_MATCHED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") STRING\_TO\_COMPARE\_VALUE\_MATCHED

    Notification type denoting that the observed attribute has matched the "string to compare" value.
    This notification is only fired by string monitors.
      
    The value of this notification type is `jmx.monitor.string.matches`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.STRING_TO_COMPARE_VALUE_MATCHED)
  + ### STRING\_TO\_COMPARE\_VALUE\_DIFFERED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") STRING\_TO\_COMPARE\_VALUE\_DIFFERED

    Notification type denoting that the observed attribute has differed from the "string to compare" value.
    This notification is only fired by string monitors.
      
    The value of this notification type is `jmx.monitor.string.differs`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.MonitorNotification.STRING_TO_COMPARE_VALUE_DIFFERED)
* ## Method Details

  + ### getObservedObject

    public [ObjectName](../ObjectName.md "class in javax.management") getObservedObject()

    Gets the observed object of this monitor notification.

    Returns:
    :   The observed object.
  + ### getObservedAttribute

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getObservedAttribute()

    Gets the observed attribute of this monitor notification.

    Returns:
    :   The observed attribute.
  + ### getDerivedGauge

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getDerivedGauge()

    Gets the derived gauge of this monitor notification.

    Returns:
    :   The derived gauge.
  + ### getTrigger

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getTrigger()

    Gets the threshold/string (depending on the monitor type) that triggered off this monitor notification.

    Returns:
    :   The trigger.