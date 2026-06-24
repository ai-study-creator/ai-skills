Module [java.base](../../../module-summary.md)

# Package java.nio.channels

---

package java.nio.channels

Defines channels, which represent connections to entities that are capable of
performing I/O operations, such as files and sockets; defines selectors, for
multiplexed, non-blocking I/O operations.

Lists channels and their descriptions

| Channels | Description |
| --- | --- |
| *[`Channel`](Channel.md "interface in java.nio.channels")* | A nexus for I/O operations |
| *[`ReadableByteChannel`](ReadableByteChannel.md "interface in java.nio.channels")* | Can read into a buffer |
| *[`ScatteringByteChannel`](ScatteringByteChannel.md "interface in java.nio.channels")* | Can read into a sequence of buffers |
| *[`WritableByteChannel`](WritableByteChannel.md "interface in java.nio.channels")* | Can write from a buffer |
| *[`GatheringByteChannel`](GatheringByteChannel.md "interface in java.nio.channels")* | Can write from a sequence of buffers |
| *[`ByteChannel`](ByteChannel.md "interface in java.nio.channels")* | Can read/write to/from a buffer |
| *[`SeekableByteChannel`](SeekableByteChannel.md "interface in java.nio.channels")* | A `ByteChannel` connected to an entity that contains a variable-length sequence of bytes |
| *[`AsynchronousChannel`](AsynchronousChannel.md "interface in java.nio.channels")* | Supports asynchronous I/O operations. |
| *[`AsynchronousByteChannel`](AsynchronousByteChannel.md "interface in java.nio.channels")* | Can read and write bytes asynchronously |
| *[`NetworkChannel`](NetworkChannel.md "interface in java.nio.channels")* | A channel to a network socket |
| *[`MulticastChannel`](MulticastChannel.md "interface in java.nio.channels")* | Can join Internet Protocol (IP) multicast groups |
| [`Channels`](Channels.md "class in java.nio.channels") | Utility methods for channel/stream interoperation |

A *channel* represents an open connection to an entity such as a
hardware device, a file, a network socket, or a program component that is
capable of performing one or more distinct I/O operations, for example reading
or writing. As specified in the [`Channel`](Channel.md "interface in java.nio.channels") interface,
channels are either open or closed, and they are both *asynchronously
closeable* and *interruptible*.

The [`Channel`](Channel.md "interface in java.nio.channels") interface is extended by several
other interfaces.

