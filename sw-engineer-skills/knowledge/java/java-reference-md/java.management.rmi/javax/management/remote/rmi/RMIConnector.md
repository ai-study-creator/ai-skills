Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIConnector

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.rmi.RMIConnector

All Implemented Interfaces:
:   `Closeable`, `Serializable`, `AutoCloseable`, `JMXAddressable`, `JMXConnector`

---

public class RMIConnector
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [JMXConnector](../../../../../java.management/javax/management/remote/JMXConnector.md "interface in javax.management.remote"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"), [JMXAddressable](../../../../../java.management/javax/management/remote/JMXAddressable.md "interface in javax.management.remote")

A connection to a remote RMI connector. Usually, such
connections are made using [`JMXConnectorFactory`](../../../../../java.management/javax/management/remote/JMXConnectorFactory.md "class in javax.management.remote").
However, specialized applications can use this class directly, for
example with an [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") stub obtained without going
through JNDI.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.management.remote.rmi.RMIConnector)

* ## Field Summary

  ### Fields inherited from interface javax.management.remote.[JMXConnector](../../../../../java.management/javax/management/remote/JMXConnector.md "interface in javax.management.remote")

  `CREDENTIALS`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIConnector(JMXServiceURL url,
  Map<String,?> environment)`

  Constructs an `RMIConnector` that will connect
  the RMI connector server with the given address.

  `RMIConnector(RMIServer rmiServer,
  Map<String,?> environment)`

  Constructs an `RMIConnector` using the given RMI stub.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  `connect(Map<String,?> environment)`

  Establishes the connection to the connector server.

  `JMXServiceURL`

  `getAddress()`

  The address of this connector.

  `String`

  `getConnectionId()`

  Gets this connection's ID from the connector server.

  `MBeanServerConnection`

  `getMBeanServerConnection()`

  Returns an `MBeanServerConnection` object
  representing a remote MBean server.

  `MBeanServerConnection`

  `getMBeanServerConnection(Subject delegationSubject)`

  Returns an `MBeanServerConnection` object representing
  a remote MBean server on which operations are performed on behalf of
  the supplied delegation subject.

  `void`

  `removeConnectionNotificationListener(NotificationListener listener)`

  Removes a listener from the list to be informed of changes
  in status.

  `void`

  `removeConnectionNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from the list to be informed of changes
  in status.

  `String`

  `toString()`

  Returns a string representation of this object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RMIConnector

    public RMIConnector([JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") url,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment)

    Constructs an `RMIConnector` that will connect
    the RMI connector server with the given address.

    The address can refer directly to the connector server,
    using the following syntax:

    ```
     service:jmx:rmi://[host[:port]]/stub/encoded-stub
    ```

    (Here, the square brackets `[]` are not part of the
    address but indicate that the host and port are optional.)

    The address can instead indicate where to find an RMI stub
    through JNDI, using the following syntax:

    ```
     service:jmx:rmi://[host[:port]]/jndi/jndi-name
    ```

    An implementation may also recognize additional address
    syntaxes, for example:

    ```
     service:jmx:myprotocolname://[host[:port]]/stub/encoded-stub
    ```

    Parameters:
    :   `url` - the address of the RMI connector server.
    :   `environment` - additional attributes specifying how to make
        the connection. For JNDI-based addresses, these attributes can
        usefully include JNDI attributes recognized by [`InitialContext`](../../../../../java.naming/javax/naming/InitialContext.md#%3Cinit%3E(java.util.Hashtable)). This
        parameter can be null, which is equivalent to an empty Map.

    Throws:
    :   `IllegalArgumentException` - if `url`
        is null.
  + ### RMIConnector

    public RMIConnector([RMIServer](RMIServer.md "interface in javax.management.remote.rmi") rmiServer,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment)

    Constructs an `RMIConnector` using the given RMI stub.

    Parameters:
    :   `rmiServer` - an RMI stub representing the RMI connector server.
    :   `environment` - additional attributes specifying how to make
        the connection. This parameter can be null, which is
        equivalent to an empty Map.

    Throws:
    :   `IllegalArgumentException` - if `rmiServer`
        is null.
* ## Method Details

  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this object. In general,
    the `toString` method returns a string that
    "textually represents" this object. The result should be a
    concise but informative representation that is easy for a
    person to read.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this object.
  + ### getAddress

    public [JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") getAddress()

    The address of this connector.

    Specified by:
    :   `getAddress` in interface `JMXAddressable`

    Returns:
    :   the address of this connector, or null if it
        does not have one.

    Since:
    :   1.6
  + ### connect

    public void connect()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

    Establishes the connection to the connector server. This
    method is equivalent to [`connect(null)`](../../../../../java.management/javax/management/remote/JMXConnector.md#connect(java.util.Map)).

    Specified by:
    :   `connect` in interface `JMXConnector`

    Throws:
    :   `IOException` - if the connection could not be made because of a
        communication problem
  + ### connect

    public void connect([Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

    Establishes the connection to the connector server.

    If `connect` has already been called successfully
    on this object, calling it again has no effect. If, however,
    [`JMXConnector.close()`](../../../../../java.management/javax/management/remote/JMXConnector.md#close()) was called after `connect`, the new
    `connect` will throw an `IOException`.

    Otherwise, either `connect` has never been called
    on this object, or it has been called but produced an
    exception. Then calling `connect` will attempt to
    establish a connection to the connector server.

    Specified by:
    :   `connect` in interface `JMXConnector`

    Parameters:
    :   `environment` - the properties of the connection. Properties in
        this map override properties in the map specified when the
        `JMXConnector` was created, if any. This parameter
        can be null, which is equivalent to an empty map.

    Throws:
    :   `IOException` - if the connection could not be made because of a
        communication problem
  + ### getConnectionId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getConnectionId()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

    Gets this connection's ID from the connector server. For a
    given connector server, every connection will have a unique id
    which does not change during the lifetime of the
    connection.

    Specified by:
    :   `getConnectionId` in interface `JMXConnector`

    Returns:
    :   the unique ID of this connection. This is the same as
        the ID that the connector server includes in its [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote")s. The [`package description`](../../../../../java.management/javax/management/remote/package-summary.md) describes the
        conventions for connection IDs.

    Throws:
    :   `IOException` - if the connection ID cannot be obtained,
        for instance because the connection is closed or broken.
  + ### getMBeanServerConnection

    public [MBeanServerConnection](../../../../../java.management/javax/management/MBeanServerConnection.md "interface in javax.management") getMBeanServerConnection()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

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
    [`JMXServerErrorException`](../../../../../java.management/javax/management/remote/JMXServerErrorException.md "class in javax.management.remote"), which is seen by the
    client.

    Calling this method is equivalent to calling
    [`getMBeanServerConnection(null)`](../../../../../java.management/javax/management/remote/JMXConnector.md#getMBeanServerConnection(javax.security.auth.Subject))
    meaning that no delegation subject is specified and that all the
    operations called on the `MBeanServerConnection` must
    use the authenticated subject, if any.

    Specified by:
    :   `getMBeanServerConnection` in interface `JMXConnector`

    Returns:
    :   an object that implements the
        `MBeanServerConnection` interface by forwarding its
        methods to the remote MBean server.

    Throws:
    :   `IOException` - if a valid
        `MBeanServerConnection` cannot be created, for
        instance because the connection to the remote MBean server has
        not yet been established (with the [`connect`](../../../../../java.management/javax/management/remote/JMXConnector.md#connect(java.util.Map)) method), or it has been closed, or it has broken.
  + ### getMBeanServerConnection

    public [MBeanServerConnection](../../../../../java.management/javax/management/MBeanServerConnection.md "interface in javax.management") getMBeanServerConnection([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

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
    [`JMXServerErrorException`](../../../../../java.management/javax/management/remote/JMXServerErrorException.md "class in javax.management.remote"), which is seen by the
    client.

    Specified by:
    :   `getMBeanServerConnection` in interface `JMXConnector`

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
        MBean server has not yet been established (with the [`connect`](../../../../../java.management/javax/management/remote/JMXConnector.md#connect(java.util.Map)) method), or it has been closed, or it has broken.
  + ### addConnectionNotificationListener

    public void addConnectionNotificationListener([NotificationListener](../../../../../java.management/javax/management/NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](../../../../../java.management/javax/management/NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Description copied from interface: `JMXConnector`

    Adds a listener to be informed of changes in connection
    status. The listener will receive notifications of type [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). An implementation can send other
    types of notifications too.

    Any number of listeners can be added with this method. The
    same listener can be added more than once with the same or
    different values for the filter and handback. There is no
    special treatment of a duplicate entry. For example, if a
    listener is registered twice with no filter, then its
    `handleNotification` method will be called twice for
    each notification.

    Specified by:
    :   `addConnectionNotificationListener` in interface `JMXConnector`

    Parameters:
    :   `listener` - a listener to receive connection status
        notifications.
    :   `filter` - a filter to select which notifications are to be
        delivered to the listener, or null if all notifications are to
        be delivered.
    :   `handback` - an object to be given to the listener along
        with each notification. Can be null.

    See Also:
    :   - [`JMXConnector.removeConnectionNotificationListener(javax.management.NotificationListener)`](../../../../../java.management/javax/management/remote/JMXConnector.md#removeConnectionNotificationListener(javax.management.NotificationListener))
        - [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../../../../../java.management/javax/management/NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeConnectionNotificationListener

    public void removeConnectionNotificationListener([NotificationListener](../../../../../java.management/javax/management/NotificationListener.md "interface in javax.management") listener)
    throws [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `JMXConnector`

    Removes a listener from the list to be informed of changes
    in status. The listener must previously have been added. If
    there is more than one matching listener, all are removed.

    Specified by:
    :   `removeConnectionNotificationListener` in interface `JMXConnector`

    Parameters:
    :   `listener` - a listener to receive connection status
        notifications.

    Throws:
    :   `ListenerNotFoundException` - if the listener is not
        registered with this `JMXConnector`.

    See Also:
    :   - [`JMXConnector.removeConnectionNotificationListener(NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/remote/JMXConnector.md#removeConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`JMXConnector.addConnectionNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../../../../../java.management/javax/management/remote/JMXConnector.md#addConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../../../../../java.management/javax/management/NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeConnectionNotificationListener

    public void removeConnectionNotificationListener([NotificationListener](../../../../../java.management/javax/management/NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](../../../../../java.management/javax/management/NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `JMXConnector`

    Removes a listener from the list to be informed of changes
    in status. The listener must previously have been added with
    the same three parameters. If there is more than one matching
    listener, only one is removed.

    Specified by:
    :   `removeConnectionNotificationListener` in interface `JMXConnector`

    Parameters:
    :   `listener` - a listener to receive connection status notifications.
    :   `filter` - a filter to select which notifications are to be
        delivered to the listener. Can be null.
    :   `handback` - an object to be given to the listener along
        with each notification. Can be null.

    Throws:
    :   `ListenerNotFoundException` - if the listener is not
        registered with this `JMXConnector`, or is not
        registered with the given filter and handback.

    See Also:
    :   - [`JMXConnector.removeConnectionNotificationListener(NotificationListener)`](../../../../../java.management/javax/management/remote/JMXConnector.md#removeConnectionNotificationListener(javax.management.NotificationListener))
        - [`JMXConnector.addConnectionNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../../../../../java.management/javax/management/remote/JMXConnector.md#addConnectionNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](../../../../../java.management/javax/management/NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### close

    public void close()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JMXConnector`

    Closes the client connection to its server. Any ongoing or new
    request using the MBeanServerConnection returned by [`JMXConnector.getMBeanServerConnection()`](../../../../../java.management/javax/management/remote/JMXConnector.md#getMBeanServerConnection()) will get an
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

    Specified by:
    :   `close` in interface `JMXConnector`

    Throws:
    :   `IOException` - if the connection cannot be closed
        cleanly. If this exception is thrown, it is not known whether
        the server end of the connection has been cleanly closed.