Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Interface GaugeMonitorMBean

All Superinterfaces:
:   `MonitorMBean`

All Known Implementing Classes:
:   `GaugeMonitor`

---

public interface GaugeMonitorMBean
extends [MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

Exposes the remote management interface of the gauge monitor MBean.

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

  `getHighThreshold()`

  Gets the high threshold value.

  `Number`

  `getLowThreshold()`

  Gets the low threshold value.

  `boolean`

  `getNotifyHigh()`

  Gets the high notification's on/off switch value.

  `boolean`

  `getNotifyLow()`

  Gets the low notification's on/off switch value.

  `void`

  `setDifferenceMode(boolean value)`

  Sets the difference mode flag value.

  `void`

  `setNotifyHigh(boolean value)`

  Sets the high notification's on/off switch value.

  `void`

  `setNotifyLow(boolean value)`

  Sets the low notification's on/off switch value.

  `void`

  `setThresholds(Number highValue,
  Number lowValue)`

  Sets the high and the low threshold values.

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
  + ### getHighThreshold

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getHighThreshold()

    Gets the high threshold value.

    Returns:
    :   The high threshold value.
  + ### getLowThreshold

    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") getLowThreshold()

    Gets the low threshold value.

    Returns:
    :   The low threshold value.
  + ### setThresholds

    void setThresholds([Number](../../../../java.base/java/lang/Number.md "class in java.lang") highValue,
    [Number](../../../../java.base/java/lang/Number.md "class in java.lang") lowValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the high and the low threshold values.

    Parameters:
    :   `highValue` - The high threshold value.
    :   `lowValue` - The low threshold value.

    Throws:
    :   `IllegalArgumentException` - The specified high/low threshold is null
        or the low threshold is greater than the high threshold
        or the high threshold and the low threshold are not of the same type.
  + ### getNotifyHigh

    boolean getNotifyHigh()

    Gets the high notification's on/off switch value.

    Returns:
    :   `true` if the gauge monitor notifies when
        exceeding the high threshold, `false` otherwise.

    See Also:
    :   - [`setNotifyHigh(boolean)`](#setNotifyHigh(boolean))
  + ### setNotifyHigh

    void setNotifyHigh(boolean value)

    Sets the high notification's on/off switch value.

    Parameters:
    :   `value` - The high notification's on/off switch value.

    See Also:
    :   - [`getNotifyHigh()`](#getNotifyHigh())
  + ### getNotifyLow

    boolean getNotifyLow()

    Gets the low notification's on/off switch value.

    Returns:
    :   `true` if the gauge monitor notifies when
        exceeding the low threshold, `false` otherwise.

    See Also:
    :   - [`setNotifyLow(boolean)`](#setNotifyLow(boolean))
  + ### setNotifyLow

    void setNotifyLow(boolean value)

    Sets the low notification's on/off switch value.

    Parameters:
    :   `value` - The low notification's on/off switch value.

    See Also:
    :   - [`getNotifyLow()`](#getNotifyLow())
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