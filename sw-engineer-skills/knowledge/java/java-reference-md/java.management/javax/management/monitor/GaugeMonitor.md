Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class GaugeMonitor

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

[javax.management.monitor.Monitor](Monitor.md "class in javax.management.monitor")

javax.management.monitor.GaugeMonitor

All Implemented Interfaces:
:   `MBeanRegistration`, `GaugeMonitorMBean`, `MonitorMBean`, `NotificationBroadcaster`, `NotificationEmitter`

---

public class GaugeMonitor
extends [Monitor](Monitor.md "class in javax.management.monitor")
implements [GaugeMonitorMBean](GaugeMonitorMBean.md "interface in javax.management.monitor")

Defines a monitor MBean designed to observe the values of a gauge attribute.

A gauge monitor observes an attribute that is continuously
variable with time. A gauge monitor sends notifications as
follows:

* if the attribute value is increasing and becomes equal to or
  greater than the high threshold value, a [`threshold high
  notification`](MonitorNotification.md#THRESHOLD_HIGH_VALUE_EXCEEDED) is sent. The notify high flag must be set to
  `true`.
    
  Subsequent crossings of the high threshold value do not cause
  further notifications unless the attribute value becomes equal to
  or less than the low threshold value.
* if the attribute value is decreasing and becomes equal to or
  less than the low threshold value, a [`threshold low
  notification`](MonitorNotification.md#THRESHOLD_LOW_VALUE_EXCEEDED) is sent. The notify low flag must be set to
  `true`.
    
  Subsequent crossings of the low threshold value do not cause
  further notifications unless the attribute value becomes equal to
  or greater than the high threshold value.

This provides a hysteresis mechanism to avoid repeated triggering
of notifications when the attribute value makes small oscillations
around the high or low threshold value.

If the gauge difference mode is used, the value of the derived
gauge is calculated as the difference between the observed gauge
values for two successive observations.
  
The derived gauge value (V[t]) is calculated using the following method:

* V[t] = gauge[t] - gauge[t-GP]

This implementation of the gauge monitor requires the observed
attribute to be of the type integer or floating-point
(`Byte`, `Integer`, `Short`,
`Long`, `Float`, `Double`).

Since:
:   1.5

* ## Field Summary

  ### Fields inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `alreadyNotified, alreadyNotifieds, capacityIncrement, dbgTag, elementCount, OBSERVED_ATTRIBUTE_ERROR_NOTIFIED, OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED, OBSERVED_OBJECT_ERROR_NOTIFIED, RESET_FLAGS_ALREADY_NOTIFIED, RUNTIME_ERROR_NOTIFIED, server`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GaugeMonitor()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Number`

  `getDerivedGauge()`

  Deprecated.

  As of JMX 1.2, replaced by
  [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

  `Number`

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

  `boolean`

  `getDifferenceMode()`

  Gets the difference mode flag value common to all observed MBeans.

  `Number`

  `getHighThreshold()`

  Gets the high threshold value common to all observed MBeans.

  `Number`

  `getLowThreshold()`

  Gets the low threshold value common to all observed MBeans.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns a `NotificationInfo` object containing the
  name of the Java class of the notification and the notification
  types sent by the gauge monitor.

  `boolean`

  `getNotifyHigh()`

  Gets the high notification's on/off switch value common to all
  observed MBeans.

  `boolean`

  `getNotifyLow()`

  Gets the low notification's on/off switch value common to all
  observed MBeans.

  `void`

  `setDifferenceMode(boolean value)`

  Sets the difference mode flag value common to all observed MBeans.

  `void`

  `setNotifyHigh(boolean value)`

  Sets the high notification's on/off switch value common to all
  observed MBeans.

  `void`

  `setNotifyLow(boolean value)`

  Sets the low notification's on/off switch value common to all
  observed MBeans.

  `void`

  `setThresholds(Number highValue,
  Number lowValue)`

  Sets the high and the low threshold values common to all
  observed MBeans.

  `void`

  `start()`

  Starts the gauge monitor.

  `void`

  `stop()`

  Stops the gauge monitor.

  ### Methods inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, postDeregister, postRegister, preDeregister, preRegister, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

* ## Constructor Details

  + ### GaugeMonitor

    public GaugeMonitor()

    Default constructor.
* ## Method Details

  + ### start

    public void start()

    Starts the gauge monitor.

    Specified by:
    :   `start` in interface `MonitorMBean`

    Specified by:
    :   `start` in class `Monitor`
  + ### stop

    public void stop()

    Stops the gauge monitor.

    Specified by:
    :   `stop` in interface `MonitorMBean`

    Specified by:
    :   `stop` in class `Monitor`
  + ### getDerivedGauge

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge of the specified object, if this object is
    contained in the set of observed MBeans, or `null` otherwise.

    Specified by:
    :   `getDerivedGauge` in interface `GaugeMonitorMBean`

    Parameters:
    :   `object` - the name of the MBean.

    Returns:
    :   The derived gauge of the specified object.
  + ### getDerivedGaugeTimeStamp

    public long getDerivedGaugeTimeStamp([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge timestamp of the specified object, if
    this object is contained in the set of observed MBeans, or
    `0` otherwise.

    Specified by:
    :   `getDerivedGaugeTimeStamp` in interface `GaugeMonitorMBean`

    Parameters:
    :   `object` - the name of the object whose derived gauge
        timestamp is to be returned.

    Returns:
    :   The derived gauge timestamp of the specified object.
  + ### getDerivedGauge

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge()

    Deprecated.

    As of JMX 1.2, replaced by
    [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

    Returns the derived gauge of the first object in the set of
    observed MBeans.

    Specified by:
    :   `getDerivedGauge` in interface `GaugeMonitorMBean`

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
    :   `getDerivedGaugeTimeStamp` in interface `GaugeMonitorMBean`

    Returns:
    :   The derived gauge timestamp.
  + ### getHighThreshold

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getHighThreshold()

    Gets the high threshold value common to all observed MBeans.

    Specified by:
    :   `getHighThreshold` in interface `GaugeMonitorMBean`

    Returns:
    :   The high threshold value.

    See Also:
    :   - [`setThresholds(java.lang.Number, java.lang.Number)`](#setThresholds(java.lang.Number,java.lang.Number))
  + ### getLowThreshold

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getLowThreshold()

    Gets the low threshold value common to all observed MBeans.

    Specified by:
    :   `getLowThreshold` in interface `GaugeMonitorMBean`

    Returns:
    :   The low threshold value.

    See Also:
    :   - [`setThresholds(java.lang.Number, java.lang.Number)`](#setThresholds(java.lang.Number,java.lang.Number))
  + ### setThresholds

    public void setThresholds([Number](../../../../java.base/java/lang/Number.md "class in java.lang") highValue,
    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") lowValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the high and the low threshold values common to all
    observed MBeans.

    Specified by:
    :   `setThresholds` in interface `GaugeMonitorMBean`

    Parameters:
    :   `highValue` - The high threshold value.
    :   `lowValue` - The low threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified high/low
        threshold is null or the low threshold is greater than the high
        threshold or the high threshold and the low threshold are not
        of the same type.

    See Also:
    :   - [`getHighThreshold()`](#getHighThreshold())
        - [`getLowThreshold()`](#getLowThreshold())
  + ### getNotifyHigh

    public boolean getNotifyHigh()

    Gets the high notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `getNotifyHigh` in interface `GaugeMonitorMBean`

    Returns:
    :   `true` if the gauge monitor notifies when
        exceeding the high threshold, `false` otherwise.

    See Also:
    :   - [`setNotifyHigh(boolean)`](#setNotifyHigh(boolean))
  + ### setNotifyHigh

    public void setNotifyHigh(boolean value)

    Sets the high notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `setNotifyHigh` in interface `GaugeMonitorMBean`

    Parameters:
    :   `value` - The high notification's on/off switch value.

    See Also:
    :   - [`getNotifyHigh()`](#getNotifyHigh())
  + ### getNotifyLow

    public boolean getNotifyLow()

    Gets the low notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `getNotifyLow` in interface `GaugeMonitorMBean`

    Returns:
    :   `true` if the gauge monitor notifies when
        exceeding the low threshold, `false` otherwise.

    See Also:
    :   - [`setNotifyLow(boolean)`](#setNotifyLow(boolean))
  + ### setNotifyLow

    public void setNotifyLow(boolean value)

    Sets the low notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `setNotifyLow` in interface `GaugeMonitorMBean`

    Parameters:
    :   `value` - The low notification's on/off switch value.

    See Also:
    :   - [`getNotifyLow()`](#getNotifyLow())
  + ### getDifferenceMode

    public boolean getDifferenceMode()

    Gets the difference mode flag value common to all observed MBeans.

    Specified by:
    :   `getDifferenceMode` in interface `GaugeMonitorMBean`

    Returns:
    :   `true` if the difference mode is used,
        `false` otherwise.

    See Also:
    :   - [`setDifferenceMode(boolean)`](#setDifferenceMode(boolean))
  + ### setDifferenceMode

    public void setDifferenceMode(boolean value)

    Sets the difference mode flag value common to all observed MBeans.

    Specified by:
    :   `setDifferenceMode` in interface `GaugeMonitorMBean`

    Parameters:
    :   `value` - The difference mode flag value.

    See Also:
    :   - [`getDifferenceMode()`](#getDifferenceMode())
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns a `NotificationInfo` object containing the
    name of the Java class of the notification and the notification
    types sent by the gauge monitor.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.