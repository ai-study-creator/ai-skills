Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RMISocketFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.RMISocketFactory

All Implemented Interfaces:
:   `RMIClientSocketFactory`, `RMIServerSocketFactory`

---

public abstract class RMISocketFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RMIClientSocketFactory](RMIClientSocketFactory.md "interface in java.rmi.server"), [RMIServerSocketFactory](RMIServerSocketFactory.md "interface in java.rmi.server")

An `RMISocketFactory` instance is used by the RMI runtime
in order to obtain client and server sockets for RMI calls. An
application may use the `setSocketFactory` method to
request that the RMI runtime use its socket factory instance
instead of the default implementation.

The default socket factory implementation creates a direct
socket connection to the remote host.

The default socket factory implementation creates server sockets that
are bound to the wildcard address, which accepts requests from all network
interfaces.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMISocketFactory()`

  Constructs an `RMISocketFactory`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract ServerSocket`

  `createServerSocket(int port)`

  Create a server socket on the specified port (port 0 indicates
  an anonymous port).

  `abstract Socket`

  `createSocket(String host,
  int port)`

  Creates a client socket connected to the specified host and port.

  `static RMISocketFactory`

  `getDefaultSocketFactory()`

  Returns a reference to the default socket factory used
  by this RMI implementation.

  `static RMIFailureHandler`

  `getFailureHandler()`

  Returns the handler for socket creation failure set by the
  `setFailureHandler` method.

  `static RMISocketFactory`

  `getSocketFactory()`

  Returns the socket factory set by the `setSocketFactory`
  method.

  `static void`

  `setFailureHandler(RMIFailureHandler fh)`

  Sets the failure handler to be called by the RMI runtime if server
  socket creation fails.

  `static void`

  `setSocketFactory(RMISocketFactory fac)`

  Set the global socket factory from which RMI gets sockets (if the
  remote object is not associated with a specific client and/or server
  socket factory).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RMISocketFactory

    public RMISocketFactory()

    Constructs an `RMISocketFactory`.

    Since:
    :   1.1
* ## Method Details

  + ### createSocket

    public abstract [Socket](../../../../java.base/java/net/Socket.md "class in java.net") createSocket([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a client socket connected to the specified host and port.

    Specified by:
    :   `createSocket` in interface `RMIClientSocketFactory`

    Parameters:
    :   `host` - the host name
    :   `port` - the port number

    Returns:
    :   a socket connected to the specified host and port.

    Throws:
    :   `IOException` - if an I/O error occurs during socket creation

    Since:
    :   1.1
  + ### createServerSocket

    public abstract [ServerSocket](../../../../java.base/java/net/ServerSocket.md "class in java.net") createServerSocket(int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Create a server socket on the specified port (port 0 indicates
    an anonymous port).

    Specified by:
    :   `createServerSocket` in interface `RMIServerSocketFactory`

    Parameters:
    :   `port` - the port number

    Returns:
    :   the server socket on the specified port

    Throws:
    :   `IOException` - if an I/O error occurs during server socket
        creation

    Since:
    :   1.1
  + ### setSocketFactory

    public static void setSocketFactory([RMISocketFactory](RMISocketFactory.md "class in java.rmi.server") fac)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Set the global socket factory from which RMI gets sockets (if the
    remote object is not associated with a specific client and/or server
    socket factory). The RMI socket factory can only be set once. Note: The
    RMISocketFactory may only be set if the current security manager allows
    setting a socket factory; if disallowed, a SecurityException will be
    thrown.

    Parameters:
    :   `fac` - the socket factory

    Throws:
    :   `IOException` - if the RMI socket factory is already set
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method doesn't allow the operation.

    Since:
    :   1.1

    See Also:
    :   - [`getSocketFactory()`](#getSocketFactory())
        - [`SecurityManager.checkSetFactory()`](../../../../java.base/java/lang/SecurityManager.md#checkSetFactory())
  + ### getSocketFactory

    public static [RMISocketFactory](RMISocketFactory.md "class in java.rmi.server") getSocketFactory()

    Returns the socket factory set by the `setSocketFactory`
    method. Returns `null` if no socket factory has been
    set.

    Returns:
    :   the socket factory

    Since:
    :   1.1

    See Also:
    :   - [`setSocketFactory(RMISocketFactory)`](#setSocketFactory(java.rmi.server.RMISocketFactory))
  + ### getDefaultSocketFactory

    public static [RMISocketFactory](RMISocketFactory.md "class in java.rmi.server") getDefaultSocketFactory()

    Returns a reference to the default socket factory used
    by this RMI implementation. This will be the factory used
    by the RMI runtime when `getSocketFactory`
    returns `null`.

    Returns:
    :   the default RMI socket factory

    Since:
    :   1.1
  + ### setFailureHandler

    public static void setFailureHandler([RMIFailureHandler](RMIFailureHandler.md "interface in java.rmi.server") fh)

    Sets the failure handler to be called by the RMI runtime if server
    socket creation fails. By default, if no failure handler is installed
    and server socket creation fails, the RMI runtime does attempt to
    recreate the server socket.

    If there is a security manager, this method first calls
    the security manager's `checkSetFactory` method
    to ensure the operation is allowed.
    This could result in a `SecurityException`.

    Parameters:
    :   `fh` - the failure handler

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method doesn't allow the
        operation.

    Since:
    :   1.1

    See Also:
    :   - [`getFailureHandler()`](#getFailureHandler())
        - [`RMIFailureHandler.failure(Exception)`](RMIFailureHandler.md#failure(java.lang.Exception))
  + ### getFailureHandler

    public static [RMIFailureHandler](RMIFailureHandler.md "interface in java.rmi.server") getFailureHandler()

    Returns the handler for socket creation failure set by the
    `setFailureHandler` method.

    Returns:
    :   the failure handler

    Since:
    :   1.1

    See Also:
    :   - [`setFailureHandler(RMIFailureHandler)`](#setFailureHandler(java.rmi.server.RMIFailureHandler))