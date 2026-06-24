Module [java.base](../../../module-summary.md)

Package [java.net.spi](package-summary.md)

# Interface InetAddressResolver

---

public interface InetAddressResolver

This interface defines operations for looking up host names and IP addresses.
[`InetAddress`](../InetAddress.md "class in java.net") delegates all lookup operations to the *system-wide
resolver*.

The *system-wide resolver* can be customized by
[deploying an implementation](InetAddressResolverProvider.md#system-wide-resolver) of [`InetAddressResolverProvider`](InetAddressResolverProvider.md "class in java.net.spi").

Since:
:   18

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static final class`

  `InetAddressResolver.LookupPolicy`

  A `LookupPolicy` object describes characteristics that can be applied to a lookup operation.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `lookupByAddress(byte[] addr)`

  Lookup the host name corresponding to the raw IP address provided.

  `Stream<InetAddress>`

  `lookupByName(String host,
  InetAddressResolver.LookupPolicy lookupPolicy)`

  Given the name of a host, returns a stream of IP addresses of the requested
  address family associated with a provided hostname.

* ## Method Details

  + ### lookupByName

    [Stream](../../util/stream/Stream.md "interface in java.util.stream")<[InetAddress](../InetAddress.md "class in java.net")> lookupByName([String](../../lang/String.md "class in java.lang") host,
    [InetAddressResolver.LookupPolicy](InetAddressResolver.LookupPolicy.md "class in java.net.spi") lookupPolicy)
    throws [UnknownHostException](../UnknownHostException.md "class in java.net")

    Given the name of a host, returns a stream of IP addresses of the requested
    address family associated with a provided hostname.

    `host` should be a machine name, such as "`www.example.com`",
    not a textual representation of its IP address. No validation is performed on
    the given `host` name: if a textual representation is supplied, the name
    resolution is likely to fail and [`UnknownHostException`](../UnknownHostException.md "class in java.net") may be thrown.

    The address family type and addresses order are specified by the
    `LookupPolicy` instance. Lookup operation characteristics could be
    acquired with [`InetAddressResolver.LookupPolicy.characteristics()`](InetAddressResolver.LookupPolicy.md#characteristics()).
    If [`InetAddressResolver.LookupPolicy.IPV4`](InetAddressResolver.LookupPolicy.md#IPV4) and
    [`InetAddressResolver.LookupPolicy.IPV6`](InetAddressResolver.LookupPolicy.md#IPV6) characteristics provided then this
    method returns addresses of both IPV4 and IPV6 families.

    Parameters:
    :   `host` - the specified hostname
    :   `lookupPolicy` - the address lookup policy

    Returns:
    :   a stream of IP addresses for the requested host

    Throws:
    :   `NullPointerException` - if either parameter is `null`
    :   `UnknownHostException` - if no IP address for the `host` could be found

    See Also:
    :   - [`InetAddressResolver.LookupPolicy`](InetAddressResolver.LookupPolicy.md "class in java.net.spi")
  + ### lookupByAddress

    [String](../../lang/String.md "class in java.lang") lookupByAddress(byte[] addr)
    throws [UnknownHostException](../UnknownHostException.md "class in java.net")

    Lookup the host name corresponding to the raw IP address provided.

    `addr` argument is in network byte order: the highest order byte of the address
    is in `addr[0]`.

    IPv4 address byte array must be 4 bytes long and IPv6 byte array
    must be 16 bytes long.

    Parameters:
    :   `addr` - byte array representing a raw IP address

    Returns:
    :   `String` representing the host name mapping

    Throws:
    :   `UnknownHostException` - if no host name is found for the specified IP address
    :   `IllegalArgumentException` - if the length of the provided byte array doesn't correspond
        to a valid IP address length
    :   `NullPointerException` - if addr is `null`