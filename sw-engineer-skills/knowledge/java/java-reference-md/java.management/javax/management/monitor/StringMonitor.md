Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class StringMonitor

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

[javax.management.monitor.Monitor](Monitor.md "class in javax.management.monitor")

javax.management.monitor.StringMonitor

All Implemented Interfaces:
:   `MBeanRegistration`, `MonitorMBean`, `StringMonitorMBean`, `NotificationBroadcaster`, `NotificationEmitter`

---

public class StringMonitor
extends [Monitor](Monitor.md "class in javax.management.monitor")
implements [StringMonitorMBean](StringMonitorMBean.md "interface in javax.management.monitor")

Defines a monitor MBean designed to observe the values of a string
attribute.

A string monitor sends notifications as follows:

* if the attribute value matches the string to compare value,
  a [`match notification`](MonitorNotification.md#STRING_TO_COMPARE_VALUE_MATCHED) is sent.
  The notify match flag must be set to `true`.
    
  Subsequent matchings of the string to compare values do not
  cause further notifications unless
  the attribute value differs from the string to compare value.* if the attribute value differs from the string to compare value,
    a [`differ notification`](MonitorNotification.md#STRING_TO_COMPARE_VALUE_DIFFERED) is sent.
    The notify differ flag must be set to `true`.
      
    Subsequent differences from the string to compare value do
    not cause further notifications unless
    the attribute value matches the string to compare value.

Since:
:   1.5

* ## Field Summary

  ### Fields inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `alreadyNotified, alreadyNotifieds, capacityIncrement, dbgTag, elementCount, OBSERVED_ATTRIBUTE_ERROR_NOTIFIED, OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED, OBSERVED_OBJECT_ERROR_NOTIFIED, RESET_FLAGS_ALREADY_NOTIFIED, RUNTIME_ERROR_NOTIFIED, server`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringMonitor()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDerivedGauge()`

  Deprecated.

  As of JMX 1.2, replaced by
  [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

  `String`

  `getDerivedGauge(ObjectName object)`

  Gets the derived gauge of the specified object, if this object is
  contained in the set of observed MBeans, or `null` otherwise.

  `long`

  `getDerivedGaugeTimeStamp()`

  Deprecated.

  As of JMX 1.2, replaced by
  [`getDerivedGaugeTimeStamp(ObjectName)`](#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  `long`

  `getDerivedGaugeTimeStamp(ObjectName object)`

  Gets the derived gauge timestamp of the specified object, if
  this object is contained in the set of observed MBeans, or
  `0` otherwise.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns a `NotificationInfo` object containing the name of
  the Java class of the notification and the notification types sent by
  the string monitor.

  `boolean`

  `getNotifyDiffer()`

  Gets the differing notification's on/off switch value common to
  all observed MBeans.

  `boolean`

  `getNotifyMatch()`

  Gets the matching notification's on/off switch value common to
  all observed MBeans.

  `String`

  `getStringToCompare()`

  Gets the string to compare with the observed attribute common
  to all observed MBeans.

  `void`

  `setNotifyDiffer(boolean value)`

  Sets the differing notification's on/off switch value common to
  all observed MBeans.

  `void`

  `setNotifyMatch(boolean value)`

  Sets the matching notification's on/off switch value common to
  all observed MBeans.

  `void`

  `setStringToCompare(String value)`

  Sets the string to compare with the observed attribute common
  to all observed MBeans.

  `void`

  `start()`

  Starts the string monitor.

  `void`

  `stop()`

  Stops the string monitor.

  ### Methods inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, postDeregister, postRegister, preDeregister, preRegister, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

* ## Constructor Details

  + ### StringMonitor

    public StringMonitor()

    Default constructor.
* ## Method Details

  + ### start

    public void start()

    Starts the string monitor.

    Specified by:
    :   `start` in interface `MonitorMBean`

    Specified by:
    :   `start` in class `Monitor`
  + ### stop

    public void stop()

    Stops the string monitor.

    Specified by:
    :   `stop` in interface `MonitorMBean`

    Specified by:
    :   `stop` in class `Monitor`
  + ### getDerivedGauge

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDerivedGauge([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge of the specified object, if this object is
    contained in the set of observed MBeans, or `null` otherwise.

    Specified by:
    :   `getDerivedGauge` in interface `StringMonitorMBean`

    Parameters:
    :   `object` - the name of the MBean whose derived gauge is required.

    Returns:
    :   The derived gauge of the specified object.
  + ### getDerivedGaugeTimeStamp

    public long getDerivedGaugeTimeStamp([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge timestamp of the specified object, if
    this object is contained in the set of observed MBeans, or
    `0` otherwise.

    Specified by:
    :   `getDerivedGaugeTimeStamp` in interface `StringMonitorMBean`

    Parameters:
    :   `object` - the name of the object whose derived gauge
        timestamp is to be returned.

    Returns:
    :   The derived gauge timestamp of the specified object.
  + ### getDerivedGauge

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDerivedGauge()

    Deprecated.

    As of JMX 1.2, replaced by
    [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

    Returns the derived gauge of the first object in the set of
    observed MBeans.

    Specified by:
    :   `getDerivedGauge` in interface `StringMonitorMBean`

    Returns:
    :   The derived gauge.
  + ### getDerivedGaugeTimeStamp

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public long getDerivedGaugeTimeStamp()

    Deprecated.

    As of JMX 1.2, replaced by
    [`getDerivedGaugeTimeStamp(ObjectName)`](#getDerivedGaugeTimeStamp(javax.management.ObjectName))

    Gets the derived gauge timestamp of the first object in the set
    of observed MBeans.

    Specified by:
    :   `getDerivedGaugeTimeStamp` in interface `StringMonitorMBean`

    Returns:
    :   The derived gauge timestamp.
  + ### getStringToCompare

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getStringToCompare()

    Gets the string to compare with the observed attribute common
    to all observed MBeans.

    Specified by:
    :   `getStringToCompare` in interface `StringMonitorMBean`

    Returns:
    :   The string value.

    See Also:
    :   - [`setStringToCompare(java.lang.String)`](#setStringToCompare(java.lang.String))
  + ### setStringToCompare

    public void setStringToCompare([String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the string to compare with the observed attribute common
    to all observed MBeans.

    Specified by:
    :   `setStringToCompare` in interface `StringMonitorMBean`

    Parameters:
    :   `value` - The string value.

    Throws:
    :   `IllegalArgumentException` - The specified
        string to compare is null.

    See Also:
    :   - [`getStringToCompare()`](#getStringToCompare())
  + ### getNotifyMatch

    public boolean getNotifyMatch()

    Gets the matching notification's on/off switch value common to
    all observed MBeans.

    Specified by:
    :   `getNotifyMatch` in interface `StringMonitorMBean`

    Returns:
    :   `true` if the string monitor notifies when
        matching the string to compare, `false` otherwise.

    See Also:
    :   - [`setNotifyMatch(boolean)`](#setNotifyMatch(boolean))
  + ### setNotifyMatch

    public void setNotifyMatch(boolean value)

    Sets the matching notification's on/off switch value common to
    all observed MBeans.

    Specified by:
    :   `setNotifyMatch` in interface `StringMonitorMBean`

    Parameters:
    :   `value` - The matching notification's on/off switch value.

    See Also:
    :   - [`getNotifyMatch()`](#getNotifyMatch())
  + ### getNotifyDiffer

    public boolean getNotifyDiffer()

    Gets the differing notification's on/off switch value common to
    all observed MBeans.

    Specified by:
    :   `getNotifyDiffer` in interface `StringMonitorMBean`

    Returns:
    :   `true` if the string monitor notifies when
        differing from the string to compare, `false` otherwise.

    See Also:
    :   - [`setNotifyDiffer(boolean)`](#setNotifyDiffer(boolean))
  + ### setNotifyDiffer

    public void setNotifyDiffer(boolean value)

    Sets the differing notification's on/off switch value common to
    all observed MBeans.

    Specified by:
    :   `setNotifyDiffer` in interface `StringMonitorMBean`

    Parameters:
    :   `value` - The differing notification's on/off switch value.

    See Also:
    :   - [`getNotifyDiffer()`](#getNotifyDiffer())
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns a `NotificationInfo` object containing the name of
    the Java class of the notification and the notification types sent by
    the string monitor.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.