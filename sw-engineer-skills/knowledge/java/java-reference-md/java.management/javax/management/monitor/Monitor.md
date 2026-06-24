Module [java.management](../../../module-summary.md)

Package [javax.management.monitor](package-summary.md)

# Class Monitor

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

javax.management.monitor.Monitor

All Implemented Interfaces:
:   `MBeanRegistration`, `MonitorMBean`, `NotificationBroadcaster`, `NotificationEmitter`

Direct Known Subclasses:
:   `CounterMonitor`, `GaugeMonitor`, `StringMonitor`

---

public abstract class Monitor
extends [NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")
implements [MonitorMBean](MonitorMBean.md "interface in javax.management.monitor"), [MBeanRegistration](../MBeanRegistration.md "interface in javax.management")

Defines the part common to all monitor MBeans.
A monitor MBean monitors values of an attribute common to a set of observed
MBeans. The observed attribute is monitored at intervals specified by the
granularity period. A gauge value (derived gauge) is derived from the values
of the observed attribute.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `alreadyNotified`

  Deprecated.

  equivalent to [`alreadyNotifieds`](#alreadyNotifieds)[0].

  `protected int[]`

  `alreadyNotifieds`

  Selected monitor errors that have already been notified.

  `protected static final int`

  `capacityIncrement`

  The amount by which the capacity of the monitor arrays are
  automatically incremented when their size becomes greater than
  their capacity.

  `protected String`

  `dbgTag`

  Deprecated.

  No replacement.

  `protected int`

  `elementCount`

  The number of valid components in the vector of observed objects.

  `protected static final int`

  `OBSERVED_ATTRIBUTE_ERROR_NOTIFIED`

  Flag denoting that a notification has occurred after changing
  the observed attribute.

  `protected static final int`

  `OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED`

  Flag denoting that a notification has occurred after changing
  the observed object or the observed attribute.

  `protected static final int`

  `OBSERVED_OBJECT_ERROR_NOTIFIED`

  Flag denoting that a notification has occurred after changing
  the observed object.

  `protected static final int`

  `RESET_FLAGS_ALREADY_NOTIFIED`

  This flag is used to reset the [`alreadyNotifieds`](#alreadyNotifieds) monitor attribute.

  `protected static final int`

  `RUNTIME_ERROR_NOTIFIED`

  Flag denoting that a notification has occurred after changing
  the observed object or the observed attribute.

  `protected MBeanServer`

  `server`

  Reference to the MBean server.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Monitor()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addObservedObject(ObjectName object)`

  Adds the specified object in the set of observed MBeans, if this object
  is not already present.

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

  Tests whether the monitor MBean is active.

  `void`

  `postDeregister()`

  Allows the monitor MBean to perform any operations needed after
  having been unregistered by the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the monitor MBean to perform any operations needed after
  having been registered in the MBean server or after the
  registration has failed.

  `void`

  `preDeregister()`

  Allows the monitor MBean to perform any operations it needs
  before being unregistered by the MBean server.

  `ObjectName`

  `preRegister(MBeanServer server,
  ObjectName name)`

  Allows the monitor MBean to perform any operations it needs
  before being registered in the MBean server.

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

  `abstract void`

  `start()`

  Starts the monitor.

  `abstract void`

  `stop()`

  Stops the monitor.

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, getNotificationInfo, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### capacityIncrement

    protected static final int capacityIncrement

    The amount by which the capacity of the monitor arrays are
    automatically incremented when their size becomes greater than
    their capacity.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.capacityIncrement)
  + ### elementCount

    protected int elementCount

    The number of valid components in the vector of observed objects.
  + ### alreadyNotified

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected int alreadyNotified

    Deprecated.

    equivalent to [`alreadyNotifieds`](#alreadyNotifieds)[0].

    Monitor errors that have already been notified.
  + ### alreadyNotifieds

    protected int[] alreadyNotifieds

    Selected monitor errors that have already been notified.

    Each element in this array corresponds to an observed object
    in the vector. It contains a bit mask of the flags [`OBSERVED_OBJECT_ERROR_NOTIFIED`](#OBSERVED_OBJECT_ERROR_NOTIFIED) etc, indicating whether the
    corresponding notification has already been sent for the MBean
    being monitored.
  + ### server

    protected [MBeanServer](../MBeanServer.md "interface in javax.management") server

    Reference to the MBean server. This reference is null when the
    monitor MBean is not registered in an MBean server. This
    reference is initialized before the monitor MBean is registered
    in the MBean server.

    See Also:
    :   - [`preRegister(MBeanServer server, ObjectName name)`](#preRegister(javax.management.MBeanServer,javax.management.ObjectName))
  + ### RESET\_FLAGS\_ALREADY\_NOTIFIED

    protected static final int RESET\_FLAGS\_ALREADY\_NOTIFIED

    This flag is used to reset the [`alreadyNotifieds`](#alreadyNotifieds) monitor attribute.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.RESET_FLAGS_ALREADY_NOTIFIED)
  + ### OBSERVED\_OBJECT\_ERROR\_NOTIFIED

    protected static final int OBSERVED\_OBJECT\_ERROR\_NOTIFIED

    Flag denoting that a notification has occurred after changing
    the observed object. This flag is used to check that the new
    observed object is registered in the MBean server at the time
    of the first notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.OBSERVED_OBJECT_ERROR_NOTIFIED)
  + ### OBSERVED\_ATTRIBUTE\_ERROR\_NOTIFIED

    protected static final int OBSERVED\_ATTRIBUTE\_ERROR\_NOTIFIED

    Flag denoting that a notification has occurred after changing
    the observed attribute. This flag is used to check that the
    new observed attribute belongs to the observed object at the
    time of the first notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.OBSERVED_ATTRIBUTE_ERROR_NOTIFIED)
  + ### OBSERVED\_ATTRIBUTE\_TYPE\_ERROR\_NOTIFIED

    protected static final int OBSERVED\_ATTRIBUTE\_TYPE\_ERROR\_NOTIFIED

    Flag denoting that a notification has occurred after changing
    the observed object or the observed attribute. This flag is
    used to check that the observed attribute type is correct
    (depending on the monitor in use) at the time of the first
    notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.OBSERVED_ATTRIBUTE_TYPE_ERROR_NOTIFIED)
  + ### RUNTIME\_ERROR\_NOTIFIED

    protected static final int RUNTIME\_ERROR\_NOTIFIED

    Flag denoting that a notification has occurred after changing
    the observed object or the observed attribute. This flag is
    used to notify any exception (except the cases described above)
    when trying to get the value of the observed attribute at the
    time of the first notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.monitor.Monitor.RUNTIME_ERROR_NOTIFIED)
  + ### dbgTag

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") dbgTag

    Deprecated.

    No replacement.

    This field is retained for compatibility but should not be referenced.
* ## Constructor Details

  + ### Monitor

    public Monitor()

    Constructor for subclasses to call.
* ## Method Details

  + ### preRegister

    public [ObjectName](../ObjectName.md "class in javax.management") preRegister([MBeanServer](../MBeanServer.md "interface in javax.management") server,
    [ObjectName](../ObjectName.md "class in javax.management") name)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the monitor MBean to perform any operations it needs
    before being registered in the MBean server.

    Initializes the reference to the MBean server.

    Specified by:
    :   `preRegister` in interface `MBeanRegistration`

    Parameters:
    :   `server` - The MBean server in which the monitor MBean will
        be registered.
    :   `name` - The object name of the monitor MBean.

    Returns:
    :   The name of the monitor MBean registered.

    Throws:
    :   `Exception` - if something goes wrong
  + ### postRegister

    public void postRegister([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Allows the monitor MBean to perform any operations needed after
    having been registered in the MBean server or after the
    registration has failed.

    Not used in this context.

    Specified by:
    :   `postRegister` in interface `MBeanRegistration`

    Parameters:
    :   `registrationDone` - Indicates whether or not the MBean has
        been successfully registered in the MBean server. The value
        false means that the registration phase has failed.
  + ### preDeregister

    public void preDeregister()
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the monitor MBean to perform any operations it needs
    before being unregistered by the MBean server.

    Stops the monitor.

    Specified by:
    :   `preDeregister` in interface `MBeanRegistration`

    Throws:
    :   `Exception` - if something goes wrong
  + ### postDeregister

    public void postDeregister()

    Allows the monitor MBean to perform any operations needed after
    having been unregistered by the MBean server.

    Not used in this context.

    Specified by:
    :   `postDeregister` in interface `MBeanRegistration`
  + ### start

    public abstract void start()

    Starts the monitor.

    Specified by:
    :   `start` in interface `MonitorMBean`
  + ### stop

    public abstract void stop()

    Stops the monitor.

    Specified by:
    :   `stop` in interface `MonitorMBean`
  + ### getObservedObject

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [ObjectName](../ObjectName.md "class in javax.management") getObservedObject()

    Deprecated.

    As of JMX 1.2, replaced by [`getObservedObjects()`](#getObservedObjects())

    Returns the object name of the first object in the set of observed
    MBeans, or `null` if there is no such object.

    Specified by:
    :   `getObservedObject` in interface `MonitorMBean`

    Returns:
    :   The object being observed.

    See Also:
    :   - [`setObservedObject(ObjectName)`](#setObservedObject(javax.management.ObjectName))
  + ### setObservedObject

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Deprecated.

    As of JMX 1.2, replaced by [`addObservedObject(javax.management.ObjectName)`](#addObservedObject(javax.management.ObjectName))

    Removes all objects from the set of observed objects, and then adds the
    specified object.

    Specified by:
    :   `setObservedObject` in interface `MonitorMBean`

    Parameters:
    :   `object` - The object to observe.

    Throws:
    :   `IllegalArgumentException` - The specified
        object is null.

    See Also:
    :   - [`getObservedObject()`](#getObservedObject())
  + ### addObservedObject

    public void addObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Adds the specified object in the set of observed MBeans, if this object
    is not already present.

    Specified by:
    :   `addObservedObject` in interface `MonitorMBean`

    Parameters:
    :   `object` - The object to observe.

    Throws:
    :   `IllegalArgumentException` - The specified object is null.
  + ### removeObservedObject

    public void removeObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)

    Removes the specified object from the set of observed MBeans.

    Specified by:
    :   `removeObservedObject` in interface `MonitorMBean`

    Parameters:
    :   `object` - The object to remove.
  + ### containsObservedObject

    public boolean containsObservedObject([ObjectName](../ObjectName.md "class in javax.management") object)

    Tests whether the specified object is in the set of observed MBeans.

    Specified by:
    :   `containsObservedObject` in interface `MonitorMBean`

    Parameters:
    :   `object` - The object to check.

    Returns:
    :   `true` if the specified object is present,
        `false` otherwise.
  + ### getObservedObjects

    public [ObjectName](../ObjectName.md "class in javax.management")[] getObservedObjects()

    Returns an array containing the objects being observed.

    Specified by:
    :   `getObservedObjects` in interface `MonitorMBean`

    Returns:
    :   The objects being observed.
  + ### getObservedAttribute

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getObservedAttribute()

    Gets the attribute being observed.
      
    The observed attribute is not initialized by default (set to null).

    Specified by:
    :   `getObservedAttribute` in interface `MonitorMBean`

    Returns:
    :   The attribute being observed.

    See Also:
    :   - [`setObservedAttribute(java.lang.String)`](#setObservedAttribute(java.lang.String))
  + ### setObservedAttribute

    public void setObservedAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") attribute)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the attribute to observe.
      
    The observed attribute is not initialized by default (set to null).

    Specified by:
    :   `setObservedAttribute` in interface `MonitorMBean`

    Parameters:
    :   `attribute` - The attribute to observe.

    Throws:
    :   `IllegalArgumentException` - The specified
        attribute is null.

    See Also:
    :   - [`getObservedAttribute()`](#getObservedAttribute())
  + ### getGranularityPeriod

    public long getGranularityPeriod()

    Gets the granularity period (in milliseconds).
      
    The default value of the granularity period is 10 seconds.

    Specified by:
    :   `getGranularityPeriod` in interface `MonitorMBean`

    Returns:
    :   The granularity period value.

    See Also:
    :   - [`setGranularityPeriod(long)`](#setGranularityPeriod(long))
  + ### setGranularityPeriod

    public void setGranularityPeriod(long period)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the granularity period (in milliseconds).
      
    The default value of the granularity period is 10 seconds.

    Specified by:
    :   `setGranularityPeriod` in interface `MonitorMBean`

    Parameters:
    :   `period` - The granularity period value.

    Throws:
    :   `IllegalArgumentException` - The granularity
        period is less than or equal to zero.

    See Also:
    :   - [`getGranularityPeriod()`](#getGranularityPeriod())
  + ### isActive

    public boolean isActive()

    Tests whether the monitor MBean is active. A monitor MBean is
    marked active when the [`start`](#start()) method is called.
    It becomes inactive when the [`stop`](#stop()) method is
    called.

    Specified by:
    :   `isActive` in interface `MonitorMBean`

    Returns:
    :   `true` if the monitor MBean is active,
        `false` otherwise.