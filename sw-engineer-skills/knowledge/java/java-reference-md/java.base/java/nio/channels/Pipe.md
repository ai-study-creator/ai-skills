Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class Pipe

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.Pipe

---

public abstract class Pipe
extends [Object](../../lang/Object.md "class in java.lang")

A pair of channels that implements a unidirectional pipe.

A pipe consists of a pair of channels: A writable [`sink`](Pipe.SinkChannel.md "class in java.nio.channels") channel and a readable [`source`](Pipe.SourceChannel.md "class in java.nio.channels")
channel. Once some bytes are written to the sink channel they can be read
from the source channel in exactly the order in which they were written.

Whether or not a thread writing bytes to a pipe will block until another
thread reads those bytes, or some previously-written bytes, from the pipe is
system-dependent and therefore unspecified. Many pipe implementations will
buffer up to a certain number of bytes between the sink and source channels,
but such buffering should not be assumed.

Since:
:   1.4

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `Pipe.SinkChannel`

  A channel representing the writable end of a [`Pipe`](Pipe.md "class in java.nio.channels").

  `static class`

  `Pipe.SourceChannel`

  A channel representing the readable end of a [`Pipe`](Pipe.md "class in java.nio.channels").
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Pipe()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Pipe`

  `open()`

  Opens a pipe.

  `abstract Pipe.SinkChannel`

  `sink()`

  Returns this pipe's sink channel.

  `abstract Pipe.SourceChannel`

  `source()`

  Returns this pipe's source channel.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Pipe

    protected Pipe()

    Initializes a new instance of this class.
* ## Method Details

  + ### source

    public abstract [Pipe.SourceChannel](Pipe.SourceChannel.md "class in java.nio.channels") source()

    Returns this pipe's source channel.

    Returns:
    :   This pipe's source channel
  + ### sink

    public abstract [Pipe.SinkChannel](Pipe.SinkChannel.md "class in java.nio.channels") sink()

    Returns this pipe's sink channel.

    Returns:
    :   This pipe's sink channel
  + ### open

    public static [Pipe](Pipe.md "class in java.nio.channels") open()
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a pipe.

    The new pipe is created by invoking the [`openPipe`](spi/SelectorProvider.md#openPipe()) method of the
    system-wide default [`SelectorProvider`](spi/SelectorProvider.md "class in java.nio.channels.spi")
    object.

    Returns:
    :   A new pipe

    Throws:
    :   `IOException` - If an I/O error occurs