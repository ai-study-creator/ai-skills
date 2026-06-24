Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Interface CounterMonitorMBean

All Superinterfaces:
:   `MonitorMBean`

All Known Implementing Classes:
:   `CounterMonitor`

---

public interface CounterMonitorMBean
extends [MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

Exposes the remote management interface of the counter monitor MBean.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Number`

  `getDerivedGauge()`

  Deprecated.

  As of JMX 1.2, replaced by [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

  `Number`

  `getDerivedGauge(ObjectName object)`

  Gets the derived gauge for the specified MBean.

  `long`

  `getDerivedGaugeTimeStamp()`

  Deprecated.

  As of JMX 1.2, replaced by [`getDerivedGaugeTimeStamp(ObjectName)`](#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  `long`

  `getDerivedGaugeTimeStamp(ObjectName object)`

  Gets the derived gauge timestamp for the specified MBean.

  `boolean`

  `getDifferenceMode()`

  Gets the difference mode flag value.

  `Number`

  `getInitThreshold()`

  Gets the initial threshold value common to all observed objects.

  `Number`

  `getModulus()`

  Gets the modulus value.

  `boolean`

  `getNotify()`

  Gets the notification's on/off switch value.

  `Number`

  `getOffset()`

  Gets the offset value.

  `Number`

  `getThreshold()`

  Deprecated.

  As of JMX 1.2, replaced by [`getThreshold(ObjectName)`](#getThreshold(javax.management.ObjectName))

  `Number`

  `getThreshold(ObjectName object)`

  Gets the threshold value for the specified MBean.

  `void`

  `setDifferenceMode(boolean value)`

  Sets the difference mode flag value.

  `void`

  `setInitThreshold(Number value)`

  Sets the initial threshold value common to all observed MBeans.

  `void`

  `setModulus(Number value)`

  Sets the modulus value.

  `void`

  `setNotify(boolean value)`

  Sets the notification's on/off switch value.

  `void`

  `setOffset(Number value)`

  Sets the offset value.

  `void`

  `setThreshold(Number value)`

  Deprecated.

  As of JMX 1.2, replaced by [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))

  ### Methods inherited from interface javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject, start, stop`

* ## Method Details

  + ### getDerivedGauge

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge()

    Deprecated.

    As of JMX 1.2, replaced by [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

    Gets the derived gauge.

    Returns:
    :   The derived gauge.
  + ### getDerivedGaugeTimeStamp

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    long getDerivedGaugeTimeStamp()

    Deprecated.

    As of JMX 1.2, replaced by [`getDerivedGaugeTimeStamp(ObjectName)`](#getDerivedGaugeTimeStamp(javax.management.ObjectName))

    Gets the derived gauge timestamp.

    Returns:
    :   The derived gauge timestamp.
  + ### getThreshold

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getThreshold()

    Deprecated.

    As of JMX 1.2, replaced by [`getThreshold(ObjectName)`](#getThreshold(javax.management.ObjectName))

    Gets the threshold value.

    Returns:
    :   The threshold value.

    See Also:
    :   - [`setThreshold(Number)`](#setThreshold(java.lang.Number))
  + ### setThreshold

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void setThreshold([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Deprecated.

    As of JMX 1.2, replaced by [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))

    Sets the threshold value.

    Parameters:
    :   `value` - The threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified threshold is null or the threshold value is less than zero.

    See Also:
    :   - [`getThreshold()`](#getThreshold())
  + ### getDerivedGauge

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getDerivedGauge([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge for the specified MBean.

    Parameters:
    :   `object` - the MBean for which the derived gauge is to be returned

    Returns:
    :   The derived gauge for the specified MBean if this MBean is in the
        set of observed MBeans, or `null` otherwise.
  + ### getDerivedGaugeTimeStamp

    long getDerivedGaugeTimeStamp([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the derived gauge timestamp for the specified MBean.

    Parameters:
    :   `object` - the MBean for which the derived gauge timestamp is to be returned

    Returns:
    :   The derived gauge timestamp for the specified MBean if this MBean
        is in the set of observed MBeans, or `null` otherwise.
  + ### getThreshold

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getThreshold([ObjectName](../ObjectName.md "class in javax.management") object)

    Gets the threshold value for the specified MBean.

    Parameters:
    :   `object` - the MBean for which the threshold value is to be returned

    Returns:
    :   The threshold value for the specified MBean if this MBean
        is in the set of observed MBeans, or `null` otherwise.

    See Also:
    :   - [`setThreshold(java.lang.Number)`](#setThreshold(java.lang.Number))
  + ### getInitThreshold

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getInitThreshold()

    Gets the initial threshold value common to all observed objects.

    Returns:
    :   The initial threshold value.

    See Also:
    :   - [`setInitThreshold(java.lang.Number)`](#setInitThreshold(java.lang.Number))
  + ### setInitThreshold

    void setInitThreshold([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the initial threshold value common to all observed MBeans.

    Parameters:
    :   `value` - The initial threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified
        threshold is null or the threshold value is less than zero.

    See Also:
    :   - [`getInitThreshold()`](#getInitThreshold())
  + ### getOffset

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getOffset()

    Gets the offset value.

    Returns:
    :   The offset value.

    See Also:
    :   - [`setOffset(Number)`](#setOffset(java.lang.Number))
  + ### setOffset

    void setOffset([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the offset value.

    Parameters:
    :   `value` - The offset value.

    Throws:
    :   `IllegalArgumentException` - The specified
        offset is null or the offset value is less than zero.

    See Also:
    :   - [`getOffset()`](#getOffset())
  + ### getModulus

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getModulus()

    Gets the modulus value.

    Returns:
    :   The modulus value.

    See Also:
    :   - [`setModulus(java.lang.Number)`](#setModulus(java.lang.Number))
  + ### setModulus

    void setModulus([Number](../../../../java.base/java/lang/Number.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the modulus value.

    Parameters:
    :   `value` - The modulus value.

    Throws:
    :   `IllegalArgumentException` - The specified
        modulus is null or the modulus value is less than zero.

    See Also:
    :   - [`getModulus()`](#getModulus())
  + ### getNotify

    boolean getNotify()

    Gets the notification's on/off switch value.

    Returns:
    :   `true` if the counter monitor notifies when
        exceeding the threshold, `false` otherwise.

    See Also:
    :   - [`setNotify(boolean)`](#setNotify(boolean))
  + ### setNotify

    void setNotify(boolean value)

    Sets the notification's on/off switch value.

    Parameters:
    :   `value` - The notification's on/off switch value.

    See Also:
    :   - [`getNotify()`](#getNotify())
  + ### getDifferenceMode

    boolean getDifferenceMode()

    Gets the difference mode flag value.

    Returns:
    :   `true` if the difference mode is used,
        `false` otherwise.

    See Also:
    :   - [`setDifferenceMode(boolean)`](#setDifferenceMode(boolean))
  + ### setDifferenceMode

    void setDifferenceMode(boolean value)

    Sets the difference mode flag value.

    Parameters:
    :   `value` - The difference mode flag value.

    See Also:
    :   - [`getDifferenceMode()`](#getDifferenceMode())