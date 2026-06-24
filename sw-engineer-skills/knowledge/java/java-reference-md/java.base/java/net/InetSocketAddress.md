Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class InetSocketAddress

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.SocketAddress](SocketAddress.md "class in java.net")

java.net.InetSocketAddress

All Implemented Interfaces:
:   `Serializable`

---

public class InetSocketAddress
extends [SocketAddress](SocketAddress.md "class in java.net")

This class implements an IP Socket Address (IP address + port number)
It can also be a pair (hostname + port number), in which case an attempt
will be made to resolve the hostname. If resolution fails then the address
is said to be *unresolved* but can still be used on some circumstances
like connecting through a proxy.

It provides an immutable object used by sockets for binding, connecting, or
as returned values.

The *wildcard* is a special local IP address. It usually means "any"
and can only be used for `bind` operations.

Since:
:   1.4

See Also:
:   * [`Socket`](Socket.md "class in java.net")
    * [`ServerSocket`](ServerSocket.md "class in java.net")
    * [Serialized Form](../../../serialized-form.md#java.net.InetSocketAddress)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InetSocketAddress(int port)`

  Creates a socket address where the IP address is the wildcard address
  and the port number a specified value.

  `InetSocketAddress(String hostname,
  int port)`

  Creates a socket address from a hostname and a port number.

  `InetSocketAddress(InetAddress addr,
  int port)`

  Creates a socket address from an IP address and a port number.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static InetSocketAddress`

  `createUnresolved(String host,
  int port)`

  Creates an unresolved socket address from a hostname and a port number.

  `final boolean`

  `equals(Object obj)`

  Compares this object against the specified object.

  `final InetAddress`

  `getAddress()`

  Gets the `InetAddress`.

  `final String`

  `getHostName()`

  Gets the `hostname`.

  `final String`

  `getHostString()`

  Returns the hostname, or the String form of the address if it
  doesn't have a hostname (it was created using a literal).

  `final int`

  `getPort()`

  Gets the port number.

  `final int`

  `hashCode()`

  Returns a hashcode for this socket address.

  `final boolean`

  `isUnresolved()`

  Checks whether the address has been resolved or not.

  `String`

  `toString()`

  Constructs a string representation of this InetSocketAddress.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InetSocketAddress

    public InetSocketAddress(int port)

    Creates a socket address where the IP address is the wildcard address
    and the port number a specified value.

    A valid port value is between 0 and 65535.
    A port number of `zero` will let the system pick up an
    ephemeral port in a `bind` operation.

    Parameters:
    :   `port` - The port number

    Throws:
    :   `IllegalArgumentException` - if the port parameter is outside the specified
        range of valid port values.
  + ### InetSocketAddress

    public InetSocketAddress([InetAddress](InetAddress.md "class in java.net") addr,
    int port)

    Creates a socket address from an IP address and a port number.

    A valid port value is between 0 and 65535.
    A port number of `zero` will let the system pick up an
    ephemeral port in a `bind` operation.

    A `null` address will assign the *wildcard* address.

    Parameters:
    :   `addr` - The IP address
    :   `port` - The port number

    Throws:
    :   `IllegalArgumentException` - if the port parameter is outside the specified
        range of valid port values.
  + ### InetSocketAddress

    public InetSocketAddress([String](../lang/String.md "class in java.lang") hostname,
    int port)

    Creates a socket address from a hostname and a port number.

    An attempt will be made to resolve the hostname into an InetAddress.
    If that attempt fails, the address will be flagged as *unresolved*.

    If there is a security manager, its `checkConnect` method
    is called with the host name as its argument to check the permission
    to resolve it. This could result in a SecurityException.

    A valid port value is between 0 and 65535.
    A port number of `zero` will let the system pick up an
    ephemeral port in a `bind` operation.

    Parameters:
    :   `hostname` - the Host name
    :   `port` - The port number

    Throws:
    :   `IllegalArgumentException` - if the port parameter is outside the range
        of valid port values, or if the hostname parameter is `null`.
    :   `SecurityException` - if a security manager is present and
        permission to resolve the host name is
        denied.

    See Also:
    :   - [`isUnresolved()`](#isUnresolved())
* ## Method Details

  + ### createUnresolved

    public static [InetSocketAddress](InetSocketAddress.md "class in java.net") createUnresolved([String](../lang/String.md "class in java.lang") host,
    int port)

    Creates an unresolved socket address from a hostname and a port number.

    No attempt will be made to resolve the hostname into an InetAddress.
    The address will be flagged as *unresolved*.

    A valid port value is between 0 and 65535.
    A port number of `zero` will let the system pick up an
    ephemeral port in a `bind` operation.

    Parameters:
    :   `host` - the Host name
    :   `port` - The port number

    Returns:
    :   an `InetSocketAddress` representing the unresolved
        socket address

    Throws:
    :   `IllegalArgumentException` - if the port parameter is outside
        the range of valid port values, or if the hostname
        parameter is `null`.

    Since:
    :   1.5

    See Also:
    :   - [`isUnresolved()`](#isUnresolved())
  + ### getPort

    public final int getPort()

    Gets the port number.

    Returns:
    :   the port number.
  + ### getAddress

    public final [InetAddress](InetAddress.md "class in java.net") getAddress()

    Gets the `InetAddress`.

    Returns:
    :   the InetAddress or `null` if it is unresolved.
  + ### getHostName

    public final [String](../lang/String.md "class in java.lang") getHostName()

    Gets the `hostname`.
    Note: This method may trigger a name service reverse lookup if the
    address was created with a literal IP address.

    Returns:
    :   the hostname part of the address.
  + ### getHostString

    public final [String](../lang/String.md "class in java.lang") getHostString()

    Returns the hostname, or the String form of the address if it
    doesn't have a hostname (it was created using a literal).
    This has the benefit of **not** attempting a reverse lookup.

    Returns:
    :   the hostname, or String representation of the address.

    Since:
    :   1.7
  + ### isUnresolved

    public final boolean isUnresolved()

    Checks whether the address has been resolved or not.

    Returns:
    :   `true` if the hostname couldn't be resolved into
        an `InetAddress`.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Constructs a string representation of this InetSocketAddress.
    This string is constructed by calling [`InetAddress.toString()`](InetAddress.md#toString())
    on the InetAddress and concatenating the port number (with a colon).

    If the address is an IPv6 address, the IPv6 literal is enclosed in
    square brackets, for example: `"localhost/[0:0:0:0:0:0:0:1]:80"`.
    If the address is [unresolved](#isUnresolved()),
    `<unresolved>` is displayed in place of the address literal, for
    example `"foo/<unresolved>:80"`.

    To retrieve a string representation of the hostname or the address, use
    [`getHostString()`](#getHostString()), rather than parsing the string returned by this
    [`toString()`](#toString()) method.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object.
  + ### equals

    public final boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this object against the specified object.
    The result is `true` if and only if the argument is
    not `null` and it represents the same address as
    this object.

    Two instances of `InetSocketAddress` represent the same
    address if both the InetAddresses (or hostnames if it is unresolved) and port
    numbers are equal.
    If both addresses are unresolved, then the hostname and the port number
    are compared.
    Note: Hostnames are case insensitive. e.g. "FooBar" and "foobar" are
    considered equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare against.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`InetAddress.equals(java.lang.Object)`](InetAddress.md#equals(java.lang.Object))
  + ### hashCode

    public final int hashCode()

    Returns a hashcode for this socket address.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this socket address.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))