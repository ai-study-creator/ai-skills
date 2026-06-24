Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class StandardEmitterMBean

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.StandardMBean](StandardMBean.md "class in javax.management")

javax.management.StandardEmitterMBean

All Implemented Interfaces:
:   `DynamicMBean`, `MBeanRegistration`, `NotificationBroadcaster`, `NotificationEmitter`

---

public class StandardEmitterMBean
extends [StandardMBean](StandardMBean.md "class in javax.management")
implements [NotificationEmitter](NotificationEmitter.md "interface in javax.management")

An MBean whose management interface is determined by reflection
on a Java interface, and that emits notifications.

The following example shows how to use the public constructor
[`StandardEmitterMBean(implementation, mbeanInterface, emitter)`](#%3Cinit%3E(T,java.lang.Class,javax.management.NotificationEmitter)) to
create an MBean emitting notifications with any
implementation class name *Impl*, with a management
interface defined (as for current Standard MBeans) by any interface
*Intf*, and with any implementation of the interface
[`NotificationEmitter`](NotificationEmitter.md "interface in javax.management"). The example uses the class
[`NotificationBroadcasterSupport`](NotificationBroadcasterSupport.md "class in javax.management") as an implementation
of the interface [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

```
     MBeanServer mbs;
     ...
     final String[] types = new String[] {"sun.disc.space","sun.disc.alarm"};
     final MBeanNotificationInfo info = new MBeanNotificationInfo(
                                          types,
                                          Notification.class.getName(),
                                          "Notification about disc info.");
     final NotificationEmitter emitter =
                    new NotificationBroadcasterSupport(info);

     final Intf impl = new Impl(...);
     final Object mbean = new StandardEmitterMBean(
                                     impl, Intf.class, emitter);
     mbs.registerMBean(mbean, objectName);
```

Since:
:   1.6

See Also:
:   * [`StandardMBean`](StandardMBean.md "class in javax.management")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `StandardEmitterMBean(Class<?> mbeanInterface,
  boolean isMXBean,
  NotificationEmitter emitter)`

  Make an MBean whose management interface is specified by
  `mbeanInterface`, and where notifications are handled by
  the given `NotificationEmitter`.

  `protected`

  `StandardEmitterMBean(Class<?> mbeanInterface,
  NotificationEmitter emitter)`

  Make an MBean whose management interface is specified by
  `mbeanInterface`, and
  where notifications are handled by the given `NotificationEmitter`.

  `StandardEmitterMBean(T implementation,
  Class<T> mbeanInterface,
  boolean isMXBean,
  NotificationEmitter emitter)`

  Make an MBean whose management interface is specified by
  `mbeanInterface`, with the given implementation and where
  notifications are handled by the given `NotificationEmitter`.

  `StandardEmitterMBean(T implementation,
  Class<T> mbeanInterface,
  NotificationEmitter emitter)`

  Make an MBean whose management interface is specified by
  `mbeanInterface`, with the given implementation and
  where notifications are handled by the given `NotificationEmitter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to this MBean.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating, for each notification this
  MBean may send, the name of the Java class of the notification
  and the notification type.

  `void`

  `removeNotificationListener(NotificationListener listener)`

  Removes a listener from this MBean.

  `void`

  `removeNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from this MBean.

  `void`

  `sendNotification(Notification n)`

  Sends a notification.

  ### Methods inherited from class javax.management.[StandardMBean](StandardMBean.md "class in javax.management")

  `cacheMBeanInfo, getAttribute, getAttributes, getCachedMBeanInfo, getClassName, getConstructors, getDescription, getDescription, getDescription, getDescription, getDescription, getDescription, getDescription, getImpact, getImplementation, getImplementationClass, getMBeanInfo, getMBeanInterface, getParameterName, getParameterName, invoke, postDeregister, postRegister, preDeregister, preRegister, setAttribute, setAttributes, setImplementation`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StandardEmitterMBean

    public StandardEmitterMBean(T implementation,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> mbeanInterface,
    [NotificationEmitter](NotificationEmitter.md "interface in javax.management") emitter)

    Make an MBean whose management interface is specified by
    `mbeanInterface`, with the given implementation and
    where notifications are handled by the given `NotificationEmitter`.
    The resultant MBean implements the `NotificationEmitter` interface
    by forwarding its methods to `emitter`. It is legal and useful
    for `implementation` and `emitter` to be the same object.

    If `emitter` is an instance of `NotificationBroadcasterSupport` then the MBean's [`sendNotification`](#sendNotification(javax.management.Notification)) method will call `emitter.`[`sendNotification`](NotificationBroadcasterSupport.md#sendNotification(javax.management.Notification)).

    The array returned by [`getNotificationInfo()`](#getNotificationInfo()) on the
    new MBean is a copy of the array returned by
    `emitter.`[`getNotificationInfo()`](NotificationBroadcaster.md#getNotificationInfo()) at the time of construction. If the array
    returned by `emitter.getNotificationInfo()` later changes,
    that will have no effect on this object's
    `getNotificationInfo()`.

    Type Parameters:
    :   `T` - the implementation type of the MBean

    Parameters:
    :   `implementation` - the implementation of the MBean interface.
    :   `mbeanInterface` - a Standard MBean interface.
    :   `emitter` - the object that will handle notifications.

    Throws:
    :   `IllegalArgumentException` - if the `mbeanInterface`
        does not follow JMX design patterns for Management Interfaces, or
        if the given `implementation` does not implement the
        specified interface, or if `emitter` is null.
  + ### StandardEmitterMBean

    public StandardEmitterMBean(T implementation,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> mbeanInterface,
    boolean isMXBean,
    [NotificationEmitter](NotificationEmitter.md "interface in javax.management") emitter)

    Make an MBean whose management interface is specified by
    `mbeanInterface`, with the given implementation and where
    notifications are handled by the given `NotificationEmitter`. This constructor can be used to make
    either Standard MBeans or MXBeans. The resultant MBean
    implements the `NotificationEmitter` interface by
    forwarding its methods to `emitter`. It is legal and
    useful for `implementation` and `emitter` to be the
    same object.

    If `emitter` is an instance of `NotificationBroadcasterSupport` then the MBean's [`sendNotification`](#sendNotification(javax.management.Notification)) method will call `emitter.`[`sendNotification`](NotificationBroadcasterSupport.md#sendNotification(javax.management.Notification)).

    The array returned by [`getNotificationInfo()`](#getNotificationInfo()) on the
    new MBean is a copy of the array returned by
    `emitter.`[`getNotificationInfo()`](NotificationBroadcaster.md#getNotificationInfo()) at the time of construction. If the array
    returned by `emitter.getNotificationInfo()` later changes,
    that will have no effect on this object's
    `getNotificationInfo()`.

    Type Parameters:
    :   `T` - the implementation type of the MBean

    Parameters:
    :   `implementation` - the implementation of the MBean interface.
    :   `mbeanInterface` - a Standard MBean interface.
    :   `isMXBean` - If true, the `mbeanInterface` parameter
        names an MXBean interface and the resultant MBean is an MXBean.
    :   `emitter` - the object that will handle notifications.

    Throws:
    :   `IllegalArgumentException` - if the `mbeanInterface`
        does not follow JMX design patterns for Management Interfaces, or
        if the given `implementation` does not implement the
        specified interface, or if `emitter` is null.
  + ### StandardEmitterMBean

    protected StandardEmitterMBean([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> mbeanInterface,
    [NotificationEmitter](NotificationEmitter.md "interface in javax.management") emitter)

    Make an MBean whose management interface is specified by
    `mbeanInterface`, and
    where notifications are handled by the given `NotificationEmitter`.
    The resultant MBean implements the `NotificationEmitter` interface
    by forwarding its methods to `emitter`.

    If `emitter` is an instance of `NotificationBroadcasterSupport` then the MBean's [`sendNotification`](#sendNotification(javax.management.Notification)) method will call `emitter.`[`sendNotification`](NotificationBroadcasterSupport.md#sendNotification(javax.management.Notification)).

    The array returned by [`getNotificationInfo()`](#getNotificationInfo()) on the
    new MBean is a copy of the array returned by
    `emitter.`[`getNotificationInfo()`](NotificationBroadcaster.md#getNotificationInfo()) at the time of construction. If the array
    returned by `emitter.getNotificationInfo()` later changes,
    that will have no effect on this object's
    `getNotificationInfo()`.

    This constructor must be called from a subclass that implements
    the given `mbeanInterface`.

    Parameters:
    :   `mbeanInterface` - a StandardMBean interface.
    :   `emitter` - the object that will handle notifications.

    Throws:
    :   `IllegalArgumentException` - if the `mbeanInterface`
        does not follow JMX design patterns for Management Interfaces, or
        if `this` does not implement the specified interface, or
        if `emitter` is null.
  + ### StandardEmitterMBean

    protected StandardEmitterMBean([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> mbeanInterface,
    boolean isMXBean,
    [NotificationEmitter](NotificationEmitter.md "interface in javax.management") emitter)

    Make an MBean whose management interface is specified by
    `mbeanInterface`, and where notifications are handled by
    the given `NotificationEmitter`. This constructor can be
    used to make either Standard MBeans or MXBeans. The resultant
    MBean implements the `NotificationEmitter` interface by
    forwarding its methods to `emitter`.

    If `emitter` is an instance of `NotificationBroadcasterSupport` then the MBean's [`sendNotification`](#sendNotification(javax.management.Notification)) method will call `emitter.`[`sendNotification`](NotificationBroadcasterSupport.md#sendNotification(javax.management.Notification)).

    The array returned by [`getNotificationInfo()`](#getNotificationInfo()) on the
    new MBean is a copy of the array returned by
    `emitter.`[`getNotificationInfo()`](NotificationBroadcaster.md#getNotificationInfo()) at the time of construction. If the array
    returned by `emitter.getNotificationInfo()` later changes,
    that will have no effect on this object's
    `getNotificationInfo()`.

    This constructor must be called from a subclass that implements
    the given `mbeanInterface`.

    Parameters:
    :   `mbeanInterface` - a StandardMBean interface.
    :   `isMXBean` - If true, the `mbeanInterface` parameter
        names an MXBean interface and the resultant MBean is an MXBean.
    :   `emitter` - the object that will handle notifications.

    Throws:
    :   `IllegalArgumentException` - if the `mbeanInterface`
        does not follow JMX design patterns for Management Interfaces, or
        if `this` does not implement the specified interface, or
        if `emitter` is null.
* ## Method Details

  + ### removeNotificationListener

    public void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `NotificationBroadcaster`

    Removes a listener from this MBean. If the listener
    has been registered with different handback objects or
    notification filters, all entries corresponding to the listener
    will be removed.

    Specified by:
    :   `removeNotificationListener` in interface `NotificationBroadcaster`

    Parameters:
    :   `listener` - A listener that was previously added to this
        MBean.

    Throws:
    :   `ListenerNotFoundException` - The listener is not
        registered with the MBean.

    See Also:
    :   - [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeNotificationListener

    public void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `NotificationEmitter`

    Removes a listener from this MBean. The MBean must have a
    listener that exactly matches the given `listener`,
    `filter`, and `handback` parameters. If
    there is more than one such listener, only one is removed.

    The `filter` and `handback` parameters
    may be null if and only if they are null in a listener to be
    removed.

    Specified by:
    :   `removeNotificationListener` in interface `NotificationEmitter`

    Parameters:
    :   `listener` - A listener that was previously added to this
        MBean.
    :   `filter` - The filter that was specified when the listener
        was added.
    :   `handback` - The handback that was specified when the listener was
        added.

    Throws:
    :   `ListenerNotFoundException` - The listener is not
        registered with the MBean, or it is not registered with the
        given filter and handback.
  + ### addNotificationListener

    public void addNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Description copied from interface: `NotificationBroadcaster`

    Adds a listener to this MBean.

    Specified by:
    :   `addNotificationListener` in interface `NotificationBroadcaster`

    Parameters:
    :   `listener` - The listener object which will handle the
        notifications emitted by the broadcaster.
    :   `filter` - The filter object. If filter is null, no
        filtering will be performed before handling notifications.
    :   `handback` - An opaque object to be sent back to the
        listener when a notification is emitted. This object cannot be
        used by the Notification broadcaster object. It should be
        resent unchanged with the notification to the listener.

    See Also:
    :   - [`NotificationBroadcaster.removeNotificationListener(javax.management.NotificationListener)`](NotificationBroadcaster.md#removeNotificationListener(javax.management.NotificationListener))
  + ### getNotificationInfo

    public [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Description copied from interface: `NotificationBroadcaster`

    Returns an array indicating, for each notification this
    MBean may send, the name of the Java class of the notification
    and the notification type.

    It is not illegal for the MBean to send notifications not
    described in this array. However, some clients of the MBean
    server may depend on the array being complete for their correct
    functioning.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Returns:
    :   the array of possible notifications.
  + ### sendNotification

    public void sendNotification([Notification](Notification.md "class in javax.management") n)

    Sends a notification.

    If the `emitter` parameter to the constructor was an
    instance of `NotificationBroadcasterSupport` then this
    method will call `emitter.`[`sendNotification`](NotificationBroadcasterSupport.md#sendNotification(javax.management.Notification)).

    Parameters:
    :   `n` - the notification to send.

    Throws:
    :   `ClassCastException` - if the `emitter` parameter to the
        constructor was not a `NotificationBroadcasterSupport`.