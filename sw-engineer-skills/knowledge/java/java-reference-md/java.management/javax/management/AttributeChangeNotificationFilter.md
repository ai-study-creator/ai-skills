Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class AttributeChangeNotificationFilter

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.AttributeChangeNotificationFilter

All Implemented Interfaces:
:   `Serializable`, `NotificationFilter`

---

public class AttributeChangeNotificationFilter
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [NotificationFilter](NotificationFilter.md "interface in javax.management")

This class implements of the [`NotificationFilter`](NotificationFilter.md "interface in javax.management")
interface for the [`attribute change notification`](AttributeChangeNotification.md "class in javax.management").
The filtering is performed on the name of the observed attribute.

It manages a list of enabled attribute names.
A method allows users to enable/disable as many attribute names as required.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.AttributeChangeNotificationFilter)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeChangeNotificationFilter()`

  Constructs an `AttributeChangeNotificationFilter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `disableAllAttributes()`

  Disables all the attribute names.

  `void`

  `disableAttribute(String name)`

  Disables all the attribute change notifications the attribute name of which equals
  the specified attribute name to be sent to the listener.

  `void`

  `enableAttribute(String name)`

  Enables all the attribute change notifications the attribute name of which equals
  the specified name to be sent to the listener.

  `Vector<String>`

  `getEnabledAttributes()`

  Gets all the enabled attribute names for this filter.

  `boolean`

  `isNotificationEnabled(Notification notification)`

  Invoked before sending the specified notification to the listener.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AttributeChangeNotificationFilter

    public AttributeChangeNotificationFilter()

    Constructs an `AttributeChangeNotificationFilter`.
* ## Method Details

  + ### isNotificationEnabled

    public boolean isNotificationEnabled([Notification](Notification.md "class in javax.management") notification)

    Invoked before sending the specified notification to the listener.
      
    This filter compares the attribute name of the specified attribute change notification
    with each enabled attribute name.
    If the attribute name equals one of the enabled attribute names,
    the notification must be sent to the listener and this method returns `true`.

    Specified by:
    :   `isNotificationEnabled` in interface `NotificationFilter`

    Parameters:
    :   `notification` - The attribute change notification to be sent.

    Returns:
    :   `true` if the notification has to be sent to the listener, `false` otherwise.
  + ### enableAttribute

    public void enableAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Enables all the attribute change notifications the attribute name of which equals
    the specified name to be sent to the listener.
      
    If the specified name is already in the list of enabled attribute names,
    this method has no effect.

    Parameters:
    :   `name` - The attribute name.

    Throws:
    :   `IllegalArgumentException` - The attribute name parameter is null.
  + ### disableAttribute

    public void disableAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Disables all the attribute change notifications the attribute name of which equals
    the specified attribute name to be sent to the listener.
      
    If the specified name is not in the list of enabled attribute names,
    this method has no effect.

    Parameters:
    :   `name` - The attribute name.
  + ### disableAllAttributes

    public void disableAllAttributes()

    Disables all the attribute names.
  + ### getEnabledAttributes

    public [Vector](../../../java.base/java/util/Vector.md "class in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang")> getEnabledAttributes()

    Gets all the enabled attribute names for this filter.

    Returns:
    :   The list containing all the enabled attribute names.