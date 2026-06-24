Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface RMIClientSocketFactory

All Known Implementing Classes:
:   `RMISocketFactory`, `SslRMIClientSocketFactory`

---

public interface RMIClientSocketFactory

An `RMIClientSocketFactory` instance is used by the RMI runtime
in order to obtain client sockets for RMI calls. A remote object can be
associated with an `RMIClientSocketFactory` when it is
created/exported via the constructors or `exportObject` methods
of `java.rmi.server.UnicastRemoteObject`.

An `RMIClientSocketFactory` instance associated with a remote
object will be downloaded to clients when the remote object's reference is
transmitted in an RMI call. This `RMIClientSocketFactory` will
be used to create connections to the remote object for remote method calls.

An `RMIClientSocketFactory` instance can also be associated
with a remote object registry so that clients can use custom socket
communication with a remote object registry.

An implementation of this interface should be serializable and
should implement [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) to return `true` when
passed an instance that represents the same (functionally equivalent)
client socket factory, and `false` otherwise (and it should also
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

  `Socket`

  `createSocket(String host,
  int port)`

  Create a client socket connected to the specified host and port.

* ## Method Details

  + ### createSocket

    [Socket](../../../../java.base/java/net/Socket.md "class in java.net") createSocket([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Create a client socket connected to the specified host and port.

    Parameters:
    :   `host` - the host name
    :   `port` - the port number

    Returns:
    :   a socket connected to the specified host and port.

    Throws:
    :   `IOException` - if an I/O error occurs during socket creation

    Since:
    :   1.2