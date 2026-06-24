Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIJRMPServerImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.remote.rmi.RMIServerImpl](RMIServerImpl.md "class in javax.management.remote.rmi")

javax.management.remote.rmi.RMIJRMPServerImpl

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Remote`, `RMIServer`

---

public class RMIJRMPServerImpl
extends [RMIServerImpl](RMIServerImpl.md "class in javax.management.remote.rmi")

An [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object that is exported through JRMP and that
creates client connections as RMI objects exported through JRMP.
User code does not usually reference this class directly.

Since:
:   1.5

See Also:
:   * [`RMIServerImpl`](RMIServerImpl.md "class in javax.management.remote.rmi")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIJRMPServerImpl(int port,
  RMIClientSocketFactory csf,
  RMIServerSocketFactory ssf,
  Map<String,?> env)`

  Creates a new [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object that will be exported
  on the given port using the given socket factories.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `closeClient(RMIConnection client)`

  Closes a client connection made by [`makeClient`](RMIServerImpl.md#makeClient(java.lang.String,javax.security.auth.Subject)).

  `protected void`

  `closeServer()`

  Called by [`RMIServerImpl.close()`](RMIServerImpl.md#close()) to close the connector server by
  unexporting this object.

  `protected void`

  `export()`

  Exports this RMI object.

  `protected String`

  `getProtocol()`

  Returns the protocol string for this object.

  `protected RMIConnection`

  `makeClient(String connectionId,
  Subject subject)`

  Creates a new client connection as an RMI object exported
  through JRMP.

  `Remote`

  `toStub()`

  Returns a serializable stub for this [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object.

  ### Methods inherited from class javax.management.remote.rmi.[RMIServerImpl](RMIServerImpl.md "class in javax.management.remote.rmi")

  `clientClosed, close, getDefaultClassLoader, getMBeanServer, getVersion, newClient, setDefaultClassLoader, setMBeanServer`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RMIJRMPServerImpl

    public RMIJRMPServerImpl(int port,
    [RMIClientSocketFactory](../../../../../java.rmi/java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server") csf,
    [RMIServerSocketFactory](../../../../../java.rmi/java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server") ssf,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> env)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object that will be exported
    on the given port using the given socket factories.

    Parameters:
    :   `port` - the port on which this object and the [`RMIConnectionImpl`](RMIConnectionImpl.md "class in javax.management.remote.rmi") objects it creates will be exported. Can be
        zero, to indicate any available port.
    :   `csf` - the client socket factory for the created RMI
        objects. Can be null.
    :   `ssf` - the server socket factory for the created RMI
        objects. Can be null.
    :   `env` - the environment map. Can be null.

    Throws:
    :   `IOException` - if the [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object
        cannot be created.
    :   `IllegalArgumentException` - if `port` is
        negative.
* ## Method Details

  + ### export

    protected void export()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from class: `RMIServerImpl`

    Exports this RMI object.

    Specified by:
    :   `export` in class `RMIServerImpl`

    Throws:
    :   `IOException` - if this RMI object cannot be exported.
  + ### getProtocol

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getProtocol()

    Description copied from class: `RMIServerImpl`

    Returns the protocol string for this object. The string is
    `rmi` for RMI/JRMP.

    Specified by:
    :   `getProtocol` in class `RMIServerImpl`

    Returns:
    :   the protocol string for this object.
  + ### toStub

    public [Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi") toStub()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a serializable stub for this [`RMIServer`](RMIServer.md "interface in javax.management.remote.rmi") object.

    Specified by:
    :   `toStub` in class `RMIServerImpl`

    Returns:
    :   a serializable stub.

    Throws:
    :   `IOException` - if the stub cannot be obtained - e.g the
        RMIJRMPServerImpl has not been exported yet.
  + ### makeClient

    protected [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") makeClient([String](../../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") subject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new client connection as an RMI object exported
    through JRMP. The port and socket factories for the new
    [`RMIConnection`](RMIConnection.md "interface in javax.management.remote.rmi") object are the ones supplied
    to the `RMIJRMPServerImpl` constructor.

    Specified by:
    :   `makeClient` in class `RMIServerImpl`

    Parameters:
    :   `connectionId` - the ID of the new connection. Every
        connection opened by this connector server will have a
        different id. The behavior is unspecified if this parameter is
        null.
    :   `subject` - the authenticated subject. Can be null.

    Returns:
    :   the newly-created `RMIConnection`.

    Throws:
    :   `IOException` - if the new [`RMIConnection`](RMIConnection.md "interface in javax.management.remote.rmi")
        object cannot be created or exported.
  + ### closeClient

    protected void closeClient([RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") client)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from class: `RMIServerImpl`

    Closes a client connection made by [`makeClient`](RMIServerImpl.md#makeClient(java.lang.String,javax.security.auth.Subject)).

    Specified by:
    :   `closeClient` in class `RMIServerImpl`

    Parameters:
    :   `client` - a connection previously returned by
        `makeClient` on which the `closeClient`
        method has not previously been called. The behavior is
        unspecified if these conditions are violated, including the
        case where `client` is null.

    Throws:
    :   `IOException` - if the client connection cannot be
        closed.
  + ### closeServer

    protected void closeServer()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Called by [`RMIServerImpl.close()`](RMIServerImpl.md#close()) to close the connector server by
    unexporting this object. After returning from this method, the
    connector server must not accept any new connections.

    Specified by:
    :   `closeServer` in class `RMIServerImpl`

    Throws:
    :   `IOException` - if the attempt to close the connector
        server failed.