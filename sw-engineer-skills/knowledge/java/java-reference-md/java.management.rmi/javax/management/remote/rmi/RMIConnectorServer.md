Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIConnectorServer

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../../../../../java.management/javax/management/NotificationBroadcasterSupport.md "class in javax.management")

[javax.management.remote.JMXConnectorServer](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote")

javax.management.remote.rmi.RMIConnectorServer

All Implemented Interfaces:
:   `MBeanRegistration`, `NotificationBroadcaster`, `NotificationEmitter`, `JMXAddressable`, `JMXConnectorServerMBean`

---

public class RMIConnectorServer
extends [JMXConnectorServer](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote")

A JMX API connector server that creates RMI-based connections
from remote clients. Usually, such connector servers are made
using [`JMXConnectorServerFactory`](../../../../../java.management/javax/management/remote/JMXConnectorServerFactory.md "class in javax.management.remote"). However, specialized applications can
use this class directly, for example with an [`RMIServerImpl`](RMIServerImpl.md "class in javax.management.remote.rmi")
object.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CREDENTIALS_FILTER_PATTERN`

  Name of the attribute that specifies an
  [`ObjectInputFilter`](../../../../../java.base/java/io/ObjectInputFilter.md "interface in java.io") pattern string to filter classes acceptable
  for [`RMIServer.newClient()`](RMIServer.md#newClient(java.lang.Object))
  remote method call.

  `static final String`

  `JNDI_REBIND_ATTRIBUTE`

  Name of the attribute that specifies whether the [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") stub that represents an RMI connector server should
  override an existing stub at the same address.

  `static final String`

  `RMI_CLIENT_SOCKET_FACTORY_ATTRIBUTE`

  Name of the attribute that specifies the [`RMIClientSocketFactory`](../../../../../java.rmi/java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server") for the RMI objects created in
  conjunction with this connector.

  `static final String`

  `RMI_SERVER_SOCKET_FACTORY_ATTRIBUTE`

  Name of the attribute that specifies the [`RMIServerSocketFactory`](../../../../../java.rmi/java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server") for the RMI objects created in
  conjunction with this connector.

  `static final String`

  `SERIAL_FILTER_PATTERN`

  This attribute defines a pattern from which to create a
  [`ObjectInputFilter`](../../../../../java.base/java/io/ObjectInputFilter.md "interface in java.io") that will be used when deserializing
  objects sent to the `JMXConnectorServer` by any client.

  ### Fields inherited from class javax.management.remote.[JMXConnectorServer](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote")

  `AUTHENTICATOR`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIConnectorServer(JMXServiceURL url,
  Map<String,?> environment)`

  Makes an `RMIConnectorServer`.

  `RMIConnectorServer(JMXServiceURL url,
  Map<String,?> environment,
  MBeanServer mbeanServer)`

  Makes an `RMIConnectorServer` for the given MBean
  server.

  `RMIConnectorServer(JMXServiceURL url,
  Map<String,?> environment,
  RMIServerImpl rmiServerImpl,
  MBeanServer mbeanServer)`

  Makes an `RMIConnectorServer` for the given MBean
  server.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `connectionClosed(String connectionId,
  String message,
  Object userData)`

  Called by a subclass when a client connection is closed
  normally.

  `protected void`

  `connectionFailed(String connectionId,
  String message,
  Object userData)`

  Called by a subclass when a client connection fails.

  `protected void`

  `connectionOpened(String connectionId,
  String message,
  Object userData)`

  Called by a subclass when a new client connection is opened.

  `JMXServiceURL`

  `getAddress()`

  The address of this connector server.

  `Map<String,?>`

  `getAttributes()`

  The attributes for this connector server.

  `boolean`

  `isActive()`

  Determines whether the connector server is active.

  `void`

  `setMBeanServerForwarder(MBeanServerForwarder mbsf)`

  Inserts an object that intercepts requests for the MBean server
  that arrive through this connector server.

  `void`

  `start()`

  Activates the connector server, that is starts listening for
  client connections.

  `void`

  `stop()`

  Deactivates the connector server, that is, stops listening for
  client connections.

  `JMXConnector`

  `toJMXConnector(Map<String,?> env)`

  Returns a client stub for this connector server.

  ### Methods inherited from class javax.management.remote.[JMXConnectorServer](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote")

  `getConnectionIds, getMBeanServer, getNotificationInfo, postDeregister, postRegister, preDeregister, preRegister`

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../../../../../java.management/javax/management/NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### JNDI\_REBIND\_ATTRIBUTE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") JNDI\_REBIND\_ATTRIBUTE

    Name of the attribute that specifies whether the [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") stub that represents an RMI connector server should
    override an existing stub at the same address. The value
    associated with this attribute, if any, should be a string that
    is equal, ignoring case, to `"true"` or
    `"false"`. The default value is false.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.management.remote.rmi.RMIConnectorServer.JNDI_REBIND_ATTRIBUTE)
  + ### RMI\_CLIENT\_SOCKET\_FACTORY\_ATTRIBUTE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RMI\_CLIENT\_SOCKET\_FACTORY\_ATTRIBUTE

    Name of the attribute that specifies the [`RMIClientSocketFactory`](../../../../../java.rmi/java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server") for the RMI objects created in
    conjunction with this connector. The value associated with this
    attribute must be of type `RMIClientSocketFactory` and can
    only be specified in the `Map` argument supplied when
    creating a connector server.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.management.remote.rmi.RMIConnectorServer.RMI_CLIENT_SOCKET_FACTORY_ATTRIBUTE)
  + ### RMI\_SERVER\_SOCKET\_FACTORY\_ATTRIBUTE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RMI\_SERVER\_SOCKET\_FACTORY\_ATTRIBUTE

    Name of the attribute that specifies the [`RMIServerSocketFactory`](../../../../../java.rmi/java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server") for the RMI objects created in
    conjunction with this connector. The value associated with this
    attribute must be of type `RMIServerSocketFactory` and can
    only be specified in the `Map` argument supplied when
    creating a connector server.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.management.remote.rmi.RMIConnectorServer.RMI_SERVER_SOCKET_FACTORY_ATTRIBUTE)
  + ### CREDENTIALS\_FILTER\_PATTERN

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") CREDENTIALS\_FILTER\_PATTERN

    Name of the attribute that specifies an
    [`ObjectInputFilter`](../../../../../java.base/java/io/ObjectInputFilter.md "interface in java.io") pattern string to filter classes acceptable
    for [`RMIServer.newClient()`](RMIServer.md#newClient(java.lang.Object))
    remote method call.

    The filter pattern must be in same format as used in
    [`ObjectInputFilter.Config.createFilter(java.lang.String)`](../../../../../java.base/java/io/ObjectInputFilter.Config.md#createFilter(java.lang.String))

    This list of classes allowed by filter should correspond to the
    transitive closure of the credentials class (or classes) used by the
    installed [JMXAuthenticator](../../../../../java.management/javax/management/remote/JMXAuthenticator.md "interface in javax.management.remote") associated with the
    [RMIServer](RMIServer.md "interface in javax.management.remote.rmi") implementation.
    If the attribute is not set then any class is deemed acceptable.

    See Also:
    :   - [`ObjectInputFilter`](../../../../../java.base/java/io/ObjectInputFilter.md "interface in java.io")
        - [Constant Field Values](../../../../../constant-values.md#javax.management.remote.rmi.RMIConnectorServer.CREDENTIALS_FILTER_PATTERN)
  + ### SERIAL\_FILTER\_PATTERN

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SERIAL\_FILTER\_PATTERN

    This attribute defines a pattern from which to create a
    [`ObjectInputFilter`](../../../../../java.base/java/io/ObjectInputFilter.md "interface in java.io") that will be used when deserializing
    objects sent to the `JMXConnectorServer` by any client.

    The filter will be called for any class found in the serialized
    stream sent to server by client, including all JMX defined classes
    (such as [`ObjectName`](../../../../../java.management/javax/management/ObjectName.md "class in javax.management")), all method parameters,
    and, if present in the stream, all classes transitively referred by
    the serial form of any deserialized object.
    The pattern must be in same format as used in
    [`ObjectInputFilter.Config.createFilter(java.lang.String)`](../../../../../java.base/java/io/ObjectInputFilter.Config.md#createFilter(java.lang.String)).
    It may define an allow-list of permitted classes, a reject-list of
    rejected classes, a maximum depth for the deserialized objects,
    etc.

    To be functional, the filter should allow at least all the
    concrete types in the transitive closure of all objects that
    might get serialized when serializing all JMX classes referred
    as parameters in the [`RMIConnection`](RMIConnection.md "interface in javax.management.remote.rmi") interface,
    plus all classes that a [`client`](RMIConnector.md "class in javax.management.remote.rmi")
    might need to transmit wrapped in [marshalled objects](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") in order to interoperate with the MBeans registered
    in the `MBeanServer`. That would potentially include all the
    concrete [JMX OpenTypes](../../../../../java.management/javax/management/openmbean/package-summary.md) and the
    classes they use in their serial form.

    Care must be taken when defining such a filter, as defining
    an allow-list that is too narrow or a reject-list that is too wide may
    prevent legitimate clients from interoperating with the
    `JMXConnectorServer`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.management.remote.rmi.RMIConnectorServer.SERIAL_FILTER_PATTERN)
* ## Constructor Details

  + ### RMIConnectorServer

    public RMIConnectorServer([JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") url,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Makes an `RMIConnectorServer`.
    This is equivalent to calling [`RMIConnectorServer(directoryURL,environment,null,null)`](#%3Cinit%3E(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.remote.rmi.RMIServerImpl,javax.management.MBeanServer))

    Parameters:
    :   `url` - the URL defining how to create the connector server.
        Cannot be null.
    :   `environment` - attributes governing the creation and
        storing of the RMI object. Can be null, which is equivalent to
        an empty Map.

    Throws:
    :   `IllegalArgumentException` - if `url` is null.
    :   `MalformedURLException` - if `url` does not
        conform to the syntax for an RMI connector, or if its protocol
        is not recognized by this implementation. Only "rmi" is valid when
        this constructor is used.
    :   `IOException` - if the connector server cannot be created
        for some reason or if it is inevitable that its [`start`](#start()) method will fail.
  + ### RMIConnectorServer

    public RMIConnectorServer([JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") url,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment,
    [MBeanServer](../../../../../java.management/javax/management/MBeanServer.md "interface in javax.management") mbeanServer)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Makes an `RMIConnectorServer` for the given MBean
    server.
    This is equivalent to calling [`RMIConnectorServer(directoryURL,environment,null,mbeanServer)`](#%3Cinit%3E(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.remote.rmi.RMIServerImpl,javax.management.MBeanServer))

    Parameters:
    :   `url` - the URL defining how to create the connector server.
        Cannot be null.
    :   `environment` - attributes governing the creation and
        storing of the RMI object. Can be null, which is equivalent to
        an empty Map.
    :   `mbeanServer` - the MBean server to which the new connector
        server is attached, or null if it will be attached by being
        registered as an MBean in the MBean server.

    Throws:
    :   `IllegalArgumentException` - if `url` is null.
    :   `MalformedURLException` - if `url` does not
        conform to the syntax for an RMI connector, or if its protocol
        is not recognized by this implementation. Only "rmi" is valid
        when this constructor is used.
    :   `IOException` - if the connector server cannot be created
        for some reason or if it is inevitable that its [`start`](#start()) method will fail.
  + ### RMIConnectorServer

    public RMIConnectorServer([JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") url,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> environment,
    [RMIServerImpl](RMIServerImpl.md "class in javax.management.remote.rmi") rmiServerImpl,
    [MBeanServer](../../../../../java.management/javax/management/MBeanServer.md "interface in javax.management") mbeanServer)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Makes an `RMIConnectorServer` for the given MBean
    server.

    Parameters:
    :   `url` - the URL defining how to create the connector server.
        Cannot be null.
    :   `environment` - attributes governing the creation and
        storing of the RMI object. Can be null, which is equivalent to
        an empty Map.
    :   `rmiServerImpl` - An implementation of the RMIServer interface,
        consistent with the protocol type specified in url.
        If this parameter is non null, the protocol type specified by
        url is not constrained, and is assumed to be valid.
        Otherwise, only "rmi" will be recognized.
    :   `mbeanServer` - the MBean server to which the new connector
        server is attached, or null if it will be attached by being
        registered as an MBean in the MBean server.

    Throws:
    :   `IllegalArgumentException` - if `url` is null.
    :   `MalformedURLException` - if `url` does not
        conform to the syntax for an RMI connector, or if its protocol
        is not recognized by this implementation. Only "rmi" is recognized
        when rmiServerImpl is null.
    :   `IOException` - if the connector server cannot be created
        for some reason or if it is inevitable that its [`start`](#start()) method will fail.

    See Also:
    :   - [`start()`](#start())
* ## Method Details

  + ### toJMXConnector

    public [JMXConnector](../../../../../java.management/javax/management/remote/JMXConnector.md "interface in javax.management.remote") toJMXConnector([Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> env)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a client stub for this connector server. A client
    stub is a serializable object whose [`connect`](../../../../../java.management/javax/management/remote/JMXConnector.md#connect(java.util.Map)) method can be used to make
    one new connection to this connector server.

    Specified by:
    :   `toJMXConnector` in interface `JMXConnectorServerMBean`

    Overrides:
    :   `toJMXConnector` in class `JMXConnectorServer`

    Parameters:
    :   `env` - client connection parameters of the same sort that
        could be provided to [`JMXConnector.connect(Map)`](../../../../../java.management/javax/management/remote/JMXConnector.md#connect(java.util.Map)). Can be null, which is equivalent
        to an empty map.

    Returns:
    :   a client stub that can be used to make a new connection
        to this connector server.

    Throws:
    :   `UnsupportedOperationException` - if this connector
        server does not support the generation of client stubs.
    :   `IllegalStateException` - if the JMXConnectorServer is
        not started (see [`isActive()`](#isActive())).
    :   `IOException` - if a communications problem means that a
        stub cannot be created.
  + ### start

    public void start()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Activates the connector server, that is starts listening for
    client connections. Calling this method when the connector
    server is already active has no effect. Calling this method
    when the connector server has been stopped will generate an
    `IOException`.

    The behavior of this method when called for the first time
    depends on the parameters that were supplied at construction,
    as described below.

    First, an object of a subclass of [`RMIServerImpl`](RMIServerImpl.md "class in javax.management.remote.rmi") is
    required, to export the connector server through RMI:

    - If an `RMIServerImpl` was supplied to the
      constructor, it is used.- Otherwise, if the `JMXServiceURL`
        was null, or its protocol part was `rmi`, an object
        of type [`RMIJRMPServerImpl`](RMIJRMPServerImpl.md "class in javax.management.remote.rmi") is created.- Otherwise, the implementation can create an
          implementation-specific [`RMIServerImpl`](RMIServerImpl.md "class in javax.management.remote.rmi") or it can throw
          [`MalformedURLException`](../../../../../java.base/java/net/MalformedURLException.md "class in java.net").

    If the given address includes a JNDI directory URL as
    specified in the package documentation for [`javax.management.remote.rmi`](package-summary.md), then this
    `RMIConnectorServer` will bootstrap by binding the
    `RMIServerImpl` to the given address.

    If the URL path part of the `JMXServiceURL` was
    empty or a single slash (`/`), then the RMI object
    will not be bound to a directory. Instead, a reference to it
    will be encoded in the URL path of the RMIConnectorServer
    address (returned by [`getAddress()`](#getAddress())). The encodings for
    `rmi` are described in the package documentation for
    [`javax.management.remote.rmi`](package-summary.md).

    The behavior when the URL path is neither empty nor a JNDI
    directory URL, or when the protocol is not `rmi`,
    is implementation defined, and may include throwing
    [`MalformedURLException`](../../../../../java.base/java/net/MalformedURLException.md "class in java.net") when the connector server is created
    or when it is started.

    Throws:
    :   `IllegalStateException` - if the connector server has
        not been attached to an MBean server.
    :   `IOException` - if the connector server cannot be
        started.
  + ### stop

    public void stop()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Deactivates the connector server, that is, stops listening for
    client connections. Calling this method will also close all
    client connections that were made by this server. After this
    method returns, whether normally or with an exception, the
    connector server will not create any new client
    connections.

    Once a connector server has been stopped, it cannot be started
    again.

    Calling this method when the connector server has already
    been stopped has no effect. Calling this method when the
    connector server has not yet been started will disable the
    connector server object permanently.

    If closing a client connection produces an exception, that
    exception is not thrown from this method. A [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote") is emitted from this MBean with the
    connection ID of the connection that could not be closed.

    Closing a connector server is a potentially slow operation.
    For example, if a client machine with an open connection has
    crashed, the close operation might have to wait for a network
    protocol timeout. Callers that do not want to block in a close
    operation should do it in a separate thread.

    This method calls the method [`close`](RMIServerImpl.md#close()) on the connector server's `RMIServerImpl`
    object.

    If the `RMIServerImpl` was bound to a JNDI
    directory by the [`start`](#start()) method, it is unbound
    from the directory by this method.

    Throws:
    :   `IOException` - if the server cannot be closed cleanly,
        or if the `RMIServerImpl` cannot be unbound from the
        directory. When this exception is thrown, the server has
        already attempted to close all client connections, if
        appropriate; to call [`RMIServerImpl.close()`](RMIServerImpl.md#close()); and to
        unbind the `RMIServerImpl` from its directory, if
        appropriate. All client connections are closed except possibly
        those that generated exceptions when the server attempted to
        close them.
  + ### isActive

    public boolean isActive()

    Description copied from interface: `JMXConnectorServerMBean`

    Determines whether the connector server is active. A connector
    server starts being active when its [`start`](../../../../../java.management/javax/management/remote/JMXConnectorServerMBean.md#start()) method
    returns successfully and remains active until either its
    [`stop`](../../../../../java.management/javax/management/remote/JMXConnectorServerMBean.md#stop()) method is called or the connector server
    fails.

    Returns:
    :   true if the connector server is active.
  + ### getAddress

    public [JMXServiceURL](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") getAddress()

    Description copied from interface: `JMXConnectorServerMBean`

    The address of this connector server.

    The address returned may not be the exact original [`JMXServiceURL`](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote")
    that was supplied when creating the connector server, since the original
    address may not always be complete. For example the port number may be
    dynamically allocated when starting the connector server. Instead the
    address returned is the actual [`JMXServiceURL`](../../../../../java.management/javax/management/remote/JMXServiceURL.md "class in javax.management.remote") of the
    [`JMXConnectorServer`](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote"). This is the address that clients supply
    to [`JMXConnectorFactory.connect(JMXServiceURL)`](../../../../../java.management/javax/management/remote/JMXConnectorFactory.md#connect(javax.management.remote.JMXServiceURL)).

    Note that the address returned may be `null` if
    the `JMXConnectorServer` is not yet [`active`](../../../../../java.management/javax/management/remote/JMXConnectorServerMBean.md#isActive()).

    Returns:
    :   the address of this connector server, or null if it
        does not have one.
  + ### getAttributes

    public [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> getAttributes()

    Description copied from interface: `JMXConnectorServerMBean`

    The attributes for this connector server.

    Returns:
    :   a read-only map containing the attributes for this
        connector server. Attributes whose values are not serializable
        are omitted from this map. If there are no serializable
        attributes, the returned map is empty.
  + ### setMBeanServerForwarder

    public void setMBeanServerForwarder([MBeanServerForwarder](../../../../../java.management/javax/management/remote/MBeanServerForwarder.md "interface in javax.management.remote") mbsf)

    Description copied from interface: `JMXConnectorServerMBean`

    Inserts an object that intercepts requests for the MBean server
    that arrive through this connector server. This object will be
    supplied as the `MBeanServer` for any new connection
    created by this connector server. Existing connections are
    unaffected.

    This method can be called more than once with different
    [`MBeanServerForwarder`](../../../../../java.management/javax/management/remote/MBeanServerForwarder.md "interface in javax.management.remote") objects. The result is a chain
    of forwarders. The last forwarder added is the first in the chain.
    In more detail:

    - If this connector server is already associated with an
      `MBeanServer` object, then that object is given to
      [`mbsf.setMBeanServer`](../../../../../java.management/javax/management/remote/MBeanServerForwarder.md#setMBeanServer(javax.management.MBeanServer)). If doing so produces an exception, this
      method throws the same exception without any other effect.

      - If this connector is not already associated with an
        `MBeanServer` object, or if the
        `mbsf.setMBeanServer` call just mentioned succeeds,
        then `mbsf` becomes this connector server's
        `MBeanServer`.

    Specified by:
    :   `setMBeanServerForwarder` in interface `JMXConnectorServerMBean`

    Overrides:
    :   `setMBeanServerForwarder` in class `JMXConnectorServer`

    Parameters:
    :   `mbsf` - the new `MBeanServerForwarder`.
  + ### connectionOpened

    protected void connectionOpened([String](../../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Description copied from class: `JMXConnectorServer`

    Called by a subclass when a new client connection is opened.
    Adds `connectionId` to the list returned by [`JMXConnectorServer.getConnectionIds()`](../../../../../java.management/javax/management/remote/JMXConnectorServer.md#getConnectionIds()), then emits a [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.OPENED`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md#OPENED).

    Overrides:
    :   `connectionOpened` in class `JMXConnectorServer`

    Parameters:
    :   `connectionId` - the ID of the new connection. This must be
        different from the ID of any connection previously opened by
        this connector server.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../../../../../java.management/javax/management/Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../../../../../java.management/javax/management/Notification.md#getUserData()).
  + ### connectionClosed

    protected void connectionClosed([String](../../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Description copied from class: `JMXConnectorServer`

    Called by a subclass when a client connection is closed
    normally. Removes `connectionId` from the list returned
    by [`JMXConnectorServer.getConnectionIds()`](../../../../../java.management/javax/management/remote/JMXConnectorServer.md#getConnectionIds()), then emits a [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.CLOSED`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md#CLOSED).

    Overrides:
    :   `connectionClosed` in class `JMXConnectorServer`

    Parameters:
    :   `connectionId` - the ID of the closed connection.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../../../../../java.management/javax/management/Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../../../../../java.management/javax/management/Notification.md#getUserData()).
  + ### connectionFailed

    protected void connectionFailed([String](../../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Description copied from class: `JMXConnectorServer`

    Called by a subclass when a client connection fails.
    Removes `connectionId` from the list returned by
    [`JMXConnectorServer.getConnectionIds()`](../../../../../java.management/javax/management/remote/JMXConnectorServer.md#getConnectionIds()), then emits a [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.FAILED`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md#FAILED).

    Overrides:
    :   `connectionFailed` in class `JMXConnectorServer`

    Parameters:
    :   `connectionId` - the ID of the failed connection.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../../../../../java.management/javax/management/Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](../../../../../java.management/javax/management/remote/JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../../../../../java.management/javax/management/Notification.md#getUserData()).