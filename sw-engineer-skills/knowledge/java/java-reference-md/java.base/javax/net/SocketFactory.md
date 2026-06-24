Module [java.base](../../module-summary.md)

Package [javax.net](package-summary.md)

# Class SocketFactory

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.net.SocketFactory

Direct Known Subclasses:
:   `SSLSocketFactory`

---

public abstract class SocketFactory
extends [Object](../../java/lang/Object.md "class in java.lang")

This class creates sockets. It may be subclassed by other factories,
which create particular subclasses of sockets and thus provide a general
framework for the addition of public socket-level functionality.

Socket factories are a simple way to capture a variety of policies
related to the sockets being constructed, producing such sockets in
a way which does not require special configuration of the code which
asks for the sockets:

* Due to polymorphism of both factories and sockets, different
  kinds of sockets can be used by the same application code just
  by passing it different kinds of factories.* Factories can themselves be customized with parameters used
    in socket construction. So for example, factories could be
    customized to return sockets with different networking timeouts
    or security parameters already configured.* The sockets returned to the application can be subclasses
      of java.net.Socket, so that they can directly expose new APIs
      for features such as compression, security, record marking,
      statistics collection, or firewall tunneling.

Factory classes are specified by environment-specific configuration
mechanisms. For example, the *getDefault* method could return
a factory that was appropriate for a particular user or applet, and a
framework could use a factory customized to its own purposes.

Since:
:   1.4

See Also:
:   * [`ServerSocketFactory`](ServerSocketFactory.md "class in javax.net")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SocketFactory()`

  Creates a `SocketFactory`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Socket`

  `createSocket()`

  Creates an unconnected socket.

  `abstract Socket`

  `createSocket(String host,
  int port)`

  Creates a socket and connects it to the specified remote host
  at the specified remote port.

  `abstract Socket`

  `createSocket(String host,
  int port,
  InetAddress localHost,
  int localPort)`

  Creates a socket and connects it to the specified remote host
  on the specified remote port.

  `abstract Socket`

  `createSocket(InetAddress host,
  int port)`

  Creates a socket and connects it to the specified port number
  at the specified address.

  `abstract Socket`

  `createSocket(InetAddress address,
  int port,
  InetAddress localAddress,
  int localPort)`

  Creates a socket and connect it to the specified remote address
  on the specified remote port.

  `static SocketFactory`

  `getDefault()`

  Returns a copy of the environment's default socket factory.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SocketFactory

    protected SocketFactory()

    Creates a `SocketFactory`.
