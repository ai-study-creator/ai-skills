Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface SocketOptions

All Known Implementing Classes:
:   `DatagramSocketImpl`, `SocketImpl`

---

public interface SocketOptions

Interface of methods to get/set socket options. This interface is
implemented by: **SocketImpl** and **DatagramSocketImpl**.
Subclasses of these should override the methods
of this interface in order to support their own options.

The methods and constants which specify options in this interface are
for implementation only. If you're not subclassing SocketImpl or
DatagramSocketImpl, **you won't use these directly.** There are
type-safe methods to get/set each of these options in Socket, ServerSocket,
DatagramSocket and MulticastSocket.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `IP_MULTICAST_IF`

  Set which outgoing interface on which to send multicast packets.

  `static final int`

  `IP_MULTICAST_IF2`

  Same as above.

  `static final int`

  `IP_MULTICAST_LOOP`

  This option enables or disables local loopback of multicast datagrams.

  `static final int`

  `IP_TOS`

  This option sets the type-of-service or traffic class field
  in the IP header for a TCP or UDP socket.

  `static final int`

  `SO_BINDADDR`

  Fetch the local address binding of a socket (this option cannot
  be "set" only "gotten", since sockets are bound at creation time,
  and so the locally bound address cannot be changed).

  `static final int`

  `SO_BROADCAST`

  Sets SO\_BROADCAST for a socket.

  `static final int`

  `SO_KEEPALIVE`

  When the keepalive option is set for a TCP socket and no data
  has been exchanged across the socket in either direction for
  2 hours (NOTE: the actual value is implementation dependent),
  TCP automatically sends a keepalive probe to the peer.

  `static final int`

  `SO_LINGER`

  Specify a linger-on-close timeout.

  `static final int`

  `SO_OOBINLINE`

  When the OOBINLINE option is set, any TCP urgent data received on
  the socket will be received through the socket input stream.

  `static final int`

  `SO_RCVBUF`

  Set a hint the size of the underlying buffers used by the
  platform for incoming network I/O.

  `static final int`

  `SO_REUSEADDR`

  Sets SO\_REUSEADDR for a socket.

  `static final int`

  `SO_REUSEPORT`

  Sets SO\_REUSEPORT for a socket.

  `static final int`

  `SO_SNDBUF`

  Set a hint the size of the underlying buffers used by the
  platform for outgoing network I/O.

  `static final int`

  `SO_TIMEOUT`

  Set a timeout on blocking Socket operations:

  `static final int`

  `TCP_NODELAY`

  Disable Nagle's algorithm for this connection.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getOption(int optID)`

  Fetch the value of an option.

  `void`

  `setOption(int optID,
  Object value)`

  Enable/disable the option specified by *optID*.

