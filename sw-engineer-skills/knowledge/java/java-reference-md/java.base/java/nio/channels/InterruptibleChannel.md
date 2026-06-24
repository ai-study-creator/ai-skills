Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface InterruptibleChannel

All Superinterfaces:
:   `AutoCloseable`, `Channel`, `Closeable`

All Known Implementing Classes:
:   `AbstractInterruptibleChannel`, `AbstractSelectableChannel`, `DatagramChannel`, `FileChannel`, `Pipe.SinkChannel`, `Pipe.SourceChannel`, `SelectableChannel`, `ServerSocketChannel`, `SocketChannel`

---

public interface InterruptibleChannel
extends [Channel](Channel.md "interface in java.nio.channels")

A channel that can be asynchronously closed and interrupted.

A channel that implements this interface is *asynchronously
closeable:* If a thread is blocked in an I/O operation on an
interruptible channel then another thread may invoke the channel's [`close`](#close()) method. This will cause the blocked thread to receive an
[`AsynchronousCloseException`](AsynchronousCloseException.md "class in java.nio.channels").

A channel that implements this interface is also *interruptible:*
If a thread is blocked in an I/O operation on an interruptible channel then
another thread may invoke the blocked thread's [`interrupt`](../../lang/Thread.md#interrupt()) method. This will cause the channel to be closed, the blocked
thread to receive a [`ClosedByInterruptException`](ClosedByInterruptException.md "class in java.nio.channels"), and the blocked
thread's interrupt status to be set.

If a thread's interrupt status is already set and it invokes a blocking
I/O operation upon a channel then the channel will be closed and the thread
will immediately receive a [`ClosedByInterruptException`](ClosedByInterruptException.md "class in java.nio.channels"); its interrupt
status will remain set.

A channel supports asynchronous closing and interruption if, and only
if, it implements this interface. This can be tested at runtime, if
necessary, via the `instanceof` operator.

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

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `isOpen`

* ## Method Details

  + ### close

    void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this channel.

    Any thread currently blocked in an I/O operation upon this channel
    will receive an [`AsynchronousCloseException`](AsynchronousCloseException.md "class in java.nio.channels").

    This method otherwise behaves exactly as specified by the [`Channel`](Channel.md#close()) interface.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Channel`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - If an I/O error occurs