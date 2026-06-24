Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class Proxy

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.Proxy

---

public class Proxy
extends [Object](../lang/Object.md "class in java.lang")

This class represents a proxy setting, typically a type (http, socks) and
a socket address.
A `Proxy` is an immutable object.

Since:
:   1.5

See Also:
:   * [`ProxySelector`](ProxySelector.md "class in java.net")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `Proxy.Type`

  Represents the proxy type.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Proxy`

  `NO_PROXY`

  A proxy setting that represents a `DIRECT` connection,
  basically telling the protocol handler not to use any proxying.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Proxy(Proxy.Type type,
  SocketAddress sa)`

  Creates an entry representing a PROXY connection.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SocketAddress`

  `address()`

  Returns the socket address of the proxy, or
  `null` if it's a direct connection.

  `final boolean`

  `equals(Object obj)`

  Compares this object against the specified object.

  `final int`

  `hashCode()`

  Returns a hashcode for this Proxy.

  `String`

  `toString()`

  Constructs a string representation of this Proxy.

  `Proxy.Type`

  `type()`

  Returns the proxy type.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NO\_PROXY

    public static final [Proxy](Proxy.md "class in java.net") NO\_PROXY

    A proxy setting that represents a `DIRECT` connection,
    basically telling the protocol handler not to use any proxying.
    Used, for instance, to create sockets bypassing any other global
    proxy settings (like SOCKS):

    `Socket s = new Socket(Proxy.NO_PROXY);`
* ## Constructor Details

  + ### Proxy

    public Proxy([Proxy.Type](Proxy.Type.md "enum class in java.net") type,
    [SocketAddress](SocketAddress.md "class in java.net") sa)

    Creates an entry representing a PROXY connection.
    Certain combinations are illegal. For instance, for types Http, and
    Socks, a SocketAddress **must** be provided.

    Use the `Proxy.NO_PROXY` constant
    for representing a direct connection.

    Parameters:
    :   `type` - the `Type` of the proxy
    :   `sa` - the `SocketAddress` for that proxy

    Throws:
    :   `IllegalArgumentException` - when the type and the address are
        incompatible
* ## Method Details

  + ### type

    public [Proxy.Type](Proxy.Type.md "enum class in java.net") type()

    Returns the proxy type.

    Returns:
    :   a Type representing the proxy type
  + ### address

    public [SocketAddress](SocketAddress.md "class in java.net") address()

    Returns the socket address of the proxy, or
    `null` if it's a direct connection.

    Returns:
    :   a `SocketAddress` representing the socket end
        point of the proxy
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Constructs a string representation of this Proxy.
    This String is constructed by calling toString() on its type
    and concatenating " @ " and the toString() result from its address
    if its type is not `DIRECT`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object.
  + ### equals

    public final boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this object against the specified object.
    The result is `true` if and only if the argument is
    not `null` and it represents the same proxy as
    this object.

    Two instances of `Proxy` represent the same
    address if both the SocketAddresses and type are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare against.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`InetSocketAddress.equals(java.lang.Object)`](InetSocketAddress.md#equals(java.lang.Object))
  + ### hashCode

    public final int hashCode()

    Returns a hashcode for this Proxy.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this Proxy.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))