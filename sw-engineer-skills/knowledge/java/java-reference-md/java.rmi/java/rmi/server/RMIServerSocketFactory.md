Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface RMIServerSocketFactory

All Known Implementing Classes:
:   `RMISocketFactory`, `SslRMIServerSocketFactory`

---

public interface RMIServerSocketFactory

An `RMIServerSocketFactory` instance is used by the RMI runtime
in order to obtain server sockets for RMI calls. A remote object can be
associated with an `RMIServerSocketFactory` when it is
created/exported via the constructors or `exportObject` methods
of `java.rmi.server.UnicastRemoteObject`.

An `RMIServerSocketFactory` instance associated with a remote
object is used to obtain the `ServerSocket` used to accept
incoming calls from clients.

An `RMIServerSocketFactory` instance can also be associated
with a remote object registry so that clients can use custom socket
communication with a remote object registry.

An implementation of this interface
should implement [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) to return `true` when
passed an instance that represents the same (functionally equivalent)
server socket factory, and `false` otherwise (and it should also
implement [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()) consistently with its
`Object.equals` implementation).

Since:
:   1.2

See Also:
:   * [`UnicastRemoteObject`](UnicastRemoteObject.md "class in java.rmi.server")
    * [`LocateRegistry`](../registry/LocateRegistry.md "class in java.rmi.registry")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ServerSocket`

  `createServerSocket(int port)`

  Create a server socket on the specified port (port 0 indicates
  an anonymous port).

* ## Method Details

  + ### createServerSocket

    [ServerSocket](../../../../java.base/java/net/ServerSocket.md "class in java.net") createServerSocket(int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Create a server socket on the specified port (port 0 indicates
    an anonymous port).

    Parameters:
    :   `port` - the port number

    Returns:
    :   the server socket on the specified port

    Throws:
    :   `IOException` - if an I/O error occurs during server socket
        creation

    Since:
    :   1.2