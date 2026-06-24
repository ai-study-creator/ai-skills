Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class Pipe.SourceChannel

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.nio.channels.spi.AbstractInterruptibleChannel](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

[java.nio.channels.SelectableChannel](SelectableChannel.md "class in java.nio.channels")

[java.nio.channels.spi.AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")

java.nio.channels.Pipe.SourceChannel

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Channel`, `InterruptibleChannel`, `ReadableByteChannel`, `ScatteringByteChannel`

Enclosing class:
:   `Pipe`

---

public abstract static class Pipe.SourceChannel
extends [AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")
implements [ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels"), [ScatteringByteChannel](ScatteringByteChannel.md "interface in java.nio.channels")

A channel representing the readable end of a [`Pipe`](Pipe.md "class in java.nio.channels").

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SourceChannel(SelectorProvider provider)`

  Constructs a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final int`

  `validOps()`

  Returns an operation set identifying this channel's supported
  operations.

  ### Methods inherited from class java.nio.channels.spi.[AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")

  `blockingLock, configureBlocking, implCloseChannel, implCloseSelectableChannel, implConfigureBlocking, isBlocking, isRegistered, keyFor, provider, register`

  ### Methods inherited from class java.nio.channels.[SelectableChannel](SelectableChannel.md "class in java.nio.channels")

  `register`

  ### Methods inherited from class java.nio.channels.spi.[AbstractInterruptibleChannel](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

  `begin, close, end, isOpen`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `isOpen`

  ### Methods inherited from interface java.nio.channels.[ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels")

  `read`

  ### Methods inherited from interface java.nio.channels.[ScatteringByteChannel](ScatteringByteChannel.md "interface in java.nio.channels")

  `read, read`

* ## Constructor Details

  + ### SourceChannel

    protected SourceChannel([SelectorProvider](spi/SelectorProvider.md "class in java.nio.channels.spi") provider)

    Constructs a new instance of this class.

    Parameters:
    :   `provider` - The selector provider
* ## Method Details

  + ### validOps

    public final int validOps()

    Returns an operation set identifying this channel's supported
    operations.

    Pipe-source channels only support reading, so this method
    returns [`SelectionKey.OP_READ`](SelectionKey.md#OP_READ).

    Specified by:
    :   `validOps` in class `SelectableChannel`

    Returns:
    :   The valid-operation set