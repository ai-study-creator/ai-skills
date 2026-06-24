Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class MulticastSocket

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.DatagramSocket](DatagramSocket.md "class in java.net")

java.net.MulticastSocket

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class MulticastSocket
extends [DatagramSocket](DatagramSocket.md "class in java.net")

A `MulticastSocket` is a datagram socket that is
convenient for sending and receiving IP multicast datagrams.
The `MulticastSocket` constructors create a socket
with appropriate socket options enabled that make
it suitable for receiving multicast datagrams.
The `MulticastSocket` class additionally defines
convenient setter and getter methods for socket options
that are commonly used by multicasting applications.

Joining one or more multicast groups makes it possible to
receive multicast datagrams sent to these groups.

An IPv4 multicast group is specified by a class D IP address
and by a standard UDP port number. Class D IP addresses
are in the range `224.0.0.0` to `239.255.255.255`,
inclusive. The address 224.0.0.0 is reserved and should not be used.

One would join a multicast group by first creating a MulticastSocket
with the desired port, then invoking the
`joinGroup` method, specifying the group address and
the network interface through which multicast datagrams will be
received:

```
 // join a Multicast group and send the group salutations
 ...
 String msg = "Hello";
 InetAddress mcastaddr = InetAddress.getByName("228.5.6.7");
 InetSocketAddress group = new InetSocketAddress(mcastaddr, 6789);
 NetworkInterface netIf = NetworkInterface.getByName("bge0");
 MulticastSocket s = new MulticastSocket(6789);

 s.joinGroup(new InetSocketAddress(mcastaddr, 0), netIf);
 byte[] msgBytes = msg.getBytes(StandardCharsets.UTF_8);
 DatagramPacket hi = new DatagramPacket(msgBytes, msgBytes.length, group);
 s.send(hi);
 // get their responses!
 byte[] buf = new byte[1000];
 DatagramPacket recv = new DatagramPacket(buf, buf.length);
 s.receive(recv);
 ...
 // OK, I'm done talking - leave the group...
 s.leaveGroup(group, netIf);
```

When one sends a message to a multicast group, **all** subscribing
recipients to that host and port receive the message (within the
time-to-live range of the packet, see below). The socket needn't
be a member of the multicast group to send messages to it.

When a socket subscribes to a multicast group/port, it receives
datagrams sent by other hosts to the group/port, as do all other
members of the group and port. A socket relinquishes membership
in a group by the leaveGroup(SocketAddress mcastaddr, NetworkInterface netIf)
method.
**Multiple MulticastSockets** may subscribe to a multicast group
and port concurrently, and they will all receive group datagrams.

