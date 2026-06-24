Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface MulticastChannel

All Superinterfaces:
:   `AutoCloseable`, `Channel`, `Closeable`, `NetworkChannel`

All Known Implementing Classes:
:   `DatagramChannel`

---

public interface MulticastChannel
extends [NetworkChannel](NetworkChannel.md "interface in java.nio.channels")

A network channel that supports Internet Protocol (IP) multicasting.

IP multicasting is the transmission of IP datagrams to members of
a *group* that is zero or more hosts identified by a single destination
address.

In the case of a channel to an [`IPv4`](../../net/StandardProtocolFamily.md#INET) socket,
the underlying operating system optionally supports
 [*RFC 2236: Internet Group
Management Protocol, Version 2 (IGMPv2)*](http://www.ietf.org/rfc/rfc2236.txt). When IGMPv2 is supported then
the operating system may additionally support source filtering as specified by
 [*RFC 3376: Internet Group
Management Protocol, Version 3 (IGMPv3)*](http://www.ietf.org/rfc/rfc3376.txt).
For channels to an [`IPv6`](../../net/StandardProtocolFamily.md#INET6) socket, the equivalent
standards are  [*RFC 2710:
Multicast Listener Discovery (MLD) for IPv6*](http://www.ietf.org/rfc/rfc2710.txt) and  [*RFC 3810: Multicast Listener
Discovery Version 2 (MLDv2) for IPv6*](http://www.ietf.org/rfc/rfc3810.txt).

The [`join(InetAddress,NetworkInterface)`](#join(java.net.InetAddress,java.net.NetworkInterface)) method is used to
join a group and receive all multicast datagrams sent to the group. A channel
may join several multicast groups and may join the same group on several
[`interfaces`](../../net/NetworkInterface.md "class in java.net"). Membership is dropped by invoking the [`drop`](MembershipKey.md#drop()) method on the returned [`MembershipKey`](MembershipKey.md "class in java.nio.channels"). If the
underlying platform supports source filtering then the [`block`](MembershipKey.md#block(java.net.InetAddress)) and [`unblock`](MembershipKey.md#unblock(java.net.InetAddress)) methods can be used to block or
unblock multicast datagrams from particular source addresses.

The [`join(InetAddress,NetworkInterface,InetAddress)`](#join(java.net.InetAddress,java.net.NetworkInterface,java.net.InetAddress)) method
is used to begin receiving datagrams sent to a group whose source address matches
a given source address. This method throws [`UnsupportedOperationException`](../../lang/UnsupportedOperationException.md "class in java.lang")
if the underlying platform does not support source filtering. Membership is
*cumulative* and this method may be invoked again with the same group
and interface to allow receiving datagrams from other source addresses. The
method returns a [`MembershipKey`](MembershipKey.md "class in java.nio.channels") that represents membership to receive
datagrams from the given source address. Invoking the key's [`drop`](MembershipKey.md#drop()) method drops membership so that datagrams from the
source address can no longer be received.

## Platform dependencies

The multicast implementation is intended to map directly to the native
multicasting facility. Consequently, the following items should be considered
when developing an application that receives IP multicast datagrams:

1. The creation of the channel should specify the [`ProtocolFamily`](../../net/ProtocolFamily.md "interface in java.net")
   that corresponds to the address type of the multicast groups that the channel
   will join. There is no guarantee that a channel to a socket in one protocol
   family can join and receive multicast datagrams when the address of the
   multicast group corresponds to another protocol family. For example, it is
   implementation specific if a channel to an [`IPv6`](../../net/StandardProtocolFamily.md#INET6)
   socket can join an [`IPv4`](../../net/StandardProtocolFamily.md#INET) multicast group and receive
   multicast datagrams sent to the group.
2. The channel's socket should be bound to the [`wildcard`](../../net/InetAddress.md#isAnyLocalAddress()) address. If the socket is bound to
   a specific address, rather than the wildcard address then it is implementation
   specific if multicast datagrams are received by the socket.
3. The [`SO_REUSEADDR`](../../net/StandardSocketOptions.md#SO_REUSEADDR) option should be
   enabled prior to [`binding`](NetworkChannel.md#bind(java.net.SocketAddress)) the socket. This is
   required to allow multiple members of the group to bind to the same
   address.

**Usage Example:**

Copy![Copy snippet](../../../../copy.svg)

```
    // join multicast group on this interface, and also use this
    // interface for outgoing multicast datagrams
    NetworkInterface ni = NetworkInterface.getByName("hme0");

    DatagramChannel dc = DatagramChannel.open(StandardProtocolFamily.INET)
        .setOption(StandardSocketOptions.SO_REUSEADDR, true)
        .bind(new InetSocketAddress(5000))
        .setOption(StandardSocketOptions.IP_MULTICAST_IF, ni);

    InetAddress group = InetAddress.getByName("225.4.5.6");

    MembershipKey key = dc.join(group, ni);
```

Since:
:   1.7

External Specifications
:   * [RFC 2236: Internet Group Management Protocol, Version 2](https://www.rfc-editor.org/info/rfc2236)
    * [RFC 2710: Multicast Listener Discovery (MLD) for IPv6](https://www.rfc-editor.org/info/rfc2710)
    * [RFC 3376: Internet Group Management Protocol, Version 3](https://www.rfc-editor.org/info/rfc3376)
    * [RFC 3810: Multicast Listener Discovery Version 2 (MLDv2) for IPv6](https://www.rfc-editor.org/info/rfc3810)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this channel.

  `MembershipKey`

  `join(InetAddress group,
  NetworkInterface interf)`

  Joins a multicast group to begin receiving all datagrams sent to the group,
  returning a membership key.

  `MembershipKey`

  `join(InetAddress group,
  NetworkInterface interf,
  InetAddress source)`

  Joins a multicast group to begin receiving datagrams sent to the group
  from a given source address.

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `isOpen`

  ### Methods inherited from interface java.nio.channels.[NetworkChannel](NetworkChannel.md "interface in java.nio.channels")

  `bind, getLocalAddress, getOption, setOption, supportedOptions`

* ## Method Details

  + ### close

    void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this channel.

    If the channel is a member of a multicast group then the membership
    is [`dropped`](MembershipKey.md#drop()). Upon return, the [`membership-key`](MembershipKey.md "class in java.nio.channels") will be [`invalid`](MembershipKey.md#isValid()).

    This method otherwise behaves exactly as specified by the [`Channel`](Channel.md "interface in java.nio.channels") interface.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Channel`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### join

    [MembershipKey](MembershipKey.md "class in java.nio.channels") join([InetAddress](../../net/InetAddress.md "class in java.net") group,
    [NetworkInterface](../../net/NetworkInterface.md "class in java.net") interf)
    throws [IOException](../../io/IOException.md "class in java.io")

    Joins a multicast group to begin receiving all datagrams sent to the group,
    returning a membership key.

    If this channel is currently a member of the group on the given
    interface to receive all datagrams then the membership key, representing
    that membership, is returned. Otherwise this channel joins the group and
    the resulting new membership key is returned. The resulting membership key
    is not [`source-specific`](MembershipKey.md#sourceAddress()).

    A multicast channel may join several multicast groups, including
    the same group on more than one interface. An implementation may impose a
    limit on the number of groups that may be joined at the same time.

    Parameters:
    :   `group` - The multicast address to join
    :   `interf` - The network interface on which to join the group

    Returns:
    :   The membership key

    Throws:
    :   `IllegalArgumentException` - If the group parameter is not a [`multicast`](../../net/InetAddress.md#isMulticastAddress()) address, or the group parameter is an address type
        that is not supported by this channel
    :   `IllegalStateException` - If the channel already has source-specific membership of the
        group on the interface
    :   `UnsupportedOperationException` - If the channel's socket is not an Internet Protocol socket, or
        the platform does not support multicasting
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If an I/O error occurs
    :   `SecurityException` - If a security manager is set, and its
        [`checkMulticast`](../../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        method denies access to the multicast group
  + ### join

    [MembershipKey](MembershipKey.md "class in java.nio.channels") join([InetAddress](../../net/InetAddress.md "class in java.net") group,
    [NetworkInterface](../../net/NetworkInterface.md "class in java.net") interf,
    [InetAddress](../../net/InetAddress.md "class in java.net") source)
    throws [IOException](../../io/IOException.md "class in java.io")

    Joins a multicast group to begin receiving datagrams sent to the group
    from a given source address.

    If this channel is currently a member of the group on the given
    interface to receive datagrams from the given source address then the
    membership key, representing that membership, is returned. Otherwise this
    channel joins the group and the resulting new membership key is returned.
    The resulting membership key is [`source-specific`](MembershipKey.md#sourceAddress()).

    Membership is *cumulative* and this method may be invoked
    again with the same group and interface to allow receiving datagrams sent
    by other source addresses to the group.

    Parameters:
    :   `group` - The multicast address to join
    :   `interf` - The network interface on which to join the group
    :   `source` - The source address

    Returns:
    :   The membership key

    Throws:
    :   `IllegalArgumentException` - If the group parameter is not a [`multicast`](../../net/InetAddress.md#isMulticastAddress()) address, the
        source parameter is not a unicast address, the group
        parameter is an address type that is not supported by this channel,
        or the source parameter is not the same address type as the group
    :   `IllegalStateException` - If the channel is currently a member of the group on the given
        interface to receive all datagrams
    :   `UnsupportedOperationException` - If the channel's socket is not an Internet Protocol socket, or
        source filtering is not supported, or the platform does not
        support multicasting
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If an I/O error occurs
    :   `SecurityException` - If a security manager is set, and its
        [`checkMulticast`](../../lang/SecurityManager.md#checkMulticast(java.net.InetAddress))
        method denies access to the multicast group