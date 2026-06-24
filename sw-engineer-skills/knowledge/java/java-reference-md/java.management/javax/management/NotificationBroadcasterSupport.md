Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class NotificationBroadcasterSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.NotificationBroadcasterSupport

All Implemented Interfaces:
:   `NotificationBroadcaster`, `NotificationEmitter`

Direct Known Subclasses:
:   `JMXConnectorServer`, `Monitor`, `RelationService`, `Timer`

---

public class NotificationBroadcasterSupport
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [NotificationEmitter](NotificationEmitter.md "interface in javax.management")

Provides an implementation of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management")
interface. This can be used as the super class of an MBean that
sends notifications.

By default, the notification dispatch model is synchronous.
That is, when a thread calls sendNotification, the
`NotificationListener.handleNotification` method of each listener
is called within that thread. You can override this default
by overriding `handleNotification` in a subclass, or by passing an
Executor to the constructor.

If the method call of a filter or listener throws an [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang"),
then that exception does not prevent other listeners from being invoked. However,
if the method call of a filter or of `Executor.execute` or of
`handleNotification` (when no `Executor` is specified) throws an
[`Error`](../../../java.base/java/lang/Error.md "class in java.lang"), then that `Error` is propagated to the caller of
[`sendNotification`](#sendNotification(javax.management.Notification)).

Remote listeners added using the JMX Remote API (see JMXConnector) are not
usually called synchronously. That is, when sendNotification returns, it is
not guaranteed that any remote listeners have yet received the notification.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotificationBroadcasterSupport()`

  Constructs a NotificationBroadcasterSupport where each listener is invoked by the
  thread sending the notification.

  `NotificationBroadcasterSupport(Executor executor)`

  Constructs a NotificationBroadcasterSupport where each listener is invoked using
  the given [`Executor`](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent").

  `NotificationBroadcasterSupport(Executor executor,
  MBeanNotificationInfo... info)`

  Constructs a NotificationBroadcasterSupport with information about the notifications that may be sent,
  and where each listener is invoked using the given [`Executor`](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent").

  `NotificationBroadcasterSupport(MBeanNotificationInfo... info)`

  Constructs a NotificationBroadcasterSupport with information
  about the notifications that may be sent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating, for each notification this
  MBean may send, the name of the Java class of the notification
  and the notification type.

  `protected void`

  `handleNotification(NotificationListener listener,
  Notification notif,
  Object handback)`

  This method is called by [`sendNotification`](#sendNotification(javax.management.Notification)) for each listener in order to send the
  notification to that listener.

  `void`

  `removeNotificationListener(NotificationListener listener)`

  Removes a listener from this MBean.

  `void`

  `removeNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from this MBean.

  `void`

  `sendNotification(Notification notification)`

  Sends a notification.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NotificationBroadcasterSupport

    public NotificationBroadcasterSupport()

    Constructs a NotificationBroadcasterSupport where each listener is invoked by the
    thread sending the notification. This constructor is equivalent to
    [`NotificationBroadcasterSupport(null, null)`](#%3Cinit%3E(java.util.concurrent.Executor,javax.management.MBeanNotificationInfo...)).
  + ### NotificationBroadcasterSupport

    public NotificationBroadcasterSupport([Executor](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent") executor)

    Constructs a NotificationBroadcasterSupport where each listener is invoked using
    the given [`Executor`](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent"). When [`sendNotification`](#sendNotification(javax.management.Notification)) is called, a listener is selected if it was added with a null
    [`NotificationFilter`](NotificationFilter.md "interface in javax.management"), or if [`isNotificationEnabled`](NotificationFilter.md#isNotificationEnabled(javax.management.Notification)) returns true for the notification being sent. The call to
    `NotificationFilter.isNotificationEnabled` takes place in the thread
    that called `sendNotification`. Then, for each selected listener,
    [`executor.execute`](../../../java.base/java/util/concurrent/Executor.md#execute(java.lang.Runnable)) is called with a command
    that calls the `handleNotification` method.
    This constructor is equivalent to
    [`NotificationBroadcasterSupport(executor, null)`](#%3Cinit%3E(java.util.concurrent.Executor,javax.management.MBeanNotificationInfo...)).

    Parameters:
    :   `executor` - an executor used by the method `sendNotification` to
        send each notification. If it is null, the thread calling `sendNotification`
        will invoke the `handleNotification` method itself.

    Since:
    :   1.6
  + ### NotificationBroadcasterSupport

    public NotificationBroadcasterSupport([MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")... info)

    Constructs a NotificationBroadcasterSupport with information
    about the notifications that may be sent. Each listener is
    invoked by the thread sending the notification. This
    constructor is equivalent to [`NotificationBroadcasterSupport(null, info)`](#%3Cinit%3E(java.util.concurrent.Executor,javax.management.MBeanNotificationInfo...)).

    If the `info` array is not empty, then it is
    cloned by the constructor as if by `info.clone()`, and
    each call to [`getNotificationInfo()`](#getNotificationInfo()) returns a new
    clone.

    Parameters:
    :   `info` - an array indicating, for each notification this
        MBean may send, the name of the Java class of the notification
        and the notification type. Can be null, which is equivalent to
        an empty array.

    Since:
    :   1.6
  + ### NotificationBroadcasterSupport

    public NotificationBroadcasterSupport([Executor](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent") executor,
    [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")... info)

    Constructs a NotificationBroadcasterSupport with information about the notifications that may be sent,
    and where each listener is invoked using the given [`Executor`](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent").

    When [`sendNotification`](#sendNotification(javax.management.Notification)) is called, a
    listener is selected if it was added with a null [`NotificationFilter`](NotificationFilter.md "interface in javax.management"), or if [`isNotificationEnabled`](NotificationFilter.md#isNotificationEnabled(javax.management.Notification))
    returns true for the notification being sent. The call to
    `NotificationFilter.isNotificationEnabled` takes
    place in the thread that called
    `sendNotification`. Then, for each selected
    listener, [`executor.execute`](../../../java.base/java/util/concurrent/Executor.md#execute(java.lang.Runnable)) is called
    with a command that calls the `handleNotification`
    method.

    If the `info` array is not empty, then it is
    cloned by the constructor as if by `info.clone()`, and
    each call to [`getNotificationInfo()`](#getNotificationInfo()) returns a new
    clone.

    Parameters:
    :   `executor` - an executor used by the method
        `sendNotification` to send each notification. If it
        is null, the thread calling `sendNotification` will
        invoke the `handleNotification` method itself.
    :   `info` - an array indicating, for each notification this
        MBean may send, the name of the Java class of the notification
        and the notification type. Can be null, which is equivalent to
        an empty array.

    Since:
    :   1.6
* ## Method Details

  + ### addNotificationListener

    public void addNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Adds a listener.

    Specified by:
    :   `addNotificationListener` in interface `NotificationBroadcaster`

    Parameters:
    :   `listener` - The listener to receive notifications.
    :   `filter` - The filter object. If filter is null, no
        filtering will be performed before handling notifications.
    :   `handback` - An opaque object to be sent back to the
        listener when a notification is emitted. This object cannot be
        used by the Notification broadcaster object. It should be
        resent unchanged with the notification to the listener.

    Throws:
    :   `IllegalArgumentException` - thrown if the listener is null.

    See Also:
    :   - [`removeNotificationListener(javax.management.NotificationListener)`](#removeNotificationListener(javax.management.NotificationListener))
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

    public void sendNotification([Notification](Notification.md "class in javax.management") notification)

    Sends a notification.
    If an `Executor` was specified in the constructor, it will be given one
    task per selected listener to deliver the notification to that listener.

    Parameters:
    :   `notification` - The notification to send.
  + ### handleNotification

    protected void handleNotification([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [Notification](Notification.md "class in javax.management") notif,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)

    This method is called by [`sendNotification`](#sendNotification(javax.management.Notification)) for each listener in order to send the
    notification to that listener. It can be overridden in
    subclasses to change the behavior of notification delivery,
    for instance to deliver the notification in a separate
    thread.

    The default implementation of this method is equivalent to

    ```
     listener.handleNotification(notif, handback);
    ```

    Parameters:
    :   `listener` - the listener to which the notification is being
        delivered.
    :   `notif` - the notification being delivered to the listener.
    :   `handback` - the handback object that was supplied when the
        listener was added.