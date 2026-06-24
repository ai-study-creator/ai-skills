Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIServerImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.rmi.RMIServerImpl

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Remote`, `RMIServer`

Direct Known Subclasses:
:   `RMIJRMPServerImpl`

---

public abstract class RMIServerImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Closeable](../../../../../java.base/java/io/Closeable.md "interface in java.io"), [RMIServer](RMIServer.md "interface in javax.management.remote.rmi")

An RMI object representing a connector server. Remote clients
can make connections using the [`newClient(Object)`](#newClient(java.lang.Object)) method. This
method returns an RMI object representing the connection.

User code does not usually reference this class directly.
RMI connection servers are usually created with the class [`RMIConnectorServer`](RMIConnectorServer.md "class in javax.management.remote.rmi"). Remote clients usually create connections
either with [`JMXConnectorFactory`](../../../../../java.management/javax/management/remote/JMXConnectorFactory.md "class in javax.management.remote")
or by instantiating [`RMIConnector`](RMIConnector.md "class in javax.management.remote.rmi").

This is an abstract class. Concrete subclasses define the
details of the client connection objects.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIServerImpl(Map<String,?> env)`

  Constructs a new `RMIServerImpl`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `clientClosed(RMIConnection client)`

  Method called when a client connection created by [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)) is closed.

  `void`

  `close()`

  Closes this connection server.

  `protected abstract void`

  `closeClient(RMIConnection client)`

  Closes a client connection made by [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)).

  `protected abstract void`

  `closeServer()`

  Called by [`close()`](#close()) to close the connector server.

  `protected abstract void`

  `export()`

  Exports this RMI object.

  `ClassLoader`

  `getDefaultClassLoader()`

  Gets the default `ClassLoader` used by this connector
  server.

  `MBeanServer`

  `getMBeanServer()`

  The `MBeanServer` to which this connector server
  is attached.

  `protected abstract String`

  `getProtocol()`

  Returns the protocol string for this object.

  `String`

  `getVersion()`

  The version of the RMI Connector Protocol understood by this
  connector server.

  `protected abstract RMIConnection`

  `makeClient(String connectionId,
  Subject subject)`

  Creates a new client connection.

  `RMIConnection`

  `newClient(Object credentials)`

  Creates a new client connection.

  `void`

  `setDefaultClassLoader(ClassLoader cl)`

  Sets the default `ClassLoader` for this connector
  server.

  `void`

  `setMBeanServer(MBeanServer mbs)`

  Sets the `MBeanServer` to which this connector
  server is attached.

  `abstract Remote`

  `toStub()`

  Returns a remotable stub for this server object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RMIServerImpl

    public RMIServerImpl([Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> env)

    Constructs a new `RMIServerImpl`.

    Parameters:
    :   `env` - the environment containing attributes for the new
        `RMIServerImpl`. Can be null, which is equivalent
        to an empty Map.
* ## Method Details

  + ### export

    protected abstract void export()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Exports this RMI object.

    Throws:
    :   `IOException` - if this RMI object cannot be exported.
  + ### toStub

    public abstract [Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi") toStub()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a remotable stub for this server object.

    Returns:
    :   a remotable stub.

    Throws:
    :   `IOException` - if the stub cannot be obtained - e.g the
        RMIServerImpl has not been exported yet.
  + ### setDefaultClassLoader

    public void setDefaultClassLoader([ClassLoader](../../../../../java.base/java/lang/ClassLoader.md "class in java.lang") cl)

    Sets the default `ClassLoader` for this connector
    server. New client connections will use this classloader.
    Existing client connections are unaffected.

    Parameters:
    :   `cl` - the new `ClassLoader` to be used by this
        connector server.

    See Also:
    :   - [`getDefaultClassLoader()`](#getDefaultClassLoader())
  + ### getDefaultClassLoader

    public [ClassLoader](../../../../../java.base/java/lang/ClassLoader.md "class in java.lang") getDefaultClassLoader()

    Gets the default `ClassLoader` used by this connector
    server.

    Returns:
    :   the default `ClassLoader` used by this
        connector server.

    See Also:
    :   - [`setDefaultClassLoader(java.lang.ClassLoader)`](#setDefaultClassLoader(java.lang.ClassLoader))
  + ### setMBeanServer

    public void setMBeanServer([MBeanServer](../../../../../java.management/javax/management/MBeanServer.md "interface in javax.management") mbs)

    Sets the `MBeanServer` to which this connector
    server is attached. New client connections will interact
    with this `MBeanServer`. Existing client connections are
    unaffected.

    Parameters:
    :   `mbs` - the new `MBeanServer`. Can be null, but
        new client connections will be refused as long as it is.

    See Also:
    :   - [`getMBeanServer()`](#getMBeanServer())
  + ### getMBeanServer

    public [MBeanServer](../../../../../java.management/javax/management/MBeanServer.md "interface in javax.management") getMBeanServer()

    The `MBeanServer` to which this connector server
    is attached. This is the last value passed to [`setMBeanServer(javax.management.MBeanServer)`](#setMBeanServer(javax.management.MBeanServer)) on this object, or null if that method has
    never been called.

    Returns:
    :   the `MBeanServer` to which this connector
        is attached.

    See Also:
    :   - [`setMBeanServer(javax.management.MBeanServer)`](#setMBeanServer(javax.management.MBeanServer))
  + ### getVersion

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Description copied from interface: `RMIServer`

    The version of the RMI Connector Protocol understood by this
    connector server. This is a string with the following format:

    ```
     protocol-version implementation-name
    ```

    The `protocol-version` is a series of
    two or more non-negative integers separated by periods
    (`.`). An implementation of the version described
    by this documentation must use the string `1.0`
    here.

    After the protocol version there must be a space, followed
    by the implementation name. The format of the implementation
    name is unspecified. It is recommended that it include an
    implementation version number. An implementation can use an
    empty string as its implementation name, for example for
    security reasons.

    Specified by:
    :   `getVersion` in interface `RMIServer`

    Returns:
    :   a string with the format described here.
  + ### newClient

    public [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") newClient([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") credentials)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new client connection. This method calls [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)) and adds the returned client connection
    object to an internal list. When this
    `RMIServerImpl` is shut down via its [`close()`](#close()) method, the [`close()`](RMIConnection.md#close())
    method of each object remaining in the list is called.

    The fact that a client connection object is in this internal
    list does not prevent it from being garbage collected.

    Specified by:
    :   `newClient` in interface `RMIServer`

    Parameters:
    :   `credentials` - this object specifies the user-defined
        credentials to be passed in to the server in order to
        authenticate the caller before creating the
        `RMIConnection`. Can be null.

    Returns:
    :   the newly-created `RMIConnection`. This is
        usually the object created by `makeClient`, though
        an implementation may choose to wrap that object in another
        object implementing `RMIConnection`.

    Throws:
    :   `IOException` - if the new client object cannot be
        created or exported.
    :   `SecurityException` - if the given credentials do not allow
        the server to authenticate the user successfully.
    :   `IllegalStateException` - if [`getMBeanServer()`](#getMBeanServer())
        is null.
  + ### makeClient

    protected abstract [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") makeClient([String](../../../../../java.base/java/lang/String.md "class in java.lang") connectionId,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") subject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new client connection. This method is called by
    the public method [`newClient(Object)`](#newClient(java.lang.Object)).

    Parameters:
    :   `connectionId` - the ID of the new connection. Every
        connection opened by this connector server will have a
        different ID. The behavior is unspecified if this parameter is
        null.
    :   `subject` - the authenticated subject. Can be null.

    Returns:
    :   the newly-created `RMIConnection`.

    Throws:
    :   `IOException` - if the new client object cannot be
        created or exported.
  + ### closeClient

    protected abstract void closeClient([RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") client)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Closes a client connection made by [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)).

    Parameters:
    :   `client` - a connection previously returned by
        `makeClient` on which the `closeClient`
        method has not previously been called. The behavior is
        unspecified if these conditions are violated, including the
        case where `client` is null.

    Throws:
    :   `IOException` - if the client connection cannot be
        closed.
  + ### getProtocol

    protected abstract [String](../../../../../java.base/java/lang/String.md "class in java.lang") getProtocol()

    Returns the protocol string for this object. The string is
    `rmi` for RMI/JRMP.

    Returns:
    :   the protocol string for this object.
  + ### clientClosed

    protected void clientClosed([RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") client)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Method called when a client connection created by [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)) is closed. A subclass that defines
    `makeClient` must arrange for this method to be
    called when the resultant object's [`close`](RMIConnection.md#close()) method is called. This enables it to be removed from
    the `RMIServerImpl`'s list of connections. It is
    not an error for `client` not to be in that
    list.

    After removing `client` from the list of
    connections, this method calls [`closeClient(client)`](#closeClient(javax.management.remote.rmi.RMIConnection)).

    Parameters:
    :   `client` - the client connection that has been closed.

    Throws:
    :   `IOException` - if [`closeClient(javax.management.remote.rmi.RMIConnection)`](#closeClient(javax.management.remote.rmi.RMIConnection)) throws this
        exception.
    :   `NullPointerException` - if `client` is null.
  + ### close

    public void close()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Closes this connection server. This method first calls the
    [`closeServer()`](#closeServer()) method so that no new client connections
    will be accepted. Then, for each remaining [`RMIConnection`](RMIConnection.md "interface in javax.management.remote.rmi") object returned by [`makeClient`](#makeClient(java.lang.String,javax.security.auth.Subject)), its [`close`](RMIConnection.md#close()) method is
    called.

    The behavior when this method is called more than once is
    unspecified.

    If [`closeServer()`](#closeServer()) throws an
    `IOException`, the individual connections are
    nevertheless closed, and then the `IOException` is
    thrown from this method.

    If [`closeServer()`](#closeServer()) returns normally but one or more
    of the individual connections throws an
    `IOException`, then, after closing all the
    connections, one of those `IOException`s is thrown
    from this method. If more than one connection throws an
    `IOException`, it is unspecified which one is thrown
    from this method.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if [`closeServer()`](#closeServer()) or one of the
        [`RMIConnection.close()`](RMIConnection.md#close()) calls threw
        `IOException`.
  + ### closeServer

    protected abstract void closeServer()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Called by [`close()`](#close()) to close the connector server.
    After returning from this method, the connector server must
    not accept any new connections.

    Throws:
    :   `IOException` - if the attempt to close the connector
        server failed.