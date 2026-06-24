Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class DatagramSocket

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.DatagramSocket

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

Direct Known Subclasses:
:   `MulticastSocket`

---

public class DatagramSocket
extends [Object](../lang/Object.md "class in java.lang")
implements [Closeable](../io/Closeable.md "interface in java.io")

This class represents a socket for sending and receiving datagram packets.

A datagram socket is the sending or receiving point for a packet
delivery service. Each packet sent or received on a datagram socket
is individually addressed and routed. Multiple packets sent from
one machine to another may be routed differently, and may arrive in
any order.

Where possible, a newly constructed `DatagramSocket` has the
[`SO_BROADCAST`](StandardSocketOptions.md#SO_BROADCAST) socket option enabled so as
to allow the transmission of broadcast datagrams. In order to receive
broadcast packets a DatagramSocket should be bound to the wildcard address.
In some implementations, broadcast packets may also be received when
a DatagramSocket is bound to a more specific address.

Example:

```
              DatagramSocket s = new DatagramSocket(null);
              s.bind(new InetSocketAddress(8888));
```

Which is equivalent to:

```
              DatagramSocket s = new DatagramSocket(8888);
```

Both cases will create a DatagramSocket able to receive broadcasts on
UDP port 8888.

The `DatagramSocket` class defines convenience
methods to set and get several socket options. This class also
defines the [`setOption`](#setOption(java.net.SocketOption,T))
and [`getOption`](#getOption(java.net.SocketOption)) methods to set
and query socket options.
A `DatagramSocket` supports the following socket options:
> Socket options
>
> | Option Name | Description |
> | --- | --- |
> | [`SO_SNDBUF`](StandardSocketOptions.md#SO_SNDBUF) | The size of the socket send buffer in bytes |
> | [`SO_RCVBUF`](StandardSocketOptions.md#SO_RCVBUF) | The size of the socket receive buffer in bytes |
> | [`SO_REUSEADDR`](StandardSocketOptions.md#SO_REUSEADDR) | Re-use address |
> | [`SO_BROADCAST`](StandardSocketOptions.md#SO_BROADCAST) | Allow transmission of broadcast datagrams |
> | [`IP_TOS`](StandardSocketOptions.md#IP_TOS) | The Type of Service (ToS) octet in the Internet Protocol (IP) header |

In addition, the `DatagramSocket` class defines methods to [join](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface)) and [leave](#leaveGroup(java.net.SocketAddress,java.net.NetworkInterface)) a multicast group, and
supports [multicast options](DatagramSocket.md#MulticastOptions) which
are useful when [joining](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface)),
[leaving](#leaveGroup(java.net.SocketAddress,java.net.NetworkInterface)), or sending datagrams
to a multicast group.
The following multicast options are supported:
> Multicast options
>
> | Option Name | Description |
> | --- | --- |
> | [`IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF) | The network interface for Internet Protocol (IP) multicast datagrams |
> | [`IP_MULTICAST_TTL`](StandardSocketOptions.md#IP_MULTICAST_TTL) | The *time-to-live* for Internet Protocol (IP) multicast datagrams |
> | [`IP_MULTICAST_LOOP`](StandardSocketOptions.md#IP_MULTICAST_LOOP) | Loopback for Internet Protocol (IP) multicast datagrams |

An implementation may also support additional options.

Since:
:   1.0

See Also:
:   * [`DatagramPacket`](DatagramPacket.md "class in java.net")
    * [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `DatagramSocket()`

  Constructs a datagram socket and binds it to any available port
  on the local host machine.

  `DatagramSocket(int port)`

  Constructs a datagram socket and binds it to the specified port
  on the local host machine.

  `DatagramSocket(int port,
  InetAddress laddr)`

  Creates a datagram socket, bound to the specified local
  address.

  `protected`

  `DatagramSocket(DatagramSocketImpl impl)`

  Creates an unbound datagram socket with the specified
  DatagramSocketImpl.

  `DatagramSocket(SocketAddress bindaddr)`

  Creates a datagram socket, bound to the specified local
  socket address.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `bind(SocketAddress addr)`

  Binds this DatagramSocket to a specific address and port.

  `void`

  `close()`

  Closes this datagram socket.

  `void`

  `connect(InetAddress address,
  int port)`

  Connects the socket to a remote address for this socket.

  `void`

  `connect(SocketAddress addr)`

  Connects this socket to a remote socket address (IP address + port number).

  `void`

  `disconnect()`

  Disconnects the socket.

  `boolean`

  `getBroadcast()`

  Tests if SO\_BROADCAST is enabled.

  `DatagramChannel`

  `getChannel()`

  Returns the unique [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels") object
  associated with this datagram socket, if any.

  `InetAddress`

  `getInetAddress()`

  Returns the address to which this socket is connected.

  `InetAddress`

  `getLocalAddress()`

  Gets the local address to which the socket is bound.

  `int`

  `getLocalPort()`

  Returns the port number on the local host to which this socket
  is bound.

  `SocketAddress`

  `getLocalSocketAddress()`

  Returns the address of the endpoint this socket is bound to.

  `<T> T`

  `getOption(SocketOption<T> name)`

  Returns the value of a socket option.

  `int`

  `getPort()`

  Returns the port number to which this socket is connected.

  `int`

  `getReceiveBufferSize()`

  Get value of the SO\_RCVBUF option for this `DatagramSocket`, that is the
  buffer size, in bytes, used by the platform for input on this `DatagramSocket`.

  `SocketAddress`

  `getRemoteSocketAddress()`

  Returns the address of the endpoint this socket is connected to, or
  `null` if it is unconnected.

  `boolean`

  `getReuseAddress()`

  Tests if SO\_REUSEADDR is enabled.

  `int`

  `getSendBufferSize()`

  Get value of the SO\_SNDBUF option for this `DatagramSocket`, that is the
  buffer size, in bytes, used by the platform for output on this `DatagramSocket`.

  `int`

  `getSoTimeout()`

  Retrieve setting for SO\_TIMEOUT.

  `int`

  `getTrafficClass()`

  Gets traffic class or type-of-service in the IP datagram
  header for packets sent from this DatagramSocket.

  `boolean`

  `isBound()`

  Returns the binding state of the socket.

  `boolean`

  `isClosed()`

  Returns whether the socket is closed or not.

  `boolean`

  `isConnected()`

  Returns the connection state of the socket.

  `void`

  `joinGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Joins a multicast group.

  `void`

  `leaveGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Leave a multicast group on a specified local interface.

  `void`

  `receive(DatagramPacket p)`

  Receives a datagram packet from this socket.

  `void`

  `send(DatagramPacket p)`

  Sends a datagram packet from this socket.

  `void`

  `setBroadcast(boolean on)`

  Enable/disable SO\_BROADCAST.

  `static void`

  `setDatagramSocketImplFactory(DatagramSocketImplFactory fac)`

  Deprecated.

  Use [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels"), or subclass `DatagramSocket`
  directly.

  `<T> DatagramSocket`

  `setOption(SocketOption<T> name,
  T value)`

  Sets the value of a socket option.

  `void`

  `setReceiveBufferSize(int size)`

  Sets the SO\_RCVBUF option to the specified value for this
  `DatagramSocket`.

  `void`

  `setReuseAddress(boolean on)`

  Enable/disable the SO\_REUSEADDR socket option.

  `void`

  `setSendBufferSize(int size)`

  Sets the SO\_SNDBUF option to the specified value for this
  `DatagramSocket`.

  `void`

  `setSoTimeout(int timeout)`

  Enable/disable SO\_TIMEOUT with the specified timeout, in
  milliseconds.

  `void`

  `setTrafficClass(int tc)`

  Sets traffic class or type-of-service octet in the IP
  datagram header for datagrams sent from this DatagramSocket.

  `Set<SocketOption<?>>`

  `supportedOptions()`

  Returns a set of the socket options supported by this socket.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DatagramSocket

    public DatagramSocket()
    throws [SocketException](SocketException.md "class in java.net")

    Constructs a datagram socket and binds it to any available port
    on the local host machine. The socket will be bound to the
    [`wildcard`](InetAddress.md#isAnyLocalAddress()) address.

    If there is a security manager,
    its `checkListen` method is first called
    with 0 as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    Throws:
    :   `SocketException` - if the socket could not be opened,
        or the socket could not be bound.
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
  + ### DatagramSocket

    protected DatagramSocket([DatagramSocketImpl](DatagramSocketImpl.md "class in java.net") impl)

    Creates an unbound datagram socket with the specified
    DatagramSocketImpl.

    Parameters:
    :   `impl` - an instance of a **DatagramSocketImpl**
        the subclass wishes to use on the DatagramSocket.

    Since:
    :   1.4
  + ### DatagramSocket

    public DatagramSocket([SocketAddress](SocketAddress.md "class in java.net") bindaddr)
    throws [SocketException](SocketException.md "class in java.net")

    Creates a datagram socket, bound to the specified local
    socket address.

    If the address is `null` an unbound socket will be created.

    If there is a security manager,
    its `checkListen` method is first called
    with the port from the socket address
    as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `bindaddr` - local socket address to bind, or `null`
        for an unbound socket.

    Throws:
    :   `SocketException` - if the socket could not be opened,
        or the socket could not bind to the specified local port.
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if bindaddr is a
        SocketAddress subclass not supported by this socket.

    Since:
    :   1.4

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
  + ### DatagramSocket

    public DatagramSocket(int port)
    throws [SocketException](SocketException.md "class in java.net")

    Constructs a datagram socket and binds it to the specified port
    on the local host machine. The socket will be bound to the
    [`wildcard`](InetAddress.md#isAnyLocalAddress()) address.

    If there is a security manager,
    its `checkListen` method is first called
    with the `port` argument
    as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `port` - local port to use in the bind operation.

    Throws:
    :   `SocketException` - if the socket could not be opened,
        or the socket could not bind to the specified local port.
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if port is [out of range.](#PortRange)

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
  + ### DatagramSocket

    public DatagramSocket(int port,
    [InetAddress](InetAddress.md "class in java.net") laddr)
    throws [SocketException](SocketException.md "class in java.net")

    Creates a datagram socket, bound to the specified local
    address.

    The local port must be between 0 and
    65535 inclusive. A port number of `zero` will let the system pick
    up an ephemeral port in a `bind` operation.

    If the IP address is a [`wildcard`](InetAddress.md#isAnyLocalAddress())
    address, or is `null`, the socket will be bound to the wildcard
    address.

    If there is a security manager,
    its `checkListen` method is first called
    with the `port` argument
    as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `port` - local port to use in the bind operation.
    :   `laddr` - local address to bind (can be `null`)

    Throws:
    :   `SocketException` - if the socket could not be opened,
        or the socket could not bind to the specified local port.
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if port is [out of range.](#PortRange)

    Since:
    :   1.1

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
* ## Method Details

  + ### bind

    public void bind([SocketAddress](SocketAddress.md "class in java.net") addr)
    throws [SocketException](SocketException.md "class in java.net")

    Binds this DatagramSocket to a specific address and port.

    If the address is `null`, then the system will pick up
    an ephemeral port and a valid local address to bind the socket.

    Parameters:
    :   `addr` - The address and port to bind to.

    Throws:
    :   `SocketException` - if any error happens during the bind, or if the
        socket is already bound.
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if addr is a SocketAddress subclass
        not supported by this socket.

    Since:
    :   1.4
  + ### connect

    public void connect([InetAddress](InetAddress.md "class in java.net") address,
    int port)

    Connects the socket to a remote address for this socket. When a
    socket is connected to a remote address, packets may only be
    sent to or received from that address. By default a datagram
    socket is not connected. If the socket is already closed,
    then this method has no effect.

    If this socket is not bound then this method will first cause the
    socket to be bound to an address that is assigned automatically,
    as if invoking the [`bind`](#bind(java.net.SocketAddress)) method with a parameter of
    `null`. If the remote destination to which the socket is connected
    does not exist, or is otherwise unreachable, and if an ICMP destination
    unreachable packet has been received for that address, then a subsequent
    call to send or receive may throw a PortUnreachableException. Note,
    there is no guarantee that the exception will be thrown.

    If a security manager has been installed then it is invoked to check
    access to the remote address. Specifically, if the given `address`
    is a [`multicast address`](InetAddress.md#isMulticastAddress()),
    the security manager's [`checkMulticast`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress)) method is invoked with the given `address`.
    Otherwise, the security manager's [`checkConnect`](../lang/SecurityManager.md#checkConnect(java.lang.String,int))
    and [`checkAccept`](../lang/SecurityManager.md#checkAccept(java.lang.String,int)) methods
    are invoked, with the given `address` and `port`, to
    verify that datagrams are permitted to be sent and received
    respectively.

    Care should be taken to ensure that a connected datagram socket
    is not shared with untrusted code. When a socket is connected,
    [`receive`](#receive(java.net.DatagramPacket)) and [`send`](#send(java.net.DatagramPacket)) **will not perform
    any security checks** on incoming and outgoing packets, other than
    matching the packet's and the socket's address and port. On a send
    operation, if the packet's address is set and the packet's address
    and the socket's address do not match, an `IllegalArgumentException`
    will be thrown. A socket connected to a multicast address may only
    be used to send packets. Datagrams in the socket's [socket receive buffer](StandardSocketOptions.md#SO_RCVBUF), which
    have not been [received](#receive(java.net.DatagramPacket)) before invoking
    this method, may be discarded.

    Parameters:
    :   `address` - the remote address for the socket
    :   `port` - the remote port for the socket.

    Throws:
    :   `IllegalArgumentException` - if the address is null, or the port is [out of range.](#PortRange)
    :   `SecurityException` - if a security manager has been installed and it does
        not permit access to the given remote address
    :   `UncheckedIOException` - may be thrown if connect fails, for example, if the
        destination address is non-routable

    Since:
    :   1.2

    See Also:
    :   - [`disconnect()`](#disconnect())
  + ### connect

    public void connect([SocketAddress](SocketAddress.md "class in java.net") addr)
    throws [SocketException](SocketException.md "class in java.net")

    Connects this socket to a remote socket address (IP address + port number).

    If given an [`InetSocketAddress`](InetSocketAddress.md "class in java.net"), this method
    behaves as if invoking [`connect(InetAddress,int)`](#connect(java.net.InetAddress,int))
    with the given socket addresses IP address and port number, except that the
    `SocketException` that may be raised is not wrapped in an
    `UncheckedIOException`. Datagrams in the socket's [socket receive buffer](StandardSocketOptions.md#SO_RCVBUF), which
    have not been [received](#receive(java.net.DatagramPacket)) before invoking
    this method, may be discarded.

    Parameters:
    :   `addr` - The remote address.

    Throws:
    :   `SocketException` - if the connect fails
    :   `IllegalArgumentException` - if `addr` is `null`, or `addr` is a SocketAddress
        subclass not supported by this socket
    :   `SecurityException` - if a security manager has been installed and it does
        not permit access to the given remote address

    Since:
    :   1.4
  + ### disconnect

    public void disconnect()

    Disconnects the socket. If the socket is closed or not connected,
    then this method has no effect.

    Throws:
    :   `UncheckedIOException` - may be thrown if disconnect fails to dissolve the
        association and restore the socket to a consistent state.

    Since:
    :   1.2

    See Also:
    :   - [`connect(java.net.InetAddress, int)`](#connect(java.net.InetAddress,int))
  + ### isBound

    public boolean isBound()

    Returns the binding state of the socket.

    If the socket was bound prior to being [`closed`](#close()),
    then this method will continue to return `true`
    after the socket is closed.

    Returns:
    :   true if the socket successfully bound to an address

    Since:
    :   1.4
  + ### isConnected

    public boolean isConnected()

    Returns the connection state of the socket.

    If the socket was connected prior to being [`closed`](#close()),
    then this method will continue to return `true`
    after the socket is closed.

    Returns:
    :   true if the socket successfully connected to a server

    Since:
    :   1.4
  + ### getInetAddress

    public [InetAddress](InetAddress.md "class in java.net") getInetAddress()

    Returns the address to which this socket is connected. Returns
    `null` if the socket is not connected.

    If the socket was connected prior to being [`closed`](#close()),
    then this method will continue to return the connected address
    after the socket is closed.

    Returns:
    :   the address to which this socket is connected.

    Since:
    :   1.2
  + ### getPort

    public int getPort()

    Returns the port number to which this socket is connected.
    Returns `-1` if the socket is not connected.

    If the socket was connected prior to being [`closed`](#close()),
    then this method will continue to return the connected port number
    after the socket is closed.

    Returns:
    :   the port number to which this socket is connected.

    Since:
    :   1.2
  + ### getRemoteSocketAddress

    public [SocketAddress](SocketAddress.md "class in java.net") getRemoteSocketAddress()

    Returns the address of the endpoint this socket is connected to, or
    `null` if it is unconnected.

    If the socket was connected prior to being [`closed`](#close()),
    then this method will continue to return the connected address
    after the socket is closed.

    Returns:
    :   a `SocketAddress` representing the remote
        endpoint of this socket, or `null` if it is
        not connected yet.

    Since:
    :   1.4

    See Also:
    :   - [`getInetAddress()`](#getInetAddress())
        - [`getPort()`](#getPort())
        - [`connect(SocketAddress)`](#connect(java.net.SocketAddress))
  + ### getLocalSocketAddress

    public [SocketAddress](SocketAddress.md "class in java.net") getLocalSocketAddress()

    Returns the address of the endpoint this socket is bound to.

    Returns:
    :   a `SocketAddress` representing the local endpoint of this
        socket, or `null` if it is closed or not bound yet.

    Since:
    :   1.4

    See Also:
    :   - [`getLocalAddress()`](#getLocalAddress())
        - [`getLocalPort()`](#getLocalPort())
        - [`bind(SocketAddress)`](#bind(java.net.SocketAddress))
  + ### send

    public void send([DatagramPacket](DatagramPacket.md "class in java.net") p)
    throws [IOException](../io/IOException.md "class in java.io")

    Sends a datagram packet from this socket. The
    `DatagramPacket` includes information indicating the
    data to be sent, its length, the IP address of the remote host,
    and the port number on the remote host.

    If there is a security manager, and the socket is not currently
    connected to a remote address, this method first performs some
    security checks. First, if `p.getAddress().isMulticastAddress()`
    is true, this method calls the
    security manager's `checkMulticast` method
    with `p.getAddress()` as its argument.
    If the evaluation of that expression is false,
    this method instead calls the security manager's
    `checkConnect` method with arguments
    `p.getAddress().getHostAddress()` and
    `p.getPort()`. Each call to a security manager method
    could result in a SecurityException if the operation is not allowed.

    Parameters:
    :   `p` - the `DatagramPacket` to be sent.

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` or `checkConnect`
        method doesn't allow the send.
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no
        guarantee that the exception will be thrown.
    :   `IllegalBlockingModeException` - if this socket has an associated channel,
        and the channel is in non-blocking mode.
    :   `IllegalArgumentException` - if the socket is connected,
        and connected address and packet address differ, or
        if the socket is not connected and the packet address
        is not set or if its port is [out of
        range.](#PortRange)

    See Also:
    :   - [`DatagramPacket`](DatagramPacket.md "class in java.net")
        - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        - [`SecurityManager.checkConnect(java.lang.String, int)`](../lang/SecurityManager.md#checkConnect(java.lang.String,int))
  + ### receive

    public void receive([DatagramPacket](DatagramPacket.md "class in java.net") p)
    throws [IOException](../io/IOException.md "class in java.io")

    Receives a datagram packet from this socket. This method blocks until a
    datagram is received.
    When this method returns, the `DatagramPacket`'s buffer is filled
    with the data received. The datagram packet also contains the sender's
    IP address, and the port number on the sender's machine.
    The `length` field of the datagram packet object contains
    the length of the received message. If the message is longer than
    the packet's length, the message is truncated.

    This method is [interruptible](../lang/Thread.md#interrupt()) in the
    following circumstances:
    1. The datagram socket is [associated](../nio/channels/DatagramChannel.md#socket())
       with a [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels"). In that case,
       interrupting a thread receiving a datagram packet will close the
       underlying channel and cause this method to throw [`ClosedByInterruptException`](../nio/channels/ClosedByInterruptException.md "class in java.nio.channels") with the interrupt
       status set.+ The datagram socket uses the system-default socket implementation and
         a [virtual thread](../lang/Thread.md#isVirtual()) is receiving a
         datagram packet. In that case, interrupting the virtual thread will
         cause it to wakeup and close the socket. This method will then throw
         `SocketException` with the interrupt status set.

    If there is a security manager, and the socket is not currently
    connected to a remote address, a packet cannot be received if the
    security manager's `checkAccept` method does not allow it.
    Datagrams that are not permitted by the security manager are silently
    discarded.

    Parameters:
    :   `p` - the `DatagramPacket` into which to place
        the incoming data.

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `SocketTimeoutException` - if setSoTimeout was previously called
        and the timeout has expired.
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no guarantee that the
        exception will be thrown.
    :   `IllegalBlockingModeException` - if this socket has an associated channel,
        and the channel is in non-blocking mode.

    See Also:
    :   - [`DatagramPacket`](DatagramPacket.md "class in java.net")
        - [`DatagramSocket`](DatagramSocket.md "class in java.net")
  + ### getLocalAddress

    public [InetAddress](InetAddress.md "class in java.net") getLocalAddress()

    Gets the local address to which the socket is bound.

    If there is a security manager, its
    `checkConnect` method is first called
    with the host address and `-1`
    as its arguments to see if the operation is allowed.

    Returns:
    :   the local address to which the socket is bound,
        `null` if the socket is closed, or
        an `InetAddress` representing
        [`wildcard`](InetAddress.md#isAnyLocalAddress())
        address if either the socket is not bound, or
        the security manager `checkConnect`
        method does not allow the operation

    Since:
    :   1.1

    See Also:
    :   - [`SecurityManager.checkConnect(java.lang.String, int)`](../lang/SecurityManager.md#checkConnect(java.lang.String,int))
  + ### getLocalPort

    public int getLocalPort()

    Returns the port number on the local host to which this socket
    is bound.

    Returns:
    :   the port number on the local host to which this socket is bound,
        `-1` if the socket is closed, or
        `0` if it is not bound yet.
  + ### setSoTimeout

    public void setSoTimeout(int timeout)
    throws [SocketException](SocketException.md "class in java.net")

    Enable/disable SO\_TIMEOUT with the specified timeout, in
    milliseconds. With this option set to a positive timeout value,
    a call to receive() for this DatagramSocket
    will block for only this amount of time. If the timeout expires,
    a **java.net.SocketTimeoutException** is raised, though the
    DatagramSocket is still valid. A timeout of zero is interpreted
    as an infinite timeout.
    The option **must** be enabled prior to entering the blocking
    operation to have effect.

    Parameters:
    :   `timeout` - the specified timeout in milliseconds.

    Throws:
    :   `SocketException` - if there is an error in the underlying protocol, such as an UDP error.
    :   `IllegalArgumentException` - if `timeout` is negative

    Since:
    :   1.1

    See Also:
    :   - [`getSoTimeout()`](#getSoTimeout())
  + ### getSoTimeout

    public int getSoTimeout()
    throws [SocketException](SocketException.md "class in java.net")

    Retrieve setting for SO\_TIMEOUT. 0 returns implies that the
    option is disabled (i.e., timeout of infinity).

    Returns:
    :   the setting for SO\_TIMEOUT

    Throws:
    :   `SocketException` - if there is an error in the underlying protocol, such as an UDP error.

    Since:
    :   1.1

    See Also:
    :   - [`setSoTimeout(int)`](#setSoTimeout(int))
  + ### setSendBufferSize

    public void setSendBufferSize(int size)
    throws [SocketException](SocketException.md "class in java.net")

    Sets the SO\_SNDBUF option to the specified value for this
    `DatagramSocket`. The SO\_SNDBUF option is used by the
    network implementation as a hint to size the underlying
    network I/O buffers. The SO\_SNDBUF setting may also be used
    by the network implementation to determine the maximum size
    of the packet that can be sent on this socket.

    As SO\_SNDBUF is a hint, applications that want to verify
    what size the buffer is should call [`getSendBufferSize()`](#getSendBufferSize()).

    Increasing the buffer size may allow multiple outgoing packets
    to be queued by the network implementation when the send rate
    is high.

    Note: If [`send(DatagramPacket)`](#send(java.net.DatagramPacket)) is used to send a
    `DatagramPacket` that is larger than the setting
    of SO\_SNDBUF then it is implementation specific if the
    packet is sent or discarded.

    Parameters:
    :   `size` - the size to which to set the send buffer
        size, in bytes. This value must be greater than 0.

    Throws:
    :   `SocketException` - if there is an error
        in the underlying protocol, such as an UDP error.
    :   `IllegalArgumentException` - if the value is 0 or is
        negative.

    Since:
    :   1.2

    See Also:
    :   - [`getSendBufferSize()`](#getSendBufferSize())
        - [`StandardSocketOptions.SO_SNDBUF`](StandardSocketOptions.md#SO_SNDBUF)
  + ### getSendBufferSize

    public int getSendBufferSize()
    throws [SocketException](SocketException.md "class in java.net")

    Get value of the SO\_SNDBUF option for this `DatagramSocket`, that is the
    buffer size, in bytes, used by the platform for output on this `DatagramSocket`.

    Returns:
    :   the value of the SO\_SNDBUF option for this `DatagramSocket`

    Throws:
    :   `SocketException` - if there is an error in
        the underlying protocol, such as an UDP error.

    Since:
    :   1.2

    See Also:
    :   - [`setSendBufferSize(int)`](#setSendBufferSize(int))
        - [`StandardSocketOptions.SO_SNDBUF`](StandardSocketOptions.md#SO_SNDBUF)
  + ### setReceiveBufferSize

    public void setReceiveBufferSize(int size)
    throws [SocketException](SocketException.md "class in java.net")

    Sets the SO\_RCVBUF option to the specified value for this
    `DatagramSocket`. The SO\_RCVBUF option is used by
    the network implementation as a hint to size the underlying
    network I/O buffers. The SO\_RCVBUF setting may also be used
    by the network implementation to determine the maximum size
    of the packet that can be received on this socket.

    Because SO\_RCVBUF is a hint, applications that want to
    verify what size the buffers were set to should call
    [`getReceiveBufferSize()`](#getReceiveBufferSize()).

    Increasing SO\_RCVBUF may allow the network implementation
    to buffer multiple packets when packets arrive faster than
    are being received using [`receive(DatagramPacket)`](#receive(java.net.DatagramPacket)).

    Note: It is implementation specific if a packet larger
    than SO\_RCVBUF can be received.

    Parameters:
    :   `size` - the size to which to set the receive buffer
        size, in bytes. This value must be greater than 0.

    Throws:
    :   `SocketException` - if there is an error in
        the underlying protocol, such as an UDP error.
    :   `IllegalArgumentException` - if the value is 0 or is
        negative.

    Since:
    :   1.2

    See Also:
    :   - [`getReceiveBufferSize()`](#getReceiveBufferSize())
        - [`StandardSocketOptions.SO_RCVBUF`](StandardSocketOptions.md#SO_RCVBUF)
  + ### getReceiveBufferSize

    public int getReceiveBufferSize()
    throws [SocketException](SocketException.md "class in java.net")

    Get value of the SO\_RCVBUF option for this `DatagramSocket`, that is the
    buffer size, in bytes, used by the platform for input on this `DatagramSocket`.

    Returns:
    :   the value of the SO\_RCVBUF option for this `DatagramSocket`

    Throws:
    :   `SocketException` - if there is an error in the underlying protocol, such as an UDP error.

    Since:
    :   1.2

    See Also:
    :   - [`setReceiveBufferSize(int)`](#setReceiveBufferSize(int))
        - [`StandardSocketOptions.SO_RCVBUF`](StandardSocketOptions.md#SO_RCVBUF)
  + ### setReuseAddress

    public void setReuseAddress(boolean on)
    throws [SocketException](SocketException.md "class in java.net")

    Enable/disable the SO\_REUSEADDR socket option.

    For UDP sockets it may be necessary to bind more than one
    socket to the same socket address. This is typically for the
    purpose of receiving multicast packets
    (See [`MulticastSocket`](MulticastSocket.md "class in java.net")). The
    `SO_REUSEADDR` socket option allows multiple
    sockets to be bound to the same socket address if the
    `SO_REUSEADDR` socket option is enabled prior
    to binding the socket using [`bind(SocketAddress)`](#bind(java.net.SocketAddress)).

    Note: This functionality is not supported by all existing platforms,
    so it is implementation specific whether this option will be ignored
    or not. However, if it is not supported then
    [`getReuseAddress()`](#getReuseAddress()) will always return `false`.

    When a `DatagramSocket` is created the initial setting
    of `SO_REUSEADDR` is disabled.

    The behaviour when `SO_REUSEADDR` is enabled or
    disabled after a socket is bound (See [`isBound()`](#isBound()))
    is not defined.

    Parameters:
    :   `on` - whether to enable or disable the

    Throws:
    :   `SocketException` - if an error occurs enabling or
        disabling the `SO_REUSEADDR` socket option,
        or the socket is closed.

    Since:
    :   1.4

    See Also:
    :   - [`getReuseAddress()`](#getReuseAddress())
        - [`bind(SocketAddress)`](#bind(java.net.SocketAddress))
        - [`isBound()`](#isBound())
        - [`isClosed()`](#isClosed())
        - [`StandardSocketOptions.SO_REUSEADDR`](StandardSocketOptions.md#SO_REUSEADDR)
  + ### getReuseAddress

    public boolean getReuseAddress()
    throws [SocketException](SocketException.md "class in java.net")

    Tests if SO\_REUSEADDR is enabled.

    Returns:
    :   a `boolean` indicating whether or not SO\_REUSEADDR is enabled.

    Throws:
    :   `SocketException` - if there is an error
        in the underlying protocol, such as an UDP error.

    Since:
    :   1.4

    See Also:
    :   - [`setReuseAddress(boolean)`](#setReuseAddress(boolean))
        - [`StandardSocketOptions.SO_REUSEADDR`](StandardSocketOptions.md#SO_REUSEADDR)
  + ### setBroadcast

    public void setBroadcast(boolean on)
    throws [SocketException](SocketException.md "class in java.net")

    Enable/disable SO\_BROADCAST.

    Some operating systems may require that the Java virtual machine be
    started with implementation specific privileges to enable this option or
    send broadcast datagrams.

    Parameters:
    :   `on` - whether or not to have broadcast turned on.

    Throws:
    :   `SocketException` - if there is an error in the underlying protocol, such as an UDP
        error.

    Since:
    :   1.4

    See Also:
    :   - [`getBroadcast()`](#getBroadcast())
        - [`StandardSocketOptions.SO_BROADCAST`](StandardSocketOptions.md#SO_BROADCAST)
  + ### getBroadcast

    public boolean getBroadcast()
    throws [SocketException](SocketException.md "class in java.net")

    Tests if SO\_BROADCAST is enabled.

    Returns:
    :   a `boolean` indicating whether or not SO\_BROADCAST is enabled.

    Throws:
    :   `SocketException` - if there is an error
        in the underlying protocol, such as an UDP error.

    Since:
    :   1.4

    See Also:
    :   - [`setBroadcast(boolean)`](#setBroadcast(boolean))
        - [`StandardSocketOptions.SO_BROADCAST`](StandardSocketOptions.md#SO_BROADCAST)
  + ### setTrafficClass

    public void setTrafficClass(int tc)
    throws [SocketException](SocketException.md "class in java.net")

    Sets traffic class or type-of-service octet in the IP
    datagram header for datagrams sent from this DatagramSocket.
    As the underlying network implementation may ignore this
    value applications should consider it a hint.

    The tc **must** be in the range `0 <= tc <=
    255` or an IllegalArgumentException will be thrown.

    Notes:

    For Internet Protocol v4 the value consists of an
    `integer`, the least significant 8 bits of which
    represent the value of the TOS octet in IP packets sent by
    the socket.
    RFC 1349 defines the TOS values as follows:
    - `IPTOS_LOWCOST (0x02)`
    - `IPTOS_RELIABILITY (0x04)`
    - `IPTOS_THROUGHPUT (0x08)`
    - `IPTOS_LOWDELAY (0x10)`The last low order bit is always ignored as this
    corresponds to the MBZ (must be zero) bit.

    Setting bits in the precedence field may result in a
    SocketException indicating that the operation is not
    permitted.

    for Internet Protocol v6 `tc` is the value that
    would be placed into the sin6\_flowinfo field of the IP header.

    Parameters:
    :   `tc` - an `int` value for the bitset.

    Throws:
    :   `SocketException` - if there is an error setting the
        traffic class or type-of-service

    Since:
    :   1.4

    See Also:
    :   - [`getTrafficClass()`](#getTrafficClass())
        - [`StandardSocketOptions.IP_TOS`](StandardSocketOptions.md#IP_TOS)
  + ### getTrafficClass

    public int getTrafficClass()
    throws [SocketException](SocketException.md "class in java.net")

    Gets traffic class or type-of-service in the IP datagram
    header for packets sent from this DatagramSocket.

    As the underlying network implementation may ignore the
    traffic class or type-of-service set using [`setTrafficClass(int)`](#setTrafficClass(int))
    this method may return a different value than was previously
    set using the [`setTrafficClass(int)`](#setTrafficClass(int)) method on this
    DatagramSocket.

    Returns:
    :   the traffic class or type-of-service already set

    Throws:
    :   `SocketException` - if there is an error obtaining the
        traffic class or type-of-service value.

    Since:
    :   1.4

    See Also:
    :   - [`setTrafficClass(int)`](#setTrafficClass(int))
        - [`StandardSocketOptions.IP_TOS`](StandardSocketOptions.md#IP_TOS)
  + ### close

    public void close()

    Closes this datagram socket.

    Any thread currently blocked in [`receive(java.net.DatagramPacket)`](#receive(java.net.DatagramPacket)) upon this socket
    will throw a [`SocketException`](SocketException.md "class in java.net").

    If this socket has an associated channel then the channel is closed
    as well.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`
  + ### isClosed

    public boolean isClosed()

    Returns whether the socket is closed or not.

    Returns:
    :   true if the socket has been closed

    Since:
    :   1.4
  + ### getChannel

    public [DatagramChannel](../nio/channels/DatagramChannel.md "class in java.nio.channels") getChannel()

    Returns the unique [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels") object
    associated with this datagram socket, if any.

    A datagram socket will have a channel if, and only if, the channel
    itself was created via the [`DatagramChannel.open`](../nio/channels/DatagramChannel.md#open()) method.

    Returns:
    :   the datagram channel associated with this datagram socket,
        or `null` if this socket was not created for a channel

    Since:
    :   1.4
  + ### setDatagramSocketImplFactory

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17")
    public static void setDatagramSocketImplFactory([DatagramSocketImplFactory](DatagramSocketImplFactory.md "interface in java.net") fac)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    Use [`DatagramChannel`](../nio/channels/DatagramChannel.md "class in java.nio.channels"), or subclass `DatagramSocket`
    directly.
      
     This method provided a way in early JDK releases to replace the
    system wide implementation of `DatagramSocket`. It has been mostly
    obsolete since Java 1.4. If required, a `DatagramSocket` can be
    created to use a custom implementation by extending `DatagramSocket`
    and using the [protected
    constructor](#%3Cinit%3E(java.net.DatagramSocketImpl)) that takes an [implementation](DatagramSocketImpl.md "class in java.net")
    as a parameter.

    Sets the datagram socket implementation factory for the
    application. The factory can be specified only once.

    When an application creates a new datagram socket, the socket
    implementation factory's `createDatagramSocketImpl` method is
    called to create the actual datagram socket implementation.

    Passing `null` to the method is a no-op unless the factory
    was already set.

    If there is a security manager, this method first calls
    the security manager's `checkSetFactory` method
    to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `fac` - the desired factory.

    Throws:
    :   `IOException` - if an I/O error occurs when setting the
        datagram socket factory.
    :   `SocketException` - if the factory is already defined.
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method doesn't allow the operation.

    Since:
    :   1.3

    See Also:
    :   - [`DatagramSocketImplFactory.createDatagramSocketImpl()`](DatagramSocketImplFactory.md#createDatagramSocketImpl())
        - [`SecurityManager.checkSetFactory()`](../lang/SecurityManager.md#checkSetFactory())
  + ### setOption

    public <T> [DatagramSocket](DatagramSocket.md "class in java.net") setOption([SocketOption](SocketOption.md "interface in java.net")<T> name,
    T value)
    throws [IOException](../io/IOException.md "class in java.io")

    Sets the value of a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option
    :   `value` - The value of the socket option. A value of `null`
        may be valid for some options.

    Returns:
    :   this DatagramSocket

    Throws:
    :   `UnsupportedOperationException` - if the datagram socket
        does not support the option.
    :   `IllegalArgumentException` - if the value is not valid for
        the option.
    :   `IOException` - if an I/O error occurs, or if the socket is closed.
    :   `SecurityException` - if a security manager is set and if the socket
        option requires a security permission and if the caller does
        not have the required permission.
        [`StandardSocketOptions`](StandardSocketOptions.md "class in java.net")
        do not require any security permission.
    :   `NullPointerException` - if name is `null`

    Since:
    :   9
  + ### getOption

    public <T> T getOption([SocketOption](SocketOption.md "interface in java.net")<T> name)
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the value of a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option

    Returns:
    :   The value of the socket option.

    Throws:
    :   `UnsupportedOperationException` - if the datagram socket
        does not support the option.
    :   `IOException` - if an I/O error occurs, or if the socket is closed.
    :   `NullPointerException` - if name is `null`
    :   `SecurityException` - if a security manager is set and if the socket
        option requires a security permission and if the caller does
        not have the required permission.
        [`StandardSocketOptions`](StandardSocketOptions.md "class in java.net")
        do not require any security permission.

    Since:
    :   9
  + ### supportedOptions

    public [Set](../util/Set.md "interface in java.util")<[SocketOption](SocketOption.md "interface in java.net")<?>> supportedOptions()

    Returns a set of the socket options supported by this socket.
    This method will continue to return the set of options even after
    the socket has been closed.

    Returns:
    :   A set of the socket options supported by this socket. This set
        may be empty if the socket's DatagramSocketImpl cannot be created.

    Since:
    :   9
  + ### joinGroup

    public void joinGroup([SocketAddress](SocketAddress.md "class in java.net") mcastaddr,
    [NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [IOException](../io/IOException.md "class in java.io")

    Joins a multicast group.

    In order to join a multicast group, the caller should specify
    the IP address of the multicast group to join, and the local
    [network interface](NetworkInterface.md "class in java.net") to receive multicast
    packets from.
    - The `mcastaddr` argument indicates the IP address
      of the multicast group to join. For historical reasons this is
      specified as a `SocketAddress`.
      The default implementation only supports [`InetSocketAddress`](InetSocketAddress.md "class in java.net") and
      the [`port`](InetSocketAddress.md#getPort()) information is ignored.
    - The `netIf` argument specifies the local interface to receive
      multicast datagram packets, or `null` to defer to the interface
      set for outgoing multicast datagrams.
      If `null`, and no interface has been set, the behaviour is
      unspecified: any interface may be selected or the operation may fail
      with a `SocketException`.

    It is possible to call this method several times to join
    several different multicast groups, or join the same group
    in several different networks. However, if the socket is already a
    member of the group, an [`IOException`](../io/IOException.md "class in java.io") will be thrown.

    If there is a security manager, this method first
    calls its `checkMulticast` method with the `mcastaddr`
    argument as its argument.

    Parameters:
    :   `mcastaddr` - indicates the multicast address to join.
    :   `netIf` - specifies the local interface to receive multicast
        datagram packets, or `null`.

    Throws:
    :   `IOException` - if there is an error joining, or when the address
        is not a multicast address, or the platform does not support
        multicasting
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` method doesn't allow the join.
    :   `IllegalArgumentException` - if mcastaddr is `null` or is a
        SocketAddress subclass not supported by this socket

    Since:
    :   17

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        - [`MulticastChannel.join(InetAddress, NetworkInterface)`](../nio/channels/MulticastChannel.md#join(java.net.InetAddress,java.net.NetworkInterface))
        - [`StandardSocketOptions.IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF)
  + ### leaveGroup

    public void leaveGroup([SocketAddress](SocketAddress.md "class in java.net") mcastaddr,
    [NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [IOException](../io/IOException.md "class in java.io")

    Leave a multicast group on a specified local interface.

    If there is a security manager, this method first
    calls its `checkMulticast` method with the
    `mcastaddr` argument as its argument.

    Parameters:
    :   `mcastaddr` - is the multicast address to leave. This should
        contain the same IP address than that used for [joining](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface))
        the group.
    :   `netIf` - specifies the local interface or `null` to defer
        to the interface set for outgoing multicast datagrams.
        If `null`, and no interface has been set, the behaviour
        is unspecified: any interface may be selected or the operation
        may fail with a `SocketException`.

    Throws:
    :   `IOException` - if there is an error leaving or when the address
        is not a multicast address.
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` method doesn't allow the operation.
    :   `IllegalArgumentException` - if mcastaddr is `null` or is a
        SocketAddress subclass not supported by this socket.

    Since:
    :   17

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        - [`joinGroup(SocketAddress, NetworkInterface)`](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface))
        - [`StandardSocketOptions.IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF)