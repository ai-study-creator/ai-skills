Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class SocketImpl

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.SocketImpl

All Implemented Interfaces:
:   `SocketOptions`

---

public abstract class SocketImpl
extends [Object](../lang/Object.md "class in java.lang")
implements [SocketOptions](SocketOptions.md "interface in java.net")

The abstract class `SocketImpl` is a common superclass
of all classes that actually implement sockets. It is used to
create both client and server sockets.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected InetAddress`

  `address`

  The IP address of the remote end of this socket.

  `protected FileDescriptor`

  `fd`

  The file descriptor object for this socket.

  `protected int`

  `localport`

  The local port number to which this socket is connected.

  `protected int`

  `port`

  The port number on the remote host to which this socket is connected.

  ### Fields inherited from interface java.net.[SocketOptions](SocketOptions.md "interface in java.net")

  `IP_MULTICAST_IF, IP_MULTICAST_IF2, IP_MULTICAST_LOOP, IP_TOS, SO_BINDADDR, SO_BROADCAST, SO_KEEPALIVE, SO_LINGER, SO_OOBINLINE, SO_RCVBUF, SO_REUSEADDR, SO_REUSEPORT, SO_SNDBUF, SO_TIMEOUT, TCP_NODELAY`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SocketImpl()`

  Initialize a new instance of this class
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract void`

  `accept(SocketImpl s)`

  Accepts a connection.

  `protected abstract int`

  `available()`

  Returns the number of bytes that can be read from this socket
  without blocking.

  `protected abstract void`

  `bind(InetAddress host,
  int port)`

  Binds this socket to the specified local IP address and port number.

  `protected abstract void`

  `close()`

  Closes this socket.

  `protected abstract void`

  `connect(String host,
  int port)`

  Connects this socket to the specified port on the named host.

  `protected abstract void`

  `connect(InetAddress address,
  int port)`

  Connects this socket to the specified port number on the specified host.

  `protected abstract void`

  `connect(SocketAddress address,
  int timeout)`

  Connects this socket to the specified port number on the specified host.

  `protected abstract void`

  `create(boolean stream)`

  Creates either a stream or a datagram socket.

  `protected FileDescriptor`

  `getFileDescriptor()`

  Returns the value of this socket's `fd` field.

  `protected InetAddress`

  `getInetAddress()`

  Returns the value of this socket's `address` field.

  `protected abstract InputStream`

  `getInputStream()`

  Returns an input stream for this socket.

  `protected int`

  `getLocalPort()`

  Returns the value of this socket's `localport` field.

  `protected <T> T`

  `getOption(SocketOption<T> name)`

  Called to get a socket option.

  `protected abstract OutputStream`

  `getOutputStream()`

  Returns an output stream for this socket.

  `protected int`

  `getPort()`

  Returns the value of this socket's `port` field.

  `protected abstract void`

  `listen(int backlog)`

  Sets the maximum queue length for incoming connection indications
  (a request to connect) to the `count` argument.

  `protected abstract void`

  `sendUrgentData(int data)`

  Send one byte of urgent data on the socket.

  `protected <T> void`

  `setOption(SocketOption<T> name,
  T value)`

  Called to set a socket option.

  `protected void`

  `setPerformancePreferences(int connectionTime,
  int latency,
  int bandwidth)`

  Sets performance preferences for this socket.

  `protected void`

  `shutdownInput()`

  Places the input stream for this socket at "end of stream".

  `protected void`

  `shutdownOutput()`

  Disables the output stream for this socket.

  `protected Set<SocketOption<?>>`

  `supportedOptions()`

  Returns a set of SocketOptions supported by this impl
  and by this impl's socket (Socket or ServerSocket)

  `protected boolean`

  `supportsUrgentData()`

  Returns whether or not this SocketImpl supports sending
  urgent data.

  `String`

  `toString()`

  Returns the address and port of this socket as a `String`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.net.[SocketOptions](SocketOptions.md "interface in java.net")

  `getOption, setOption`

* ## Field Details

  + ### fd

    protected [FileDescriptor](../io/FileDescriptor.md "class in java.io") fd

    The file descriptor object for this socket.
  + ### address

    protected [InetAddress](InetAddress.md "class in java.net") address

    The IP address of the remote end of this socket.
  + ### port

    protected int port

    The port number on the remote host to which this socket is connected.
  + ### localport

    protected int localport

    The local port number to which this socket is connected.
* ## Constructor Details

  + ### SocketImpl

    public SocketImpl()

    Initialize a new instance of this class
* ## Method Details

  + ### create

    protected abstract void create(boolean stream)
    throws [IOException](../io/IOException.md "class in java.io")

    Creates either a stream or a datagram socket.

    Parameters:
    :   `stream` - if `true`, create a stream socket;
        otherwise, create a datagram socket.

    Throws:
    :   `IOException` - if an I/O error occurs while creating the
        socket.
  + ### connect

    protected abstract void connect([String](../lang/String.md "class in java.lang") host,
    int port)
    throws [IOException](../io/IOException.md "class in java.io")

    Connects this socket to the specified port on the named host.

    Parameters:
    :   `host` - the name of the remote host.
    :   `port` - the port number.

    Throws:
    :   `IOException` - if an I/O error occurs when connecting to the
        remote host.
  + ### connect

    protected abstract void connect([InetAddress](InetAddress.md "class in java.net") address,
    int port)
    throws [IOException](../io/IOException.md "class in java.io")

    Connects this socket to the specified port number on the specified host.

    Parameters:
    :   `address` - the IP address of the remote host.
    :   `port` - the port number.

    Throws:
    :   `IOException` - if an I/O error occurs when attempting a
        connection.
  + ### connect

    protected abstract void connect([SocketAddress](SocketAddress.md "class in java.net") address,
    int timeout)
    throws [IOException](../io/IOException.md "class in java.io")

    Connects this socket to the specified port number on the specified host.
    A timeout of zero is interpreted as an infinite timeout. The connection
    will then block until established or an error occurs.

    Parameters:
    :   `address` - the Socket address of the remote host.
    :   `timeout` - the timeout value, in milliseconds, or zero for no timeout.

    Throws:
    :   `IOException` - if an I/O error occurs when attempting a
        connection.

    Since:
    :   1.4
  + ### bind

    protected abstract void bind([InetAddress](InetAddress.md "class in java.net") host,
    int port)
    throws [IOException](../io/IOException.md "class in java.io")

    Binds this socket to the specified local IP address and port number.

    Parameters:
    :   `host` - an IP address that belongs to a local interface.
    :   `port` - the port number.

    Throws:
    :   `IOException` - if an I/O error occurs when binding this socket.
  + ### listen

    protected abstract void listen(int backlog)
    throws [IOException](../io/IOException.md "class in java.io")

    Sets the maximum queue length for incoming connection indications
    (a request to connect) to the `count` argument. If a
    connection indication arrives when the queue is full, the
    connection is refused.

    Parameters:
    :   `backlog` - the maximum length of the queue.

    Throws:
    :   `IOException` - if an I/O error occurs when creating the queue.
  + ### accept

    protected abstract void accept([SocketImpl](SocketImpl.md "class in java.net") s)
    throws [IOException](../io/IOException.md "class in java.io")

    Accepts a connection.

    Parameters:
    :   `s` - the accepted connection.

    Throws:
    :   `IOException` - if an I/O error occurs when accepting the
        connection.
  + ### getInputStream

    protected abstract [InputStream](../io/InputStream.md "class in java.io") getInputStream()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns an input stream for this socket.

    Returns:
    :   a stream for reading from this socket.

    Throws:
    :   `IOException` - if an I/O error occurs when creating the
        input stream.
  + ### getOutputStream

    protected abstract [OutputStream](../io/OutputStream.md "class in java.io") getOutputStream()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns an output stream for this socket.

    Returns:
    :   an output stream for writing to this socket.

    Throws:
    :   `IOException` - if an I/O error occurs when creating the
        output stream.
  + ### available

    protected abstract int available()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the number of bytes that can be read from this socket
    without blocking.

    Returns:
    :   the number of bytes that can be read from this socket
        without blocking.

    Throws:
    :   `IOException` - if an I/O error occurs when determining the
        number of bytes available.
  + ### close

    protected abstract void close()
    throws [IOException](../io/IOException.md "class in java.io")

    Closes this socket.

    Throws:
    :   `IOException` - if an I/O error occurs when closing this socket.
  + ### shutdownInput

    protected void shutdownInput()
    throws [IOException](../io/IOException.md "class in java.io")

    Places the input stream for this socket at "end of stream".
    Any data sent to this socket is acknowledged and then
    silently discarded.
    If you read from a socket input stream after invoking this method on the
    socket, the stream's `available` method will return 0, and its
    `read` methods will return `-1` (end of stream).

    Throws:
    :   `IOException` - if an I/O error occurs when shutting down this
        socket.

    Since:
    :   1.3

    See Also:
    :   - [`Socket.shutdownOutput()`](Socket.md#shutdownOutput())
        - [`Socket.close()`](Socket.md#close())
        - [`Socket.setSoLinger(boolean, int)`](Socket.md#setSoLinger(boolean,int))
  + ### shutdownOutput

    protected void shutdownOutput()
    throws [IOException](../io/IOException.md "class in java.io")

    Disables the output stream for this socket.
    For a TCP socket, any previously written data will be sent
    followed by TCP's normal connection termination sequence.
    If you write to a socket output stream after invoking
    shutdownOutput() on the socket, the stream will throw
    an IOException.

    Throws:
    :   `IOException` - if an I/O error occurs when shutting down this
        socket.

    Since:
    :   1.3

    See Also:
    :   - [`Socket.shutdownInput()`](Socket.md#shutdownInput())
        - [`Socket.close()`](Socket.md#close())
        - [`Socket.setSoLinger(boolean, int)`](Socket.md#setSoLinger(boolean,int))
  + ### getFileDescriptor

    protected [FileDescriptor](../io/FileDescriptor.md "class in java.io") getFileDescriptor()

    Returns the value of this socket's `fd` field.

    Returns:
    :   the value of this socket's `fd` field.

    See Also:
    :   - [`fd`](#fd)
  + ### getInetAddress

    protected [InetAddress](InetAddress.md "class in java.net") getInetAddress()

    Returns the value of this socket's `address` field.

    Returns:
    :   the value of this socket's `address` field.

    See Also:
    :   - [`address`](#address)
  + ### getPort

    protected int getPort()

    Returns the value of this socket's `port` field.

    Returns:
    :   the value of this socket's `port` field.

    See Also:
    :   - [`port`](#port)
  + ### supportsUrgentData

    protected boolean supportsUrgentData()

    Returns whether or not this SocketImpl supports sending
    urgent data. By default, false is returned
    unless the method is overridden in a sub-class

    Returns:
    :   true if urgent data supported

    Since:
    :   1.4

    See Also:
    :   - [`address`](#address)
  + ### sendUrgentData

    protected abstract void sendUrgentData(int data)
    throws [IOException](../io/IOException.md "class in java.io")

    Send one byte of urgent data on the socket.
    The byte to be sent is the low eight bits of the parameter

    Parameters:
    :   `data` - The byte of data to send

    Throws:
    :   `IOException` - if there is an error
        sending the data.

    Since:
    :   1.4
  + ### getLocalPort

    protected int getLocalPort()

    Returns the value of this socket's `localport` field.

    Returns:
    :   the value of this socket's `localport` field.

    See Also:
    :   - [`localport`](#localport)
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns the address and port of this socket as a `String`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this socket.
  + ### setPerformancePreferences

    protected void setPerformancePreferences(int connectionTime,
    int latency,
    int bandwidth)

    Sets performance preferences for this socket.

    Sockets use the TCP/IP protocol by default. Some implementations
    may offer alternative protocols which have different performance
    characteristics than TCP/IP. This method allows the application to
    express its own preferences as to how these tradeoffs should be made
    when the implementation chooses from the available protocols.

    Performance preferences are described by three integers
    whose values indicate the relative importance of short connection time,
    low latency, and high bandwidth. The absolute values of the integers
    are irrelevant; in order to choose a protocol the values are simply
    compared, with larger values indicating stronger preferences. Negative
    values represent a lower priority than positive values. If the
    application prefers short connection time over both low latency and high
    bandwidth, for example, then it could invoke this method with the values
    `(1, 0, 0)`. If the application prefers high bandwidth above low
    latency, and low latency above short connection time, then it could
    invoke this method with the values `(0, 1, 2)`.
    By default, this method does nothing, unless it is overridden in
    a sub-class.

    Parameters:
    :   `connectionTime` - An `int` expressing the relative importance of a short
        connection time
    :   `latency` - An `int` expressing the relative importance of low
        latency
    :   `bandwidth` - An `int` expressing the relative importance of high
        bandwidth

    Since:
    :   1.5
  + ### setOption

    protected <T> void setOption([SocketOption](SocketOption.md "interface in java.net")<T> name,
    T value)
    throws [IOException](../io/IOException.md "class in java.io")

    Called to set a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option
    :   `value` - The value of the socket option. A value of `null`
        may be valid for some options.

    Throws:
    :   `UnsupportedOperationException` - if the SocketImpl does not
        support the option
    :   `IllegalArgumentException` - if the value is not valid for
        the option
    :   `IOException` - if an I/O error occurs, or if the socket is closed
    :   `NullPointerException` - if name is `null`

    Since:
    :   9
  + ### getOption

    protected <T> T getOption([SocketOption](SocketOption.md "interface in java.net")<T> name)
    throws [IOException](../io/IOException.md "class in java.io")

    Called to get a socket option.

    Type Parameters:
    :   `T` - The type of the socket option value

    Parameters:
    :   `name` - The socket option

    Returns:
    :   the value of the named option

    Throws:
    :   `UnsupportedOperationException` - if the SocketImpl does not
        support the option
    :   `IOException` - if an I/O error occurs, or if the socket is closed
    :   `NullPointerException` - if name is `null`

    Since:
    :   9
  + ### supportedOptions

    protected [Set](../util/Set.md "interface in java.util")<[SocketOption](SocketOption.md "interface in java.net")<?>> supportedOptions()

    Returns a set of SocketOptions supported by this impl
    and by this impl's socket (Socket or ServerSocket)

    Returns:
    :   a Set of SocketOptions

    Since:
    :   9