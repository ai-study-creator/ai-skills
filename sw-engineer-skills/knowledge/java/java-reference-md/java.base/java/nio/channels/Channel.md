Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface Channel

All Superinterfaces:
:   `AutoCloseable`, `Closeable`

All Known Subinterfaces:
:   `AsynchronousByteChannel`, `AsynchronousChannel`, `ByteChannel`, `GatheringByteChannel`, `InterruptibleChannel`, `MulticastChannel`, `NetworkChannel`, `ReadableByteChannel`, `ScatteringByteChannel`, `SeekableByteChannel`, `WritableByteChannel`

All Known Implementing Classes:
:   `AbstractInterruptibleChannel`, `AbstractSelectableChannel`, `AsynchronousFileChannel`, `AsynchronousServerSocketChannel`, `AsynchronousSocketChannel`, `DatagramChannel`, `FileChannel`, `Pipe.SinkChannel`, `Pipe.SourceChannel`, `SelectableChannel`, `ServerSocketChannel`, `SocketChannel`

---

public interface Channel
extends [Closeable](../../io/Closeable.md "interface in java.io")

A nexus for I/O operations.

A channel represents an open connection to an entity such as a hardware
device, a file, a network socket, or a program component that is capable of
performing one or more distinct I/O operations, for example reading or
writing.

A channel is either open or closed. A channel is open upon creation,
and once closed it remains closed. Once a channel is closed, any attempt to
invoke an I/O operation upon it will cause a [`ClosedChannelException`](ClosedChannelException.md "class in java.nio.channels")
to be thrown. Whether or not a channel is open may be tested by invoking
its [`isOpen`](#isOpen()) method.

Channels are, in general, intended to be safe for multithreaded access
as described in the specifications of the interfaces and classes that extend
and implement this interface.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this channel.

  `boolean`

  `isOpen()`

  Tells whether or not this channel is open.

* ## Method Details

  + ### isOpen

    boolean isOpen()

    Tells whether or not this channel is open.

    Returns:
    :   `true` if, and only if, this channel is open
  + ### close

    void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this channel.

    After a channel is closed, any further attempt to invoke I/O
    operations upon it will cause a [`ClosedChannelException`](ClosedChannelException.md "class in java.nio.channels") to be
    thrown.

    If this channel is already closed then invoking this method has no
    effect.

    This method may be invoked at any time. If some other thread has
    already invoked it, however, then another invocation will block until
    the first invocation is complete, after which it will return without
    effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - If an I/O error occurs