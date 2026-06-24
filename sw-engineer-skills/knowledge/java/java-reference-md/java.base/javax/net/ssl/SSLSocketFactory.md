Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLSocketFactory

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[javax.net.SocketFactory](../SocketFactory.md "class in javax.net")

javax.net.ssl.SSLSocketFactory

---

public abstract class SSLSocketFactory
extends [SocketFactory](../SocketFactory.md "class in javax.net")

`SSLSocketFactory`s create `SSLSocket`s.

Since:
:   1.4

See Also:
:   * [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLSocketFactory()`

  Constructor is used only by subclasses.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Socket`

  `createSocket(Socket s,
  InputStream consumed,
  boolean autoClose)`

  Creates a server mode [`Socket`](../../../java/net/Socket.md "class in java.net") layered over an
  existing connected socket, and is able to read data which has
  already been consumed/removed from the [`Socket`](../../../java/net/Socket.md "class in java.net")'s
  underlying [`InputStream`](../../../java/io/InputStream.md "class in java.io").

  `abstract Socket`

  `createSocket(Socket s,
  String host,
  int port,
  boolean autoClose)`

  Returns a socket layered over an existing socket connected to the named
  host, at the given port.

  `static SocketFactory`

  `getDefault()`

  Returns the default SSL socket factory.

  `abstract String[]`

  `getDefaultCipherSuites()`

  Returns the list of cipher suites which are enabled by default.

  `abstract String[]`

  `getSupportedCipherSuites()`

  Returns the names of the cipher suites which could be enabled for use
  on an SSL connection.

  ### Methods inherited from class javax.net.[SocketFactory](../SocketFactory.md "class in javax.net")

  `createSocket, createSocket, createSocket, createSocket, createSocket`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SSLSocketFactory

    public SSLSocketFactory()

    Constructor is used only by subclasses.
* ## Method Details

  + ### getDefault

    public static [SocketFactory](../SocketFactory.md "class in javax.net") getDefault()

    Returns the default SSL socket factory.

    The first time this method is called, the security property
    "ssl.SocketFactory.provider" is examined. If it is non-null, a class by
    that name is loaded and instantiated. If that is successful and the
    object is an instance of SSLSocketFactory, it is made the default SSL
    socket factory.

    Otherwise, this method returns
    `SSLContext.getDefault().getSocketFactory()`. If that
    call fails, an inoperative factory is returned.

    Returns:
    :   the default `SocketFactory`

    See Also:
    :   - [`SSLContext.getDefault()`](SSLContext.md#getDefault())
  + ### getDefaultCipherSuites

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getDefaultCipherSuites()

    Returns the list of cipher suites which are enabled by default.
    Unless a different list is enabled, handshaking on an SSL connection
    will use one of these cipher suites. The minimum quality of service
    for these defaults requires confidentiality protection and server
    authentication (that is, no anonymous cipher suites).

    The returned array includes cipher suites from the list of standard
    cipher suite names in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification, and may also include other cipher suites
    that the provider supports.

    Returns:
    :   array of the cipher suites enabled by default

    See Also:
    :   - [`getSupportedCipherSuites()`](#getSupportedCipherSuites())
  + ### getSupportedCipherSuites

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getSupportedCipherSuites()

    Returns the names of the cipher suites which could be enabled for use
    on an SSL connection. Normally, only a subset of these will actually
    be enabled by default, since this list may include cipher suites which
    do not meet quality of service requirements for those defaults. Such
    cipher suites are useful in specialized applications.

    The returned array includes cipher suites from the list of standard
    cipher suite names in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification, and may also include other cipher suites
    that the provider supports.

    Returns:
    :   an array of cipher suite names

    See Also:
    :   - [`getDefaultCipherSuites()`](#getDefaultCipherSuites())
  + ### createSocket

    public abstract [Socket](../../../java/net/Socket.md "class in java.net") createSocket([Socket](../../../java/net/Socket.md "class in java.net") s,
    [String](../../../java/lang/String.md "class in java.lang") host,
    int port,
    boolean autoClose)
    throws [IOException](../../../java/io/IOException.md "class in java.io")

    Returns a socket layered over an existing socket connected to the named
    host, at the given port. This constructor can be used when tunneling SSL
    through a proxy or when negotiating the use of SSL over an existing
    socket. The host and port refer to the logical peer destination.
    This socket is configured using the socket options established for
    this factory.

    Parameters:
    :   `s` - the existing socket
    :   `host` - the server host
    :   `port` - the server port
    :   `autoClose` - close the underlying socket when this socket is closed

    Returns:
    :   a socket connected to the specified host and port

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `NullPointerException` - if the parameter s is null
  + ### createSocket

    public [Socket](../../../java/net/Socket.md "class in java.net") createSocket([Socket](../../../java/net/Socket.md "class in java.net") s,
    [InputStream](../../../java/io/InputStream.md "class in java.io") consumed,
    boolean autoClose)
    throws [IOException](../../../java/io/IOException.md "class in java.io")

    Creates a server mode [`Socket`](../../../java/net/Socket.md "class in java.net") layered over an
    existing connected socket, and is able to read data which has
    already been consumed/removed from the [`Socket`](../../../java/net/Socket.md "class in java.net")'s
    underlying [`InputStream`](../../../java/io/InputStream.md "class in java.io").

    This method can be used by a server application that needs to
    observe the inbound data but still create valid SSL/TLS
    connections: for example, inspection of Server Name Indication
    (SNI) extensions (See section 3 of [TLS Extensions
    (RFC6066)](http://www.ietf.org/rfc/rfc6066.txt)). Data that has been already removed from the
    underlying [`InputStream`](../../../java/io/InputStream.md "class in java.io") should be loaded into the
    `consumed` stream before this method is called, perhaps
    using a [`ByteArrayInputStream`](../../../java/io/ByteArrayInputStream.md "class in java.io"). When this
    [`Socket`](../../../java/net/Socket.md "class in java.net") begins handshaking, it will read all the data in
    `consumed` until it reaches `EOF`, then all further
    data is read from the underlying [`InputStream`](../../../java/io/InputStream.md "class in java.io") as
    usual.

    The returned socket is configured using the socket options
    established for this factory, and is set to use server mode when
    handshaking (see [`SSLSocket.setUseClientMode(boolean)`](SSLSocket.md#setUseClientMode(boolean))).

    Parameters:
    :   `s` - the existing socket
    :   `consumed` - the consumed inbound network data that has already been
        removed from the existing [`Socket`](../../../java/net/Socket.md "class in java.net")
        [`InputStream`](../../../java/io/InputStream.md "class in java.io"). This parameter may be
        `null` if no data has been removed.
    :   `autoClose` - close the underlying socket when this socket is closed.

    Returns:
    :   the [`Socket`](../../../java/net/Socket.md "class in java.net") compliant with the socket options
        established for this factory

    Throws:
    :   `IOException` - if an I/O error occurs when creating the socket
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation
    :   `NullPointerException` - if `s` is `null`

    Since:
    :   1.8