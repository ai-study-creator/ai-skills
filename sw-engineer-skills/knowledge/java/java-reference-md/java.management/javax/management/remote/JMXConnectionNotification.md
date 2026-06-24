Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXConnectionNotification

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](../Notification.md "class in javax.management")

javax.management.remote.JMXConnectionNotification

All Implemented Interfaces:
:   `Serializable`

---

public class JMXConnectionNotification
extends [Notification](../Notification.md "class in javax.management")

Notification emitted when a client connection is opened or
closed or when notifications are lost. These notifications are
sent by connector servers (instances of [`JMXConnectorServer`](JMXConnectorServer.md "class in javax.management.remote"))
and by connector clients (instances of [`JMXConnector`](JMXConnector.md "interface in javax.management.remote")). For
certain connectors, a session can consist of a sequence of
connections. Connection-opened and connection-closed notifications
will be sent for each one.

The notification type is one of the following:

JMXConnectionNotification Types

| Type | Meaning |
| --- | --- |
| `jmx.remote.connection.opened` | A new client connection has been opened. |
| `jmx.remote.connection.closed` | A client connection has been closed. |
| `jmx.remote.connection.failed` | A client connection has failed unexpectedly. |
| `jmx.remote.connection.notifs.lost` | A client connection has potentially lost notifications. This notification only appears on the client side. |

The `timeStamp` of the notification is a time value
(consistent with [`System.currentTimeMillis()`](../../../../java.base/java/lang/System.md#currentTimeMillis())) indicating
when the notification was constructed.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.remote.JMXConnectionNotification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CLOSED`

  Notification type string for a connection-closed notification.

  `static final String`

  `FAILED`

  Notification type string for a connection-failed notification.

  `static final String`

  `NOTIFS_LOST`

  Notification type string for a connection that has possibly
  lost notifications.

  `static final String`

  `OPENED`

  Notification type string for a connection-opened notification.

  ### Fields inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXConnectionNotification(String type,
  Object source,
  String connectionId,
  long sequenceNumber,
  String message,
  Object userData)`

  Constructs a new connection notification.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getConnectionId()`

  The connection ID to which this notification pertains.

  ### Methods inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OPENED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OPENED

    Notification type string for a connection-opened notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectionNotification.OPENED)
  + ### CLOSED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") CLOSED

    Notification type string for a connection-closed notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectionNotification.CLOSED)
  + ### FAILED

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") FAILED

    Notification type string for a connection-failed notification.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectionNotification.FAILED)
  + ### NOTIFS\_LOST

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") NOTIFS\_LOST

    Notification type string for a connection that has possibly
    lost notifications.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectionNotification.NOTIFS_LOST)
* ## Constructor Details

  + ### JMXConnectionNotification

    public JMXConnectionNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    long sequenceNumber,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Constructs a new connection notification. The [`source`](../../../../java.base/java/util/EventObject.md#getSource()) of the notification depends on whether it
    is being sent by a connector server or a connector client:
    - For a connector server, if it is registered in an MBean
      server, the source is the [`ObjectName`](../ObjectName.md "class in javax.management") under which it is
      registered. Otherwise, it is a reference to the connector
      server object itself, an instance of a subclass of [`JMXConnectorServer`](JMXConnectorServer.md "class in javax.management.remote").- For a connector client, the source is a reference to the
        connector client object, an instance of a class implementing
        [`JMXConnector`](JMXConnector.md "interface in javax.management.remote").

    Parameters:
    :   `type` - the type of the notification. This is usually one
        of the constants [`OPENED`](#OPENED), [`CLOSED`](#CLOSED), [`FAILED`](#FAILED), [`NOTIFS_LOST`](#NOTIFS_LOST). It is not an error for it to
        be a different string.
    :   `source` - the connector server or client emitting the
        notification.
    :   `connectionId` - the ID of the connection within its
        connector server.
    :   `sequenceNumber` - a non-negative integer. It is expected
        but not required that this number will be greater than any
        previous `sequenceNumber` in a notification from
        this source.
    :   `message` - an unspecified text message, typically containing
        a human-readable description of the event. Can be null.
    :   `userData` - an object whose type and meaning is defined by
        the connector server. Can be null.

    Throws:
    :   `NullPointerException` - if `type`,
        `source`, or `connectionId` is null.
    :   `IllegalArgumentException` - if
        `sequenceNumber` is negative.
* ## Method Details

  + ### getConnectionId

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getConnectionId()

    The connection ID to which this notification pertains.

    Returns:
    :   the connection ID.