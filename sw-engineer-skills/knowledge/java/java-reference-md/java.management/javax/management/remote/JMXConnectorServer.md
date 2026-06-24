Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXConnectorServer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

javax.management.remote.JMXConnectorServer

All Implemented Interfaces:
:   `MBeanRegistration`, `NotificationBroadcaster`, `NotificationEmitter`, `JMXAddressable`, `JMXConnectorServerMBean`

Direct Known Subclasses:
:   `RMIConnectorServer`

---

public abstract class JMXConnectorServer
extends [NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")
implements [JMXConnectorServerMBean](JMXConnectorServerMBean.md "interface in javax.management.remote"), [MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), [JMXAddressable](JMXAddressable.md "interface in javax.management.remote")

Superclass of every connector server. A connector server is
attached to an MBean server. It listens for client connection
requests and creates a connection for each one.

A connector server is associated with an MBean server either by
registering it in that MBean server, or by passing the MBean server
to its constructor.

A connector server is inactive when created. It only starts
listening for client connections when the [`start`](JMXConnectorServerMBean.md#start())
method is called. A connector server stops listening for client
connections when the [`stop`](JMXConnectorServerMBean.md#stop()) method is called or when
the connector server is unregistered from its MBean server.

Stopping a connector server does not unregister it from its
MBean server. A connector server once stopped cannot be
restarted.

Each time a client connection is made or broken, a notification
of class [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote") is emitted.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `AUTHENTICATOR`

  Name of the attribute that specifies the authenticator for a
  connector server.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXConnectorServer()`

  Constructs a connector server that will be registered as an
  MBean in the MBean server it is attached to.

  `JMXConnectorServer(MBeanServer mbeanServer)`

  Constructs a connector server that is attached to the given
  MBean server.
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

  `String[]`

  `getConnectionIds()`

  The list of IDs for currently-open connections to this
  connector server.

  `MBeanServer`

  `getMBeanServer()`

  Returns the MBean server that this connector server is
  attached to.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating the notifications that this MBean
  sends.

  `void`

  `postDeregister()`

  Allows the MBean to perform any operations needed after having been
  unregistered in the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the MBean to perform any operations needed after having been
  registered in the MBean server or after the registration has failed.

  `void`

  `preDeregister()`

  Called by an MBean server when this connector server is
  unregistered from that MBean server.

  `ObjectName`

  `preRegister(MBeanServer mbs,
  ObjectName name)`

  Called by an MBean server when this connector server is
  registered in that MBean server.

  `void`

  `setMBeanServerForwarder(MBeanServerForwarder mbsf)`

  Inserts an object that intercepts requests for the MBean server
  that arrive through this connector server.

  `JMXConnector`

  `toJMXConnector(Map<String,?> env)`

  Returns a client stub for this connector server.

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.management.remote.[JMXAddressable](JMXAddressable.md "interface in javax.management.remote")

  `getAddress`

  ### Methods inherited from interface javax.management.remote.[JMXConnectorServerMBean](JMXConnectorServerMBean.md "interface in javax.management.remote")

  `getAddress, getAttributes, isActive, start, stop`

* ## Field Details

  + ### AUTHENTICATOR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") AUTHENTICATOR

    Name of the attribute that specifies the authenticator for a
    connector server. The value associated with this attribute, if
    any, must be an object that implements the interface [`JMXAuthenticator`](JMXAuthenticator.md "interface in javax.management.remote").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectorServer.AUTHENTICATOR)
* ## Constructor Details

  + ### JMXConnectorServer

    public JMXConnectorServer()

    Constructs a connector server that will be registered as an
    MBean in the MBean server it is attached to. This constructor
    is typically called by one of the `createMBean`
    methods when creating, within an MBean server, a connector
    server that makes it available remotely.
  + ### JMXConnectorServer

    public JMXConnectorServer([MBeanServer](../MBeanServer.md "interface in javax.management") mbeanServer)

    Constructs a connector server that is attached to the given
    MBean server. A connector server that is created in this way
    can be registered in a different MBean server, or not registered
    in any MBean server.

    Parameters:
    :   `mbeanServer` - the MBean server that this connector server
        is attached to. Null if this connector server will be attached
        to an MBean server by being registered in it.
* ## Method Details

  + ### getMBeanServer

    public [MBeanServer](../MBeanServer.md "interface in javax.management") getMBeanServer()

    Returns the MBean server that this connector server is
    attached to.

    Returns:
    :   the MBean server that this connector server is attached
        to, or null if it is not yet attached to an MBean server.
  + ### setMBeanServerForwarder

    public void setMBeanServerForwarder([MBeanServerForwarder](MBeanServerForwarder.md "interface in javax.management.remote") mbsf)

    Description copied from interface: `JMXConnectorServerMBean`

    Inserts an object that intercepts requests for the MBean server
    that arrive through this connector server. This object will be
    supplied as the `MBeanServer` for any new connection
    created by this connector server. Existing connections are
    unaffected.

    This method can be called more than once with different
    [`MBeanServerForwarder`](MBeanServerForwarder.md "interface in javax.management.remote") objects. The result is a chain
    of forwarders. The last forwarder added is the first in the chain.
    In more detail:

    - If this connector server is already associated with an
      `MBeanServer` object, then that object is given to
      [`mbsf.setMBeanServer`](MBeanServerForwarder.md#setMBeanServer(javax.management.MBeanServer)). If doing so produces an exception, this
      method throws the same exception without any other effect.

      - If this connector is not already associated with an
        `MBeanServer` object, or if the
        `mbsf.setMBeanServer` call just mentioned succeeds,
        then `mbsf` becomes this connector server's
        `MBeanServer`.

    Specified by:
    :   `setMBeanServerForwarder` in interface `JMXConnectorServerMBean`

    Parameters:
    :   `mbsf` - the new `MBeanServerForwarder`.
  + ### getConnectionIds

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getConnectionIds()

    Description copied from interface: `JMXConnectorServerMBean`

    The list of IDs for currently-open connections to this
    connector server.

    Specified by:
    :   `getConnectionIds` in interface `JMXConnectorServerMBean`

    Returns:
    :   a new string array containing the list of IDs. If
        there are no currently-open connections, this array will be
        empty.
  + ### toJMXConnector

    public [JMXConnector](JMXConnector.md "interface in javax.management.remote") toJMXConnector([Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> env)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a client stub for this connector server. A client
    stub is a serializable object whose [`connect`](JMXConnector.md#connect(java.util.Map)) method can be used to make
    one new connection to this connector server.

    A given connector need not support the generation of client
    stubs. However, the connectors specified by the JMX Remote API do
    (JMXMP Connector and RMI Connector).

    The default implementation of this method uses [`JMXConnectorServerMBean.getAddress()`](JMXConnectorServerMBean.md#getAddress()) and [`JMXConnectorFactory`](JMXConnectorFactory.md "class in javax.management.remote") to generate the
    stub, with code equivalent to the following:

    ```
     JMXServiceURL addr = getAddress();
     return JMXConnectorFactory.newJMXConnector(addr, env);
    ```

    A connector server for which this is inappropriate must
    override this method so that it either implements the
    appropriate logic or throws [`UnsupportedOperationException`](../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").

    Specified by:
    :   `toJMXConnector` in interface `JMXConnectorServerMBean`

    Parameters:
    :   `env` - client connection parameters of the same sort that
        could be provided to [`JMXConnector.connect(Map)`](JMXConnector.md#connect(java.util.Map)). Can be null, which is equivalent
        to an empty map.

    Returns:
    :   a client stub that can be used to make a new connection
        to this connector server.

    Throws:
    :   `UnsupportedOperationException` - if this connector
        server does not support the generation of client stubs.
    :   `IllegalStateException` - if the JMXConnectorServer is
        not started (see [`JMXConnectorServerMBean.isActive()`](JMXConnectorServerMBean.md#isActive())).
    :   `IOException` - if a communications problem means that a
        stub cannot be created.
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns an array indicating the notifications that this MBean
    sends. The implementation in `JMXConnectorServer`
    returns an array with one element, indicating that it can emit
    notifications of class [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote") with
    the types defined in that class. A subclass that can emit other
    notifications should return an array that contains this element
    plus descriptions of the other notifications.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.
  + ### connectionOpened

    protected void connectionOpened([String](../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Called by a subclass when a new client connection is opened.
    Adds `connectionId` to the list returned by [`getConnectionIds()`](#getConnectionIds()), then emits a [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.OPENED`](JMXConnectionNotification.md#OPENED).

    Parameters:
    :   `connectionId` - the ID of the new connection. This must be
        different from the ID of any connection previously opened by
        this connector server.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../Notification.md#getUserData()).

    Throws:
    :   `NullPointerException` - if `connectionId` is
        null.
  + ### connectionClosed

    protected void connectionClosed([String](../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Called by a subclass when a client connection is closed
    normally. Removes `connectionId` from the list returned
    by [`getConnectionIds()`](#getConnectionIds()), then emits a [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.CLOSED`](JMXConnectionNotification.md#CLOSED).

    Parameters:
    :   `connectionId` - the ID of the closed connection.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../Notification.md#getUserData()).

    Throws:
    :   `NullPointerException` - if `connectionId`
        is null.
  + ### connectionFailed

    protected void connectionFailed([String](../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userData)

    Called by a subclass when a client connection fails.
    Removes `connectionId` from the list returned by
    [`getConnectionIds()`](#getConnectionIds()), then emits a [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote") with type [`JMXConnectionNotification.FAILED`](JMXConnectionNotification.md#FAILED).

    Parameters:
    :   `connectionId` - the ID of the failed connection.
    :   `message` - the message for the emitted [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getMessage()`](../Notification.md#getMessage()).
    :   `userData` - the `userData` for the emitted
        [`JMXConnectionNotification`](JMXConnectionNotification.md "class in javax.management.remote"). Can be null. See [`Notification.getUserData()`](../Notification.md#getUserData()).

    Throws:
    :   `NullPointerException` - if `connectionId` is
        null.
  + ### preRegister

    public [ObjectName](../ObjectName.md "class in javax.management") preRegister([MBeanServer](../MBeanServer.md "interface in javax.management") mbs,
    [ObjectName](../ObjectName.md "class in javax.management") name)

    Called by an MBean server when this connector server is
    registered in that MBean server. This connector server becomes
    attached to the MBean server and its [`getMBeanServer()`](#getMBeanServer())
    method will return `mbs`.

    If this connector server is already attached to an MBean
    server, this method has no effect. The MBean server it is
    attached to is not necessarily the one it is being registered
    in.

    Specified by:
    :   `preRegister` in interface `MBeanRegistration`

    Parameters:
    :   `mbs` - the MBean server in which this connection server is
        being registered.
    :   `name` - The object name of the MBean.

    Returns:
    :   The name under which the MBean is to be registered.

    Throws:
    :   `NullPointerException` - if `mbs` or
        `name` is null.
  + ### postRegister

    public void postRegister([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations needed after having been
    registered in the MBean server or after the registration has failed.

    If the implementation of this method throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](../RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](../RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postRegister`
    will not change the state of the MBean:
    if the MBean was already registered (`registrationDone` is
    `true`), the MBean will remain registered.

    This might be confusing for the code calling `createMBean()`
    or `registerMBean()`, as such code might assume that MBean
    registration has failed when such an exception is raised.
    Therefore it is recommended that implementations of
    `postRegister` do not throw Runtime Exceptions or Errors if it
    can be avoided.

    Specified by:
    :   `postRegister` in interface `MBeanRegistration`

    Parameters:
    :   `registrationDone` - Indicates whether or not the MBean has
        been successfully registered in the MBean server. The value
        false means that the registration phase has failed.
  + ### preDeregister

    public void preDeregister()
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Called by an MBean server when this connector server is
    unregistered from that MBean server. If this connector server
    was attached to that MBean server by being registered in it,
    and if the connector server is still active,
    then unregistering it will call the [`stop`](JMXConnectorServerMBean.md#stop()) method.
    If the `stop` method throws an exception, the
    unregistration attempt will fail. It is recommended to call
    the `stop` method explicitly before unregistering
    the MBean.

    Specified by:
    :   `preDeregister` in interface `MBeanRegistration`

    Throws:
    :   `IOException` - if thrown by the [`stop`](JMXConnectorServerMBean.md#stop()) method.
    :   `Exception` - This exception will be caught by
        the MBean server and re-thrown as an [`MBeanRegistrationException`](../MBeanRegistrationException.md "class in javax.management").
  + ### postDeregister

    public void postDeregister()

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations needed after having been
    unregistered in the MBean server.

    If the implementation of this method throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](../RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](../RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postDeregister`
    will not change the state of the MBean:
    the MBean was already successfully deregistered and will remain so.

    This might be confusing for the code calling
    `unregisterMBean()`, as it might assume that MBean deregistration
    has failed. Therefore it is recommended that implementations of
    `postDeregister` do not throw Runtime Exceptions or Errors if it
    can be avoided.

    Specified by:
    :   `postDeregister` in interface `MBeanRegistration`