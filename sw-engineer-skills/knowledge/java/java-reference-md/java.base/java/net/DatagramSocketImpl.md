Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class DatagramSocketImpl

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.DatagramSocketImpl

All Implemented Interfaces:
:   `SocketOptions`

---

public abstract class DatagramSocketImpl
extends [Object](../lang/Object.md "class in java.lang")
implements [SocketOptions](SocketOptions.md "interface in java.net")

Abstract datagram and multicast socket implementation base class.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected FileDescriptor`

  `fd`

  The file descriptor object.

  `protected int`

  `localPort`

  The local port number.

  ### Fields inherited from interface java.net.[SocketOptions](SocketOptions.md "interface in java.net")

  `IP_MULTICAST_IF, IP_MULTICAST_IF2, IP_MULTICAST_LOOP, IP_TOS, SO_BINDADDR, SO_BROADCAST, SO_KEEPALIVE, SO_LINGER, SO_OOBINLINE, SO_RCVBUF, SO_REUSEADDR, SO_REUSEPORT, SO_SNDBUF, SO_TIMEOUT, TCP_NODELAY`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DatagramSocketImpl()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected abstract void`

  `bind(int lport,
  InetAddress laddr)`

  Binds a datagram socket to a local port and address.

  `protected abstract void`

  `close()`

  Close the socket.

  `protected void`

  `connect(InetAddress address,
  int port)`

  Connects a datagram socket to a remote destination.

  `protected abstract void`

  `create()`

  Creates a datagram socket.

  `protected void`

  `disconnect()`

  Disconnects a datagram socket from its remote destination.

  `protected FileDescriptor`

  `getFileDescriptor()`

  Gets the datagram socket file descriptor.

  `protected int`

  `getLocalPort()`

  Gets the local port.

  `protected <T> T`

  `getOption(SocketOption<T> name)`

  Called to get a socket option.

  `protected abstract int`

  `getTimeToLive()`

  Retrieve the TTL (time-to-live) option.

  `protected abstract byte`

  `getTTL()`

  Deprecated.

  use getTimeToLive instead.

  `protected abstract void`

  `join(InetAddress inetaddr)`

  Join the multicast group.

  `protected abstract void`

  `joinGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Join the multicast group.

  `protected abstract void`

  `leave(InetAddress inetaddr)`

  Leave the multicast group.

  `protected abstract void`

  `leaveGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Leave the multicast group.

  `protected abstract int`

  `peek(InetAddress i)`

  Peek at the packet to see who it is from.

  `protected abstract int`

  `peekData(DatagramPacket p)`

  Peek at the packet to see who it is from.

  `protected abstract void`

  `receive(DatagramPacket p)`

  Receive the datagram packet.

  `protected abstract void`

  `send(DatagramPacket p)`

  Sends a datagram packet.

  `protected <T> void`

  `setOption(SocketOption<T> name,
  T value)`

  Called to set a socket option.

  `protected abstract void`

  `setTimeToLive(int ttl)`

  Set the TTL (time-to-live) option.

  `protected abstract void`

  `setTTL(byte ttl)`

  Deprecated.

  use setTimeToLive instead.

  `protected Set<SocketOption<?>>`

  `supportedOptions()`

  Returns a set of SocketOptions supported by this impl
  and by this impl's socket (DatagramSocket or MulticastSocket)

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.net.[SocketOptions](SocketOptions.md "interface in java.net")

  `getOption, setOption`

* ## Field Details

  + ### localPort

    protected int localPort

    The local port number.
  + ### fd

    protected [FileDescriptor](../io/FileDescriptor.md "class in java.io") fd

    The file descriptor object.
* ## Constructor Details

  + ### DatagramSocketImpl

    public DatagramSocketImpl()

    Constructor for subclasses to call.
