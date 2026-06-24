Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class SocketAddress

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.SocketAddress

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InetSocketAddress`, `UnixDomainSocketAddress`

---

public abstract class SocketAddress
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

This class represents a Socket Address with no protocol attachment.
As an abstract class, it is meant to be subclassed with a specific,
protocol dependent, implementation.

It provides an immutable object used by sockets for binding, connecting, or
as returned values.

Since:
:   1.4

See Also:
:   * [`Socket`](Socket.md "class in java.net")
    * [`ServerSocket`](ServerSocket.md "class in java.net")
    * [Serialized Form](../../../serialized-form.md#java.net.SocketAddress)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SocketAddress()`

  Constructor for subclasses to call.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SocketAddress

    public SocketAddress()

    Constructor for subclasses to call.