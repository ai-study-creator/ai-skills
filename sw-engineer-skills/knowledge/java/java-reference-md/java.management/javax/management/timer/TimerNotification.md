Module [java.management](../../../module-summary.md)

Package [javax.management.timer](package-summary.md)

# Class TimerNotification

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](../Notification.md "class in javax.management")

javax.management.timer.TimerNotification

All Implemented Interfaces:
:   `Serializable`

---

public class TimerNotification
extends [Notification](../Notification.md "class in javax.management")

This class provides definitions of the notifications sent by timer MBeans.
  
It defines a timer notification identifier which allows to retrieve a timer notification
from the list of notifications of a timer MBean.

The timer notifications are created and handled by the timer MBean.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.timer.TimerNotification)

* ## Field Summary

  ### Fields inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TimerNotification(String type,
  Object source,
  long sequenceNumber,
  long timeStamp,
  String msg,
  Integer id)`

  Creates a timer notification object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Integer`

  `getNotificationID()`

  Gets the identifier of this timer notification.

  ### Methods inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TimerNotification

    public TimerNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    long timeStamp,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") id)

    Creates a timer notification object.

    Parameters:
    :   `type` - The notification type.
    :   `source` - The notification producer.
    :   `sequenceNumber` - The notification sequence number within the source object.
    :   `timeStamp` - The notification emission date.
    :   `msg` - The notification message.
    :   `id` - The notification identifier.
* ## Method Details

  + ### getNotificationID

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") getNotificationID()

    Gets the identifier of this timer notification.

    Returns:
    :   The identifier.