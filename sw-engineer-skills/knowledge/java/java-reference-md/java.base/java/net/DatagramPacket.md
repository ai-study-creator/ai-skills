Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class DatagramPacket

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.DatagramPacket

---

public final class DatagramPacket
extends [Object](../lang/Object.md "class in java.lang")

This class represents a datagram packet.

Datagram packets are used to implement a connectionless packet
delivery service. Each message is routed from one machine to
another based solely on information contained within that packet.
Multiple packets sent from one machine to another might be routed
differently, and might arrive in any order. Packet delivery is
not guaranteed.

Unless otherwise specified, passing a `null` argument causes
a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Methods and constructors of `DatagramPacket` accept parameters
of type [`SocketAddress`](SocketAddress.md "class in java.net"). `DatagramPacket` supports
[`InetSocketAddress`](InetSocketAddress.md "class in java.net"), and may support additional `SocketAddress`
sub-types.

Since:
:   1.0

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DatagramPacket(byte[] buf,
  int length)`

  Constructs a `DatagramPacket` for receiving packets of
  length `length`.

  `DatagramPacket(byte[] buf,
  int offset,
  int length)`

  Constructs a `DatagramPacket` for receiving packets of
  length `length`, specifying an offset into the buffer.

  `DatagramPacket(byte[] buf,
  int offset,
  int length,
  InetAddress address,
  int port)`

  Constructs a datagram packet for sending packets of length
  `length` with offset `offset` to the
  specified port number on the specified host.

  `DatagramPacket(byte[] buf,
  int offset,
  int length,
  SocketAddress address)`

  Constructs a datagram packet for sending packets of length
  `length` with offset `offset` to the
  specified port number on the specified host.

  `DatagramPacket(byte[] buf,
  int length,
  InetAddress address,
  int port)`

  Constructs a datagram packet for sending packets of length
  `length` to the specified port number on the specified
  host.

  `DatagramPacket(byte[] buf,
  int length,
  SocketAddress address)`

  Constructs a datagram packet for sending packets of length
  `length` to the specified port number on the specified
  host.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `InetAddress`

  `getAddress()`

  Returns the IP address of the machine to which this datagram is being
  sent or from which the datagram was received, or `null` if not
  set.

  `byte[]`

  `getData()`

  Returns the data buffer.

  `int`

  `getLength()`

  Returns the length of the data to be sent or the length of the
  data received.

  `int`

  `getOffset()`

  Returns the offset of the data to be sent or the offset of the
  data received.

  `int`

  `getPort()`

  Returns the port number on the remote host to which this datagram is
  being sent or from which the datagram was received, or 0 if not set.

  `SocketAddress`

  `getSocketAddress()`

  Returns the [`SocketAddress`](InetSocketAddress.md#%3Cinit%3E(java.net.InetAddress,int)) (usually [IP address](#getAddress()) +
  [port number](#getPort())) of the remote host that this packet
  is being sent to or is coming from.

  `void`

  `setAddress(InetAddress iaddr)`

  Sets the IP address of the machine to which this datagram
  is being sent.

  `void`

  `setData(byte[] buf)`

  Set the data buffer for this packet.

  `void`

  `setData(byte[] buf,
  int offset,
  int length)`

  Set the data buffer for this packet.

  `void`

  `setLength(int length)`

  Set the length for this packet.

  `void`

  `setPort(int iport)`

  Sets the port number on the remote host to which this datagram
  is being sent.

  `void`

  `setSocketAddress(SocketAddress address)`

  Sets the SocketAddress (usually IP address + port number) of the remote
  host to which this datagram is being sent.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int offset,
    int length)

    Constructs a `DatagramPacket` for receiving packets of
    length `length`, specifying an offset into the buffer.

    The `length` argument must be less than or equal to
    `buf.length`.

    Parameters:
    :   `buf` - buffer for holding the incoming datagram.
    :   `offset` - the offset for the buffer
    :   `length` - the number of bytes to read.

    Throws:
    :   `IllegalArgumentException` - if the length or offset
        is negative, or if the length plus the offset is
        greater than the length of the packet's given buffer.

    Since:
    :   1.2
  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int length)

    Constructs a `DatagramPacket` for receiving packets of
    length `length`.

    The `length` argument must be less than or equal to
    `buf.length`.

    Parameters:
    :   `buf` - buffer for holding the incoming datagram.
    :   `length` - the number of bytes to read.

    Throws:
    :   `IllegalArgumentException` - if the length is negative
        or if the length is greater than the length of the
        packet's given buffer.
  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int offset,
    int length,
    [InetAddress](InetAddress.md "class in java.net") address,
    int port)

    Constructs a datagram packet for sending packets of length
    `length` with offset `offset` to the
    specified port number on the specified host. The
    `length` argument must be less than or equal to
    `buf.length`.

    Parameters:
    :   `buf` - the packet data.
    :   `offset` - the packet data offset.
    :   `length` - the packet data length.
    :   `address` - the destination address, or `null`.
    :   `port` - the destination port number.

    Throws:
    :   `IllegalArgumentException` - if the length or offset
        is negative, or if the length plus the offset is
        greater than the length of the packet's given buffer,
        or if the port is out of range.

    Since:
    :   1.2

    See Also:
    :   - [`InetAddress`](InetAddress.md "class in java.net")
  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int offset,
    int length,
    [SocketAddress](SocketAddress.md "class in java.net") address)

    Constructs a datagram packet for sending packets of length
    `length` with offset `offset` to the
    specified port number on the specified host. The
    `length` argument must be less than or equal to
    `buf.length`.

    Parameters:
    :   `buf` - the packet data.
    :   `offset` - the packet data offset.
    :   `length` - the packet data length.
    :   `address` - the destination socket address.

    Throws:
    :   `IllegalArgumentException` - if address is null or its
        type is not supported, or if the length or offset is
        negative, or if the length plus the offset is greater
        than the length of the packet's given buffer.

    Since:
    :   1.4

    See Also:
    :   - [`InetAddress`](InetAddress.md "class in java.net")
  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int length,
    [InetAddress](InetAddress.md "class in java.net") address,
    int port)

    Constructs a datagram packet for sending packets of length
    `length` to the specified port number on the specified
    host. The `length` argument must be less than or equal
    to `buf.length`.

    Parameters:
    :   `buf` - the packet data.
    :   `length` - the packet length.
    :   `address` - the destination address, or `null`.
    :   `port` - the destination port number.

    Throws:
    :   `IllegalArgumentException` - if the length is negative,
        or if the length is greater than the length of the
        packet's given buffer, or if the port is out of range.

    See Also:
    :   - [`InetAddress`](InetAddress.md "class in java.net")
  + ### DatagramPacket

    public DatagramPacket(byte[] buf,
    int length,
    [SocketAddress](SocketAddress.md "class in java.net") address)

    Constructs a datagram packet for sending packets of length
    `length` to the specified port number on the specified
    host. The `length` argument must be less than or equal
    to `buf.length`.

    Parameters:
    :   `buf` - the packet data.
    :   `length` - the packet length.
    :   `address` - the destination address.

    Throws:
    :   `IllegalArgumentException` - if address is null or its type is
        not supported, or if the length is negative, or if the length
        is greater than the length of the packet's given buffer, or
        if the port is out of range.

    Since:
    :   1.4

    See Also:
    :   - [`InetAddress`](InetAddress.md "class in java.net")
* ## Method Details

  + ### getAddress

    public [InetAddress](InetAddress.md "class in java.net") getAddress()

    Returns the IP address of the machine to which this datagram is being
    sent or from which the datagram was received, or `null` if not
    set.

    Returns:
    :   the IP address of the machine to which this datagram is being
        sent or from which the datagram was received.

    See Also:
    :   - [`InetAddress`](InetAddress.md "class in java.net")
        - [`setAddress(java.net.InetAddress)`](#setAddress(java.net.InetAddress))
  + ### getPort

    public int getPort()

    Returns the port number on the remote host to which this datagram is
    being sent or from which the datagram was received, or 0 if not set.

    Returns:
    :   the port number on the remote host to which this datagram is
        being sent or from which the datagram was received.

    See Also:
    :   - [`setPort(int)`](#setPort(int))
  + ### getData

    public byte[] getData()

    Returns the data buffer. The data received or the data to be sent
    starts from the `offset` in the buffer,
    and runs for `length` long.

    Returns:
    :   the buffer used to receive or send data

    See Also:
    :   - [`setData(byte[], int, int)`](#setData(byte%5B%5D,int,int))
  + ### getOffset

    public int getOffset()

    Returns the offset of the data to be sent or the offset of the
    data received.

    Returns:
    :   the offset of the data to be sent or the offset of the
        data received.

    Since:
    :   1.2
  + ### getLength

    public int getLength()

    Returns the length of the data to be sent or the length of the
    data received.

    Returns:
    :   the length of the data to be sent or the length of the
        data received.

    See Also:
    :   - [`setLength(int)`](#setLength(int))
  + ### setData

    public void setData(byte[] buf,
    int offset,
    int length)

    Set the data buffer for this packet. This sets the
    data, length and offset of the packet.

    Parameters:
    :   `buf` - the buffer to set for this packet
    :   `offset` - the offset into the data
    :   `length` - the length of the data
        and/or the length of the buffer used to receive data

    Throws:
    :   `IllegalArgumentException` - if the length or offset
        is negative, or if the length plus the offset is
        greater than the length of the packet's given buffer.

    Since:
    :   1.2

    See Also:
    :   - [`getData()`](#getData())
        - [`getOffset()`](#getOffset())
        - [`getLength()`](#getLength())
  + ### setAddress

    public void setAddress([InetAddress](InetAddress.md "class in java.net") iaddr)

    Sets the IP address of the machine to which this datagram
    is being sent.

    Parameters:
    :   `iaddr` - the `InetAddress`, or `null`.

    Since:
    :   1.1

    See Also:
    :   - [`getAddress()`](#getAddress())
  + ### setPort

    public void setPort(int iport)

    Sets the port number on the remote host to which this datagram
    is being sent.

    Parameters:
    :   `iport` - the port number

    Throws:
    :   `IllegalArgumentException` - if the port is out of range

    Since:
    :   1.1

    See Also:
    :   - [`getPort()`](#getPort())
  + ### setSocketAddress

    public void setSocketAddress([SocketAddress](SocketAddress.md "class in java.net") address)

    Sets the SocketAddress (usually IP address + port number) of the remote
    host to which this datagram is being sent.

    Parameters:
    :   `address` - the `SocketAddress`

    Throws:
    :   `IllegalArgumentException` - if address is null or is a
        SocketAddress subclass not supported.

    Since:
    :   1.4

    See Also:
    :   - [`getSocketAddress()`](#getSocketAddress())
  + ### getSocketAddress

    public [SocketAddress](SocketAddress.md "class in java.net") getSocketAddress()

    Returns the [`SocketAddress`](InetSocketAddress.md#%3Cinit%3E(java.net.InetAddress,int)) (usually [IP address](#getAddress()) +
    [port number](#getPort())) of the remote host that this packet
    is being sent to or is coming from.

    Returns:
    :   the `SocketAddress`

    Since:
    :   1.4

    See Also:
    :   - [`setSocketAddress(java.net.SocketAddress)`](#setSocketAddress(java.net.SocketAddress))
  + ### setData

    public void setData(byte[] buf)

    Set the data buffer for this packet. With the offset of
    this DatagramPacket set to 0, and the length set to
    the length of `buf`.

    Parameters:
    :   `buf` - the buffer to set for this packet.

    Since:
    :   1.1

    See Also:
    :   - [`getLength()`](#getLength())
        - [`getData()`](#getData())
  + ### setLength

    public void setLength(int length)

    Set the length for this packet. The length of the packet is
    the number of bytes from the packet's data buffer that will be
    sent, or the number of bytes of the packet's data buffer that
    will be used for receiving data. The `length` plus the
    [`offset`](#getOffset()) must be lesser or equal to the
    length of the packet's data buffer.

    Parameters:
    :   `length` - the length to set for this packet.

    Throws:
    :   `IllegalArgumentException` - if the length is negative,
        or if the length plus the offset is greater than the
        length of the packet's data buffer.

    Since:
    :   1.1

    See Also:
    :   - [`getLength()`](#getLength())
        - [`setData(byte[], int, int)`](#setData(byte%5B%5D,int,int))