* ## Method Details

  + ### getDefault

    public static [SocketFactory](SocketFactory.md "class in javax.net") getDefault()

    Returns a copy of the environment's default socket factory.

    Returns:
    :   the default `SocketFactory`
  + ### createSocket

    public [Socket](../../java/net/Socket.md "class in java.net") createSocket()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Creates an unconnected socket.

    Returns:
    :   the unconnected socket

    Throws:
    :   `IOException` - if the socket cannot be created

    See Also:
    :   - [`Socket.connect(java.net.SocketAddress)`](../../java/net/Socket.md#connect(java.net.SocketAddress))
        - [`Socket.connect(java.net.SocketAddress, int)`](../../java/net/Socket.md#connect(java.net.SocketAddress,int))
        - [`Socket()`](../../java/net/Socket.md#%3Cinit%3E())
  + ### createSocket

    public abstract [Socket](../../java/net/Socket.md "class in java.net") createSocket([String](../../java/lang/String.md "class in java.lang") host,
    int port)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [UnknownHostException](../../java/net/UnknownHostException.md "class in java.net")

    Creates a socket and connects it to the specified remote host
    at the specified remote port. This socket is configured using
    the socket options established for this factory.

    If there is a security manager, its `checkConnect`
    method is called with the host address and `port`
    as its arguments. This could result in a SecurityException.

    Parameters:
    :   `host` - the server host name with which to connect, or
        `null` for the loopback address.
    :   `port` - the server port

    Returns:
    :   the `Socket`

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `SecurityException` - if a security manager exists and its
        `checkConnect` method doesn't allow the operation.
    :   `UnknownHostException` - if the host is not known
    :   `IllegalArgumentException` - if the port parameter is outside the
        specified range of valid port values, which is between 0 and
        65535, inclusive.

    See Also:
    :   - [`SecurityManager.checkConnect(java.lang.String, int)`](../../java/lang/SecurityManager.md#checkConnect(java.lang.String,int))
        - [`Socket(String, int)`](../../java/net/Socket.md#%3Cinit%3E(java.lang.String,int))
  + ### createSocket

    public abstract [Socket](../../java/net/Socket.md "class in java.net") createSocket([String](../../java/lang/String.md "class in java.lang") host,
    int port,
    [InetAddress](../../java/net/InetAddress.md "class in java.net") localHost,
    int localPort)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [UnknownHostException](../../java/net/UnknownHostException.md "class in java.net")

    Creates a socket and connects it to the specified remote host
    on the specified remote port.
    The socket will also be bound to the local address and port supplied.
    This socket is configured using
    the socket options established for this factory.

    If there is a security manager, its `checkConnect`
    method is called with the host address and `port`
    as its arguments. This could result in a SecurityException.

    Parameters:
    :   `host` - the server host name with which to connect, or
        `null` for the loopback address.
    :   `port` - the server port
    :   `localHost` - the local address the socket is bound to
    :   `localPort` - the local port the socket is bound to

    Returns:
    :   the `Socket`

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `SecurityException` - if a security manager exists and its
        `checkConnect` method doesn't allow the operation.
    :   `UnknownHostException` - if the host is not known
    :   `IllegalArgumentException` - if the port parameter or localPort
        parameter is outside the specified range of valid port values,
        which is between 0 and 65535, inclusive.

    See Also:
    :   - [`SecurityManager.checkConnect(java.lang.String, int)`](../../java/lang/SecurityManager.md#checkConnect(java.lang.String,int))
        - [`Socket(String, int, java.net.InetAddress, int)`](../../java/net/Socket.md#%3Cinit%3E(java.lang.String,int,java.net.InetAddress,int))
  + ### createSocket

    public abstract [Socket](../../java/net/Socket.md "class in java.net") createSocket([InetAddress](../../java/net/InetAddress.md "class in java.net") host,
    int port)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Creates a socket and connects it to the specified port number
    at the specified address. This socket is configured using
    the socket options established for this factory.

    If there is a security manager, its `checkConnect`
    method is called with the host address and `port`
    as its arguments. This could result in a SecurityException.

    Parameters:
    :   `host` - the server host
    :   `port` - the server port

    Returns:
    :   the `Socket`

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `SecurityException` - if a security manager exists and its
        `checkConnect` method doesn't allow the operation.
    :   `IllegalArgumentException` - if the port parameter is outside the
        specified range of valid port values, which is between 0 and
        65535, inclusive.
    :   `NullPointerException` - if `host` is null.

    See Also:
    :   - [`SecurityManager.checkConnect(java.lang.String, int)`](../../java/lang/SecurityManager.md#checkConnect(java.lang.String,int))
        - [`Socket(java.net.InetAddress, int)`](../../java/net/Socket.md#%3Cinit%3E(java.net.InetAddress,int))
  + ### createSocket

    public abstract [Socket](../../java/net/Socket.md "class in java.net") createSocket([InetAddress](../../java/net/InetAddress.md "class in java.net") address,
    int port,
    [InetAddress](../../java/net/InetAddress.md "class in java.net") localAddress,
    int localPort)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Creates a socket and connect it to the specified remote address
    on the specified remote port. The socket will also be bound
    to the local address and port supplied. The socket is configured using
    the socket options established for this factory.

    If there is a security manager, its `checkConnect`
    method is called with the host address and `port`
    as its arguments. This could result in a SecurityException.

    Parameters:
    :   `address` - the server network address
    :   `port` - the server port
    :   `localAddress` - the client network address
    :   `localPort` - the client port

    Returns:
    :   the `Socket`

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `SecurityException` - if a security manager exists and its
        `checkConnect` method doesn't allow the operation.
    :   `IllegalArgumentException` - if the port parameter or localPort
        parameter is outside the specified range of valid port values,
        which is between 0 and 65535, inclusive.
    :   `NullPointerException` - if `address` is null.

    See Also:
    :   - [`SecurityManager.checkConnect(java.lang.String, int)`](../../java/lang/SecurityManager.md#checkConnect(java.lang.String,int))
        - [`Socket(java.net.InetAddress, int, java.net.InetAddress, int)`](../../java/net/Socket.md#%3Cinit%3E(java.net.InetAddress,int,java.net.InetAddress,int))