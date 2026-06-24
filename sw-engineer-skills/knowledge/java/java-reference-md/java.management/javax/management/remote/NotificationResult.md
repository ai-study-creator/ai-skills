Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class NotificationResult

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.NotificationResult

All Implemented Interfaces:
:   `Serializable`

---

public class NotificationResult
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Result of a query for buffered notifications. Notifications in
a notification buffer have positive, monotonically increasing
sequence numbers. The result of a notification query contains the
following elements:

* The sequence number of the earliest notification still in
  the buffer.* The sequence number of the next notification available for
    querying. This will be the starting sequence number for the next
    notification query.* An array of (Notification,listenerID) pairs corresponding to
      the returned notifications and the listeners they correspond to.

It is possible for the `nextSequenceNumber` to be less
than the `earliestSequenceNumber`. This signifies that
notifications between the two might have been lost.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.remote.NotificationResult)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotificationResult(long earliestSequenceNumber,
  long nextSequenceNumber,
  TargetedNotification[] targetedNotifications)`

  Constructs a notification query result.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `long`

  `getEarliestSequenceNumber()`

  Returns the sequence number of the earliest notification still
  in the buffer.

  `long`

  `getNextSequenceNumber()`

  Returns the sequence number of the next notification available
  for querying.

  `TargetedNotification[]`

  `getTargetedNotifications()`

  Returns the notifications resulting from the query, and the
  listeners they correspond to.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotificationResult

    public NotificationResult(long earliestSequenceNumber,
    long nextSequenceNumber,
    [TargetedNotification](TargetedNotification.md "class in javax.management.remote")[] targetedNotifications)

    Constructs a notification query result.

    Parameters:
    :   `earliestSequenceNumber` - the sequence number of the
        earliest notification still in the buffer.
    :   `nextSequenceNumber` - the sequence number of the next
        notification available for querying.
    :   `targetedNotifications` - the notifications resulting from
        the query, and the listeners they correspond to. This array
        can be empty.

    Throws:
    :   `IllegalArgumentException` - if
        `targetedNotifications` is null or if
        `earliestSequenceNumber` or
        `nextSequenceNumber` is negative.
* ## Method Details

  + ### getEarliestSequenceNumber

    public long getEarliestSequenceNumber()

    Returns the sequence number of the earliest notification still
    in the buffer.

    Returns:
    :   the sequence number of the earliest notification still
        in the buffer.
  + ### getNextSequenceNumber

    public long getNextSequenceNumber()

    Returns the sequence number of the next notification available
    for querying.

    Returns:
    :   the sequence number of the next notification available
        for querying.
  + ### getTargetedNotifications

    public [TargetedNotification](TargetedNotification.md "class in javax.management.remote")[] getTargetedNotifications()

    Returns the notifications resulting from the query, and the
    listeners they correspond to.

    Returns:
    :   the notifications resulting from the query, and the
        listeners they correspond to. This array can be empty.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the object. The result
    should be a concise but informative representation that is easy
    for a person to read.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.