The `DatagramSocket` and `MulticastSocket`
classes define convenience methods to set and get several
socket options. Like `DatagramSocket` this class also
supports the [`setOption`](DatagramSocket.md#setOption(java.net.SocketOption,T))
and [`getOption`](DatagramSocket.md#getOption(java.net.SocketOption)) methods to set
and query socket options.
The set of supported socket options
is defined in [`DatagramSocket`](DatagramSocket.md#SocketOptions).
Additional (implementation specific) options may also be supported.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MulticastSocket()`

  Constructs a multicast socket and binds it to any available port
  on the local host machine.

  `MulticastSocket(int port)`

  Constructs a multicast socket and binds it to the specified port
  on the local host machine.

  `MulticastSocket(SocketAddress bindaddr)`

  Creates a multicast socket, bound to the specified local
  socket address.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `InetAddress`

  `getInterface()`

  Deprecated.

  The network interface may not be uniquely identified by
  the InetAddress returned.

  `boolean`

  `getLoopbackMode()`

  Deprecated.

  Use [`DatagramSocket.getOption(SocketOption)`](DatagramSocket.md#getOption(java.net.SocketOption)) with
  [`StandardSocketOptions.IP_MULTICAST_LOOP`](StandardSocketOptions.md#IP_MULTICAST_LOOP)
  instead.

  `NetworkInterface`

  `getNetworkInterface()`

  Get the multicast network interface set for outgoing multicast
  datagrams sent from this socket.

  `int`

  `getTimeToLive()`

  Get the default time-to-live for multicast packets sent out on
  the socket.

  `byte`

  `getTTL()`

  Deprecated.

  use the [`getTimeToLive()`](#getTimeToLive()) method instead,
  which returns an **int** instead of a **byte**.

  `void`

  `joinGroup(InetAddress mcastaddr)`

  Deprecated.

  This method does not accept the network interface on
  which to join the multicast group.

  `void`

  `joinGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Joins a multicast group.

  `void`

  `leaveGroup(InetAddress mcastaddr)`

  Deprecated.

  This method does not accept the network interface on which
  to leave the multicast group.

  `void`

  `leaveGroup(SocketAddress mcastaddr,
  NetworkInterface netIf)`

  Leave a multicast group on a specified local interface.

  `void`

  `send(DatagramPacket p,
  byte ttl)`

  Deprecated.

  Use the following code or its equivalent instead:

  `void`

  `setInterface(InetAddress inf)`

  Deprecated.

  The InetAddress may not uniquely identify
  the network interface.

  `void`

  `setLoopbackMode(boolean disable)`

  Deprecated.

  Use [`DatagramSocket.setOption(SocketOption, Object)`](DatagramSocket.md#setOption(java.net.SocketOption,T)) with
  [`StandardSocketOptions.IP_MULTICAST_LOOP`](StandardSocketOptions.md#IP_MULTICAST_LOOP)
  instead.

  `void`

  `setNetworkInterface(NetworkInterface netIf)`

  Specify the network interface for outgoing multicast datagrams
  sent on this socket.

  `void`

  `setTimeToLive(int ttl)`

  Set the default time-to-live for multicast packets sent out
  on this `MulticastSocket` in order to control the
  scope of the multicasts.

  `void`

  `setTTL(byte ttl)`

  Deprecated.

  use the [`setTimeToLive(int)`](#setTimeToLive(int)) method instead, which uses
  **int** instead of **byte** as the type for ttl.

  ### Methods inherited from class java.net.[DatagramSocket](DatagramSocket.md "class in java.net")

  `bind, close, connect, connect, disconnect, getBroadcast, getChannel, getInetAddress, getLocalAddress, getLocalPort, getLocalSocketAddress, getOption, getPort, getReceiveBufferSize, getRemoteSocketAddress, getReuseAddress, getSendBufferSize, getSoTimeout, getTrafficClass, isBound, isClosed, isConnected, receive, send, setBroadcast, setDatagramSocketImplFactory, setOption, setReceiveBufferSize, setReuseAddress, setSendBufferSize, setSoTimeout, setTrafficClass, supportedOptions`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MulticastSocket

    public MulticastSocket()
    throws [IOException](../io/IOException.md "class in java.io")

    Constructs a multicast socket and binds it to any available port
    on the local host machine. The socket will be bound to the
    [`wildcard`](InetAddress.md#isAnyLocalAddress()) address.

    If there is a security manager, its `checkListen` method is first
    called with 0 as its argument to ensure the operation is allowed. This
    could result in a SecurityException.

    When the socket is created the
    [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean)) method is called to
    enable the SO\_REUSEADDR socket option.

    Throws:
    :   `IOException` - if an I/O exception occurs while creating the
        MulticastSocket
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
        - [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean))
        - [`DatagramSocketImpl.setOption(SocketOption, Object)`](DatagramSocketImpl.md#setOption(java.net.SocketOption,T))
  + ### MulticastSocket

    public MulticastSocket(int port)
    throws [IOException](../io/IOException.md "class in java.io")

    Constructs a multicast socket and binds it to the specified port
    on the local host machine. The socket will be bound to the
    [`wildcard`](InetAddress.md#isAnyLocalAddress()) address.

    If there is a security manager,
    its `checkListen` method is first called
    with the `port` argument
    as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    When the socket is created the
    [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean)) method is
    called to enable the SO\_REUSEADDR socket option.

    Parameters:
    :   `port` - port to use

    Throws:
    :   `IOException` - if an I/O exception occurs
        while creating the MulticastSocket
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.
    :   `IllegalArgumentException` - if port is [out of range.](DatagramSocket.md#PortRange)

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
        - [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean))
  + ### MulticastSocket

    public MulticastSocket([SocketAddress](SocketAddress.md "class in java.net") bindaddr)
    throws [IOException](../io/IOException.md "class in java.io")

    Creates a multicast socket, bound to the specified local
    socket address.

    If the address is `null` an unbound socket will be created.

    If there is a security manager,
    its `checkListen` method is first called
    with the SocketAddress port as its argument to ensure the operation is allowed.
    This could result in a SecurityException.

    When the socket is created the
    [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean)) method is
    called to enable the SO\_REUSEADDR socket option.

    Parameters:
    :   `bindaddr` - Socket address to bind to, or `null` for
        an unbound socket.

    Throws:
    :   `IOException` - if an I/O exception occurs
        while creating the MulticastSocket
    :   `SecurityException` - if a security manager exists and its
        `checkListen` method doesn't allow the operation.

    Since:
    :   1.4

    See Also:
    :   - [`SecurityManager.checkListen(int)`](../lang/SecurityManager.md#checkListen(int))
        - [`DatagramSocket.setReuseAddress(boolean)`](DatagramSocket.md#setReuseAddress(boolean))
* ## Method Details

  + ### setTTL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public void setTTL(byte ttl)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    use the [`setTimeToLive(int)`](#setTimeToLive(int)) method instead, which uses
    **int** instead of **byte** as the type for ttl.

    Set the default time-to-live for multicast packets sent out
    on this `MulticastSocket` in order to control the
    scope of the multicasts.

    The ttl is an **unsigned** 8-bit quantity, and so **must** be
    in the range `0 <= ttl <= 0xFF` .

    Parameters:
    :   `ttl` - the time-to-live

    Throws:
    :   `IOException` - if an I/O exception occurs
        while setting the default time-to-live value

    See Also:
    :   - [`getTTL()`](#getTTL())
  + ### setTimeToLive

    public void setTimeToLive(int ttl)
    throws [IOException](../io/IOException.md "class in java.io")

    Set the default time-to-live for multicast packets sent out
    on this `MulticastSocket` in order to control the
    scope of the multicasts.

    The ttl **must** be in the range  `0 <= ttl <=
    255` or an `IllegalArgumentException` will be thrown.
    Multicast packets sent with a TTL of `0` are not transmitted
    on the network but may be delivered locally.

    Parameters:
    :   `ttl` - the time-to-live

    Throws:
    :   `IOException` - if an I/O exception occurs while setting the
        default time-to-live value

    Since:
    :   1.2

    See Also:
    :   - [`getTimeToLive()`](#getTimeToLive())
        - [`StandardSocketOptions.IP_MULTICAST_TTL`](StandardSocketOptions.md#IP_MULTICAST_TTL)
  + ### getTTL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public byte getTTL()
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    use the [`getTimeToLive()`](#getTimeToLive()) method instead,
    which returns an **int** instead of a **byte**.

    Get the default time-to-live for multicast packets sent out on
    the socket.

    Returns:
    :   the default time-to-live value

    Throws:
    :   `IOException` - if an I/O exception occurs
        while getting the default time-to-live value

    See Also:
    :   - [`setTTL(byte)`](#setTTL(byte))
  + ### getTimeToLive

    public int getTimeToLive()
    throws [IOException](../io/IOException.md "class in java.io")

    Get the default time-to-live for multicast packets sent out on
    the socket.

    Returns:
    :   the default time-to-live value

    Throws:
    :   `IOException` - if an I/O exception occurs while
        getting the default time-to-live value

    Since:
    :   1.2

    See Also:
    :   - [`setTimeToLive(int)`](#setTimeToLive(int))
        - [`StandardSocketOptions.IP_MULTICAST_TTL`](StandardSocketOptions.md#IP_MULTICAST_TTL)
  + ### joinGroup

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public void joinGroup([InetAddress](InetAddress.md "class in java.net") mcastaddr)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    This method does not accept the network interface on
    which to join the multicast group. Use
    [`joinGroup(SocketAddress, NetworkInterface)`](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface)) instead.

    Joins a multicast group. Its behavior may be affected by
    `setInterface` or `setNetworkInterface`.

    If there is a security manager, this method first
    calls its `checkMulticast` method with the
    `mcastaddr` argument as its argument.

    Parameters:
    :   `mcastaddr` - is the multicast address to join

    Throws:
    :   `IOException` - if there is an error joining,
        or when the address is not a multicast address,
        or the platform does not support multicasting
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` method doesn't allow the join.

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
  + ### leaveGroup

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public void leaveGroup([InetAddress](InetAddress.md "class in java.net") mcastaddr)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    This method does not accept the network interface on which
    to leave the multicast group. Use
    [`leaveGroup(SocketAddress, NetworkInterface)`](#leaveGroup(java.net.SocketAddress,java.net.NetworkInterface)) instead.

    Leave a multicast group. Its behavior may be affected by
    `setInterface` or `setNetworkInterface`.

    If there is a security manager, this method first
    calls its `checkMulticast` method with the
    `mcastaddr` argument as its argument.

    Parameters:
    :   `mcastaddr` - is the multicast address to leave

    Throws:
    :   `IOException` - if there is an error leaving
        or when the address is not a multicast address.
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` method doesn't allow the operation.

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
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

    Overrides:
    :   `joinGroup` in class `DatagramSocket`

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
    :   1.4

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        - [`MulticastChannel.join(InetAddress, NetworkInterface)`](../nio/channels/MulticastChannel.md#join(java.net.InetAddress,java.net.NetworkInterface))
        - [`StandardSocketOptions.IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF)
        - [`setNetworkInterface(NetworkInterface)`](#setNetworkInterface(java.net.NetworkInterface))
        - [`setInterface(InetAddress)`](#setInterface(java.net.InetAddress))
  + ### leaveGroup

    public void leaveGroup([SocketAddress](SocketAddress.md "class in java.net") mcastaddr,
    [NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [IOException](../io/IOException.md "class in java.io")

    Leave a multicast group on a specified local interface.

    If there is a security manager, this method first
    calls its `checkMulticast` method with the
    `mcastaddr` argument as its argument.

    Overrides:
    :   `leaveGroup` in class `DatagramSocket`

    Parameters:
    :   `mcastaddr` - is the multicast address to leave. This should
        contain the same IP address than that used for [joining](DatagramSocket.md#joinGroup(java.net.SocketAddress,java.net.NetworkInterface))
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
    :   1.4

    See Also:
    :   - [`SecurityManager.checkMulticast(InetAddress)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        - [`joinGroup(SocketAddress, NetworkInterface)`](#joinGroup(java.net.SocketAddress,java.net.NetworkInterface))
  + ### setInterface

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public void setInterface([InetAddress](InetAddress.md "class in java.net") inf)
    throws [SocketException](SocketException.md "class in java.net")

    Deprecated.

    The InetAddress may not uniquely identify
    the network interface. Use
    [`setNetworkInterface(NetworkInterface)`](#setNetworkInterface(java.net.NetworkInterface)) instead.

    Set the multicast network interface used by methods
    whose behavior would be affected by the value of the
    network interface. Useful for multihomed hosts.

    Parameters:
    :   `inf` - the InetAddress

    Throws:
    :   `SocketException` - if there is an error in
        the underlying protocol, such as a TCP error.

    See Also:
    :   - [`getInterface()`](#getInterface())
  + ### getInterface

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public [InetAddress](InetAddress.md "class in java.net") getInterface()
    throws [SocketException](SocketException.md "class in java.net")

    Deprecated.

    The network interface may not be uniquely identified by
    the InetAddress returned.
    Use [`getNetworkInterface()`](#getNetworkInterface()) instead.

    Retrieve the address of the network interface used for
    multicast packets.

    Returns:
    :   An `InetAddress` representing the address
        of the network interface used for multicast packets,
        or if no interface has been set, an `InetAddress`
        representing any local address.

    Throws:
    :   `SocketException` - if there is an error in the
        underlying protocol, such as a TCP error.

    See Also:
    :   - [`setInterface(java.net.InetAddress)`](#setInterface(java.net.InetAddress))
  + ### setNetworkInterface

    public void setNetworkInterface([NetworkInterface](NetworkInterface.md "class in java.net") netIf)
    throws [SocketException](SocketException.md "class in java.net")

    Specify the network interface for outgoing multicast datagrams
    sent on this socket.

    Parameters:
    :   `netIf` - the interface

    Throws:
    :   `SocketException` - if there is an error in
        the underlying protocol, such as a TCP error.

    Since:
    :   1.4

    See Also:
    :   - [`getNetworkInterface()`](#getNetworkInterface())
        - [`StandardSocketOptions.IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF)
  + ### getNetworkInterface

    public [NetworkInterface](NetworkInterface.md "class in java.net") getNetworkInterface()
    throws [SocketException](SocketException.md "class in java.net")

    Get the multicast network interface set for outgoing multicast
    datagrams sent from this socket.

    Returns:
    :   The multicast `NetworkInterface` currently set. A placeholder
        NetworkInterface is returned when there is no interface set; it has
        a single InetAddress to represent any local address.

    Throws:
    :   `SocketException` - if there is an error in
        the underlying protocol, such as a TCP error.

    Since:
    :   1.4

    See Also:
    :   - [`setNetworkInterface(NetworkInterface)`](#setNetworkInterface(java.net.NetworkInterface))
        - [`StandardSocketOptions.IP_MULTICAST_IF`](StandardSocketOptions.md#IP_MULTICAST_IF)
  + ### setLoopbackMode

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public void setLoopbackMode(boolean disable)
    throws [SocketException](SocketException.md "class in java.net")

    Deprecated.

    Use [`DatagramSocket.setOption(SocketOption, Object)`](DatagramSocket.md#setOption(java.net.SocketOption,T)) with
    [`StandardSocketOptions.IP_MULTICAST_LOOP`](StandardSocketOptions.md#IP_MULTICAST_LOOP)
    instead. The loopback mode is enabled by default,
    `MulticastSocket.setOption(StandardSocketOptions.IP_MULTICAST_LOOP, false)`
    disables it.

    Disable/Enable local loopback of multicast datagrams.
    The option is used by the platform's networking code as a hint
    for setting whether multicast data will be looped back to
    the local socket.

    Because this option is a hint, applications that want to
    verify what loopback mode is set to should call
    [`getLoopbackMode()`](#getLoopbackMode())

    Parameters:
    :   `disable` - `true` to disable the LoopbackMode

    Throws:
    :   `SocketException` - if an error occurs while setting the value

    Since:
    :   1.4

    See Also:
    :   - [`getLoopbackMode()`](#getLoopbackMode())
  + ### getLoopbackMode

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="14")
    public boolean getLoopbackMode()
    throws [SocketException](SocketException.md "class in java.net")

    Deprecated.

    Use [`DatagramSocket.getOption(SocketOption)`](DatagramSocket.md#getOption(java.net.SocketOption)) with
    [`StandardSocketOptions.IP_MULTICAST_LOOP`](StandardSocketOptions.md#IP_MULTICAST_LOOP)
    instead.

    Get the setting for local loopback of multicast datagrams.

    Returns:
    :   true if the LoopbackMode has been disabled

    Throws:
    :   `SocketException` - if an error occurs while getting the value

    Since:
    :   1.4

    See Also:
    :   - [`setLoopbackMode(boolean)`](#setLoopbackMode(boolean))
  + ### send

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public void send([DatagramPacket](DatagramPacket.md "class in java.net") p,
    byte ttl)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    Use the following code or its equivalent instead:

    ```
      ......
      int ttl = mcastSocket.getOption(StandardSocketOptions.IP_MULTICAST_TTL);
      mcastSocket.setOption(StandardSocketOptions.IP_MULTICAST_TTL, newttl);
      mcastSocket.send(p);
      mcastSocket.setOption(StandardSocketOptions.IP_MULTICAST_TTL, ttl);
      ......
    ```

    Sends a datagram packet to the destination, with a TTL (time-to-live)
    other than the default for the socket. This method
    need only be used in instances where a particular TTL is desired;
    otherwise it is preferable to set a TTL once on the socket, and
    use that default TTL for all packets. This method does **not** alter the default TTL for the socket. Its behavior may be
    affected by `setInterface`.

    If there is a security manager, this method first performs some
    security checks. First, if `p.getAddress().isMulticastAddress()`
    is true, this method calls the
    security manager's `checkMulticast` method
    with `p.getAddress()` and `ttl` as its arguments.
    If the evaluation of that expression is false,
    this method instead calls the security manager's
    `checkConnect` method with arguments
    `p.getAddress().getHostAddress()` and
    `p.getPort()`. Each call to a security manager method
    could result in a SecurityException if the operation is not allowed.

    Parameters:
    :   `p` - is the packet to be sent. The packet should contain
        the destination multicast ip address and the data to be sent.
        One does not need to be the member of the group to send
        packets to a destination multicast address.
    :   `ttl` - optional time to live for multicast packet.
        default ttl is 1.

    Throws:
    :   `IOException` - is raised if an error occurs i.e
        error while setting ttl.
    :   `SecurityException` - if a security manager exists and its
        `checkMulticast` or `checkConnect`
        method doesn't allow the send.
    :   `PortUnreachableException` - may be thrown if the socket is connected
        to a currently unreachable destination. Note, there is no
        guarantee that the exception will be thrown.
    :   `IllegalArgumentException` - if the socket is connected,
        and connected address and packet address differ, or
        if the socket is not connected and the packet address
        is not set or if its port is out of range.

    See Also:
    :   - [`DatagramSocket.send(java.net.DatagramPacket)`](DatagramSocket.md#send(java.net.DatagramPacket))
        - [`DatagramSocket.receive(java.net.DatagramPacket)`](DatagramSocket.md#receive(java.net.DatagramPacket))
        - [`SecurityManager.checkMulticast(java.net.InetAddress, byte)`](../lang/SecurityManager.md#checkMulticast(java.net.InetAddress,byte))
        - [`SecurityManager.checkConnect(java.lang.String, int)`](../lang/SecurityManager.md#checkConnect(java.lang.String,int))