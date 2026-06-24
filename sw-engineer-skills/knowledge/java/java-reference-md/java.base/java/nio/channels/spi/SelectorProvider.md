Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class SelectorProvider

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.channels.spi.SelectorProvider

---

public abstract class SelectorProvider
extends [Object](../../../lang/Object.md "class in java.lang")

Service-provider class for selectors and selectable channels.

A selector provider is a concrete subclass of this class that has a
zero-argument constructor and implements the abstract methods specified
below. A given invocation of the Java virtual machine maintains a single
system-wide default provider instance, which is returned by the [`provider`](#provider()) method. The first invocation of that method will locate
the default provider as specified below.

The system-wide default provider is used by the static `open`
methods of the [`DatagramChannel`](../DatagramChannel.md#open()), [`Pipe`](../Pipe.md#open()), [`Selector`](../Selector.md#open()), [`ServerSocketChannel`](../ServerSocketChannel.md#open()), and [`SocketChannel`](../SocketChannel.md#open()) classes. It is also
used by the [`System.inheritedChannel()`](../../../lang/System.md#inheritedChannel())
method. A program may make use of a provider other than the default provider
by instantiating that provider and then directly invoking the `open`
methods defined in this class.

All of the methods in this class are safe for use by multiple concurrent
threads.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SelectorProvider()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Channel`

  `inheritedChannel()`

  Returns the channel inherited from the entity that created this
  Java virtual machine.

  `abstract DatagramChannel`

  `openDatagramChannel()`

  Opens a datagram channel.

  `abstract DatagramChannel`

  `openDatagramChannel(ProtocolFamily family)`

  Opens a datagram channel.

  `abstract Pipe`

  `openPipe()`

  Opens a pipe.

  `abstract AbstractSelector`

  `openSelector()`

  Opens a selector.

  `abstract ServerSocketChannel`

  `openServerSocketChannel()`

  Opens a server-socket channel.

  `ServerSocketChannel`

  `openServerSocketChannel(ProtocolFamily family)`

  Opens a server-socket channel.

  `abstract SocketChannel`

  `openSocketChannel()`

  Opens a socket channel.

  `SocketChannel`

  `openSocketChannel(ProtocolFamily family)`

  Opens a socket channel.

  `static SelectorProvider`

  `provider()`

  Returns the system-wide default selector provider for this invocation of
  the Java virtual machine.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SelectorProvider

    protected SelectorProvider()

    Initializes a new instance of this class.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("selectorProvider")`
* ## Method Details

  + ### provider

    public static [SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi") provider()

    Returns the system-wide default selector provider for this invocation of
    the Java virtual machine.

    The first invocation of this method locates the default provider
    object as follows:

    1. If the system property
       `java.nio.channels.spi.SelectorProvider` is defined
       then it is taken to be the fully-qualified name of a concrete provider
       class. The class is loaded and instantiated; if this process fails then
       an unspecified error is thrown.
    2. If a provider class has been installed in a jar file that is
       visible to the system class loader, and that jar file contains a
       provider-configuration file named
       `java.nio.channels.spi.SelectorProvider` in the resource
       directory `META-INF/services`, then the first class name
       specified in that file is taken. The class is loaded and
       instantiated; if this process fails then an unspecified error is
       thrown.
    3. Finally, if no provider has been specified by any of the above
       means then the system-default provider class is instantiated and the
       result is returned.

    Subsequent invocations of this method return the provider that was
    returned by the first invocation.

    Returns:
    :   The system-wide default selector provider
  + ### openDatagramChannel

    public abstract [DatagramChannel](../DatagramChannel.md "class in java.nio.channels") openDatagramChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a datagram channel.

    Returns:
    :   The new channel

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### openDatagramChannel

    public abstract [DatagramChannel](../DatagramChannel.md "class in java.nio.channels") openDatagramChannel([ProtocolFamily](../../../net/ProtocolFamily.md "interface in java.net") family)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a datagram channel.

    Parameters:
    :   `family` - The protocol family

    Returns:
    :   A new datagram channel

    Throws:
    :   `UnsupportedOperationException` - If the specified protocol family is not supported
    :   `IOException` - If an I/O error occurs

    Since:
    :   1.7
  + ### openPipe

    public abstract [Pipe](../Pipe.md "class in java.nio.channels") openPipe()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a pipe.

    Returns:
    :   The new pipe

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### openSelector

    public abstract [AbstractSelector](AbstractSelector.md "class in java.nio.channels.spi") openSelector()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a selector.

    Returns:
    :   The new selector

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### openServerSocketChannel

    public abstract [ServerSocketChannel](../ServerSocketChannel.md "class in java.nio.channels") openServerSocketChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a server-socket channel.

    Returns:
    :   The new channel

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### openSocketChannel

    public abstract [SocketChannel](../SocketChannel.md "class in java.nio.channels") openSocketChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a socket channel.

    Returns:
    :   The new channel

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### inheritedChannel

    public [Channel](../Channel.md "interface in java.nio.channels") inheritedChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Returns the channel inherited from the entity that created this
    Java virtual machine.

    On many operating systems a process, such as a Java virtual
    machine, can be started in a manner that allows the process to
    inherit a channel from the entity that created the process. The
    manner in which this is done is system dependent, as are the
    possible entities to which the channel may be connected. For example,
    on UNIX systems, the Internet services daemon (*inetd*) is used to
    start programs to service requests when a request arrives on an
    associated network port. In this example, the process that is started,
    inherits a channel representing a network socket.

    In cases where the inherited channel is for an *Internet protocol*
    socket then the [`Channel`](../Channel.md "interface in java.nio.channels") type returned
    by this method is determined as follows:
    - If the inherited channel is for a stream-oriented connected
      socket then a [`SocketChannel`](../SocketChannel.md "class in java.nio.channels") is returned. The
      socket channel is, at least initially, in blocking mode, bound
      to a socket address, and connected to a peer.
    - If the inherited channel is for a stream-oriented listening
      socket then a [`ServerSocketChannel`](../ServerSocketChannel.md "class in java.nio.channels") is returned.
      The server-socket channel is, at least initially, in blocking mode,
      and bound to a socket address.
    - If the inherited channel is a datagram-oriented socket then a
      [`DatagramChannel`](../DatagramChannel.md "class in java.nio.channels") is returned. The datagram channel
      is, at least initially, in blocking mode, and bound to a socket address.

    In cases where the inherited channel is for a *Unix domain*
    socket then the [`Channel`](../Channel.md "interface in java.nio.channels") type returned is the same as for
    *Internet protocol* sockets as described above, except that
    datagram-oriented sockets are not supported.

    In addition to the two types of socket just described, this method
    may return other types in the future.

    The first invocation of this method creates the channel that is
    returned. Subsequent invocations of this method return the same
    channel.

    Returns:
    :   The inherited channel, if any, otherwise `null`.

    Throws:
    :   `IOException` - If an I/O error occurs
    :   `SecurityException` - If a security manager has been installed and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("inheritedChannel")`

    Since:
    :   1.5
  + ### openSocketChannel

    public [SocketChannel](../SocketChannel.md "class in java.nio.channels") openSocketChannel([ProtocolFamily](../../../net/ProtocolFamily.md "interface in java.net") family)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a socket channel.

    Parameters:
    :   `family` - The protocol family

    Returns:
    :   The new channel

    Throws:
    :   `UnsupportedOperationException` - If the specified protocol family is not supported
    :   `IOException` - If an I/O error occurs

    Since:
    :   15
  + ### openServerSocketChannel

    public [ServerSocketChannel](../ServerSocketChannel.md "class in java.nio.channels") openServerSocketChannel([ProtocolFamily](../../../net/ProtocolFamily.md "interface in java.net") family)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens a server-socket channel.

    Parameters:
    :   `family` - The protocol family

    Returns:
    :   The new channel

    Throws:
    :   `UnsupportedOperationException` - If the specified protocol family is not supported
    :   `IOException` - If an I/O error occurs

    Since:
    :   15