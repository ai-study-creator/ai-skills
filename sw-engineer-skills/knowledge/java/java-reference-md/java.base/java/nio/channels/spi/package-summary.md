Module [java.base](../../../../module-summary.md)

# Package java.nio.channels.spi

---

package java.nio.channels.spi

Service-provider classes for the [`java.nio.channels`](../package-summary.md)
package.

Only developers who are defining new selector providers or
asynchronous channel providers should need to make direct use of
this package.

Unless otherwise noted, passing a `null` argument to a
constructor or method in any class or interface in this package
will cause a [`NullPointerException`](../../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.4

* Related Packages

  Package

  Description

  [java.nio.channels](../package-summary.md)

  Defines channels, which represent connections to entities that are capable of
  performing I/O operations, such as files and sockets; defines selectors, for
  multiplexed, non-blocking I/O operations.
* Classes

  Class

  Description

  [AbstractInterruptibleChannel](AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

  Base implementation class for interruptible channels.

  [AbstractSelectableChannel](AbstractSelectableChannel.md "class in java.nio.channels.spi")

  Base implementation class for selectable channels.

  [AbstractSelectionKey](AbstractSelectionKey.md "class in java.nio.channels.spi")

  Base implementation class for selection keys.

  [AbstractSelector](AbstractSelector.md "class in java.nio.channels.spi")

  Base implementation class for selectors.

  [AsynchronousChannelProvider](AsynchronousChannelProvider.md "class in java.nio.channels.spi")

  Service-provider class for asynchronous channels.

  [SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi")

  Service-provider class for selectors and selectable channels.