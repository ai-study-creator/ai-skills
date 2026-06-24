Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Interface MonitorMBean

All Known Subinterfaces:
:   `CounterMonitorMBean`, `GaugeMonitorMBean`, `StringMonitorMBean`

All Known Implementing Classes:
:   `CounterMonitor`, `GaugeMonitor`, `Monitor`, `StringMonitor`

---

public interface MonitorMBean

Exposes the remote management interface of monitor MBeans.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addObservedObject(ObjectName object)`

  Adds the specified object in the set of observed MBeans.

  `boolean`

  `containsObservedObject(ObjectName object)`

  Tests whether the specified object is in the set of observed MBeans.

  `long`

  `getGranularityPeriod()`

  Gets the granularity period (in milliseconds).

  `String`

  `getObservedAttribute()`

  Gets the attribute being observed.

  `ObjectName`

  `getObservedObject()`

  Deprecated.

  As of JMX 1.2, replaced by [`getObservedObjects()`](#getObservedObjects())

  `ObjectName[]`

  `getObservedObjects()`

  Returns an array containing the objects being observed.

  `boolean`

  `isActive()`

  Tests if the monitor MBean is active.

  `void`

  `removeObservedObject(ObjectName object)`

  Removes the specified object from the set of observed MBeans.

  `void`

  `setGranularityPeriod(long period)`

  Sets the granularity period (in milliseconds).

  `void`

  `setObservedAttribute(String attribute)`

  Sets the attribute to observe.

  `void`

  `setObservedObject(ObjectName object)`

  Deprecated.

  As of JMX 1.2, replaced by [`addObservedObject(javax.management.ObjectName)`](#addObservedObject(javax.management.ObjectName))

  `void`

  `start()`

  Starts the monitor.

  `void`

  `stop()`

  Stops the monitor.

* ## Method Details

  + ### start

    void start()

    Starts the monitor.
  + ### stop

    void stop()

    Stops the monitor.
  + ### addObservedObject

    void addObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Adds the specified object in the set of observed MBeans.

    Parameters:
    :   `object` - The object to observe.

    Throws:
    :   `IllegalArgumentException` - the specified object is null.
  + ### removeObservedObject

    void removeObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)

    Removes the specified object from the set of observed MBeans.

    Parameters:
    :   `object` - The object to remove.
  + ### containsObservedObject

    boolean containsObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)

    Tests whether the specified object is in the set of observed MBeans.

    Parameters:
    :   `object` - The object to check.

    Returns:
    :   `true` if the specified object is in the set, `false` otherwise.
  + ### getObservedObjects

    [ObjectName](../ObjectName.md "class in javax.management")[] getObservedObjects()

    Returns an array containing the objects being observed.

    Returns:
    :   The objects being observed.
  + ### getObservedObject

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [ObjectName](../ObjectName.md "class in javax.management") getObservedObject()

    Deprecated.

    As of JMX 1.2, replaced by [`getObservedObjects()`](#getObservedObjects())

    Gets the object name of the object being observed.

    Returns:
    :   The object being observed.

    See Also:
    :   - [`setObservedObject(javax.management.ObjectName)`](#setObservedObject(javax.management.ObjectName))
  + ### setObservedObject

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void setObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)

    Deprecated.

    As of JMX 1.2, replaced by [`addObservedObject(javax.management.ObjectName)`](#addObservedObject(javax.management.ObjectName))

    Sets the object to observe identified by its object name.

    Parameters:
    :   `object` - The object to observe.

    See Also:
    :   - [`getObservedObject()`](#getObservedObject())
  + ### getObservedAttribute

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getObservedAttribute()

    Gets the attribute being observed.

    Returns:
    :   The attribute being observed.

    See Also:
    :   - [`setObservedAttribute(java.lang.String)`](#setObservedAttribute(java.lang.String))
  + ### setObservedAttribute

    void setObservedAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") attribute)

    Sets the attribute to observe.

    Parameters:
    :   `attribute` - The attribute to observe.

    See Also:
    :   - [`getObservedAttribute()`](#getObservedAttribute())
  + ### getGranularityPeriod

    long getGranularityPeriod()

    Gets the granularity period (in milliseconds).

    Returns:
    :   The granularity period.

    See Also:
    :   - [`setGranularityPeriod(long)`](#setGranularityPeriod(long))
  + ### setGranularityPeriod

    void setGranularityPeriod(long period)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the granularity period (in milliseconds).

    Parameters:
    :   `period` - The granularity period.

    Throws:
    :   `IllegalArgumentException` - The granularity
        period is less than or equal to zero.

    See Also:
    :   - [`getGranularityPeriod()`](#getGranularityPeriod())
  + ### isActive

    boolean isActive()

    Tests if the monitor MBean is active.
    A monitor MBean is marked active when the [`start`](#start()) method is called.
    It becomes inactive when the [`stop`](#stop()) method is called.

    Returns:
    :   `true` if the monitor MBean is active, `false` otherwise.