* ## Field Details

  + ### TCP\_NODELAY

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int TCP\_NODELAY

    Disable Nagle's algorithm for this connection. Written data
    to the network is not buffered pending acknowledgement of
    previously written data.

    Valid for TCP only: SocketImpl.

    See Also:
    :   - [`Socket.setTcpNoDelay(boolean)`](Socket.md#setTcpNoDelay(boolean))
        - [`Socket.getTcpNoDelay()`](Socket.md#getTcpNoDelay())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.TCP_NODELAY)
  + ### SO\_BINDADDR

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_BINDADDR

    Fetch the local address binding of a socket (this option cannot
    be "set" only "gotten", since sockets are bound at creation time,
    and so the locally bound address cannot be changed). The default local
    address of a socket is INADDR\_ANY, meaning any local address on a
    multi-homed host. A multi-homed host can use this option to accept
    connections to only one of its addresses (in the case of a
    ServerSocket or DatagramSocket), or to specify its return address
    to the peer (for a Socket or DatagramSocket). The parameter of
    this option is an InetAddress.

    This option **must** be specified in the constructor.

    Valid for: SocketImpl, DatagramSocketImpl

    See Also:
    :   - [`Socket.getLocalAddress()`](Socket.md#getLocalAddress())
        - [`DatagramSocket.getLocalAddress()`](DatagramSocket.md#getLocalAddress())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_BINDADDR)
  + ### SO\_REUSEADDR

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_REUSEADDR

    Sets SO\_REUSEADDR for a socket. This is used only for MulticastSockets
    in java, and it is set by default for MulticastSockets.

    Valid for: DatagramSocketImpl

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_REUSEADDR)
  + ### SO\_REUSEPORT

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_REUSEPORT

    Sets SO\_REUSEPORT for a socket. This option enables and disables
    the ability to have multiple sockets listen to the same address
    and port.

    Valid for: SocketImpl, DatagramSocketImpl

    Since:
    :   9

    See Also:
    :   - [`StandardSocketOptions.SO_REUSEPORT`](StandardSocketOptions.md#SO_REUSEPORT)
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_REUSEPORT)
  + ### SO\_BROADCAST

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_BROADCAST

    Sets SO\_BROADCAST for a socket. This option enables and disables
    the ability of the process to send broadcast messages. It is supported
    for only datagram sockets and only on networks that support
    the concept of a broadcast message (e.g. Ethernet, token ring, etc.),
    and it is set by default for DatagramSockets.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_BROADCAST)
  + ### IP\_MULTICAST\_IF

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int IP\_MULTICAST\_IF

    Set which outgoing interface on which to send multicast packets.
    Useful on hosts with multiple network interfaces, where applications
    want to use other than the system default. Takes/returns an InetAddress.

    Valid for Multicast: DatagramSocketImpl

    See Also:
    :   - [`MulticastSocket.setInterface(InetAddress)`](MulticastSocket.md#setInterface(java.net.InetAddress))
        - [`MulticastSocket.getInterface()`](MulticastSocket.md#getInterface())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.IP_MULTICAST_IF)
  + ### IP\_MULTICAST\_IF2

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int IP\_MULTICAST\_IF2

    Same as above. This option is introduced so that the behaviour
    with IP\_MULTICAST\_IF will be kept the same as before, while
    this new option can support setting outgoing interfaces with either
    IPv4 and IPv6 addresses.
    NOTE: make sure there is no conflict with this

    Since:
    :   1.4

    See Also:
    :   - [`MulticastSocket.setNetworkInterface(NetworkInterface)`](MulticastSocket.md#setNetworkInterface(java.net.NetworkInterface))
        - [`MulticastSocket.getNetworkInterface()`](MulticastSocket.md#getNetworkInterface())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.IP_MULTICAST_IF2)
  + ### IP\_MULTICAST\_LOOP

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int IP\_MULTICAST\_LOOP

    This option enables or disables local loopback of multicast datagrams.
    This option is enabled by default for Multicast Sockets.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.IP_MULTICAST_LOOP)
  + ### IP\_TOS

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int IP\_TOS

    This option sets the type-of-service or traffic class field
    in the IP header for a TCP or UDP socket.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.IP_TOS)
  + ### SO\_LINGER

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_LINGER

    Specify a linger-on-close timeout. This option disables/enables
    immediate return from a **close()** of a TCP Socket. Enabling
    this option with a non-zero Integer *timeout* means that a
    **close()** will block pending the transmission and acknowledgement
    of all data written to the peer, at which point the socket is closed
    *gracefully*. Upon reaching the linger timeout, the socket is
    closed *forcefully*, with a TCP RST. Enabling the option with a
    timeout of zero does a forceful close immediately. If the specified
    timeout value exceeds 65,535 it will be reduced to 65,535.

    Valid only for TCP: SocketImpl

    See Also:
    :   - [`Socket.setSoLinger(boolean, int)`](Socket.md#setSoLinger(boolean,int))
        - [`Socket.getSoLinger()`](Socket.md#getSoLinger())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_LINGER)
  + ### SO\_TIMEOUT

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_TIMEOUT

    Set a timeout on blocking Socket operations:

    ```
     ServerSocket.accept();
     SocketInputStream.read();
     DatagramSocket.receive();
    ```

    The option must be set prior to entering a blocking
    operation to take effect. If the timeout expires and the
    operation would continue to block,
    **java.io.InterruptedIOException** is raised. The Socket is
    not closed in this case.

    Valid for all sockets: SocketImpl, DatagramSocketImpl

    See Also:
    :   - [`Socket.setSoTimeout(int)`](Socket.md#setSoTimeout(int))
        - [`ServerSocket.setSoTimeout(int)`](ServerSocket.md#setSoTimeout(int))
        - [`DatagramSocket.setSoTimeout(int)`](DatagramSocket.md#setSoTimeout(int))
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_TIMEOUT)
  + ### SO\_SNDBUF

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_SNDBUF

    Set a hint the size of the underlying buffers used by the
    platform for outgoing network I/O. When used in set, this is a
    suggestion to the kernel from the application about the size of
    buffers to use for the data to be sent over the socket. When
    used in get, this must return the size of the buffer actually
    used by the platform when sending out data on this socket.
    Valid for all sockets: SocketImpl, DatagramSocketImpl

    See Also:
    :   - [`Socket.setSendBufferSize(int)`](Socket.md#setSendBufferSize(int))
        - [`Socket.getSendBufferSize()`](Socket.md#getSendBufferSize())
        - [`DatagramSocket.setSendBufferSize(int)`](DatagramSocket.md#setSendBufferSize(int))
        - [`DatagramSocket.getSendBufferSize()`](DatagramSocket.md#getSendBufferSize())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_SNDBUF)
  + ### SO\_RCVBUF

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_RCVBUF

    Set a hint the size of the underlying buffers used by the
    platform for incoming network I/O. When used in set, this is a
    suggestion to the kernel from the application about the size of
    buffers to use for the data to be received over the
    socket. When used in get, this must return the size of the
    buffer actually used by the platform when receiving in data on
    this socket.
    Valid for all sockets: SocketImpl, DatagramSocketImpl

    See Also:
    :   - [`Socket.setReceiveBufferSize(int)`](Socket.md#setReceiveBufferSize(int))
        - [`Socket.getReceiveBufferSize()`](Socket.md#getReceiveBufferSize())
        - [`DatagramSocket.setReceiveBufferSize(int)`](DatagramSocket.md#setReceiveBufferSize(int))
        - [`DatagramSocket.getReceiveBufferSize()`](DatagramSocket.md#getReceiveBufferSize())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_RCVBUF)
  + ### SO\_KEEPALIVE

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_KEEPALIVE

    When the keepalive option is set for a TCP socket and no data
    has been exchanged across the socket in either direction for
    2 hours (NOTE: the actual value is implementation dependent),
    TCP automatically sends a keepalive probe to the peer. This probe is a
    TCP segment to which the peer must respond.
    One of three responses is expected:
    1. The peer responds with the expected ACK. The application is not
    notified (since everything is OK). TCP will send another probe
    following another 2 hours of inactivity.
    2. The peer responds with an RST, which tells the local TCP that
    the peer host has crashed and rebooted. The socket is closed.
    3. There is no response from the peer. The socket is closed.
    The purpose of this option is to detect if the peer host crashes.
    Valid only for TCP socket: SocketImpl

    See Also:
    :   - [`Socket.setKeepAlive(boolean)`](Socket.md#setKeepAlive(boolean))
        - [`Socket.getKeepAlive()`](Socket.md#getKeepAlive())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_KEEPALIVE)
  + ### SO\_OOBINLINE

    [@Native](../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int SO\_OOBINLINE

    When the OOBINLINE option is set, any TCP urgent data received on
    the socket will be received through the socket input stream.
    When the option is disabled (which is the default) urgent data
    is silently discarded.

    See Also:
    :   - [`Socket.setOOBInline(boolean)`](Socket.md#setOOBInline(boolean))
        - [`Socket.getOOBInline()`](Socket.md#getOOBInline())
        - [Constant Field Values](../../../constant-values.md#java.net.SocketOptions.SO_OOBINLINE)
* ## Method Details

  + ### setOption

    void setOption(int optID,
    [Object](../lang/Object.md "class in java.lang") value)
    throws [SocketException](SocketException.md "class in java.net")

    Enable/disable the option specified by *optID*. If the option
    is to be enabled, and it takes an option-specific "value", this is
    passed in *value*. The actual type of value is option-specific,
    and it is an error to pass something that isn't of the expected type:
      

    ```
     SocketImpl s;
     ...
     s.setOption(SO_LINGER, Integer.valueOf(10));
        // OK - set SO_LINGER w/ timeout of 10 sec.
     s.setOption(SO_LINGER, Double.valueOf(10));
        // ERROR - expects java.lang.Integer
    ```

    If the requested option is binary, it can be set using this method by
    a java.lang.Boolean:
      

    ```
     s.setOption(TCP_NODELAY, Boolean.TRUE);
        // OK - enables TCP_NODELAY, a binary option
    ```

      
    Any option can be disabled using this method with a Boolean.FALSE:
      

    ```
     s.setOption(TCP_NODELAY, Boolean.FALSE);
        // OK - disables TCP_NODELAY
     s.setOption(SO_LINGER, Boolean.FALSE);
        // OK - disables SO_LINGER
    ```

      
    For an option that has a notion of on and off, and requires
    a non-boolean parameter, setting its value to anything other than
    *Boolean.FALSE* implicitly enables it.
      
    Throws SocketException if the option is unrecognized,
    the socket is closed, or some low-level error occurred

    Parameters:
    :   `optID` - identifies the option
    :   `value` - the parameter of the socket option

    Throws:
    :   `SocketException` - if the option is unrecognized,
        the socket is closed, or some low-level error occurred

    See Also:
    :   - [`getOption(int)`](#getOption(int))
  + ### getOption

    [Object](../lang/Object.md "class in java.lang") getOption(int optID)
    throws [SocketException](SocketException.md "class in java.net")

    Fetch the value of an option.
    Binary options will return java.lang.Boolean.TRUE
    if enabled, java.lang.Boolean.FALSE if disabled, e.g.:
      

    ```
     SocketImpl s;
     ...
     Boolean noDelay = (Boolean)(s.getOption(TCP_NODELAY));
     if (noDelay.booleanValue()) {
         // true if TCP_NODELAY is enabled...
     ...
     }
    ```

    For options that take a particular type as a parameter,
    getOption(int) will return the parameter's value, else
    it will return java.lang.Boolean.FALSE:

    ```
     Object o = s.getOption(SO_LINGER);
     if (o instanceof Integer) {
         System.out.print("Linger time is " + ((Integer)o).intValue());
     } else {
       // the true type of o is java.lang.Boolean.FALSE;
     }
    ```

    Parameters:
    :   `optID` - an `int` identifying the option to fetch

    Returns:
    :   the value of the option

    Throws:
    :   `SocketException` - if the socket is closed
    :   `SocketException` - if *optID* is unknown along the
        protocol stack (including the SocketImpl)

    See Also:
    :   - [`setOption(int, java.lang.Object)`](#setOption(int,java.lang.Object))