* ## Method Details

  + ### create

    protected abstract void create()
    throws [SocketException](SocketException.md "class in java.net")

    Creates a datagram socket.

    Throws:
    :   `SocketException` - if there is an error in the
        underlying protocol, such as a TCP error.
  + ### bind

    protected abstract void bind(int lport,
    [InetAddress](InetAddress.md "class in java.net") laddr)
    throws [SocketException](SocketException.md "class in java.net")

    Binds a datagram socket to a local port and address.

    Parameters:
    :   `lport` - the local port
    :   `laddr` - the local address

    Throws:
    :   `SocketException` - if there is an error in the
        underlying protocol, such as a TCP error.
  + ### send

    protected abstract void send([DatagramPacket](DatagramPacket.md "class in java.net") p)
    throws [IOException](../io/IOException.md "class in java.io")

    Sends a datagram packet. The packet contains the data and the
    destination address to send the packet to.

    Parameters:
    :   `p` - the packet to be sent.

    Throws:
    :   `IOException` - if an I/O exception occurs while sending the
        datagram packet.
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no guarantee that
        the exception will be thrown.
  + ### connect

    protected void connect([InetAddress](InetAddress.md "class in java.net") address,
    int port)
    throws [SocketException](SocketException.md "class in java.net")

    Connects a datagram socket to a remote destination. This associates the remote
    address with the local socket so that datagrams may only be sent to this destination
    and received from this destination. This may be overridden to call a native
    system connect.

    If the remote destination to which the socket is connected does not
    exist, or is otherwise unreachable, and if an ICMP destination unreachable
    packet has been received for that address, then a subsequent call to
    send or receive may throw a PortUnreachableException.
    Note, there is no guarantee that the exception will be thrown.

    Parameters:
    :   `address` - the remote InetAddress to connect to
    :   `port` - the remote port number

    Throws:
    :   `SocketException` - may be thrown if the socket cannot be
        connected to the remote destination

    Since:
    :   1.4
  + ### disconnect

    protected void disconnect()

    Disconnects a datagram socket from its remote destination.

    Throws:
    :   `UncheckedIOException` - if disconnect fails or no implementation is provided

    Since:
    :   1.4
  + ### peek

    protected abstract int peek([InetAddress](InetAddress.md "class in java.net") i)
    throws [IOException](../io/IOException.md "class in java.io")

    Peek at the packet to see who it is from. Updates the specified `InetAddress`
    to the address which the packet came from.

    Parameters:
    :   `i` - an InetAddress object

    Returns:
    :   the port number which the packet came from.

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no guarantee that the
        exception will be thrown.
  + ### peekData

    protected abstract int peekData([DatagramPacket](DatagramPacket.md "class in java.net") p)
    throws [IOException](../io/IOException.md "class in java.io")

    Peek at the packet to see who it is from. The data is copied into the specified
    `DatagramPacket`. The data is returned,
    but not consumed, so that a subsequent peekData/receive operation
    will see the same data.

    Parameters:
    :   `p` - the Packet Received.

    Returns:
    :   the port number which the packet came from.

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no guarantee that the
        exception will be thrown.

    Since:
    :   1.4
  + ### receive

    protected abstract void receive([DatagramPacket](DatagramPacket.md "class in java.net") p)
    throws [IOException](../io/IOException.md "class in java.io")

    Receive the datagram packet.

    Parameters:
    :   `p` - the Packet Received.

    Throws:
    :   `IOException` - if an I/O exception occurs
        while receiving the datagram packet.
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no guarantee that the
        exception will be thrown.
  + ### setTTL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    protected abstract void setTTL(byte ttl)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    use setTimeToLive instead.

    Set the TTL (time-to-live) option.

    Parameters:
    :   `ttl` - a byte specifying the TTL value

    Throws:
    :   `IOException` - if an I/O exception occurs while setting
        the time-to-live option.

    See Also:
    :   - [`getTTL()`](#getTTL())
  + ### getTTL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    protected abstract byte getTTL()
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    use getTimeToLive instead.

    Retrieve the TTL (time-to-live) option.

    Returns:
    :   a byte representing the TTL value

    Throws:
    :   `IOException` - if an I/O exception occurs
        while retrieving the time-to-live option

    See Also:
    :   - [`setTTL(byte)`](#setTTL(byte))
  + ### setTimeToLive

    protected abstract void setTimeToLive(int ttl)
    throws [IOException](../io/IOException.md "class in java.io")

    Set the TTL (time-to-live) option.

    Parameters:
    :   `ttl` - an `int` specifying the time-to-live value

    Throws:
    :   `IOException` - if an I/O exception occurs
        while setting the time-to-live option.

    See Also:
    :   - [`getTimeToLive()`](#getTimeToLive())
  + ### getTimeToLive

    protected abstract int getTimeToLive()
    throws [IOException](../io/IOException.md "class in java.io")

    Retrieve the TTL (time-to-live) option.

    Returns:
    :   an `int` representing the time-to-live value

    Throws:
    :   `IOException` - if an I/O exception occurs
        while retrieving the time-to-live option

    See Also:
    :   - [`setTimeToLive(int)`](#setTimeToLive(int))
  + ### join

    protected abstract void join([InetAddress](InetAddress.md "class in java.net") inetaddr)
    throws [IOException](../io/IOException.md "class in java.io")

    Join the multicast group.

    Parameters:
    :   `inetaddr` - multicast address to join.

    Throws:
    :   `IOException` - if an I/O exception occurs
        while joining the multicast group.
  + ### leave

    protected abstract void leave([InetAddress](InetAddress.md "class in java.net") inetaddr)
    throws [IOException](../io/IOException.md "class in java.io")

    Leave the multicast group.

    Parameters:
    :   `inetaddr` - multicast address to leave.

    Throws:
    :   `IOException` - if an I/O exception occurs
        while leaving the multicast group.
  + ### joinGroup

    protected abstract void joinGroup([SocketAddress](SocketAddress.md "class in java.net") mcastaddr,
    [NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [IOException](../io/IOException.md "class in java.io")

    Join the multicast group.

    Parameters:
    :   `mcastaddr` - address to join.
    :   `netIf` - specifies the local interface to receive multicast
        datagram packets

    Throws:
    :   `IOException` - if an I/O exception occurs while joining
        the multicast group

    Since:
    :   1.4
  + ### leaveGroup

    protected abstract void leaveGroup([SocketAddress](SocketAddress.md "class in java.net") mcastaddr,
    [NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [IOException](../io/IOException.md "class in java.io")

    Leave the multicast group.

    Parameters:
    :   `mcastaddr` - address to leave.
    :   `netIf` - specified the local interface to leave the group at

    Throws:
    :   `IOException` - if an I/O exception occurs while leaving
        the multicast group

    Since:
    :   1.4
  + ### close

    protected abstract void close()

    Close the socket.
  + ### getLocalPort

    protected int getLocalPort()

    Gets the local port.

    Returns:
    :   an `int` representing the local port value
  + ### getFileDescriptor

    protected [FileDescriptor](../io/FileDescriptor.md "class in java.io") getFileDescriptor()

    Gets the datagram socket file descriptor.

    Returns:
    :   a `FileDescriptor` object representing the datagram socket
        file descriptor
  + ### setOption

    protected <T> void setOption([SocketOption](SocketOption.md "interface in java.net")<T> name,
    T value)
    throws [IOException](../io/IOException.md "class in java.io")

    Called to set a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option
    :   `value` - The value of the socket option. A value of `null`
        may be valid for some options.

    Throws:
    :   `UnsupportedOperationException` - if the DatagramSocketImpl does not
        support the option
    :   `IllegalArgumentException` - if the value is not valid for
        the option
    :   `IOException` - if an I/O error occurs, or if the socket is closed
    :   `NullPointerException` - if name is `null`

    Since:
    :   9
  + ### getOption

    protected <T> T getOption([SocketOption](SocketOption.md "interface in java.net")<T> name)
    throws [IOException](../io/IOException.md "class in java.io")

    Called to get a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option

    Returns:
    :   the socket option

    Throws:
    :   `UnsupportedOperationException` - if the DatagramSocketImpl does not
        support the option
    :   `IOException` - if an I/O error occurs, or if the socket is closed
    :   `NullPointerException` - if name is `null`

    Since:
    :   9
  + ### supportedOptions

    protected [Set](../util/Set.md "interface in java.util")<[SocketOption](SocketOption.md "interface in java.net")<?>> supportedOptions()

    Returns a set of SocketOptions supported by this impl
    and by this impl's socket (DatagramSocket or MulticastSocket)

    Returns:
    :   a Set of SocketOptions

    Since:
    :   9