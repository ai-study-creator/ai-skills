Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class MembershipKey

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.MembershipKey

---

public abstract class MembershipKey
extends [Object](../../lang/Object.md "class in java.lang")

A token representing the membership of an Internet Protocol (IP) multicast
group.

A membership key may represent a membership to receive all datagrams sent
to the group, or it may be *source-specific*, meaning that it
represents a membership that receives only datagrams from a specific source
address. Whether or not a membership key is source-specific may be determined
by invoking its [`sourceAddress`](#sourceAddress()) method.

A membership key is valid upon creation and remains valid until the
membership is dropped by invoking the [`drop`](#drop()) method, or
the channel is closed. The validity of the membership key may be tested
by invoking its [`isValid`](#isValid()) method.

Where a membership key is not source-specific and the underlying operation
system supports source filtering, then the [`block`](#block(java.net.InetAddress)) and [`unblock`](#unblock(java.net.InetAddress)) methods can be used to block or unblock multicast datagrams
from particular source addresses.

Since:
:   1.7

See Also:
:   * [`MulticastChannel`](MulticastChannel.md "interface in java.nio.channels")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MembershipKey()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract MembershipKey`

  `block(InetAddress source)`

  Block multicast datagrams from the given source address.

  `abstract MulticastChannel`

  `channel()`

  Returns the channel for which this membership key was created.

  `abstract void`

  `drop()`

  Drop membership.

  `abstract InetAddress`

  `group()`

  Returns the multicast group for which this membership key was created.

  `abstract boolean`

  `isValid()`

  Tells whether or not this membership is valid.

  `abstract NetworkInterface`

  `networkInterface()`

  Returns the network interface for which this membership key was created.

  `abstract InetAddress`

  `sourceAddress()`

  Returns the source address if this membership key is source-specific,
  or `null` if this membership is not source-specific.

  `abstract MembershipKey`

  `unblock(InetAddress source)`

  Unblock multicast datagrams from the given source address that was
  previously blocked using the [`block`](#block(java.net.InetAddress)) method.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MembershipKey

    protected MembershipKey()

    Initializes a new instance of this class.
* ## Method Details

  + ### isValid

    public abstract boolean isValid()

    Tells whether or not this membership is valid.

    A multicast group membership is valid upon creation and remains
    valid until the membership is dropped by invoking the [`drop`](#drop())
    method, or the channel is closed.

    Returns:
    :   `true` if this membership key is valid, `false`
        otherwise
  + ### drop

    public abstract void drop()

    Drop membership.

    If the membership key represents a membership to receive all datagrams
    then the membership is dropped and the channel will no longer receive any
    datagrams sent to the group. If the membership key is source-specific
    then the channel will no longer receive datagrams sent to the group from
    that source address.

    After membership is dropped it may still be possible to receive
    datagrams sent to the group. This can arise when datagrams are waiting to
    be received in the socket's receive buffer. After membership is dropped
    then the channel may [`join`](MulticastChannel.md#join(java.net.InetAddress,java.net.NetworkInterface)) the group again
    in which case a new membership key is returned.

    Upon return, this membership object will be [`invalid`](#isValid()).
    If the multicast group membership is already invalid then invoking this
    method has no effect. Once a multicast group membership is invalid,
    it remains invalid forever.
  + ### block

    public abstract [MembershipKey](MembershipKey.md "class in java.nio.channels") block([InetAddress](../../net/InetAddress.md "class in java.net") source)
    throws [IOException](../../io/IOException.md "class in java.io")

    Block multicast datagrams from the given source address.

    If this membership key is not source-specific, and the underlying
    operating system supports source filtering, then this method blocks
    multicast datagrams from the given source address. If the given source
    address is already blocked then this method has no effect.
    After a source address is blocked it may still be possible to receive
    datagrams from that source. This can arise when datagrams are waiting to
    be received in the socket's receive buffer.

    Parameters:
    :   `source` - The source address to block

    Returns:
    :   This membership key

    Throws:
    :   `IllegalArgumentException` - If the `source` parameter is not a unicast address or
        is not the same address type as the multicast group
    :   `IllegalStateException` - If this membership key is source-specific or is no longer valid
    :   `UnsupportedOperationException` - If the underlying operating system does not support source
        filtering
    :   `IOException` - If an I/O error occurs
  + ### unblock

    public abstract [MembershipKey](MembershipKey.md "class in java.nio.channels") unblock([InetAddress](../../net/InetAddress.md "class in java.net") source)

    Unblock multicast datagrams from the given source address that was
    previously blocked using the [`block`](#block(java.net.InetAddress)) method.

    Parameters:
    :   `source` - The source address to unblock

    Returns:
    :   This membership key

    Throws:
    :   `IllegalStateException` - If the given source address is not currently blocked or the
        membership key is no longer valid
  + ### channel

    public abstract [MulticastChannel](MulticastChannel.md "interface in java.nio.channels") channel()

    Returns the channel for which this membership key was created. This
    method will continue to return the channel even after the membership
    becomes [`invalid`](#isValid()).

    Returns:
    :   the channel
  + ### group

    public abstract [InetAddress](../../net/InetAddress.md "class in java.net") group()

    Returns the multicast group for which this membership key was created.
    This method will continue to return the group even after the membership
    becomes [`invalid`](#isValid()).

    Returns:
    :   the multicast group
  + ### networkInterface

    public abstract [NetworkInterface](../../net/NetworkInterface.md "class in java.net") networkInterface()

    Returns the network interface for which this membership key was created.
    This method will continue to return the network interface even after the
    membership becomes [`invalid`](#isValid()).

    Returns:
    :   the network interface
  + ### sourceAddress

    public abstract [InetAddress](../../net/InetAddress.md "class in java.net") sourceAddress()

    Returns the source address if this membership key is source-specific,
    or `null` if this membership is not source-specific.

    Returns:
    :   The source address if this membership key is source-specific,
        otherwise `null`