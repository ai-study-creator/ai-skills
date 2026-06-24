Module [java.management](../../../module-summary.md)

Package [javax.management.timer](package-summary.md)

# Interface TimerMBean

All Known Implementing Classes:
:   `Timer`

---

public interface TimerMBean

Exposes the management interface of the timer MBean.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

* ## Method Details

  + ### start

    void start()

    Starts the timer.

    If there is one or more timer notifications before the time in the list of notifications, the notification
    is sent according to the `sendPastNotifications` flag and then, updated
    according to its period and remaining number of occurrences.
    If the timer notification date remains earlier than the current date, this notification is just removed
    from the list of notifications.
  + ### stop

    void stop()

    Stops the timer.
  + ### addNotification

    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
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

    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
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

    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
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

    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") addNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
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

    void removeNotification([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)
    throws [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management")

    Removes the timer notification corresponding to the specified identifier from the list of notifications.

    Parameters:
    :   `id` - The timer notification identifier.

    Throws:
    :   `InstanceNotFoundException` - The specified identifier does not correspond to any timer notification
        in the list of notifications of this timer MBean.
  + ### removeNotifications

    void removeNotifications([String](../../../../java.base/java/lang/String.md "class in java.lang") type)
    throws [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management")

    Removes all the timer notifications corresponding to the specified type from the list of notifications.

    Parameters:
    :   `type` - The timer notification type.

    Throws:
    :   `InstanceNotFoundException` - The specified type does not correspond to any timer notification
        in the list of notifications of this timer MBean.
  + ### removeAllNotifications

    void removeAllNotifications()

    Removes all the timer notifications from the list of notifications
    and resets the counter used to update the timer notification identifiers.
  + ### getNbNotifications

    int getNbNotifications()

    Gets the number of timer notifications registered into the list of notifications.

    Returns:
    :   The number of timer notifications.
  + ### getAllNotificationIDs

    [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[Integer](../../../../java.base/java/lang/Integer.md "class in java.lang")> getAllNotificationIDs()

    Gets all timer notification identifiers registered into the list of notifications.

    Returns:
    :   A vector of `Integer` objects containing all the timer notification identifiers.
          
        The vector is empty if there is no timer notification registered for this timer MBean.
  + ### getNotificationIDs

    [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[Integer](../../../../java.base/java/lang/Integer.md "class in java.lang")> getNotificationIDs([String](../../../../java.base/java/lang/String.md "class in java.lang") type)

    Gets all the identifiers of timer notifications corresponding to the specified type.

    Parameters:
    :   `type` - The timer notification type.

    Returns:
    :   A vector of `Integer` objects containing all the identifiers of
        timer notifications with the specified `type`.
          
        The vector is empty if there is no timer notifications registered for this timer MBean
        with the specified `type`.
  + ### getNotificationType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNotificationType([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification type corresponding to the specified identifier.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification type or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNotificationMessage

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNotificationMessage([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification detailed message corresponding to the specified identifier.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification detailed message or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNotificationUserData

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getNotificationUserData([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets the timer notification user data object corresponding to the specified identifier.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   The timer notification user data object or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getDate

    [Date](../../../../java.base/java/util/Date.md "class in java.util") getDate([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the date associated to a timer notification.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the date or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getPeriod

    [Long](../../../../java.base/java/lang/Long.md "class in java.lang") getPeriod([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the period (in milliseconds) associated to a timer notification.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the period or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getNbOccurences

    [Long](../../../../java.base/java/lang/Long.md "class in java.lang") getNbOccurences([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the remaining number of occurrences associated to a timer notification.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the remaining number of occurrences or null if the identifier is not mapped to any
        timer notification registered for this timer MBean.
  + ### getFixedRate

    [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") getFixedRate([Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Gets a copy of the flag indicating whether a periodic notification is
    executed at *fixed-delay* or at *fixed-rate*.

    Parameters:
    :   `id` - The timer notification identifier.

    Returns:
    :   A copy of the flag indicating whether a periodic notification is
        executed at *fixed-delay* or at *fixed-rate*.
  + ### getSendPastNotifications

    boolean getSendPastNotifications()

    Gets the flag indicating whether or not the timer sends past notifications.

    Returns:
    :   The past notifications sending on/off flag value.

    See Also:
    :   - [`setSendPastNotifications(boolean)`](#setSendPastNotifications(boolean))
  + ### setSendPastNotifications

    void setSendPastNotifications(boolean value)

    Sets the flag indicating whether the timer sends past notifications or not.

    Parameters:
    :   `value` - The past notifications sending on/off flag value.

    See Also:
    :   - [`getSendPastNotifications()`](#getSendPastNotifications())
  + ### isActive

    boolean isActive()

    Tests whether the timer MBean is active.
    A timer MBean is marked active when the [`start`](#start()) method is called.
    It becomes inactive when the [`stop`](#stop()) method is called.

    Returns:
    :   `true` if the timer MBean is active, `false` otherwise.
  + ### isEmpty

    boolean isEmpty()

    Tests whether the list of timer notifications is empty.

    Returns:
    :   `true` if the list of timer notifications is empty, `false` otherwise.