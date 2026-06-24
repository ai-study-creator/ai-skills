Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class AbstractInterruptibleChannel

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.channels.spi.AbstractInterruptibleChannel

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Channel`, `InterruptibleChannel`

Direct Known Subclasses:
:   `FileChannel`, `SelectableChannel`

---

public abstract class AbstractInterruptibleChannel
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Channel](../Channel.md "interface in java.nio.channels"), [InterruptibleChannel](../InterruptibleChannel.md "interface in java.nio.channels")

Base implementation class for interruptible channels.

This class encapsulates the low-level machinery required to implement
the asynchronous closing and interruption of channels. A concrete channel
class must invoke the [`begin`](#begin()) and [`end`](#end(boolean)) methods
before and after, respectively, invoking an I/O operation that might block
indefinitely. In order to ensure that the [`end`](#end(boolean)) method is always
invoked, these methods should be used within a
`try` ... `finally` block:

Copy![Copy snippet](../../../../../copy.svg)

```
    boolean completed = false;
    try {
        begin();
        completed = ...;    // Perform blocking I/O operation
        return ...;         // Return result
    } finally {
        end(completed);
    }
```

The `completed` argument to the [`end`](#end(boolean)) method tells
whether or not the I/O operation actually completed, that is, whether it had
any effect that would be visible to the invoker. In the case of an
operation that reads bytes, for example, this argument should be
`true` if, and only if, some bytes were actually transferred into the
invoker's target buffer.

A concrete channel class must also implement the [`implCloseChannel`](#implCloseChannel()) method in such a way that if it is
invoked while another thread is blocked in a native I/O operation upon the
channel then that operation will immediately return, either by throwing an
exception or by returning normally. If a thread is interrupted or the
channel upon which it is blocked is asynchronously closed then the channel's
[`end`](#end(boolean)) method will throw the appropriate exception.

This class performs the synchronization required to implement the [`Channel`](../Channel.md "interface in java.nio.channels") specification. Implementations of the [`implCloseChannel`](#implCloseChannel()) method need not synchronize against
other threads that might be attempting to close the channel.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractInterruptibleChannel()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final void`

  `begin()`

  Marks the beginning of an I/O operation that might block indefinitely.

  `final void`

  `close()`

  Closes this channel.

  `protected final void`

  `end(boolean completed)`

  Marks the end of an I/O operation that might block indefinitely.

  `protected abstract void`

  `implCloseChannel()`

  Closes this channel.

  `final boolean`

  `isOpen()`

  Tells whether or not this channel is open.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractInterruptibleChannel

    protected AbstractInterruptibleChannel()

    Initializes a new instance of this class.
* ## Method Details

  + ### close

    public final void close()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this channel.

    If the channel has already been closed then this method returns
    immediately. Otherwise it marks the channel as closed and then invokes
    the [`implCloseChannel`](#implCloseChannel()) method in order to
    complete the close operation.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Channel`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in interface `InterruptibleChannel`

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### implCloseChannel

    protected abstract void implCloseChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this channel.

    This method is invoked by the [`close`](#close()) method in order
    to perform the actual work of closing the channel. This method is only
    invoked if the channel has not yet been closed, and it is never invoked
    more than once.

    An implementation of this method must arrange for any other thread
    that is blocked in an I/O operation upon this channel to return
    immediately, either by throwing an exception or by returning normally.

    Throws:
    :   `IOException` - If an I/O error occurs while closing the channel
  + ### isOpen

    public final boolean isOpen()

    Description copied from interface: `Channel`

    Tells whether or not this channel is open.

    Specified by:
    :   `isOpen` in interface `Channel`

    Returns:
    :   `true` if, and only if, this channel is open
  + ### begin

    protected final void begin()

    Marks the beginning of an I/O operation that might block indefinitely.

    This method should be invoked in tandem with the [`end`](#end(boolean))
    method, using a `try` ... `finally` block as
    shown [above](#be), in order to implement asynchronous
    closing and interruption for this channel.
  + ### end

    protected final void end(boolean completed)
    throws [AsynchronousCloseException](../AsynchronousCloseException.md "class in java.nio.channels")

    Marks the end of an I/O operation that might block indefinitely.

    This method should be invoked in tandem with the [`begin`](#begin()) method, using a `try` ... `finally` block
    as shown [above](#be), in order to implement asynchronous
    closing and interruption for this channel.

    Parameters:
    :   `completed` - `true` if, and only if, the I/O operation completed
        successfully, that is, had some effect that would be visible to
        the operation's invoker

    Throws:
    :   `AsynchronousCloseException` - If the channel was asynchronously closed
    :   `ClosedByInterruptException` - If the thread blocked in the I/O operation was interrupted