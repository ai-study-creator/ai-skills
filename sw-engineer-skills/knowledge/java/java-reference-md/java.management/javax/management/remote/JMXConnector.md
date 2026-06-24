Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface JMXConnector

All Superinterfaces:
:   `AutoCloseable`, `Closeable`

All Known Implementing Classes:
:   `RMIConnector`

---

public interface JMXConnector
extends [Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io")

The client end of a JMX API connector. An object of this type can
be used to establish a connection to a connector server.

A newly-created object of this type is unconnected. Its [`connect`](#connect()) method must be called before it can be used.
However, objects created by [`JMXConnectorFactory.connect`](JMXConnectorFactory.md#connect(javax.management.remote.JMXServiceURL,java.util.Map)) are already connected.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CREDENTIALS`

  Name of the attribute that specifies the credentials to send
  to the connector server during connection.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addConnectionNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to be informed of changes in connection
  status.

  `void`

  `close()`

  Closes the client connection to its server.

  `void`

  `connect()`

  Establishes the connection to the connector server.

  `void`

  `connect(Map<String,?> env)`

  Establishes the connection to the connector server.

  `String`

  `getConnectionId()`

  Gets this connection's ID from the connector server.

  `MBeanServerConnection`

  `getMBeanServerConnection()`

  Returns an `MBeanServerConnection` object
  representing a remote MBean server.

  `MBeanServerConnection`

  `getMBeanServerConnection(Subject delegationSubject)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method supported the legacy Subject Delegation feature,
  and is only useful in conjunction with other APIs which are deprecated and
  subject to removal in a future release.

  `void`

  `removeConnectionNotificationListener(NotificationListener listener)`

  Removes a listener from the list to be informed of changes
  in status.

  `void`

  `removeConnectionNotificationListener(NotificationListener l,
  NotificationFilter f,
  Object handback)`

  Removes a listener from the list to be informed of changes
  in status.

* ## Field Details

  + ### CREDENTIALS

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") CREDENTIALS

    Name of the attribute that specifies the credentials to send
    to the connector server during connection. The value
    associated with this attribute, if any, is a serializable
    object of an appropriate type for the server's [`JMXAuthenticator`](JMXAuthenticator.md "interface in javax.management.remote").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnector.CREDENTIALS)
* ## Method Details

  + ### connect

    void connect()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Establishes the connection to the connector server. This
    method is equivalent to [`connect(null)`](#connect(java.util.Map)).

    Throws:
    :   `IOException` - if the connection could not be made
        because of a communication problem.
    :   `SecurityException` - if the connection could not be
        made for security reasons.
  + ### connect

    void connect([Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> env)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Establishes the connection to the connector server.

    If `connect` has already been called successfully
    on this object, calling it again has no effect. If, however,
    [`close()`](#close()) was called after `connect`, the new
    `connect` will throw an `IOException`.

    Otherwise, either `connect` has never been called
    on this object, or it has been called but produced an
    exception. Then calling `connect` will attempt to
    establish a connection to the connector server.

    Parameters:
    :   `env` - the properties of the connection. Properties in
        this map override properties in the map specified when the
        `JMXConnector` was created, if any. This parameter
        can be null, which is equivalent to an empty map.

    Throws:
    :   `IOException` - if the connection could not be made
        because of a communication problem.
    :   `SecurityException` - if the connection could not be
        made for security reasons.
  + ### getMBeanServerConnection

    [MBeanServerConnection](../MBeanServerConnection.md "interface in javax.management") getMBeanServerConnection()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an `MBeanServerConnection` object
    representing a remote MBean server. For a given
    `JMXConnector`, two successful calls to this method
    will usually return the same `MBeanServerConnection`
    object, though this is not required.

    For each method in the returned
    `MBeanServerConnection`, calling the method causes
    the corresponding method to be called in the remote MBean
    server. The value returned by the MBean server method is the
    value returned to the client. If the MBean server method
    produces an `Exception`, the same
    `Exception` is seen by the client. If the MBean
    server method, or the attempt to call it, produces an
    `Error`, the `Error` is wrapped in a
    [`JMXServerErrorException`](JMXServerErrorException.md "class in javax.management.remote"), which is seen by the
    client.

    Calling this method is equivalent to calling
    [`getMBeanServerConnection(null)`](#getMBeanServerConnection(javax.security.auth.Subject))
    meaning that no delegation subject is specified and that all the
    operations called on the `MBeanServerConnection` must
    use the authenticated subject, if any.

    Returns:
    :   an object that implements the
        `MBeanServerConnection` interface by forwarding its
        methods to the remote MBean server.

    Throws:
    :   `IOException` - if a valid
        `MBeanServerConnection` cannot be created, for
        instance because the connection to the remote MBean server has
        not yet been established (with the [`connect`](#connect(java.util.Map)) method), or it has been closed, or it has broken.
  + ### getMBeanServerConnection

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="21",
    [forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    [MBeanServerConnection](../MBeanServerConnection.md "interface in javax.management") getMBeanServerConnection([Subject](../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method supported the legacy Subject Delegation feature,
    and is only useful in conjunction with other APIs which are deprecated and
    subject to removal in a future release. Consequently, this method is also
    deprecated and subject to removal. There is no replacement.

    Returns an `MBeanServerConnection` object representing
    a remote MBean server on which operations are performed on behalf of
    the supplied delegation subject. For a given `JMXConnector`
    and `Subject`, two successful calls to this method will
    usually return the same `MBeanServerConnection` object,
    though this is not required.

    For each method in the returned
    `MBeanServerConnection`, calling the method causes
    the corresponding method to be called in the remote MBean
    server on behalf of the given delegation subject instead of the
    authenticated subject. The value returned by the MBean server
    method is the value returned to the client. If the MBean server
    method produces an `Exception`, the same
    `Exception` is seen by the client. If the MBean
    server method, or the attempt to call it, produces an
    `Error`, the `Error` is wrapped in a
    [`JMXServerErrorException`](JMXServerErrorException.md "class in javax.management.remote"), which is seen by the
    client.

    Parameters:
    :   `delegationSubject` - the `Subject` on behalf of
        which requests will be performed. Can be null, in which case
        requests will be performed on behalf of the authenticated
        Subject, if any.

    Returns:
    :   an object that implements the `MBeanServerConnection`
        interface by forwarding its methods to the remote MBean server on behalf
        of a given delegation subject.

    Throws:
    :   `IOException` - if a valid `MBeanServerConnection`
        cannot be created, for instance because the connection to the remote
        MBean server has not yet been established (with the [`connect`](#connect(java.util.Map)) method), or it has been closed, or it has broken.
  + ### close

    void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Closes the client connection to its server. Any ongoing or new
    request using the MBeanServerConnection returned by [`getMBeanServerConnection()`](#getMBeanServerConnection()) will get an
    `IOException`.

    If `close` has already been called successfully
    on this object, calling it again has no effect. If
    `close` has never been called, or if it was called
    but produced an exception, an attempt will be made to close the
    connection. This attempt can succeed, in which case
    `close` will return normally, or it can generate an
    exception.

    Closing a connection is a potentially slow operation. For
    example, if the server has crashed, the close operation might
    have to wait for a network protocol timeout. Callers that do
    not want to block in a close operation should do it in a
    separate thread.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if the connection cannot be closed
        cleanly. If this exception is thrown, it is not known whether
        the server end of the connection has been cleanly closed.
  + ### addConnectionNotificationListener

    void addConnectionNotificationListener([NotificationListener](../NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](../NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Adds a listener to be informed of changes in connection
    status. The listener will receive notifications of type [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). An implementation can send other
    types of notifications too.

    Any number of listeners can be added with this method. The
    same listener can be added more than once with the same or
    different values for the filter and handback. There is no
    special treatment of a duplicate entry. For example, if a
    listener is registered twice with no filter, then its
    `handleNotification` method will be called twice for
    each notification.

    Parameters:
    :   `listener` - a listener to receive connection status
        notifications.
    :   `filter` - a filter to select which notifications are to be
        delivered to the listener, or null if all notifications are to
        be delivered.
    :   `handback` - an object to be given to the listener along
        with each notification. Can be null.

    Throws:
    :   `NullPointerException` - if `listener` is
        null.

    See Also:
    :   - [`removeConnectionNotificationListener(javax.management.NotificationListener)`](#removeConnectionNotificationListener(javax.management.NotificationListener))
        - [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeConnectionNotificationListener

    void removeConnectionNotificationListener([NotificationListener](../NotificationListener.md "interface in javax.management") listener)
    throws [ListenerNotFoundException](../ListenerNotFoundException.md "class in javax.management")

    Removes a listener from the list to be informed of changes
    in status. The listener must previously have been added. If
    there is more than one matching listener, all are removed.

    Parameters:
    :   `listener` - a listener to receive connection status
        notifications.

    Throws:
    :   `NullPointerException` - if `listener` is
        null.
    :   `ListenerNotFoundException` - if the listener is not
        registered with this `JMXConnector`.

    See Also:
    :   - [`removeConnectionNotificationListener(NotificationListener, NotificationFilter, Object)`](#removeConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`addConnectionNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](#addConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeConnectionNotificationListener

    void removeConnectionNotificationListener([NotificationListener](../NotificationListener.md "interface in javax.management") l,
    [NotificationFilter](../NotificationFilter.md "interface in javax.management") f,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [ListenerNotFoundException](../ListenerNotFoundException.md "class in javax.management")

    Removes a listener from the list to be informed of changes
    in status. The listener must previously have been added with
    the same three parameters. If there is more than one matching
    listener, only one is removed.

    Parameters:
    :   `l` - a listener to receive connection status notifications.
    :   `f` - a filter to select which notifications are to be
        delivered to the listener. Can be null.
    :   `handback` - an object to be given to the listener along
        with each notification. Can be null.

    Throws:
    :   `ListenerNotFoundException` - if the listener is not
        registered with this `JMXConnector`, or is not
        registered with the given filter and handback.

    See Also:
    :   - [`removeConnectionNotificationListener(NotificationListener)`](#removeConnectionNotificationListener(javax.management.NotificationListener))
        - [`addConnectionNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](#addConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### getConnectionId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getConnectionId()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Gets this connection's ID from the connector server. For a
    given connector server, every connection will have a unique id
    which does not change during the lifetime of the
    connection.

    Returns:
    :   the unique ID of this connection. This is the same as
        the ID that the connector server includes in its [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote")s. The [`package description`](package-summary.md) describes the
        conventions for connection IDs.

    Throws:
    :   `IOException` - if the connection ID cannot be obtained,
        for instance because the connection is closed or broken.