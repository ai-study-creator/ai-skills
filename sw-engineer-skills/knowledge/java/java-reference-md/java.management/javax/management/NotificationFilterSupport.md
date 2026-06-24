Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class NotificationFilterSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.NotificationFilterSupport

All Implemented Interfaces:
:   `Serializable`, `NotificationFilter`

Direct Known Subclasses:
:   `MBeanServerNotificationFilter`

---

public class NotificationFilterSupport
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [NotificationFilter](NotificationFilter.md "interface in javax.management")

Provides an implementation of the [`NotificationFilter`](NotificationFilter.md "interface in javax.management") interface.
The filtering is performed on the notification type attribute.

Manages a list of enabled notification types.
A method allows users to enable/disable as many notification types as required.

Then, before sending a notification to a listener registered with a filter,
the notification broadcaster compares this notification type with all notification types
enabled by the filter. The notification will be sent to the listener
only if its filter enables this notification type.

Example:
> ```
>  NotificationFilterSupport myFilter = new NotificationFilterSupport();
>  myFilter.enableType("my_example.my_type");
>  myBroadcaster.addListener(myListener, myFilter, null);
> ```

The listener `myListener` will only receive notifications the type of which equals/starts with "my\_example.my\_type".

Since:
:   1.5

See Also:
:   * [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
    * [Serialized Form](../../../serialized-form.md#javax.management.NotificationFilterSupport)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotificationFilterSupport()`

  Constructs a `NotificationFilterSupport`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `disableAllTypes()`

  Disables all notification types.

  `void`

  `disableType(String prefix)`

  Removes the given prefix from the prefix list.

  `void`

  `enableType(String prefix)`

  Enables all the notifications the type of which starts with the specified prefix
  to be sent to the listener.

  `Vector<String>`

  `getEnabledTypes()`

  Gets all the enabled notification types for this filter.

  `boolean`

  `isNotificationEnabled(Notification notification)`

  Invoked before sending the specified notification to the listener.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NotificationFilterSupport

    public NotificationFilterSupport()

    Constructs a `NotificationFilterSupport`.
* ## Method Details

  + ### isNotificationEnabled

    public boolean isNotificationEnabled([Notification](Notification.md "class in javax.management") notification)

    Invoked before sending the specified notification to the listener.
      
    This filter compares the type of the specified notification with each enabled type.
    If the notification type matches one of the enabled types,
    the notification should be sent to the listener and this method returns `true`.

    Specified by:
    :   `isNotificationEnabled` in interface `NotificationFilter`

    Parameters:
    :   `notification` - The notification to be sent.

    Returns:
    :   `true` if the notification should be sent to the listener, `false` otherwise.
  + ### enableType

    public void enableType([String](../../../java.base/java/lang/String.md "class in java.lang") prefix)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Enables all the notifications the type of which starts with the specified prefix
    to be sent to the listener.
      
    If the specified prefix is already in the list of enabled notification types,
    this method has no effect.

    Example:
    > ```
    >  // Enables all notifications the type of which starts with "my_example" to be sent.
    >  myFilter.enableType("my_example");
    >  // Enables all notifications the type of which is "my_example.my_type" to be sent.
    >  myFilter.enableType("my_example.my_type");
    > ```

    Note that:
    > `myFilter.enableType("my_example.*");`

    will no match any notification type.

    Parameters:
    :   `prefix` - The prefix.

    Throws:
    :   `IllegalArgumentException` - The prefix parameter is null.
  + ### disableType

    public void disableType([String](../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Removes the given prefix from the prefix list.
      
    If the specified prefix is not in the list of enabled notification types,
    this method has no effect.

    Parameters:
    :   `prefix` - The prefix.
  + ### disableAllTypes

    public void disableAllTypes()

    Disables all notification types.
  + ### getEnabledTypes

    public [Vector](../../../java.base/java/util/Vector.md "class in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang")> getEnabledTypes()

    Gets all the enabled notification types for this filter.

    Returns:
    :   The list containing all the enabled notification types.