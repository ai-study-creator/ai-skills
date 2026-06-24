Module [java.base](../../module-summary.md)

Package [javax.net](package-summary.md)

# Class ServerSocketFactory

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.net.ServerSocketFactory

Direct Known Subclasses:
:   `SSLServerSocketFactory`

---

public abstract class ServerSocketFactory
extends [Object](../../java/lang/Object.md "class in java.lang")

This class creates server sockets. It may be subclassed by other
factories, which create particular types of server sockets. This
provides a general framework for the addition of public socket-level
functionality. It is the server side analogue of a socket factory,
and similarly provides a way to capture a variety of policies related
to the sockets being constructed.

Like socket factories, server Socket factory instances have
methods used to create sockets. There is also an environment
specific default server socket factory; frameworks will often use
their own customized factory.

Since:
:   1.4

See Also:
:   * [`SocketFactory`](SocketFactory.md "class in javax.net")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ServerSocketFactory()`

  Creates a server socket factory.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ServerSocket`

  `createServerSocket()`

  Returns an unbound server socket.

  `abstract ServerSocket`

  `createServerSocket(int port)`

  Returns a server socket bound to the specified port.

  `abstract ServerSocket`

  `createServerSocket(int port,
  int backlog)`

  Returns a server socket bound to the specified port, and uses the
  specified connection backlog.

  `abstract ServerSocket`

  `createServerSocket(int port,
  int backlog,
  InetAddress ifAddress)`

  Returns a server socket bound to the specified port,
  with a specified listen backlog and local IP.

  `static ServerSocketFactory`

  `getDefault()`

  Returns a copy of the environment's default socket factory.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ServerSocketFactory

    protected ServerSocketFactory()

    Creates a server socket factory.
* ## Method Details

  + ### getDefault

    public static [ServerSocketFactory](ServerSocketFactory.md "class in javax.net") getDefault()

    Returns a copy of the environment's default socket factory.

    Returns:
    :   the `ServerSocketFactory`
  + ### createServerSocket

    public [ServerSocket](../../java/net/ServerSocket.md "class in java.net") createServerSocket()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns an unbound server socket. The socket is configured with
    the socket options (such as accept timeout) given to this factory.

    Returns:
    :   the unbound socket

    Throws:
    :   `IOException` - if the socket cannot be created

    See Also:
    :   - [`ServerSocket.bind(java.net.SocketAddress)`](../../java/net/ServerSocket.md#bind(java.net.SocketAddress))
        - [`ServerSocket.bind(java.net.SocketAddress, int)`](../../java/net/ServerSocket.md#bind(java.net.SocketAddress,int))
        - [`ServerSocket()`](../../java/net/ServerSocket.md#%3Cinit%3E())
  + ### createServerSocket

    public abstract [ServerSocket](../../java/net/ServerSocket.md "class in java.net") createServerSocket(int port)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns a server socket bound to the specified port.
    The socket is configured with the socket options
    (such as accept timeout) given to this factory.

    If there is a security manager, its `checkListen`
    method is called with the `port` argument as its
    argument to ensure the operation is allowed. This could result
    in a SecurityException.

    Parameters:
    :   `port` - the port to listen to

    Returns:
    :   the `ServerSocket`

    Throws:
    :   `IOException` - for networking errors
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if the port parameter is outside the
        specified range of valid port values, which is between 0 and
        65535, inclusive.

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../../java/lang/SecurityManager.md#checkListen(int))
        - [`ServerSocket(int)`](../../java/net/ServerSocket.md#%3Cinit%3E(int))
  + ### createServerSocket

    public abstract [ServerSocket](../../java/net/ServerSocket.md "class in java.net") createServerSocket(int port,
    int backlog)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns a server socket bound to the specified port, and uses the
    specified connection backlog. The socket is configured with
    the socket options (such as accept timeout) given to this factory.

    The `backlog` argument must be a positive
    value greater than 0. If the value passed if equal or less
    than 0, then the default value will be assumed.

    If there is a security manager, its `checkListen`
    method is called with the `port` argument as its
    argument to ensure the operation is allowed. This could result
    in a SecurityException.

    Parameters:
    :   `port` - the port to listen to
    :   `backlog` - how many connections are queued

    Returns:
    :   the `ServerSocket`

    Throws:
    :   `IOException` - for networking errors
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if the port parameter is outside the
        specified range of valid port values, which is between 0 and
        65535, inclusive.

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../../java/lang/SecurityManager.md#checkListen(int))
        - [`ServerSocket(int, int)`](../../java/net/ServerSocket.md#%3Cinit%3E(int,int))
  + ### createServerSocket

    public abstract [ServerSocket](../../java/net/ServerSocket.md "class in java.net") createServerSocket(int port,
    int backlog,
    [InetAddress](../../java/net/InetAddress.md "class in java.net") ifAddress)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns a server socket bound to the specified port,
    with a specified listen backlog and local IP.

    The `ifAddress` argument can be used on a multi-homed
    host for a `ServerSocket` that will only accept connect
    requests to one of its addresses. If `ifAddress` is null,
    it will accept connections on all local addresses. The socket is
    configured with the socket options (such as accept timeout) given
    to this factory.

    The `backlog` argument must be a positive
    value greater than 0. If the value passed if equal or less
    than 0, then the default value will be assumed.

    If there is a security manager, its `checkListen`
    method is called with the `port` argument as its
    argument to ensure the operation is allowed. This could result
    in a SecurityException.

    Parameters:
    :   `port` - the port to listen to
    :   `backlog` - how many connections are queued
    :   `ifAddress` - the network interface address to use

    Returns:
    :   the `ServerSocket`

    Throws:
    :   `IOException` - for networking errors
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if the port parameter is outside the
        specified range of valid port values, which is between 0 and
        65535, inclusive.

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../../java/lang/SecurityManager.md#checkListen(int))
        - [`ServerSocket(int, int, java.net.InetAddress)`](../../java/net/ServerSocket.md#%3Cinit%3E(int,int,java.net.InetAddress))