The [`ReadableByteChannel`](ReadableByteChannel.md "interface in java.nio.channels") interface specifies a
[`read`](ReadableByteChannel.md#read(java.nio.ByteBuffer)) method that reads bytes
from the channel into a buffer; similarly, the [`WritableByteChannel`](WritableByteChannel.md "interface in java.nio.channels") interface specifies a [`write`](WritableByteChannel.md#write(java.nio.ByteBuffer)) method that writes bytes
from a buffer to the channel. The [`ByteChannel`](ByteChannel.md "interface in java.nio.channels")
interface unifies these two interfaces for the common case of channels that can
both read and write bytes. The [`SeekableByteChannel`](SeekableByteChannel.md "interface in java.nio.channels")
interface extends the `ByteChannel` interface with methods to [`query`](SeekableByteChannel.md#position()) and [`modify`](SeekableByteChannel.md#position(long)) the channel's
current position, and its [`size`](SeekableByteChannel.md#size()).

The [`ScatteringByteChannel`](ScatteringByteChannel.md "interface in java.nio.channels") and [`GatheringByteChannel`](GatheringByteChannel.md "interface in java.nio.channels") interfaces extend the [`ReadableByteChannel`](ReadableByteChannel.md "interface in java.nio.channels") and [`WritableByteChannel`](WritableByteChannel.md "interface in java.nio.channels") interfaces, respectively, adding [`read`](ScatteringByteChannel.md#read(java.nio.ByteBuffer%5B%5D,int,int)) and [`write`](GatheringByteChannel.md#write(java.nio.ByteBuffer%5B%5D,int,int)) methods that take a
sequence of buffers rather than a single buffer.

The [`NetworkChannel`](NetworkChannel.md "interface in java.nio.channels") interface specifies methods
to [`bind`](NetworkChannel.md#bind(java.net.SocketAddress)) the channel's socket,
obtain the address to which the socket is bound, and methods to [`get`](NetworkChannel.md#getOption(java.net.SocketOption)) and [`set`](NetworkChannel.md#setOption(java.net.SocketOption,T)) socket options. The [`MulticastChannel`](MulticastChannel.md "interface in java.nio.channels") interface specifies methods to join
Internet Protocol (IP) multicast groups.

The [`Channels`](Channels.md "class in java.nio.channels") utility class defines static methods
that support the interoperation of the stream classes of the [`java.io`](../../io/package-summary.md) package with the channel classes of this package. An appropriate
channel can be constructed from an [`InputStream`](../../io/InputStream.md "class in java.io") or an [`OutputStream`](../../io/OutputStream.md "class in java.io"), and conversely an [`InputStream`](../../io/InputStream.md "class in java.io") or an
[`OutputStream`](../../io/OutputStream.md "class in java.io") can be constructed from a channel. A [`Reader`](../../io/Reader.md "class in java.io") can be constructed that uses a given charset to decode bytes
from a given readable byte channel, and conversely a [`Writer`](../../io/Writer.md "class in java.io") can
be constructed that uses a given charset to encode characters into bytes and
write them to a given writable byte channel.

Lists file channels and their descriptions

| File channels | Description |
| --- | --- |
| [`FileChannel`](FileChannel.md "class in java.nio.channels") | Reads, writes, maps, and manipulates files |
| [`FileLock`](FileLock.md "class in java.nio.channels") | A lock on a (region of a) file |
| [`MappedByteBuffer`](../MappedByteBuffer.md "class in java.nio") | A direct byte buffer mapped to a region of a file |

The [`FileChannel`](FileChannel.md "class in java.nio.channels") class supports the usual
operations of reading bytes from, and writing bytes to, a channel connected to
a file, as well as those of querying and modifying the current file position
and truncating the file to a specific size. It defines methods for acquiring
locks on the whole file or on a specific region of a file; these methods return
instances of the [`FileLock`](FileLock.md "class in java.nio.channels") class. Finally, it defines
methods for forcing updates to the file to be written to the storage device that
contains it, for efficiently transferring bytes between the file and other
channels, and for mapping a region of the file directly into memory.

A `FileChannel` is created by invoking one of its static [`open`](FileChannel.md#open(java.nio.file.Path,java.util.Set,java.nio.file.attribute.FileAttribute...)) methods, or by invoking the `getChannel` method of a [`FileInputStream`](../../io/FileInputStream.md "class in java.io"), [`FileOutputStream`](../../io/FileOutputStream.md "class in java.io"), or [`RandomAccessFile`](../../io/RandomAccessFile.md "class in java.io") to return a
file channel connected to the same underlying file as the [`java.io`](../../io/package-summary.md)
class.

Lists multiplexed, non-blocking channels and their descriptions

| Multiplexed, non-blocking I/O | Description |
| --- | --- |
| [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") | A channel that can be multiplexed |
| [`DatagramChannel`](DatagramChannel.md "class in java.nio.channels") | A channel to a datagram-oriented socket |
| [`Pipe.SinkChannel`](Pipe.SinkChannel.md "class in java.nio.channels") | The write end of a pipe |
| [`Pipe.SourceChannel`](Pipe.SourceChannel.md "class in java.nio.channels") | The read end of a pipe |
| [`ServerSocketChannel`](ServerSocketChannel.md "class in java.nio.channels") | A channel to a stream-oriented listening socket |
| [`SocketChannel`](SocketChannel.md "class in java.nio.channels") | A channel for a stream-oriented connecting socket |
| [`Selector`](Selector.md "class in java.nio.channels") | A multiplexor of selectable channels |
| [`SelectionKey`](SelectionKey.md "class in java.nio.channels") | A token representing the registration of a channel with a selector |
| [`Pipe`](Pipe.md "class in java.nio.channels") | Two channels that form a unidirectional pipe |

Multiplexed, non-blocking I/O, which is much more scalable than
thread-oriented, blocking I/O, is provided by *selectors*, *selectable
channels*, and *selection keys*.

A [*selector*](Selector.md) is a multiplexor of [*selectable channels*](SelectableChannel.md), which in turn are
a special type of channel that can be put into [*non-blocking mode*](SelectableChannel.md#bm). To perform
multiplexed I/O operations, one or more selectable channels are first created,
put into non-blocking mode, and [`registered`](SelectableChannel.md#register(java.nio.channels.Selector,int,java.lang.Object))
with a selector. Registering a channel specifies the set of I/O operations
that will be tested for readiness by the selector, and returns a [*selection key*](SelectionKey.md) that represents the
registration.

Once some channels have been registered with a selector, a [*selection operation*](Selector.md#selop) can be performed in
order to discover which channels, if any, have become ready to perform one or
more of the operations in which interest was previously declared. If a channel
is ready then the key returned when it was registered will be added to the
selector's *selected-key set*. The key set, and the keys within it, can
be examined in order to determine the operations for which each channel is
ready. From each key one can retrieve the corresponding channel in order to
perform whatever I/O operations are required.

That a selection key indicates that its channel is ready for some operation
is a hint, but not a guarantee, that such an operation can be performed by a
thread without causing the thread to block. It is imperative that code that
performs multiplexed I/O be written so as to ignore these hints when they prove
to be incorrect.

This package defines selectable-channel classes corresponding to the [`DatagramSocket`](../../net/DatagramSocket.md "class in java.net"), [`ServerSocket`](../../net/ServerSocket.md "class in java.net"), and [`Socket`](../../net/Socket.md "class in java.net") classes defined in the [`java.net`](../../net/package-summary.md) package.
Minor changes to these classes have been made in order to support sockets that
are associated with channels. This package also defines a simple class that
implements unidirectional pipes. In all cases, a new selectable channel is
created by invoking the static `open` method of the corresponding class.
If a channel needs an associated socket then a socket will be created as a side
effect of this operation.

[`DatagramChannel`](DatagramChannel.md "class in java.nio.channels"),
[`SocketChannel`](SocketChannel.md "class in java.nio.channels") and
[`ServerSocketChannel`](ServerSocketChannel.md "class in java.nio.channels")s can be created
with different [`protocol families`](../../net/ProtocolFamily.md "interface in java.net"). The standard
family types are specified in [`StandardProtocolFamily`](../../net/StandardProtocolFamily.md "enum class in java.net").

Channels for *Internet Protocol* sockets are created using the
[`INET`](../../net/StandardProtocolFamily.md#INET) or [`INET6`](../../net/StandardProtocolFamily.md#INET6) protocol families. *Internet
Protocol* sockets support network communication using TCP and UDP and are
addressed using [`InetSocketAddress`](../../net/InetSocketAddress.md "class in java.net")es which encapsulate an IP
address and port number. *Internet Protocol* sockets are also the default
type created, when a protocol family is not specified in the channel factory
creation method.

Channels for *Unix Domain* sockets are created
using the [`UNIX`](../../net/StandardProtocolFamily.md#UNIX) protocol family.
*Unix Domain* sockets support local inter-process
communication on the same host, and are addressed using [`UnixDomainSocketAddress`](../../net/UnixDomainSocketAddress.md "class in java.net")es which encapsulate a filesystem pathname
on the local system.

The implementation of selectors, selectable channels, and selection keys
can be replaced by "plugging in" an alternative definition or instance of the
[`SelectorProvider`](spi/SelectorProvider.md "class in java.nio.channels.spi") class defined in the [`java.nio.channels.spi`](spi/package-summary.md) package. It is not expected that many developers
will actually make use of this facility; it is provided primarily so that
sophisticated users can take advantage of operating-system-specific
I/O-multiplexing mechanisms when very high performance is required.

Much of the bookkeeping and synchronization required to implement the
multiplexed-I/O abstractions is performed by the [`AbstractInterruptibleChannel`](spi/AbstractInterruptibleChannel.md "class in java.nio.channels.spi"), [`AbstractSelectableChannel`](spi/AbstractSelectableChannel.md "class in java.nio.channels.spi"), [`AbstractSelectionKey`](spi/AbstractSelectionKey.md "class in java.nio.channels.spi"), and [`AbstractSelector`](spi/AbstractSelector.md "class in java.nio.channels.spi") classes in the [`java.nio.channels.spi`](spi/package-summary.md) package. When defining a custom selector provider,
only the [`AbstractSelector`](spi/AbstractSelector.md "class in java.nio.channels.spi") and [`AbstractSelectionKey`](spi/AbstractSelectionKey.md "class in java.nio.channels.spi") classes should be subclassed
directly; custom channel classes should extend the appropriate [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") subclasses defined in this package.

Lists asynchronous channels and their descriptions

| Asynchronous I/O | Description |
| --- | --- |
| [`AsynchronousFileChannel`](AsynchronousFileChannel.md "class in java.nio.channels") | An asynchronous channel for reading, writing, and manipulating a file |
| [`AsynchronousSocketChannel`](AsynchronousSocketChannel.md "class in java.nio.channels") | An asynchronous channel to a stream-oriented connecting socket |
| [`AsynchronousServerSocketChannel`](AsynchronousServerSocketChannel.md "class in java.nio.channels") | An asynchronous channel to a stream-oriented listening socket |
| [`CompletionHandler`](CompletionHandler.md "interface in java.nio.channels") | A handler for consuming the result of an asynchronous operation |
| [`AsynchronousChannelGroup`](AsynchronousChannelGroup.md "class in java.nio.channels") | A grouping of asynchronous channels for the purpose of resource sharing |

[`Asynchronous channels`](AsynchronousChannel.md "interface in java.nio.channels") are a
special type of channel capable of asynchronous I/O operations. Asynchronous
channels are non-blocking and define methods to initiate asynchronous
operations, returning a [`Future`](../../util/concurrent/Future.md "interface in java.util.concurrent") representing the
pending result of each operation. The `Future` can be used to poll or
wait for the result of the operation. Asynchronous I/O operations can also
specify a [`CompletionHandler`](CompletionHandler.md "interface in java.nio.channels") to invoke when the
operation completes. A completion handler is user provided code that is executed
to consume the result of I/O operation.

This package defines asynchronous-channel classes that are connected to
a stream-oriented connecting or listening socket, or a datagram-oriented socket.
It also defines the [`AsynchronousFileChannel`](AsynchronousFileChannel.md "class in java.nio.channels") class
for asynchronous reading, writing, and manipulating a file. As with the [`FileChannel`](FileChannel.md "class in java.nio.channels") it supports operations to truncate the file
to a specific size, force updates to the file to be written to the storage
device, or acquire locks on the whole file or on a specific region of the file.
Unlike the `FileChannel` it does not define methods for mapping a
region of the file directly into memory. Where memory mapped I/O is required,
then a `FileChannel` can be used.

Asynchronous channels are bound to an asynchronous channel group for the
purpose of resource sharing. A group has an associated [`ExecutorService`](../../util/concurrent/ExecutorService.md "interface in java.util.concurrent") to which tasks are submitted to handle
I/O events and dispatch to completion handlers that consume the result of
asynchronous operations performed on channels in the group. The group can
optionally be specified when creating the channel or the channel can be bound
to a *default group*. Sophisticated users may wish to create their
own asynchronous channel groups or configure the `ExecutorService`
that will be used for the default group.

As with selectors, the implementation of asynchronous channels can be
replaced by "plugging in" an alternative definition or instance of the [`AsynchronousChannelProvider`](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") class defined in the
[`java.nio.channels.spi`](spi/package-summary.md) package. It is not expected that many
developers will actually make use of this facility; it is provided primarily
so that sophisticated users can take advantage of operating-system-specific
asynchronous I/O mechanisms when very high performance is required.

Unless otherwise noted, passing a `null` argument to a constructor
or method in any class or interface in this package will cause a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.4

* Related Packages

  Package

  Description

  [java.nio](../package-summary.md)

  Defines buffers, which are containers for data, and provides an
  overview of the other NIO packages.

  [java.nio.channels.spi](spi/package-summary.md)

  Service-provider classes for the [`java.nio.channels`](package-summary.md)
  package.

  [java.nio.charset](../charset/package-summary.md)

  Defines charsets, decoders, and encoders, for translating between
  bytes and Unicode characters.

  [java.nio.file](../file/package-summary.md)

  Defines interfaces and classes for the Java virtual machine to access files,
  file attributes, and file systems.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AcceptPendingException](AcceptPendingException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to initiate an accept
  operation on a channel and a previous accept operation has not completed.

  [AlreadyBoundException](AlreadyBoundException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to bind the socket a
  network oriented channel that is already bound.

  [AlreadyConnectedException](AlreadyConnectedException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to connect a [`SocketChannel`](SocketChannel.md "class in java.nio.channels") that is already connected.

  [AsynchronousByteChannel](AsynchronousByteChannel.md "interface in java.nio.channels")

  An asynchronous channel that can read and write bytes.

  [AsynchronousChannel](AsynchronousChannel.md "interface in java.nio.channels")

  A channel that supports asynchronous I/O operations.

  [AsynchronousChannelGroup](AsynchronousChannelGroup.md "class in java.nio.channels")

  A grouping of asynchronous channels for the purpose of resource sharing.

  [AsynchronousCloseException](AsynchronousCloseException.md "class in java.nio.channels")

  Checked exception received by a thread when another thread closes the
  channel or the part of the channel upon which it is blocked in an I/O
  operation.

  [AsynchronousFileChannel](AsynchronousFileChannel.md "class in java.nio.channels")

  An asynchronous channel for reading, writing, and manipulating a file.

  [AsynchronousServerSocketChannel](AsynchronousServerSocketChannel.md "class in java.nio.channels")

  An asynchronous channel for stream-oriented listening sockets.

  [AsynchronousSocketChannel](AsynchronousSocketChannel.md "class in java.nio.channels")

  An asynchronous channel for stream-oriented connecting sockets.

  [ByteChannel](ByteChannel.md "interface in java.nio.channels")

  A channel that can read and write bytes.

  [CancelledKeyException](CancelledKeyException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to use
  a selection key that is no longer valid.

  [Channel](Channel.md "interface in java.nio.channels")

  A nexus for I/O operations.

  [Channels](Channels.md "class in java.nio.channels")

  Utility methods for channels and streams.

  [ClosedByInterruptException](ClosedByInterruptException.md "class in java.nio.channels")

  Checked exception received by a thread when another thread interrupts it
  while it is blocked in an I/O operation upon a channel.

  [ClosedChannelException](ClosedChannelException.md "class in java.nio.channels")

  Checked exception thrown when an attempt is made to invoke or complete an
  I/O operation upon channel that is closed, or at least closed to that
  operation.

  [ClosedSelectorException](ClosedSelectorException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to invoke an I/O
  operation upon a closed selector.

  [CompletionHandler](CompletionHandler.md "interface in java.nio.channels")<V,A>

  A handler for consuming the result of an asynchronous I/O operation.

  [ConnectionPendingException](ConnectionPendingException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to connect a [`SocketChannel`](SocketChannel.md "class in java.nio.channels") for which a non-blocking connection operation is already in
  progress.

  [DatagramChannel](DatagramChannel.md "class in java.nio.channels")

  A selectable channel for datagram-oriented sockets.

  [FileChannel](FileChannel.md "class in java.nio.channels")

  A channel for reading, writing, mapping, and manipulating a file.

  [FileChannel.MapMode](FileChannel.MapMode.md "class in java.nio.channels")

  A file-mapping mode.

  [FileLock](FileLock.md "class in java.nio.channels")

  A token representing a lock on a region of a file.

  [FileLockInterruptionException](FileLockInterruptionException.md "class in java.nio.channels")

  Checked exception received by a thread when another thread interrupts it
  while it is waiting to acquire a file lock.

  [GatheringByteChannel](GatheringByteChannel.md "interface in java.nio.channels")

  A channel that can write bytes from a sequence of buffers.

  [IllegalBlockingModeException](IllegalBlockingModeException.md "class in java.nio.channels")

  Unchecked exception thrown when a blocking-mode-specific operation
  is invoked upon a channel in the incorrect blocking mode.

  [IllegalChannelGroupException](IllegalChannelGroupException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to open a channel
  in a group that was not created by the same provider.

  [IllegalSelectorException](IllegalSelectorException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to register a channel
  with a selector that was not created by the provider that created the
  channel.

  [InterruptedByTimeoutException](InterruptedByTimeoutException.md "class in java.nio.channels")

  Checked exception received by a thread when a timeout elapses before an
  asynchronous operation completes.

  [InterruptibleChannel](InterruptibleChannel.md "interface in java.nio.channels")

  A channel that can be asynchronously closed and interrupted.

  [MembershipKey](MembershipKey.md "class in java.nio.channels")

  A token representing the membership of an Internet Protocol (IP) multicast
  group.

  [MulticastChannel](MulticastChannel.md "interface in java.nio.channels")

  A network channel that supports Internet Protocol (IP) multicasting.

  [NetworkChannel](NetworkChannel.md "interface in java.nio.channels")

  A channel to a network socket.

  [NoConnectionPendingException](NoConnectionPendingException.md "class in java.nio.channels")

  Unchecked exception thrown when the [`finishConnect`](SocketChannel.md#finishConnect()) method of a [`SocketChannel`](SocketChannel.md "class in java.nio.channels") is invoked without first
  successfully invoking its [`connect`](SocketChannel.md#connect(java.net.SocketAddress)) method.

  [NonReadableChannelException](NonReadableChannelException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to read
  from a channel that was not originally opened for reading.

  [NonWritableChannelException](NonWritableChannelException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to write
  to a channel that was not originally opened for writing.

  [NotYetBoundException](NotYetBoundException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to invoke an I/O
  operation upon a server socket channel that is not yet bound.

  [NotYetConnectedException](NotYetConnectedException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to invoke an I/O
  operation upon a socket channel that is not yet connected.

  [OverlappingFileLockException](OverlappingFileLockException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to acquire a lock on a
  region of a file that overlaps a region already locked by the same Java
  virtual machine, or when another thread is already waiting to lock an
  overlapping region of the same file.

  [Pipe](Pipe.md "class in java.nio.channels")

  A pair of channels that implements a unidirectional pipe.

  [Pipe.SinkChannel](Pipe.SinkChannel.md "class in java.nio.channels")

  A channel representing the writable end of a [`Pipe`](Pipe.md "class in java.nio.channels").

  [Pipe.SourceChannel](Pipe.SourceChannel.md "class in java.nio.channels")

  A channel representing the readable end of a [`Pipe`](Pipe.md "class in java.nio.channels").

  [ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels")

  A channel that can read bytes.

  [ReadPendingException](ReadPendingException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to read from an
  asynchronous socket channel and a previous read has not completed.

  [ScatteringByteChannel](ScatteringByteChannel.md "interface in java.nio.channels")

  A channel that can read bytes into a sequence of buffers.

  [SeekableByteChannel](SeekableByteChannel.md "interface in java.nio.channels")

  A byte channel that maintains a current *position* and allows the
  position to be changed.

  [SelectableChannel](SelectableChannel.md "class in java.nio.channels")

  A channel that can be multiplexed via a [`Selector`](Selector.md "class in java.nio.channels").

  [SelectionKey](SelectionKey.md "class in java.nio.channels")

  A token representing the registration of a [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") with a
  [`Selector`](Selector.md "class in java.nio.channels").

  [Selector](Selector.md "class in java.nio.channels")

  A multiplexor of [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") objects.

  [ServerSocketChannel](ServerSocketChannel.md "class in java.nio.channels")

  A selectable channel for stream-oriented listening sockets.

  [ShutdownChannelGroupException](ShutdownChannelGroupException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to construct a channel in
  a group that is shutdown or the completion handler for an I/O operation
  cannot be invoked because the channel group has terminated.

  [SocketChannel](SocketChannel.md "class in java.nio.channels")

  A selectable channel for stream-oriented connecting sockets.

  [UnresolvedAddressException](UnresolvedAddressException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to invoke a network
  operation upon an unresolved socket address.

  [UnsupportedAddressTypeException](UnsupportedAddressTypeException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to bind or connect
  to a socket address of a type that is not supported.

  [WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels")

  A channel that can write bytes.

  [WritePendingException](WritePendingException.md "class in java.nio.channels")

  Unchecked exception thrown when an attempt is made to write to an
  asynchronous socket channel and a previous write has not completed.