Module [java.base](../../../module-summary.md)

Package [java.net.spi](package-summary.md)

# Class InetAddressResolver.LookupPolicy

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.net.spi.InetAddressResolver.LookupPolicy

Enclosing interface:
:   `InetAddressResolver`

---

public static final class InetAddressResolver.LookupPolicy
extends [Object](../../lang/Object.md "class in java.lang")

A `LookupPolicy` object describes characteristics that can be applied to a lookup operation.
In particular, it is used to specify the ordering and which filtering should be performed when
[looking up host addresses](InetAddressResolver.md#lookupByName(java.lang.String,java.net.spi.InetAddressResolver.LookupPolicy)).

The default platform-wide lookup policy is constructed by consulting
[System Properties](doc-files/net-properties.md#Ipv4IPv6) which affect
how IPv4 and IPv6 addresses are returned.

Since:
:   18

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `IPV4`

  Characteristic value signifying if IPv4 addresses need to be queried during lookup.

  `static final int`

  `IPV4_FIRST`

  Characteristic value signifying if IPv4 addresses should be returned
  first by `InetAddressResolver`.

  `static final int`

  `IPV6`

  Characteristic value signifying if IPv6 addresses need to be queried during lookup.

  `static final int`

  `IPV6_FIRST`

  Characteristic value signifying if IPv6 addresses should be returned
  first by `InetAddressResolver`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `characteristics()`

  Returns the set of characteristics of this lookup policy.

  `static InetAddressResolver.LookupPolicy`

  `of(int characteristics)`

  This factory method creates a [`LookupPolicy`](InetAddressResolver.LookupPolicy.md "class in java.net.spi") instance with
  the given `characteristics` value.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IPV4

    [@Native](../../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int IPV4

    Characteristic value signifying if IPv4 addresses need to be queried during lookup.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.net.spi.InetAddressResolver.LookupPolicy.IPV4)
  + ### IPV6

    [@Native](../../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int IPV6

    Characteristic value signifying if IPv6 addresses need to be queried during lookup.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.net.spi.InetAddressResolver.LookupPolicy.IPV6)
  + ### IPV4\_FIRST

    [@Native](../../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int IPV4\_FIRST

    Characteristic value signifying if IPv4 addresses should be returned
    first by `InetAddressResolver`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.net.spi.InetAddressResolver.LookupPolicy.IPV4_FIRST)
  + ### IPV6\_FIRST

    [@Native](../../lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int IPV6\_FIRST

    Characteristic value signifying if IPv6 addresses should be returned
    first by `InetAddressResolver`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.net.spi.InetAddressResolver.LookupPolicy.IPV6_FIRST)
* ## Method Details

  + ### of

    public static [InetAddressResolver.LookupPolicy](InetAddressResolver.LookupPolicy.md "class in java.net.spi") of(int characteristics)

    This factory method creates a [`LookupPolicy`](InetAddressResolver.LookupPolicy.md "class in java.net.spi") instance with
    the given `characteristics` value.

    The `characteristics` value is an integer bit mask which defines
    parameters of a forward lookup operation. These parameters define at least:
    - the family type of the returned addresses
    - the order in which a [resolver](InetAddressResolver.md "interface in java.net.spi")
      implementation should return its results

    To request addresses of specific family types the following bit masks can be combined:
    - [`IPV4`](#IPV4): to request IPv4 addresses
    - [`IPV6`](#IPV6): to request IPv6 addresses  
    It is an error if neither [`IPV4`](#IPV4) or [`IPV6`](#IPV6) are set.

    To request a specific ordering of the results:
    - [`IPV4_FIRST`](#IPV4_FIRST): return IPv4 addresses before any IPv6 address
    - [`IPV6_FIRST`](#IPV6_FIRST): return IPv6 addresses before any IPv4 address  
    If neither [`IPV4_FIRST`](#IPV4_FIRST) or [`IPV6_FIRST`](#IPV6_FIRST) are set it
    implies ["system"](../../../../java.base/java/net/doc-files/net-properties.md#Ipv4IPv6)
    order of addresses.
    It is an error to request both [`IPV4_FIRST`](#IPV4_FIRST) and [`IPV6_FIRST`](#IPV6_FIRST).

    Parameters:
    :   `characteristics` - a value which represents the set of lookup characteristics

    Returns:
    :   an instance of `InetAddressResolver.LookupPolicy`

    Throws:
    :   `IllegalArgumentException` - if an illegal characteristics bit mask is provided

    See Also:
    :   - [`InetAddressResolver.lookupByName(String, LookupPolicy)`](InetAddressResolver.md#lookupByName(java.lang.String,java.net.spi.InetAddressResolver.LookupPolicy))
  + ### characteristics

    public int characteristics()

    Returns the set of characteristics of this lookup policy.

    Returns:
    :   a characteristics value

    See Also:
    :   - [`InetAddressResolver.lookupByName(String, LookupPolicy)`](InetAddressResolver.md#lookupByName(java.lang.String,java.net.spi.InetAddressResolver.LookupPolicy))