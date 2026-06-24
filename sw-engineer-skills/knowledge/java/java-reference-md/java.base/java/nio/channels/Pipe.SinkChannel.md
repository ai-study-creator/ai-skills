Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class Pipe.SinkChannel

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.nio.channels.spi.AbstractInterruptibleChannel](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

[java.nio.channels.SelectableChannel](SelectableChannel.md "class in java.nio.channels")

[java.nio.channels.spi.AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")

java.nio.channels.Pipe.SinkChannel

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Channel`, `GatheringByteChannel`, `InterruptibleChannel`, `WritableByteChannel`

Enclosing class:
:   `Pipe`

---

public abstract static class Pipe.SinkChannel
extends [AbstractSelectableChannel](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi")
implements [WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels"), [GatheringByteChannel](GatheringByteChannel.md "interface in java.nio.channels")

A channel representing the writable end of a [`Pipe`](Pipe.md "class in java.nio.channels").

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SinkChannel(SelectorProvider provider)`

  Initializes a new instance of this class.
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

  ### Methods inherited from interface java.nio.channels.[GatheringByteChannel](GatheringByteChannel.md "interface in java.nio.channels")

  `write, write`

  ### Methods inherited from interface java.nio.channels.[WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels")

  `write`

* ## Constructor Details

  + ### SinkChannel

    protected SinkChannel([SelectorProvider](spi/SelectorProvider.md "class in java.nio.channels.spi") provider)

    Initializes a new instance of this class.

    Parameters:
    :   `provider` - The selector provider
* ## Method Details

  + ### validOps

    public final int validOps()

    Returns an operation set identifying this channel's supported
    operations.

    Pipe-sink channels only support writing, so this method returns
    [`SelectionKey.OP_WRITE`](SelectionKey.md#OP_WRITE).

    Specified by:
    :   `validOps` in class `SelectableChannel`

    Returns:
    :   The valid-operation set