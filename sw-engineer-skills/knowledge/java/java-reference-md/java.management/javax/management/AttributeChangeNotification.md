Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class AttributeChangeNotification

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](Notification.md "class in javax.management")

javax.management.AttributeChangeNotification

All Implemented Interfaces:
:   `Serializable`

---

public class AttributeChangeNotification
extends [Notification](Notification.md "class in javax.management")

Provides definitions of the attribute change notifications sent by MBeans.

It's up to the MBean owning the attribute of interest to create and send
attribute change notifications when the attribute change occurs.
So the `NotificationBroadcaster` interface has to be implemented
by any MBean for which an attribute change is of interest.

Example:
If an MBean called `myMbean` needs to notify registered listeners
when its attribute:
> `String myString`

is modified, `myMbean` creates and emits the following notification:
> `new AttributeChangeNotification(myMbean, sequenceNumber, timeStamp, msg,
> "myString", "String", oldValue, newValue);`

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.AttributeChangeNotification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `ATTRIBUTE_CHANGE`

  Notification type which indicates that the observed MBean attribute value has changed.

  ### Fields inherited from class javax.management.[Notification](Notification.md "class in javax.management")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeChangeNotification(Object source,
  long sequenceNumber,
  long timeStamp,
  String msg,
  String attributeName,
  String attributeType,
  Object oldValue,
  Object newValue)`

  Constructs an attribute change notification object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAttributeName()`

  Gets the name of the attribute which has changed.

  `String`

  `getAttributeType()`

  Gets the type of the attribute which has changed.

  `Object`

  `getNewValue()`

  Gets the new value of the attribute which has changed.

  `Object`

  `getOldValue()`

  Gets the old value of the attribute which has changed.

  ### Methods inherited from class javax.management.[Notification](Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData, toString`

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ATTRIBUTE\_CHANGE

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ATTRIBUTE\_CHANGE

    Notification type which indicates that the observed MBean attribute value has changed.
      
    The value of this type string is `jmx.attribute.change`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.AttributeChangeNotification.ATTRIBUTE_CHANGE)
* ## Constructor Details

  + ### AttributeChangeNotification

    public AttributeChangeNotification([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    long timeStamp,
    [String](../../../java.base/java/lang/String.md "class in java.lang") msg,
    [String](../../../java.base/java/lang/String.md "class in java.lang") attributeName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") attributeType,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Constructs an attribute change notification object.
    In addition to the information common to all notification, the caller must supply the name and type
    of the attribute, as well as its old and new values.

    Parameters:
    :   `source` - The notification producer, that is, the MBean the attribute belongs to.
    :   `sequenceNumber` - The notification sequence number within the source object.
    :   `timeStamp` - The date at which the notification is being sent.
    :   `msg` - A String containing the message of the notification.
    :   `attributeName` - A String giving the name of the attribute.
    :   `attributeType` - A String containing the type of the attribute.
    :   `oldValue` - An object representing value of the attribute before the change.
    :   `newValue` - An object representing value of the attribute after the change.
* ## Method Details

  + ### getAttributeName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAttributeName()

    Gets the name of the attribute which has changed.

    Returns:
    :   A String containing the name of the attribute.
  + ### getAttributeType

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAttributeType()

    Gets the type of the attribute which has changed.

    Returns:
    :   A String containing the type of the attribute.
  + ### getOldValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getOldValue()

    Gets the old value of the attribute which has changed.

    Returns:
    :   An Object containing the old value of the attribute.
  + ### getNewValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNewValue()

    Gets the new value of the attribute which has changed.

    Returns:
    :   An Object containing the new value of the attribute.