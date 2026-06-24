Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class Notification

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

javax.management.Notification

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AttributeChangeNotification`, `JMXConnectionNotification`, `MBeanServerNotification`, `MonitorNotification`, `RelationNotification`, `TimerNotification`

---

public class Notification
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

The Notification class represents a notification emitted by an
MBean. It contains a reference to the source MBean: if the
notification has been forwarded through the MBean server, and the
original source of the notification was a reference to the emitting
MBean object, then the MBean server replaces it by the MBean's
ObjectName. If the listener has registered directly with the
MBean, this is either the object name or a direct reference to the
MBean.

It is strongly recommended that notification senders use the
object name rather than a reference to the MBean object as the
source.

The **serialVersionUID** of this class is `-7516092053498031989L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.Notification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Object`

  `source`

  This field hides the [`EventObject.source`](../../../java.base/java/util/EventObject.md#source) field in the
  parent class to make it non-transient and therefore part of the
  serialized form.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Notification(String type,
  Object source,
  long sequenceNumber)`

  Creates a Notification object.

  `Notification(String type,
  Object source,
  long sequenceNumber,
  long timeStamp)`

  Creates a Notification object.

  `Notification(String type,
  Object source,
  long sequenceNumber,
  long timeStamp,
  String message)`

  Creates a Notification object.

  `Notification(String type,
  Object source,
  long sequenceNumber,
  String message)`

  Creates a Notification object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Get the notification message.

  `long`

  `getSequenceNumber()`

  Get the notification sequence number.

  `long`

  `getTimeStamp()`

  Get the notification timestamp.

  `String`

  `getType()`

  Get the notification type.

  `Object`

  `getUserData()`

  Get the user data.

  `void`

  `setSequenceNumber(long sequenceNumber)`

  Set the notification sequence number.

  `void`

  `setSource(Object source)`

  Sets the source.

  `void`

  `setTimeStamp(long timeStamp)`

  Set the notification timestamp.

  `void`

  `setUserData(Object userData)`

  Set the user data.

  `String`

  `toString()`

  Returns a String representation of this notification.

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### source

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") source

    This field hides the [`EventObject.source`](../../../java.base/java/util/EventObject.md#source) field in the
    parent class to make it non-transient and therefore part of the
    serialized form.
* ## Constructor Details

  + ### Notification

    public Notification([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber)

    Creates a Notification object.
    The notification timeStamp is set to the current date.

    Parameters:
    :   `type` - The notification type.
    :   `source` - The notification source.
    :   `sequenceNumber` - The notification sequence number within the source object.
  + ### Notification

    public Notification([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a Notification object.
    The notification timeStamp is set to the current date.

    Parameters:
    :   `type` - The notification type.
    :   `source` - The notification source.
    :   `sequenceNumber` - The notification sequence number within the source object.
    :   `message` - The detailed message.
  + ### Notification

    public Notification([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    long timeStamp)

    Creates a Notification object.

    Parameters:
    :   `type` - The notification type.
    :   `source` - The notification source.
    :   `sequenceNumber` - The notification sequence number within the source object.
    :   `timeStamp` - The notification emission date.
  + ### Notification

    public Notification([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    long timeStamp,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a Notification object.

    Parameters:
    :   `type` - The notification type.
    :   `source` - The notification source.
    :   `sequenceNumber` - The notification sequence number within the source object.
    :   `timeStamp` - The notification emission date.
    :   `message` - The detailed message.
* ## Method Details

  + ### setSource

    public void setSource([Object](../../../java.base/java/lang/Object.md "class in java.lang") source)

    Sets the source.

    Parameters:
    :   `source` - the new source for this object.

    See Also:
    :   - [`EventObject.getSource()`](../../../java.base/java/util/EventObject.md#getSource())
  + ### getSequenceNumber

    public long getSequenceNumber()

    Get the notification sequence number.

    Returns:
    :   The notification sequence number within the source object. It's a serial number
        identifying a particular instance of notification in the context of the notification source.
        The notification model does not assume that notifications will be received in the same order
        that they are sent. The sequence number helps listeners to sort received notifications.

    See Also:
    :   - [`setSequenceNumber(long)`](#setSequenceNumber(long))
  + ### setSequenceNumber

    public void setSequenceNumber(long sequenceNumber)

    Set the notification sequence number.

    Parameters:
    :   `sequenceNumber` - The notification sequence number within the source object. It is
        a serial number identifying a particular instance of notification in the
        context of the notification source.

    See Also:
    :   - [`getSequenceNumber()`](#getSequenceNumber())
  + ### getType

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getType()

    Get the notification type.

    Returns:
    :   The notification type. It's a string expressed in a dot notation
        similar to Java properties. It is recommended that the notification type
        should follow the reverse-domain-name convention used by Java package
        names. An example of a notification type is com.example.alarm.router.
  + ### getTimeStamp

    public long getTimeStamp()

    Get the notification timestamp.

    Returns:
    :   The notification timestamp.

    See Also:
    :   - [`setTimeStamp(long)`](#setTimeStamp(long))
  + ### setTimeStamp

    public void setTimeStamp(long timeStamp)

    Set the notification timestamp.

    Parameters:
    :   `timeStamp` - The notification timestamp. It indicates when the notification was generated.

    See Also:
    :   - [`getTimeStamp()`](#getTimeStamp())
  + ### getMessage

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Get the notification message.

    Returns:
    :   The message string of this notification object.
  + ### getUserData

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getUserData()

    Get the user data.

    Returns:
    :   The user data object. It is used for whatever data
        the notification source wishes to communicate to its consumers.

    See Also:
    :   - [`setUserData(java.lang.Object)`](#setUserData(java.lang.Object))
  + ### setUserData

    public void setUserData([Object](../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Set the user data.

    Parameters:
    :   `userData` - The user data object. It is used for whatever data
        the notification source wishes to communicate to its consumers.

    See Also:
    :   - [`getUserData()`](#getUserData())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a String representation of this notification.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   A String representation of this notification.