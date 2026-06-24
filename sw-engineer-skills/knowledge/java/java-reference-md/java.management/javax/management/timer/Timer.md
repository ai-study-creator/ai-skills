Module [java.management](../../../module-summary.md)

Package [javax.management.timer](package-summary.md)

# Class Timer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

javax.management.timer.Timer

All Implemented Interfaces:
:   `MBeanRegistration`, `NotificationBroadcaster`, `NotificationEmitter`, `TimerMBean`

---

public class Timer
extends [NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")
implements [TimerMBean](TimerMBean.md "interface in javax.management.timer"), [MBeanRegistration](../MBeanRegistration.md "interface in javax.management")

Provides the implementation of the timer MBean.
The timer MBean sends out an alarm at a specified time
that wakes up all the listeners registered to receive timer notifications.

This class manages a list of dated timer notifications.
A method allows users to add/remove as many notifications as required.
When a timer notification is emitted by the timer and becomes obsolete,
it is automatically removed from the list of timer notifications.
  
Additional timer notifications can be added into regularly repeating notifications.

Note:

1. When sending timer notifications, the timer updates the notification sequence number
   irrespective of the notification type.- The timer service relies on the system date of the host where the `Timer` class is loaded.
     Listeners may receive untimely notifications
     if their host has a different system date.
     To avoid such problems, synchronize the system date of all host machines where timing is needed.- The default behavior for periodic notifications is *fixed-delay execution*, as
       specified in [`Timer`](../../../../java.base/java/util/Timer.md "class in java.util"). In order to use *fixed-rate execution*, use the
       overloaded [`addNotification(String, String, Object, Date, long, long, boolean)`](#addNotification(java.lang.String,java.lang.String,java.lang.Object,java.util.Date,long,long,boolean)) method.- Notification listeners are potentially all executed in the same
         thread. Therefore, they should execute rapidly to avoid holding up
         other listeners or perturbing the regularity of fixed-delay
         executions. See [`NotificationBroadcasterSupport`](../NotificationBroadcasterSupport.md "class in javax.management").

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `ONE_DAY`

  Number of milliseconds in one day.

  `static final long`

  `ONE_HOUR`

  Number of milliseconds in one hour.

  `static final long`

  `ONE_MINUTE`

  Number of milliseconds in one minute.

  `static final long`

  `ONE_SECOND`

  Number of milliseconds in one second.

  `static final long`

  `ONE_WEEK`

  Number of milliseconds in one week.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Timer()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Integer`

  `addNotification(String type,
  String message,
  Object userData,
  Date date)`

  Creates a new timer notification with the specified `type`, `message`
  and `userData` and inserts it into the list of notifications with a given date
  and a null period and number of occurrences.

  `Integer`

  `addNotification(String type,
  String message,
  Object userData,
  Date date,
  long period)`

  Creates a new timer notification with the specified `type`, `message`
  and `userData` and inserts it into the list of notifications with a given date
  and period and a null number of occurrences.

  `Integer`

  `addNotification(String type,
  String message,
  Object userData,
  Date date,
  long period,
  long nbOccurences)`

  Creates a new timer notification with the specified `type`, `message`
  and `userData` and inserts it into the list of notifications with a given date,
  period and number of occurrences.

  `Integer`

  `addNotification(String type,
  String message,
  Object userData,
  Date date,
  long period,
  long nbOccurences,
  boolean fixedRate)`

  Creates a new timer notification with the specified `type`, `message`
  and `userData` and inserts it into the list of notifications with a given date,
  period and number of occurrences.

  `Vector<Integer>`

  `getAllNotificationIDs()`

  Gets all timer notification identifiers registered into the list of notifications.

  `Date`

  `getDate(Integer id)`

  Gets a copy of the date associated to a timer notification.

  `Boolean`

  `getFixedRate(Integer id)`

  Gets a copy of the flag indicating whether a periodic notification is
  executed at *fixed-delay* or at *fixed-rate*.

  `int`

  `getNbNotifications()`

  Gets the number of timer notifications registered into the list of notifications.

  `Long`

  `getNbOccurences(Integer id)`

  Gets a copy of the remaining number of occurrences associated to a timer notification.

  `Vector<Integer>`

  `getNotificationIDs(String type)`

  Gets all the identifiers of timer notifications corresponding to the specified type.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating, for each notification this
  MBean may send, the name of the Java class of the notification
  and the notification type.

  `String`

  `getNotificationMessage(Integer id)`

  Gets the timer notification detailed message corresponding to the specified identifier.

  `String`

  `getNotificationType(Integer id)`

  Gets the timer notification type corresponding to the specified identifier.

  `Object`

  `getNotificationUserData(Integer id)`

  Gets the timer notification user data object corresponding to the specified identifier.

  `Long`

  `getPeriod(Integer id)`

  Gets a copy of the period (in milliseconds) associated to a timer notification.

  `boolean`

  `getSendPastNotifications()`

  Gets the flag indicating whether or not the timer sends past notifications.

  `boolean`

  `isActive()`

  Tests whether the timer MBean is active.

  `boolean`

  `isEmpty()`

  Tests whether the list of timer notifications is empty.

  `void`

  `postDeregister()`

  Allows the timer MBean to perform any operations needed after having been
  unregistered by the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the timer MBean to perform any operations needed after having been
  registered in the MBean server or after the registration has failed.

  `void`

  `preDeregister()`

  Allows the timer MBean to perform any operations it needs before being unregistered
  by the MBean server.

  `ObjectName`

  `preRegister(MBeanServer server,
  ObjectName name)`

  Allows the timer MBean to perform any operations it needs before being registered
  in the MBean server.

  `void`

  `removeAllNotifications()`

  Removes all the timer notifications from the list of notifications
  and resets the counter used to update the timer notification identifiers.

  `void`

  `removeNotification(Integer id)`

  Removes the timer notification corresponding to the specified identifier from the list of notifications.

  `void`

  `removeNotifications(String type)`

  Removes all the timer notifications corresponding to the specified type from the list of notifications.

  `void`

  `setSendPastNotifications(boolean value)`

  Sets the flag indicating whether the timer sends past notifications or not.

  `void`

  `start()`

  Starts the timer.

  `void`

  `stop()`

  Stops the timer.

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### ONE\_SECOND

    public static final long ONE\_SECOND

    Number of milliseconds in one second.
    Useful constant for the `addNotification` method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.timer.Timer.ONE_SECOND)
  + ### ONE\_MINUTE

    public static final long ONE\_MINUTE

    Number of milliseconds in one minute.
    Useful constant for the `addNotification` method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.timer.Timer.ONE_MINUTE)
  + ### ONE\_HOUR

    public static final long ONE\_HOUR

    Number of milliseconds in one hour.
    Useful constant for the `addNotification` method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.timer.Timer.ONE_HOUR)
  + ### ONE\_DAY

    public static final long ONE\_DAY

    Number of milliseconds in one day.
    Useful constant for the `addNotification` method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.timer.Timer.ONE_DAY)
  + ### ONE\_WEEK

    public static final long ONE\_WEEK

    Number of milliseconds in one week.
    Useful constant for the `addNotification` method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.timer.Timer.ONE_WEEK)
* ## Constructor Details

  + ### Timer

    public Timer()

    Default constructor.
* ## Method Details

  + ### preRegister

    public [ObjectName](../ObjectName.md "class in javax.management") preRegister([MBeanServer](../MBeanServer.md "interface in javax.management") server,
    [ObjectName](../ObjectName.md "class in javax.management") name)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the timer MBean to perform any operations it needs before being registered
    in the MBean server.

    Not used in this context.

    Specified by:
    :   `preRegister` in interface `MBeanRegistration`

    Parameters:
    :   `server` - The MBean server in which the timer MBean will be registered.
    :   `name` - The object name of the timer MBean.

    Returns:
    :   The name of the timer MBean registered.

    Throws:
    :   `Exception` - if something goes wrong
  + ### postRegister

    public void postRegister([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Allows the timer MBean to perform any operations needed after having been
    registered in the MBean server or after the registration has failed.

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

    Allows the timer MBean to perform any operations it needs before being unregistered
    by the MBean server.

    Stops the timer.

    Specified by:
    :   `preDeregister` in interface `MBeanRegistration`

    Throws:
    :   `Exception` - if something goes wrong
  + ### postDeregister

    public void postDeregister()

    Allows the timer MBean to perform any operations needed after having been
    unregistered by the MBean server.

    Not used in this context.

    Specified by:
    :   `postDeregister` in interface `MBeanRegistration`
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

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

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.
  + ### start

    public void start()

    Starts the timer.

    If there is one or more timer notifications before the time in the list of notifications, the notification
    is sent according to the `sendPastNotifications` flag and then, updated
    according to its period and remaining number of occurrences.
    If the timer notification date remains earlier than the current date, this notification is just removed
    from the list of notifications.

    Specified by:
    :   `start` in interface `TimerMBean`
  + ### stop

    public void stop()

    Stops the timer.

    Specified by:
    :   `stop` in interface `TimerMBean`
  + ### addNotification

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData,
    [Date](../../../../java.base/java/util/Date.md "class in java.util") date,
    long period,
    long nbOccurences,
    boolean fixedRate)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new timer notification with the specified `type`, `message`
    and `userData` and inserts it into the list of notifications with a given date,
    period and number of occurrences.

    If the timer notification to be inserted has a date that is before the current date,
    the method behaves as if the specified date were the current date.   
    For once-off notifications, the notification is delivered immediately.   
    For periodic notifications, the first notification is delivered immediately and the
    subsequent ones are spaced as specified by the period parameter.

    Note that once the timer notification has been added into the list of notifications,
    its associated date, period and number of occurrences cannot be updated.

    In the case of a periodic notification, the value of parameter *fixedRate* is used to
    specify the execution scheme, as specified in [`Timer`](../../../../java.base/java/util/Timer.md "class in java.util").

    Specified by:
    :   `addNotification` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.
    :   `message` - The timer notification detailed message.
    :   `userData` - The timer notification user data object.
    :   `date` - The date when the notification occurs.
    :   `period` - The period of the timer notification (in milliseconds).
    :   `nbOccurences` - The total number the timer notification will be emitted.
    :   `fixedRate` - If `true` and if the notification is periodic, the notification
        is scheduled with a *fixed-rate* execution scheme. If
        `false` and if the notification is periodic, the notification
        is scheduled with a *fixed-delay* execution scheme. Ignored if the
        notification is not periodic.

    Returns:
    :   The identifier of the new created timer notification.

    Throws:
    :   `IllegalArgumentException` - The date is `null` or
        the period or the number of occurrences is negative.

    See Also:
    :   - [`addNotification(String, String, Object, Date, long, long)`](#addNotification(java.lang.String,java.lang.String,java.lang.Object,java.util.Date,long,long))
  + ### addNotification

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData,
    [Date](../../../../java.base/java/util/Date.md "class in java.util") date,
    long period,
    long nbOccurences)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new timer notification with the specified `type`, `message`
    and `userData` and inserts it into the list of notifications with a given date,
    period and number of occurrences.

    If the timer notification to be inserted has a date that is before the current date,
    the method behaves as if the specified date were the current date.   
    For once-off notifications, the notification is delivered immediately.   
    For periodic notifications, the first notification is delivered immediately and the
    subsequent ones are spaced as specified by the period parameter.

    Note that once the timer notification has been added into the list of notifications,
    its associated date, period and number of occurrences cannot be updated.

    In the case of a periodic notification, uses a *fixed-delay* execution scheme, as specified in
    [`Timer`](../../../../java.base/java/util/Timer.md "class in java.util"). In order to use a *fixed-rate* execution scheme, use
    [`addNotification(String, String, Object, Date, long, long, boolean)`](#addNotification(java.lang.String,java.lang.String,java.lang.Object,java.util.Date,long,long,boolean)) instead.

    Specified by:
    :   `addNotification` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.
    :   `message` - The timer notification detailed message.
    :   `userData` - The timer notification user data object.
    :   `date` - The date when the notification occurs.
    :   `period` - The period of the timer notification (in milliseconds).
    :   `nbOccurences` - The total number the timer notification will be emitted.

    Returns:
    :   The identifier of the new created timer notification.

    Throws:
    :   `IllegalArgumentException` - The date is `null` or
        the period or the number of occurrences is negative.

    See Also:
    :   - [`addNotification(String, String, Object, Date, long, long, boolean)`](#addNotification(java.lang.String,java.lang.String,java.lang.Object,java.util.Date,long,long,boolean))
  + ### addNotification

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData,
    [Date](../../../../java.base/java/util/Date.md "class in java.util") date,
    long period)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new timer notification with the specified `type`, `message`
    and `userData` and inserts it into the list of notifications with a given date
    and period and a null number of occurrences.

    The timer notification will repeat continuously using the timer period using a *fixed-delay*
    execution scheme, as specified in [`Timer`](../../../../java.base/java/util/Timer.md "class in java.util"). In order to use a *fixed-rate*
    execution scheme, use [`addNotification(String, String, Object, Date, long, long, boolean)`](#addNotification(java.lang.String,java.lang.String,java.lang.Object,java.util.Date,long,long,boolean)) instead.

    If the timer notification to be inserted has a date that is before the current date,
    the method behaves as if the specified date were the current date. The
    first notification is delivered immediately and the subsequent ones are
    spaced as specified by the period parameter.

    Specified by:
    :   `addNotification` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.
    :   `message` - The timer notification detailed message.
    :   `userData` - The timer notification user data object.
    :   `date` - The date when the notification occurs.
    :   `period` - The period of the timer notification (in milliseconds).

    Returns:
    :   The identifier of the new created timer notification.

    Throws:
    :   `IllegalArgumentException` - The date is `null` or
        the period is negative.
  + ### addNotification

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData,
    [Date](../../../../java.base/java/util/Date.md "class in java.util") date)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new timer notification with the specified `type`, `message`
    and `userData` and inserts it into the list of notifications with a given date
    and a null period and number of occurrences.

    The timer notification will be handled once at the specified date.

    If the timer notification to be inserted has a date that is before the current date,
    the method behaves as if the specified date were the current date and the
    notification is delivered immediately.

    Specified by:
    :   `addNotification` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.
    :   `message` - The timer notification detailed message.
    :   `userData` - The timer notification user data object.
    :   `date` - The date when the notification occurs.

    Returns:
    :   The identifier of the new created timer notification.

    Throws:
    :   `IllegalArgumentException` - The date is `null`.
  + ### removeNotification

    public void removeNotification([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)
    throws [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management")

    Removes the timer notification corresponding to the specified identifier from the list of notifications.

    Specified by:
    :   `removeNotification` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Throws:
    :   `InstanceNotFoundException` - The specified identifier does not correspond to any timer notification
        in the list of notifications of this timer MBean.
  + ### removeNotifications

    public void removeNotifications([String](../../../../java.base/java/lang/String.md "class in java.lang") type)
    throws [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management")

    Removes all the timer notifications corresponding to the specified type from the list of notifications.

    Specified by:
    :   `removeNotifications` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.

    Throws:
    :   `InstanceNotFoundException` - The specified type does not correspond to any timer notification
        in the list of notifications of this timer MBean.
  + ### removeAllNotifications

    public void removeAllNotifications()

    Removes all the timer notifications from the list of notifications
    and resets the counter used to update the timer notification identifiers.

    Specified by:
    :   `removeAllNotifications` in interface `TimerMBean`
  + ### getNbNotifications

    public int getNbNotifications()

    Gets the number of timer notifications registered into the list of notifications.

    Specified by:
    :   `getNbNotifications` in interface `TimerMBean`

    Returns:
    :   The number of timer notifications.
  + ### getAllNotificationIDs

    public [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[Integer](../../../../java.base/java/lang/Integer.md "class in java.lang")> getAllNotificationIDs()

    Gets all timer notification identifiers registered into the list of notifications.

    Specified by:
    :   `getAllNotificationIDs` in interface `TimerMBean`

    Returns:
    :   A vector of `Integer` objects containing all the timer notification identifiers.
          
        The vector is empty if there is no timer notification registered for this timer MBean.
  + ### getNotificationIDs

    public [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[Integer](../../../../java.base/java/lang/Integer.md "class in java.lang")> getNotificationIDs([String](../../../../java.base/java/lang/String.md "class in java.lang") type)

    Gets all the identifiers of timer notifications corresponding to the specified type.

    Specified by:
    :   `getNotificationIDs` in interface `TimerMBean`

    Parameters:
    :   `type` - The timer notification type.

    Returns:
    :   A vector of `Integer` objects containing all the identifiers of
        timer notifications with the specified `type`.
          
        The vector is empty if there is no timer notifications registered for this timer MBean
        with the specified `type`.
  + ### getNotificationType

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNotificationType([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification type corresponding to the specified identifier.

    Specified by:
    :   `getNotificationType` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification type or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNotificationMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNotificationMessage([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification detailed message corresponding to the specified identifier.

    Specified by:
    :   `getNotificationMessage` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification detailed message or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNotificationUserData

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getNotificationUserData([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification user data object corresponding to the specified identifier.

    Specified by:
    :   `getNotificationUserData` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification user data object or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getDate

    public [Date](../../../../java.base/java/util/Date.md "class in java.util") getDate([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the date associated to a timer notification.

    Specified by:
    :   `getDate` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the date or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getPeriod

    public [Long](../../../../java.base/java/lang/Long.md "class in java.lang") getPeriod([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the period (in milliseconds) associated to a timer notification.

    Specified by:
    :   `getPeriod` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the period or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNbOccurences

    public [Long](../../../../java.base/java/lang/Long.md "class in java.lang") getNbOccurences([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the remaining number of occurrences associated to a timer notification.

    Specified by:
    :   `getNbOccurences` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the remaining number of occurrences or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getFixedRate

    public [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") getFixedRate([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the flag indicating whether a periodic notification is
    executed at *fixed-delay* or at *fixed-rate*.

    Specified by:
    :   `getFixedRate` in interface `TimerMBean`

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the flag indicating whether a periodic notification is
        executed at *fixed-delay* or at *fixed-rate*.
  + ### getSendPastNotifications

    public boolean getSendPastNotifications()

    Gets the flag indicating whether or not the timer sends past notifications.
      
    The default value of the past notifications sending on/off flag is `false`.

    Specified by:
    :   `getSendPastNotifications` in interface `TimerMBean`

    Returns:
    :   The past notifications sending on/off flag value.

    See Also:
    :   - [`setSendPastNotifications(boolean)`](#setSendPastNotifications(boolean))
  + ### setSendPastNotifications

    public void setSendPastNotifications(boolean value)

    Sets the flag indicating whether the timer sends past notifications or not.
      
    The default value of the past notifications sending on/off flag is `false`.

    Specified by:
    :   `setSendPastNotifications` in interface `TimerMBean`

    Parameters:
    :   `value` - The past notifications sending on/off flag value.

    See Also:
    :   - [`getSendPastNotifications()`](#getSendPastNotifications())
  + ### isActive

    public boolean isActive()

    Tests whether the timer MBean is active.
    A timer MBean is marked active when the [`start`](#start()) method is called.
    It becomes inactive when the [`stop`](#stop()) method is called.
      
    The default value of the active on/off flag is `false`.

    Specified by:
    :   `isActive` in interface `TimerMBean`

    Returns:
    :   `true` if the timer MBean is active, `false` otherwise.
  + ### isEmpty

    public boolean isEmpty()

    Tests whether the list of timer notifications is empty.

    Specified by:
    :   `isEmpty` in interface `TimerMBean`

    Returns:
    :   `true` if the list of timer notifications is empty, `false` otherwise.