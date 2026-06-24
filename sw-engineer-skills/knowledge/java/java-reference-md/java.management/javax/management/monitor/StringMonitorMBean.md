Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Interface StringMonitorMBean

All Superinterfaces:
:   `MonitorMBean`

All Known Implementing Classes:
:   `StringMonitor`

---

public interface StringMonitorMBean
extends [MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

Exposes the remote management interface of the string monitor MBean.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDerivedGauge()`

  Deprecated.

  As of JMX 1.2, replaced by [`getDerivedGauge(ObjectName)`](#getDerivedGauge(javax.management.ObjectName))

  `String`

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

  `getNotifyDiffer()`

  Gets the differing notification's on/off switch value.

  `boolean`

  `getNotifyMatch()`

  Gets the matching notification's on/off switch value.

  `String`

  `getStringToCompare()`

  Gets the string to compare with the observed attribute.

  `void`

  `setNotifyDiffer(boolean value)`

  Sets the differing notification's on/off switch value.

  `void`

  `setNotifyMatch(boolean value)`

  Sets the matching notification's on/off switch value.

  `void`

  `setStringToCompare(String value)`

  Sets the string to compare with the observed attribute.

  ### Methods inherited from interface javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")

  `addObservedObject, containsObservedObject, getGranularityPeriod, getObservedAttribute, getObservedObject, getObservedObjects, isActive, removeObservedObject, setGranularityPeriod, setObservedAttribute, setObservedObject, start, stop`

* ## Method Details

  + ### getDerivedGauge

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDerivedGauge()

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

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDerivedGauge([ObjectName](../ObjectName.md "class in javax.management") object)

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
  + ### getStringToCompare

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getStringToCompare()

    Gets the string to compare with the observed attribute.

    Returns:
    :   The string value.

    See Also:
    :   - [`setStringToCompare(java.lang.String)`](#setStringToCompare(java.lang.String))
  + ### setStringToCompare

    void setStringToCompare([String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the string to compare with the observed attribute.

    Parameters:
    :   `value` - The string value.

    Throws:
    :   `IllegalArgumentException` - The specified
        string to compare is null.

    See Also:
    :   - [`getStringToCompare()`](#getStringToCompare())
  + ### getNotifyMatch

    boolean getNotifyMatch()

    Gets the matching notification's on/off switch value.

    Returns:
    :   `true` if the string monitor notifies when
        matching, `false` otherwise.

    See Also:
    :   - [`setNotifyMatch(boolean)`](#setNotifyMatch(boolean))
  + ### setNotifyMatch

    void setNotifyMatch(boolean value)

    Sets the matching notification's on/off switch value.

    Parameters:
    :   `value` - The matching notification's on/off switch value.

    See Also:
    :   - [`getNotifyMatch()`](#getNotifyMatch())
  + ### getNotifyDiffer

    boolean getNotifyDiffer()

    Gets the differing notification's on/off switch value.

    Returns:
    :   `true` if the string monitor notifies when
        differing, `false` otherwise.

    See Also:
    :   - [`setNotifyDiffer(boolean)`](#setNotifyDiffer(boolean))
  + ### setNotifyDiffer

    void setNotifyDiffer(boolean value)

    Sets the differing notification's on/off switch value.

    Parameters:
    :   `value` - The differing notification's on/off switch value.

    See Also:
    :   - [`getNotifyDiffer()`](#getNotifyDiffer())