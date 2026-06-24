Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class CounterMonitor

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

[javax.management.monitor.Monitor](Monitor.md "class in javax.management.monitor")

javax.management.monitor.CounterMonitor

All Implemented Interfaces:
:   `MBeanRegistration`, `CounterMonitorMBean`, `MonitorMBean`, `NotificationBroadcaster`, `NotificationEmitter`

---

public class CounterMonitor
extends [Monitor](Monitor.md "class in javax.management.monitor")
implements [CounterMonitorMBean](CounterMonitorMBean.md "interface in javax.management.monitor")

Defines a monitor MBean designed to observe the values of a counter
attribute.

A counter monitor sends a [`threshold
notification`](MonitorNotification.md#THRESHOLD_VALUE_EXCEEDED) when the value of the counter reaches or exceeds a
threshold known as the comparison level. The notify flag must be
set to `true`.

In addition, an offset mechanism enables particular counting
intervals to be detected. If the offset value is not zero,
whenever the threshold is triggered by the counter value reaching a
comparison level, that comparison level is incremented by the
offset value. This is regarded as taking place instantaneously,
that is, before the count is incremented. Thus, for each level,
the threshold triggers an event notification every time the count
increases by an interval equal to the offset value.

If the counter can wrap around its maximum value, the modulus
needs to be specified. The modulus is the value at which the
counter is reset to zero.

If the counter difference mode is used, the value of the
derived gauge is calculated as the difference between the observed
counter values for two successive observations. If this difference
is negative, the value of the derived gauge is incremented by the
value of the modulus. The derived gauge value (V[t]) is calculated
using the following method:

* if (counter[t] - counter[t-GP]) is positive then
  V[t] = counter[t] - counter[t-GP]* if (counter[t] - counter[t-GP]) is negative then
    V[t] = counter[t] - counter[t-GP] + MODULUS

This implementation of the counter monitor requires the observed
attribute to be of the type integer (`Byte`,
`Integer`, `Short`, `Long`).

Since:
:   1.5

* ## Field Summary

  ### Fields inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `alreadyNotified, alreadyNotifieds, capacityIncrement, dbgTag, elementCount, OBSERVED_ATTRIBUTE_ERROR_NOTIFIED, OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED, OBSERVED_OBJECT_ERROR_NOTIFIED, RESET_FLAGS_ALREADY_NOTIFIED, RUNTIME_ERROR_NOTIFIED, server`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CounterMonitor()`

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

  `getInitThreshold()`

  Gets the initial threshold value common to all observed objects.

  `Number`

  `getModulus()`

  Gets the modulus value common to all observed MBeans.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns a `NotificationInfo` object containing the
  name of the Java class of the notification and the notification
  types sent by the counter monitor.

  `boolean`

  `getNotify()`

  Gets the notification's on/off switch value common to all
  observed MBeans.

  `Number`

  `getOffset()`

  Gets the offset value common to all observed MBeans.

  `Number`

  `getThreshold()`

  Deprecated.

  As of JMX 1.2, replaced by [`getThreshold(ObjectName)`](#getThreshold(javax.management.ObjectName))

  `Number`

  `getThreshold(ObjectName object)`

  Gets the current threshold value of the specified object, if
  this object is contained in the set of observed MBeans, or
  `null` otherwise.

  `void`

  `setDifferenceMode(boolean value)`

  Sets the difference mode flag value common to all observed MBeans.

  `void`

  `setInitThreshold(Number value)`

  Sets the initial threshold value common to all observed objects.

  `void`

  `setModulus(Number value)`

  Sets the modulus value common to all observed MBeans.

  `void`

  `setNotify(boolean value)`

  Sets the notification's on/off switch value common to all
  observed MBeans.

  `void`

  `setOffset(Number value)`

  Sets the offset value common to all observed MBeans.

  `void`

  `setThreshold(Number value)`

  Deprecated.

  As of JMX 1.2, replaced by [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))

  `void`

  `start()`

  Starts the counter monitor.

  `void`

  `stop()`

  Stops the counter monitor.

  ### Methods inherited from class javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, postDeregister, postRegister, preDeregister, preRegister, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject`

* ## Constructor Details

  + ### CounterMonitor

    public CounterMonitor()

    Default constructor.
* ## Method Details

  + ### start

    public void start()

    Starts the counter monitor.

    Specified by:
    :   `start` in interface `MonitorMBean`

    Specified by:
    :   `start` in class `Monitor`
  + ### stop

    public void stop()

    Stops the counter monitor.

    Specified by:
    :   `stop` in interface `MonitorMBean`

    Specified by:
    :   `stop` in class `Monitor`
  + ### getDerivedGauge

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge of the specified object, if this object is
    contained in the set of observed MBeans, or `null` otherwise.

    Specified by:
    :   `getDerivedGauge` in interface `CounterMonitorMBean`

    Parameters:
    :   `object` - the name of the object whose derived gauge is to
        be returned.

    Returns:
    :   The derived gauge of the specified object.
  + ### getDerivedGaugeTimeStamp

    public long getDerivedGaugeTimeStamp([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge timestamp of the specified object, if
    this object is contained in the set of observed MBeans, or
    `0` otherwise.

    Specified by:
    :   `getDerivedGaugeTimeStamp` in interface `CounterMonitorMBean`

    Parameters:
    :   `object` - the name of the object whose derived gauge
        timestamp is to be returned.

    Returns:
    :   The derived gauge timestamp of the specified object.
  + ### getThreshold

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getThreshold([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the current threshold value of the specified object, if
    this object is contained in the set of observed MBeans, or
    `null` otherwise.

    Specified by:
    :   `getThreshold` in interface `CounterMonitorMBean`

    Parameters:
    :   `object` - the name of the object whose threshold is to be
        returned.

    Returns:
    :   The threshold value of the specified object.

    See Also:
    :   - [`CounterMonitorMBean.setThreshold(java.lang.Number)`](CounterMonitorMBean.md#setThreshold(java.lang.Number))
  + ### getInitThreshold

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getInitThreshold()

    Gets the initial threshold value common to all observed objects.

    Specified by:
    :   `getInitThreshold` in interface `CounterMonitorMBean`

    Returns:
    :   The initial threshold.

    See Also:
    :   - [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))
  + ### setInitThreshold

    public void setInitThreshold([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the initial threshold value common to all observed objects.
      
    The current threshold of every object in the set of
    observed MBeans is updated consequently.

    Specified by:
    :   `setInitThreshold` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The initial threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified
        threshold is null or the threshold value is less than zero.

    See Also:
    :   - [`getInitThreshold()`](#getInitThreshold())
  + ### getDerivedGauge

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge()

    Deprecated.

    As of JMX 1.2, replaced by
    [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

    Returns the derived gauge of the first object in the set of
    observed MBeans.

    Specified by:
    :   `getDerivedGauge` in interface `CounterMonitorMBean`

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
    :   `getDerivedGaugeTimeStamp` in interface `CounterMonitorMBean`

    Returns:
    :   The derived gauge timestamp.
  + ### getThreshold

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getThreshold()

    Deprecated.

    As of JMX 1.2, replaced by [`getThreshold(ObjectName)`](#getThreshold(javax.management.ObjectName))

    Gets the threshold value of the first object in the set of
    observed MBeans.

    Specified by:
    :   `getThreshold` in interface `CounterMonitorMBean`

    Returns:
    :   The threshold value.

    See Also:
    :   - [`setThreshold(java.lang.Number)`](#setThreshold(java.lang.Number))
  + ### setThreshold

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setThreshold([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Deprecated.

    As of JMX 1.2, replaced by [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))

    Sets the initial threshold value.

    Specified by:
    :   `setThreshold` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The initial threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified threshold is
        null or the threshold value is less than zero.

    See Also:
    :   - [`getThreshold()`](#getThreshold())
  + ### getOffset

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getOffset()

    Gets the offset value common to all observed MBeans.

    Specified by:
    :   `getOffset` in interface `CounterMonitorMBean`

    Returns:
    :   The offset value.

    See Also:
    :   - [`setOffset(java.lang.Number)`](#setOffset(java.lang.Number))
  + ### setOffset

    public void setOffset([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the offset value common to all observed MBeans.

    Specified by:
    :   `setOffset` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The offset value.

    Throws:
    :   `IllegalArgumentException` - The specified
        offset is null or the offset value is less than zero.

    See Also:
    :   - [`getOffset()`](#getOffset())
  + ### getModulus

    public [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getModulus()

    Gets the modulus value common to all observed MBeans.

    Specified by:
    :   `getModulus` in interface `CounterMonitorMBean`

    Returns:
    :   The modulus value.

    See Also:
    :   - [`setModulus(java.lang.Number)`](#setModulus(java.lang.Number))
  + ### setModulus

    public void setModulus([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the modulus value common to all observed MBeans.

    Specified by:
    :   `setModulus` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The modulus value.

    Throws:
    :   `IllegalArgumentException` - The specified
        modulus is null or the modulus value is less than zero.

    See Also:
    :   - [`getModulus()`](#getModulus())
  + ### getNotify

    public boolean getNotify()

    Gets the notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `getNotify` in interface `CounterMonitorMBean`

    Returns:
    :   `true` if the counter monitor notifies when
        exceeding the threshold, `false` otherwise.

    See Also:
    :   - [`setNotify(boolean)`](#setNotify(boolean))
  + ### setNotify

    public void setNotify(boolean value)

    Sets the notification's on/off switch value common to all
    observed MBeans.

    Specified by:
    :   `setNotify` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The notification's on/off switch value.

    See Also:
    :   - [`getNotify()`](#getNotify())
  + ### getDifferenceMode

    public boolean getDifferenceMode()

    Gets the difference mode flag value common to all observed MBeans.

    Specified by:
    :   `getDifferenceMode` in interface `CounterMonitorMBean`

    Returns:
    :   `true` if the difference mode is used,
        `false` otherwise.

    See Also:
    :   - [`setDifferenceMode(boolean)`](#setDifferenceMode(boolean))
  + ### setDifferenceMode

    public void setDifferenceMode(boolean value)

    Sets the difference mode flag value common to all observed MBeans.

    Specified by:
    :   `setDifferenceMode` in interface `CounterMonitorMBean`

    Parameters:
    :   `value` - The difference mode flag value.

    See Also:
    :   - [`getDifferenceMode()`](#getDifferenceMode())
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns a `NotificationInfo` object containing the
    name of the Java class of the notification and the notification
    types sent by the counter monitor.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.