Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface NetworkChannel

All Superinterfaces:
:   `AutoCloseable`, `Channel`, `Closeable`

All Known Subinterfaces:
:   `MulticastChannel`

All Known Implementing Classes:
:   `AsynchronousServerSocketChannel`, `AsynchronousSocketChannel`, `DatagramChannel`, `ServerSocketChannel`, `SocketChannel`

---

public interface NetworkChannel
extends [Channel](Channel.md "interface in java.nio.channels")

A channel to a network socket.

A channel that implements this interface is a channel to a network
socket. The [`bind`](#bind(java.net.SocketAddress)) method is used to bind the
socket to a local [`address`](../../net/SocketAddress.md "class in java.net"), the [`getLocalAddress`](#getLocalAddress()) method returns the address that the socket is bound to, and
the [`setOption`](#setOption(java.net.SocketOption,T)) and [`getOption`](#getOption(java.net.SocketOption)) methods are used to set and query socket
options. An implementation of this interface should specify the socket options
that it supports.

The [`bind`](#bind(java.net.SocketAddress)) and [`setOption`](#setOption(java.net.SocketOption,T)) methods that do
not otherwise have a value to return are specified to return the network
channel upon which they are invoked. This allows method invocations to be
chained. Implementations of this interface should specialize the return type
so that method invocations on the implementation class can be chained.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `NetworkChannel`

  `bind(SocketAddress local)`

  Binds the channel's socket to a local address.

  `SocketAddress`

  `getLocalAddress()`

  Returns the socket address that this channel's socket is bound to.

  `<T> T`

  `getOption(SocketOption<T> name)`

  Returns the value of a socket option.

  `<T> NetworkChannel`

  `setOption(SocketOption<T> name,
  T value)`

  Sets the value of a socket option.

  `Set<SocketOption<?>>`

  `supportedOptions()`

  Returns a set of the socket options supported by this channel.

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `close, isOpen`

* ## Method Details

  + ### bind

    [NetworkChannel](NetworkChannel.md "interface in java.nio.channels") bind([SocketAddress](../../net/SocketAddress.md "class in java.net") local)
    throws [IOException](../../io/IOException.md "class in java.io")

    Binds the channel's socket to a local address.

    This method is used to establish an association between the socket and
    a local address. Once an association is established then the socket remains
    bound until the channel is closed. If the `local` parameter has the
    value `null` then the socket will be bound to an address that is
    assigned automatically.

    Parameters:
    :   `local` - The address to bind the socket, or `null` to bind the socket
        to an automatically assigned socket address

    Returns:
    :   This channel

    Throws:
    :   `AlreadyBoundException` - If the socket is already bound
    :   `UnsupportedAddressTypeException` - If the type of the given address is not supported
    :   `ClosedChannelException` - If the channel is closed
    :   `IOException` - If some other I/O error occurs
    :   `SecurityException` - If a security manager is installed and it denies an unspecified
        permission. An implementation of this interface should specify
        any required permissions.

    See Also:
    :   - [`getLocalAddress()`](#getLocalAddress())
  + ### getLocalAddress

    [SocketAddress](../../net/SocketAddress.md "class in java.net") getLocalAddress()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns the socket address that this channel's socket is bound to.

    Where the channel is [`bound`](#bind(java.net.SocketAddress)) to an Internet Protocol
    socket address then the return value from this method is of type [`InetSocketAddress`](../../net/InetSocketAddress.md "class in java.net").

    Returns:
    :   The socket address that the socket is bound to, or `null`
        if the channel's socket is not bound

    Throws:
    :   `ClosedChannelException` - If the channel is closed
    :   `IOException` - If an I/O error occurs
  + ### setOption

    <T> [NetworkChannel](NetworkChannel.md "interface in java.nio.channels") setOption([SocketOption](../../net/SocketOption.md "interface in java.net")<T> name,
    T value)
    throws [IOException](../../io/IOException.md "class in java.io")

    Sets the value of a socket option.

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

    See Also:
    :   - [`StandardSocketOptions`](../../net/StandardSocketOptions.md "class in java.net")
  + ### getOption

    <T> T getOption([SocketOption](../../net/SocketOption.md "interface in java.net")<T> name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns the value of a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option

    Returns:
    :   The value of the socket option. A value of `null` may be
        a valid value for some socket options.

    Throws:
    :   `UnsupportedOperationException` - If the socket option is not supported by this channel
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`StandardSocketOptions`](../../net/StandardSocketOptions.md "class in java.net")
  + ### supportedOptions

    [Set](../../util/Set.md "interface in java.util")<[SocketOption](../../net/SocketOption.md "interface in java.net")<?>> supportedOptions()

    Returns a set of the socket options supported by this channel.

    This method will continue to return the set of options even after the
    channel has been closed.

    Returns:
    :   A set of the socket options supported by this channel