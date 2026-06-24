Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class ServerSocketChannel

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.nio.channels.spi.AbstractInterruptibleChannel](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

[java.nio.channels.SelectableChannel](SelectableChannel.md "class in java.nio.channels")

[java.nio.channels.spi.AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")

java.nio.channels.ServerSocketChannel

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Channel`, `InterruptibleChannel`, `NetworkChannel`

---

public abstract class ServerSocketChannel
extends [AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")
implements [NetworkChannel](NetworkChannel.md "interface in java.nio.channels")

A selectable channel for stream-oriented listening sockets.

A server-socket channel is created by invoking one of the `open`
methods of this class. The no-arg [`open`](#open()) method opens a server-socket
channel for an *Internet protocol* socket. The [`open(ProtocolFamily)`](#open(java.net.ProtocolFamily))
method is used to open a server-socket channel for a socket of a specified
protocol family. It is not possible to create a channel for an arbitrary,
pre-existing socket. A newly-created server-socket channel is open but not yet
bound. An attempt to invoke the [`accept`](#accept()) method of an
unbound server-socket channel will cause a [`NotYetBoundException`](NotYetBoundException.md "class in java.nio.channels")
to be thrown. A server-socket channel can be bound by invoking one of the
[`bind`](#bind(java.net.SocketAddress,int)) methods defined by this class.

Socket options are configured using the [`setOption`](#setOption(java.net.SocketOption,T)) method. Server-socket channels for *Internet protocol* sockets
support the following options:
> Socket options
>
> | Option Name | Description |
> | --- | --- |
> | [`SO_RCVBUF`](../../net/StandardSocketOptions.md#SO_RCVBUF) | The size of the socket receive buffer |
> | [`SO_REUSEADDR`](../../net/StandardSocketOptions.md#SO_REUSEADDR) | Re-use address |

Server-socket channels for *Unix domain* sockets support:
> Socket options
>
> | Option Name | Description |
> | --- | --- |
> | [`SO_RCVBUF`](../../net/StandardSocketOptions.md#SO_RCVBUF) | The size of the socket receive buffer |

Additional (implementation specific) options may also be supported.

Server-socket channels are safe for use by multiple concurrent threads.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ServerSocketChannel(SelectorProvider provider)`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract SocketChannel`

  `accept()`

  Accepts a connection made to this channel's socket.

  `final ServerSocketChannel`

  `bind(SocketAddress local)`

  Binds the channel's socket to a local address and configures the socket
  to listen for connections.

  `abstract ServerSocketChannel`

  `bind(SocketAddress local,
  int backlog)`

  Binds the channel's socket to a local address and configures the socket to
  listen for connections.

  `abstract SocketAddress`

  `getLocalAddress()`

  Returns the socket address that this channel's socket is bound to.

  `static ServerSocketChannel`

  `open()`

  Opens a server-socket channel for an *Internet protocol* socket.

  `static ServerSocketChannel`

  `open(ProtocolFamily family)`

  Opens a server-socket channel.

  `abstract <T> ServerSocketChannel`

  `setOption(SocketOption<T> name,
  T value)`

  Sets the value of a socket option.

  `abstract ServerSocket`

  `socket()`

  Retrieves a server socket associated with this channel.

  `final int`

  `validOps()`

  Returns an operation set identifying this channel's supported
  operations.

  ### Methods inherited from class java.nio.channels.spi.[AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")

  `blockingLock, configureBlocking, implCloseChannel, implCloseSelectableChannel, implConfigureBlocking, isBlocking, isRegistered, keyFor, provider, register`

  ### Methods inherited from class java.nio.channels.[SelectableChannel](SelectableChannel.md "class in java.nio.channels")

  `register`

  ### Methods inherited from class java.nio.channels.spi.[AbstractInterruptibleChannel](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

  `begin, close, end, isOpen`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `isOpen`

  ### Methods inherited from interface java.nio.channels.[NetworkChannel](NetworkChannel.md "interface in java.nio.channels")

  `getOption, supportedOptions`

* ## Constructor Details

  + ### ServerSocketChannel

    protected ServerSocketChannel([SelectorProvider](spi/SelectorProvider.md "class in java.nio.channels.spi") provider)

    Initializes a new instance of this class.

    Parameters:
    :   `provider` - The provider that created this channel
* ## Method Details

  + ### open

    public static [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels") open()
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a server-socket channel for an *Internet protocol* socket.

    The new channel is created by invoking the [`openServerSocketChannel`](spi/SelectorProvider.md#openServerSocketChannel()) method of the system-wide default [`SelectorProvider`](spi/SelectorProvider.md "class in java.nio.channels.spi") object.

    The new channel's socket is initially unbound; it must be bound to a
    specific address via one of its socket's [`bind`](../../net/ServerSocket.md#bind(java.net.SocketAddress)) methods before
    connections can be accepted.

    Returns:
    :   A new socket channel

    Throws:
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [java.net.preferIPv4Stack](../../net/doc-files/net-properties.md#Ipv4IPv6) system property
  + ### open

    public static [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels") open([ProtocolFamily](../../net/ProtocolFamily.md "interface in java.net") family)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a server-socket channel. The `family` parameter specifies the
    [`protocol family`](../../net/ProtocolFamily.md "interface in java.net") of the channel's socket.

    The new channel is created by invoking the [`openServerSocketChannel(ProtocolFamily)`](spi/SelectorProvider.md#openServerSocketChannel(java.net.ProtocolFamily)) method of the system-wide default [`SelectorProvider`](spi/SelectorProvider.md "class in java.nio.channels.spi") object.

    Parameters:
    :   `family` - The protocol family

    Returns:
    :   A new socket channel

    Throws:
    :   `UnsupportedOperationException` - If the specified protocol family is not supported. For example,
        suppose the parameter is specified as [`StandardProtocolFamily.INET6`](../../net/StandardProtocolFamily.md#INET6)
        but IPv6 is not enabled on the platform.
    :   `IOException` - If an I/O error occurs

    Since:
    :   15

    See Also:
    :   - [java.net.preferIPv4Stack](../../net/doc-files/net-properties.md#Ipv4IPv6) system property
  + ### validOps

    public final int validOps()

    Returns an operation set identifying this channel's supported
    operations.

    Server-socket channels only support the accepting of new
    connections, so this method returns [`SelectionKey.OP_ACCEPT`](SelectionKey.md#OP_ACCEPT).

    Specified by:
    :   `validOps` in class `SelectableChannel`

    Returns:
    :   The valid-operation set
  + ### bind

    public final [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels") bind([SocketAddress](../../net/SocketAddress.md "class in java.net") local)
    throws [IOException](../../io/IOException.md "class in java.io")

    Binds the channel's socket to a local address and configures the socket
    to listen for connections.

    An invocation of this method is equivalent to the following:

    Copy![Copy snippet](../../../../copy.svg)

    ```
        bind(local, 0);
    ```

    Specified by:
    :   `bind` in interface `NetworkChannel`

    Parameters:
    :   `local` - The local address to bind the socket, or `null` to bind
        to an automatically assigned socket address

    Returns:
    :   This channel

    Throws:
    :   `AlreadyBoundException` - If the socket is already bound
    :   `UnsupportedAddressTypeException` - If the type of the given address is not supported
    :   `ClosedChannelException` - If the channel is closed
    :   `IOException` - If some other I/O error occurs
    :   `SecurityException` - If a security manager has been installed and it denies the
        operation

    Since:
    :   1.7

    See Also:
    :   - [`NetworkChannel.getLocalAddress()`](NetworkChannel.md#getLocalAddress())
  + ### bind

    public abstract [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels") bind([SocketAddress](../../net/SocketAddress.md "class in java.net") local,
    int backlog)
    throws [IOException](../../io/IOException.md "class in java.io")

    Binds the channel's socket to a local address and configures the socket to
    listen for connections.

    This method is used to establish an association between the socket and
    a local address. For *Internet protocol* sockets, once an association
    is established then the socket remains bound until the channel is closed.

    The `backlog` parameter is the maximum number of pending
    connections on the socket. Its exact semantics are implementation specific.
    In particular, an implementation may impose a maximum length or may choose
    to ignore the parameter altogether. If the `backlog` parameter has
    the value `0`, or a negative value, then an implementation specific
    default is used.

    Parameters:
    :   `local` - The address to bind the socket, or `null` to bind to
        an automatically assigned socket address
    :   `backlog` - The maximum number of pending connections

    Returns:
    :   This channel

    Throws:
    :   `AlreadyBoundException` - If the socket is already bound
    :   `UnsupportedAddressTypeException` - If the type of the given address is not supported
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If some other I/O error occurs
    :   `SecurityException` - If a security manager has been installed and its [`checkListen`](../../lang/SecurityManager.md#checkListen(int)) method denies
        the operation for an *Internet protocol* socket address,
        or for a *Unix domain* socket address if it denies
        [`NetPermission`](../../net/NetPermission.md "class in java.net")`("accessUnixDomainSocket")`.

    Since:
    :   1.7
  + ### setOption

    public abstract <T> [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels") setOption([SocketOption](../../net/SocketOption.md "interface in java.net")<T> name,
    T value)
    throws [IOException](../../io/IOException.md "class in java.io")

    Description copied from interface: `NetworkChannel`

    Sets the value of a socket option.

    Specified by:
    :   `setOption` in interface `NetworkChannel`

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option
    :   `value` - The value of the socket option. A value of `null` may be
        a valid value for some socket options.

    Returns:
    :   This channel

    Throws:
    :   `UnsupportedOperationException` - If the socket option is not supported by this channel
    :   `IllegalArgumentException` - If the value is not a valid value for this socket option
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If an I/O error occurs

    Since:
    :   1.7

    See Also:
    :   - [`StandardSocketOptions`](../../net/StandardSocketOptions.md "class in java.net")
  + ### socket

    public abstract [ServerSocket](../../net/ServerSocket.md "class in java.net") socket()

    Retrieves a server socket associated with this channel.

    The returned object will not declare any public methods that are not
    declared in the [`ServerSocket`](../../net/ServerSocket.md "class in java.net") class.

    Returns:
    :   A server socket associated with this channel

    Throws:
    :   `UnsupportedOperationException` - If the channel's socket is not an *Internet protocol* socket
  + ### accept

    public abstract [SocketChannel](SocketChannel.md "class in java.nio.channels") accept()
    throws [IOException](../../io/IOException.md "class in java.io")

    Accepts a connection made to this channel's socket.

    If this channel is in non-blocking mode then this method will
    immediately return `null` if there are no pending connections.
    Otherwise it will block indefinitely until a new connection is available
    or an I/O error occurs.

    The socket channel returned by this method, if any, will be in
    blocking mode regardless of the blocking mode of this channel.

    If bound to an *Internet protocol* socket address, this method
    performs exactly the same security checks as the [`accept`](../../net/ServerSocket.md#accept()) method of the [`ServerSocket`](../../net/ServerSocket.md "class in java.net")
    class. That is, if a security manager has been installed then for each
    new connection this method verifies that the address and port number
    of the connection's remote endpoint are permitted by the security
    manager's [`checkAccept`](../../lang/SecurityManager.md#checkAccept(java.lang.String,int))
    method. If bound to a *Unix Domain* socket address, this method checks
    [`NetPermission`](../../net/NetPermission.md "class in java.net")`("accessUnixDomainSocket")`.

    Returns:
    :   The socket channel for the new connection,
        or `null` if this channel is in non-blocking mode
        and no connection is available to be accepted

    Throws:
    :   `ClosedChannelException` - If this channel is closed
    :   `AsynchronousCloseException` - If another thread closes this channel
        while the accept operation is in progress
    :   `ClosedByInterruptException` - If another thread interrupts the current thread
        while the accept operation is in progress, thereby
        closing the channel and setting the current thread's
        interrupt status
    :   `NotYetBoundException` - If this channel's socket has not yet been bound
    :   `SecurityException` - If a security manager has been installed and this
        channel is bound to an [`InetSocketAddress`](../../net/InetSocketAddress.md "class in java.net")
        and the security manager denies access to the remote endpoint
        of the new connection, or if this channel is bound to a
        [`UnixDomainSocketAddress`](../../net/UnixDomainSocketAddress.md "class in java.net") and the security manager
        denies [`NetPermission`](../../net/NetPermission.md "class in java.net")`("accessUnixDomainSocket")`
    :   `IOException` - If some other I/O error occurs
  + ### getLocalAddress

    public abstract [SocketAddress](../../net/SocketAddress.md "class in java.net") getLocalAddress()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns the socket address that this channel's socket is bound to.

    Where the channel is [`bound`](NetworkChannel.md#bind(java.net.SocketAddress)) to an Internet Protocol
    socket address then the return value from this method is of type [`InetSocketAddress`](../../net/InetSocketAddress.md "class in java.net").
    If there is a security manager set, its `checkConnect` method is
    called with the local address and `-1` as its arguments to see
    if the operation is allowed. If the operation is not allowed,
    a `SocketAddress` representing the
    [`loopback`](../../net/InetAddress.md#getLoopbackAddress()) address and the
    local port of the channel's socket is returned.

    Where the channel is bound to a *Unix Domain* socket address, the socket
    address is a [`UnixDomainSocketAddress`](../../net/UnixDomainSocketAddress.md "class in java.net"). If there is a security manager
    set, its [`checkPermission`](../../lang/SecurityManager.md#checkPermission(java.security.Permission)) method is called with [`NetPermission`](../../net/NetPermission.md "class in java.net")`("accessUnixDomainSocket")`. If the operation is not allowed an unnamed
    [`UnixDomainSocketAddress`](../../net/UnixDomainSocketAddress.md "class in java.net") is returned.

    Specified by:
    :   `getLocalAddress` in interface `NetworkChannel`

    Returns:
    :   The `SocketAddress` that the socket is bound to, or the
        `SocketAddress` representing the loopback address or empty
        path if denied by the security manager, or `null` if the
        channel's socket is not bound

    Throws:
    :   `ClosedChannelException` - If the channel is closed
    :   `IOException` - If an I/O error occurs