Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface SocketImplFactory

---

public interface SocketImplFactory

This interface defines a factory for socket implementations. It
is used by the classes `Socket` and
`ServerSocket` to create actual socket
implementations.

Since:
:   1.0

See Also:
:   * [`Socket`](Socket.md "class in java.net")
    * [`ServerSocket`](ServerSocket.md "class in java.net")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `SocketImpl`

  `createSocketImpl()`

  Creates a new `SocketImpl` instance.

* ## Method Details

  + ### createSocketImpl

    [SocketImpl](SocketImpl.md "class in java.net") createSocketImpl()

    Creates a new `SocketImpl` instance.

    Returns:
    :   a new instance of `SocketImpl`.

    See Also:
    :   - [`SocketImpl`](SocketImpl.md "class in java.net")