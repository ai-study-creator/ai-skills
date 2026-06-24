Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class Inet4Address

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.InetAddress](InetAddress.md "class in java.net")

java.net.Inet4Address

All Implemented Interfaces:
:   `Serializable`

---

public final class Inet4Address
extends [InetAddress](InetAddress.md "class in java.net")

This class represents an Internet Protocol version 4 (IPv4) address.
Defined by [*RFC 790: Assigned Numbers*](http://www.ietf.org/rfc/rfc790.txt),
[*RFC 1918: Address Allocation for Private Internets*](http://www.ietf.org/rfc/rfc1918.txt),
and [*RFC 2365:
Administratively Scoped IP Multicast*](http://www.ietf.org/rfc/rfc2365.txt)

## Textual representation of IP addresses

Textual representation of IPv4 address used as input to methods
takes one of the following forms:
> * `d.d.d.d`
> * `d.d.d`
> * `d.d`
> * `d`

When four parts are specified, each is interpreted as a byte of
data and assigned, from left to right, to the four bytes of an IPv4
address.

When a three part address is specified, the last part is
interpreted as a 16-bit quantity and placed in the right most two
bytes of the network address. This makes the three part address
format convenient for specifying Class B net- work addresses as
128.net.host.

When a two part address is supplied, the last part is
interpreted as a 24-bit quantity and placed in the right most three
bytes of the network address. This makes the two part address
format convenient for specifying Class A network addresses as
net.host.

When only one part is given, the value is stored directly in
the network address without any byte rearrangement.

For methods that return a textual representation as output
value, the first form, i.e. a dotted-quad string, is used.

### The Scope of a Multicast Address

Historically the IPv4 TTL field in the IP header has doubled as a
multicast scope field: a TTL of 0 means node-local, 1 means
link-local, up through 32 means site-local, up through 64 means
region-local, up through 128 means continent-local, and up through
255 are global. However, the administrative scoping is preferred.
Please refer to [*RFC 2365: Administratively Scoped IP Multicast*](http://www.ietf.org/rfc/rfc2365.txt)

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.Inet4Address)

External Specifications
:   * [RFC 1918: Address Allocation for Private Internets](https://www.rfc-editor.org/info/rfc1918)
    * [RFC 2365: Administratively Scoped IP Multicast](https://www.rfc-editor.org/info/rfc2365)
    * [RFC 790: Assigned numbers](https://www.rfc-editor.org/info/rfc790)

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this object against the specified object.

  `byte[]`

  `getAddress()`

  Returns the raw IP address of this `InetAddress`
  object.

  `String`

  `getHostAddress()`

  Returns the IP address string in textual presentation form.

  `int`

  `hashCode()`

  Returns a hashcode for this IP address.

  `boolean`

  `isAnyLocalAddress()`

  Utility routine to check if the InetAddress is a wildcard address.

  `boolean`

  `isLinkLocalAddress()`

  Utility routine to check if the InetAddress is a link local address.

  `boolean`

  `isLoopbackAddress()`

  Utility routine to check if the InetAddress is a loopback address.

  `boolean`

  `isMCGlobal()`

  Utility routine to check if the multicast address has global scope.

  `boolean`

  `isMCLinkLocal()`

  Utility routine to check if the multicast address has link scope.

  `boolean`

  `isMCNodeLocal()`

  Utility routine to check if the multicast address has node scope.

  `boolean`

  `isMCOrgLocal()`

  Utility routine to check if the multicast address has organization scope.

  `boolean`

  `isMCSiteLocal()`

  Utility routine to check if the multicast address has site scope.

  `boolean`

  `isMulticastAddress()`

  Utility routine to check if the InetAddress is an
  IP multicast address.

  `boolean`

  `isSiteLocalAddress()`

  Utility routine to check if the InetAddress is a site local address.

  ### Methods inherited from class java.net.[InetAddress](InetAddress.md "class in java.net")

  `getAllByName, getByAddress, getByAddress, getByName, getCanonicalHostName, getHostName, getLocalHost, getLoopbackAddress, isReachable, isReachable, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### isMulticastAddress

    public boolean isMulticastAddress()

    Utility routine to check if the InetAddress is an
    IP multicast address. IP multicast address is a Class D
    address i.e first four bits of the address are 1110.

    Overrides:
    :   `isMulticastAddress` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the InetAddress is
        an IP multicast address
  + ### isAnyLocalAddress

    public boolean isAnyLocalAddress()

    Utility routine to check if the InetAddress is a wildcard address.

    Overrides:
    :   `isAnyLocalAddress` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the InetAddress is
        a wildcard address.
  + ### isLoopbackAddress

    public boolean isLoopbackAddress()

    Utility routine to check if the InetAddress is a loopback address.

    Overrides:
    :   `isLoopbackAddress` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the InetAddress is
        a loopback address; or false otherwise.
  + ### isLinkLocalAddress

    public boolean isLinkLocalAddress()

    Utility routine to check if the InetAddress is a link local address.

    Overrides:
    :   `isLinkLocalAddress` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the InetAddress is
        a link local address; or false if address is not a link local unicast address.
  + ### isSiteLocalAddress

    public boolean isSiteLocalAddress()

    Utility routine to check if the InetAddress is a site local address.

    Overrides:
    :   `isSiteLocalAddress` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the InetAddress is
        a site local address; or false if address is not a site local unicast address.
  + ### isMCGlobal

    public boolean isMCGlobal()

    Utility routine to check if the multicast address has global scope.

    Overrides:
    :   `isMCGlobal` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the address has
        is a multicast address of global scope, false if it is not
        of global scope or it is not a multicast address
  + ### isMCNodeLocal

    public boolean isMCNodeLocal()

    Utility routine to check if the multicast address has node scope.

    Overrides:
    :   `isMCNodeLocal` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the address has
        is a multicast address of node-local scope, false if it is not
        of node-local scope or it is not a multicast address
  + ### isMCLinkLocal

    public boolean isMCLinkLocal()

    Utility routine to check if the multicast address has link scope.

    Overrides:
    :   `isMCLinkLocal` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the address has
        is a multicast address of link-local scope, false if it is not
        of link-local scope or it is not a multicast address
  + ### isMCSiteLocal

    public boolean isMCSiteLocal()

    Utility routine to check if the multicast address has site scope.

    Overrides:
    :   `isMCSiteLocal` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the address has
        is a multicast address of site-local scope, false if it is not
        of site-local scope or it is not a multicast address
  + ### isMCOrgLocal

    public boolean isMCOrgLocal()

    Utility routine to check if the multicast address has organization scope.

    Overrides:
    :   `isMCOrgLocal` in class `InetAddress`

    Returns:
    :   a `boolean` indicating if the address has
        is a multicast address of organization-local scope,
        false if it is not of organization-local scope
        or it is not a multicast address
  + ### getAddress

    public byte[] getAddress()

    Returns the raw IP address of this `InetAddress`
    object. The result is in network byte order: the highest order
    byte of the address is in `getAddress()[0]`.

    Overrides:
    :   `getAddress` in class `InetAddress`

    Returns:
    :   the raw IP address of this object.
  + ### getHostAddress

    public [String](../lang/String.md "class in java.lang") getHostAddress()

    Returns the IP address string in textual presentation form.

    Overrides:
    :   `getHostAddress` in class `InetAddress`

    Returns:
    :   the raw IP address in a string format.
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this IP address.

    Overrides:
    :   `hashCode` in class `InetAddress`

    Returns:
    :   a hash code value for this IP address.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this object against the specified object.
    The result is `true` if and only if the argument is
    not `null` and it represents the same IP address as
    this object.

    Two instances of `InetAddress` represent the same IP
    address if the length of the byte arrays returned by
    `getAddress` is the same for both, and each of the
    array components is the same for the byte arrays.

    Overrides:
    :   `equals` in class `InetAddress`

    Parameters:
    :   `obj` - the object to compare against.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`InetAddress.getAddress()`](InetAddress.md#getAddress())