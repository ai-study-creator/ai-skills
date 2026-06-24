Module [java.rmi](../../../module-summary.md)

Package [javax.rmi.ssl](package-summary.md)

# Class SslRMIServerSocketFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.rmi.ssl.SslRMIServerSocketFactory

All Implemented Interfaces:
:   `RMIServerSocketFactory`

---

public class SslRMIServerSocketFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RMIServerSocketFactory](../../../java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server")

An `SslRMIServerSocketFactory` instance is used by the RMI
runtime in order to obtain server sockets for RMI calls via SSL.

This class implements `RMIServerSocketFactory` over
the Secure Sockets Layer (SSL) or Transport Layer Security (TLS)
protocols.

This class creates SSL sockets using the default
`SSLSocketFactory` (see [`SSLSocketFactory.getDefault()`](../../../../java.base/javax/net/ssl/SSLSocketFactory.md#getDefault())) or the default
`SSLServerSocketFactory` (see [`SSLServerSocketFactory.getDefault()`](../../../../java.base/javax/net/ssl/SSLServerSocketFactory.md#getDefault())) unless the
constructor taking an `SSLContext` is
used in which case the SSL sockets are created using
the `SSLSocketFactory` returned by
[`SSLContext.getSocketFactory()`](../../../../java.base/javax/net/ssl/SSLContext.md#getSocketFactory()) or the
`SSLServerSocketFactory` returned by
[`SSLContext.getServerSocketFactory()`](../../../../java.base/javax/net/ssl/SSLContext.md#getServerSocketFactory()).
When an `SSLContext` is not supplied all the instances of this
class share the same keystore, and the same truststore (when client
authentication is required by the server). This behavior can be modified
by supplying an already initialized `SSLContext` instance.

Since:
:   1.5

See Also:
:   * [`SSLSocketFactory`](../../../../java.base/javax/net/ssl/SSLSocketFactory.md "class in javax.net.ssl")
    * [`SSLServerSocketFactory`](../../../../java.base/javax/net/ssl/SSLServerSocketFactory.md "class in javax.net.ssl")
    * [`SslRMIClientSocketFactory`](SslRMIClientSocketFactory.md "class in javax.rmi.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SslRMIServerSocketFactory()`

  Creates a new `SslRMIServerSocketFactory` with
  the default SSL socket configuration.

  `SslRMIServerSocketFactory(String[] enabledCipherSuites,
  String[] enabledProtocols,
  boolean needClientAuth)`

  Creates a new `SslRMIServerSocketFactory` with
  the specified SSL socket configuration.

  `SslRMIServerSocketFactory(SSLContext context,
  String[] enabledCipherSuites,
  String[] enabledProtocols,
  boolean needClientAuth)`

  Creates a new `SslRMIServerSocketFactory` with the
  specified `SSLContext` and SSL socket configuration.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ServerSocket`

  `createServerSocket(int port)`

  Creates a server socket that accepts SSL connections
  configured according to this factory's SSL socket configuration
  parameters.

  `boolean`

  `equals(Object obj)`

  Indicates whether some other object is "equal to" this one.

  `final String[]`

  `getEnabledCipherSuites()`

  Returns the names of the cipher suites enabled on SSL
  connections accepted by server sockets created by this factory,
  or `null` if this factory uses the cipher suites
  that are enabled by default.

  `final String[]`

  `getEnabledProtocols()`

  Returns the names of the protocol versions enabled on SSL
  connections accepted by server sockets created by this factory,
  or `null` if this factory uses the protocol versions
  that are enabled by default.

  `final boolean`

  `getNeedClientAuth()`

  Returns `true` if client authentication is
  required on SSL connections accepted by server sockets created
  by this factory.

  `int`

  `hashCode()`

  Returns a hash code value for this
  `SslRMIServerSocketFactory`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SslRMIServerSocketFactory

    public SslRMIServerSocketFactory()

    Creates a new `SslRMIServerSocketFactory` with
    the default SSL socket configuration.

    SSL connections accepted by server sockets created by this
    factory have the default cipher suites and protocol versions
    enabled and do not require client authentication.
  + ### SslRMIServerSocketFactory

    public SslRMIServerSocketFactory([String](../../../../java.base/java/lang/String.md "class in java.lang")[] enabledCipherSuites,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] enabledProtocols,
    boolean needClientAuth)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new `SslRMIServerSocketFactory` with
    the specified SSL socket configuration.

    Parameters:
    :   `enabledCipherSuites` - names of all the cipher suites to
        enable on SSL connections accepted by server sockets created by
        this factory, or `null` to use the cipher suites
        that are enabled by default
    :   `enabledProtocols` - names of all the protocol versions to
        enable on SSL connections accepted by server sockets created by
        this factory, or `null` to use the protocol versions
        that are enabled by default
    :   `needClientAuth` - `true` to require client
        authentication on SSL connections accepted by server sockets
        created by this factory; `false` to not require
        client authentication

    Throws:
    :   `IllegalArgumentException` - when one or more of the cipher
        suites named by the `enabledCipherSuites` parameter is
        not supported, when one or more of the protocols named by the
        `enabledProtocols` parameter is not supported or when
        a problem is encountered while trying to check if the supplied
        cipher suites and protocols to be enabled are supported.

    See Also:
    :   - [`SSLSocket.setEnabledCipherSuites(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledCipherSuites(java.lang.String%5B%5D))
        - [`SSLSocket.setEnabledProtocols(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledProtocols(java.lang.String%5B%5D))
        - [`SSLSocket.setNeedClientAuth(boolean)`](../../../../java.base/javax/net/ssl/SSLSocket.md#setNeedClientAuth(boolean))
  + ### SslRMIServerSocketFactory

    public SslRMIServerSocketFactory([SSLContext](../../../../java.base/javax/net/ssl/SSLContext.md "class in javax.net.ssl") context,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] enabledCipherSuites,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] enabledProtocols,
    boolean needClientAuth)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new `SslRMIServerSocketFactory` with the
    specified `SSLContext` and SSL socket configuration.

    Parameters:
    :   `context` - the SSL context to be used for creating SSL sockets.
        If `context` is null the default `SSLSocketFactory`
        or the default `SSLServerSocketFactory` will be used to
        create SSL sockets. Otherwise, the socket factory returned by
        `SSLContext.getSocketFactory()` or
        `SSLContext.getServerSocketFactory()` will be used instead.
    :   `enabledCipherSuites` - names of all the cipher suites to
        enable on SSL connections accepted by server sockets created by
        this factory, or `null` to use the cipher suites
        that are enabled by default
    :   `enabledProtocols` - names of all the protocol versions to
        enable on SSL connections accepted by server sockets created by
        this factory, or `null` to use the protocol versions
        that are enabled by default
    :   `needClientAuth` - `true` to require client
        authentication on SSL connections accepted by server sockets
        created by this factory; `false` to not require
        client authentication

    Throws:
    :   `IllegalArgumentException` - when one or more of the cipher
        suites named by the `enabledCipherSuites` parameter is
        not supported, when one or more of the protocols named by the
        `enabledProtocols` parameter is not supported or when
        a problem is encountered while trying to check if the supplied
        cipher suites and protocols to be enabled are supported.

    Since:
    :   1.7

    See Also:
    :   - [`SSLSocket.setEnabledCipherSuites(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledCipherSuites(java.lang.String%5B%5D))
        - [`SSLSocket.setEnabledProtocols(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledProtocols(java.lang.String%5B%5D))
        - [`SSLSocket.setNeedClientAuth(boolean)`](../../../../java.base/javax/net/ssl/SSLSocket.md#setNeedClientAuth(boolean))
* ## Method Details

  + ### getEnabledCipherSuites

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getEnabledCipherSuites()

    Returns the names of the cipher suites enabled on SSL
    connections accepted by server sockets created by this factory,
    or `null` if this factory uses the cipher suites
    that are enabled by default.

    Returns:
    :   an array of cipher suites enabled, or `null`

    See Also:
    :   - [`SSLSocket.setEnabledCipherSuites(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledCipherSuites(java.lang.String%5B%5D))
  + ### getEnabledProtocols

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getEnabledProtocols()

    Returns the names of the protocol versions enabled on SSL
    connections accepted by server sockets created by this factory,
    or `null` if this factory uses the protocol versions
    that are enabled by default.

    Returns:
    :   an array of protocol versions enabled, or
        `null`

    See Also:
    :   - [`SSLSocket.setEnabledProtocols(java.lang.String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledProtocols(java.lang.String%5B%5D))
  + ### getNeedClientAuth

    public final boolean getNeedClientAuth()

    Returns `true` if client authentication is
    required on SSL connections accepted by server sockets created
    by this factory.

    Returns:
    :   `true` if client authentication is required

    See Also:
    :   - [`SSLSocket.setNeedClientAuth(boolean)`](../../../../java.base/javax/net/ssl/SSLSocket.md#setNeedClientAuth(boolean))
  + ### createServerSocket

    public [ServerSocket](../../../../java.base/java/net/ServerSocket.md "class in java.net") createServerSocket(int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a server socket that accepts SSL connections
    configured according to this factory's SSL socket configuration
    parameters.

    Specified by:
    :   `createServerSocket` in interface `RMIServerSocketFactory`

    Parameters:
    :   `port` - the port number

    Returns:
    :   the server socket on the specified port

    Throws:
    :   `IOException` - if an I/O error occurs during server socket
        creation
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether some other object is "equal to" this one.

    Two `SslRMIServerSocketFactory` objects are equal
    if they have been constructed with the same SSL context and
    SSL socket configuration parameters.

    A subclass should override this method (as well as
    [`hashCode()`](#hashCode())) if it adds instance state that affects
    equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this
    `SslRMIServerSocketFactory`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this
        `SslRMIServerSocketFactory`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))