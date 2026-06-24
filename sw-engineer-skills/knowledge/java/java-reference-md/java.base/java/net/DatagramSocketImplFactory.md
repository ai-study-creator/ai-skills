Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface DatagramSocketImplFactory

---

public interface DatagramSocketImplFactory

This interface defines a factory for datagram socket implementations. It
is used by the classes `DatagramSocket` to create actual socket
implementations.

Since:
:   1.3

See Also:
:   * [`DatagramSocket`](DatagramSocket.md "class in java.net")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DatagramSocketImpl`

  `createDatagramSocketImpl()`

  Creates a new `DatagramSocketImpl` instance.

* ## Method Details

  + ### createDatagramSocketImpl

    [DatagramSocketImpl](DatagramSocketImpl.md "class in java.net") createDatagramSocketImpl()

    Creates a new `DatagramSocketImpl` instance.

    Returns:
    :   a new instance of `DatagramSocketImpl`.

    See Also:
    :   - [`DatagramSocketImpl`](DatagramSocketImpl.md "class in java.net")