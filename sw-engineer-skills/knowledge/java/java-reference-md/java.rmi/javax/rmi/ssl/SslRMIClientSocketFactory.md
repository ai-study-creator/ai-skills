Module [java.rmi](../../../module-summary.md)

Package [javax.rmi.ssl](package-summary.md)

# Class SslRMIClientSocketFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.rmi.ssl.SslRMIClientSocketFactory

All Implemented Interfaces:
:   `Serializable`, `RMIClientSocketFactory`

---

public class SslRMIClientSocketFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RMIClientSocketFactory](../../../java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An `SslRMIClientSocketFactory` instance is used by the RMI
runtime in order to obtain client sockets for RMI calls via SSL.

This class implements `RMIClientSocketFactory` over
the Secure Sockets Layer (SSL) or Transport Layer Security (TLS)
protocols.

This class creates SSL sockets using the default
`SSLSocketFactory` (see [`SSLSocketFactory.getDefault()`](../../../../java.base/javax/net/ssl/SSLSocketFactory.md#getDefault())). All instances of this class are
functionally equivalent. In particular, they all share the same
truststore, and the same keystore when client authentication is
required by the server. This behavior can be modified in
subclasses by overriding the [`createSocket(String,int)`](#createSocket(java.lang.String,int))
method; in that case, [`equals`](#equals(java.lang.Object)) and [`hashCode`](#hashCode()) may also need to be overridden.

If the system property
`javax.rmi.ssl.client.enabledCipherSuites` is specified,
the [`createSocket(String,int)`](#createSocket(java.lang.String,int)) method will call [`SSLSocket.setEnabledCipherSuites(String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledCipherSuites(java.lang.String%5B%5D)) before returning the
socket. The value of this system property is a string that is a
comma-separated list of SSL/TLS cipher suites to enable.

If the system property
`javax.rmi.ssl.client.enabledProtocols` is specified,
the [`createSocket(String,int)`](#createSocket(java.lang.String,int)) method will call [`SSLSocket.setEnabledProtocols(String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledProtocols(java.lang.String%5B%5D)) before returning the
socket. The value of this system property is a string that is a
comma-separated list of SSL/TLS protocol versions to enable.

Since:
:   1.5

See Also:
:   * [`SSLSocketFactory`](../../../../java.base/javax/net/ssl/SSLSocketFactory.md "class in javax.net.ssl")
    * [`SslRMIServerSocketFactory`](SslRMIServerSocketFactory.md "class in javax.rmi.ssl")
    * [Serialized Form](../../../../serialized-form.md#javax.rmi.ssl.SslRMIClientSocketFactory)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SslRMIClientSocketFactory()`

  Creates a new `SslRMIClientSocketFactory`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Socket`

  `createSocket(String host,
  int port)`

  Creates an SSL socket.

  `boolean`

  `equals(Object obj)`

  Indicates whether some other object is "equal to" this one.

  `int`

  `hashCode()`

  Returns a hash code value for this
  `SslRMIClientSocketFactory`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SslRMIClientSocketFactory

    public SslRMIClientSocketFactory()

    Creates a new `SslRMIClientSocketFactory`.
* ## Method Details

  + ### createSocket

    public [Socket](../../../../java.base/java/net/Socket.md "class in java.net") createSocket([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates an SSL socket.

    If the system property
    `javax.rmi.ssl.client.enabledCipherSuites` is
    specified, this method will call [`SSLSocket.setEnabledCipherSuites(String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledCipherSuites(java.lang.String%5B%5D)) before returning
    the socket. The value of this system property is a string that
    is a comma-separated list of SSL/TLS cipher suites to
    enable.

    If the system property
    `javax.rmi.ssl.client.enabledProtocols` is
    specified, this method will call [`SSLSocket.setEnabledProtocols(String[])`](../../../../java.base/javax/net/ssl/SSLSocket.md#setEnabledProtocols(java.lang.String%5B%5D)) before returning the
    socket. The value of this system property is a string that is a
    comma-separated list of SSL/TLS protocol versions to
    enable.

    Specified by:
    :   `createSocket` in interface `RMIClientSocketFactory`

    Parameters:
    :   `host` - the host name
    :   `port` - the port number

    Returns:
    :   a socket connected to the specified host and port.

    Throws:
    :   `IOException` - if an I/O error occurs during socket creation
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether some other object is "equal to" this one.

    Because all instances of this class are functionally equivalent
    (they all use the default
    `SSLSocketFactory`), this method simply returns
    `this.getClass().equals(obj.getClass())`.

    A subclass should override this method (as well
    as [`hashCode()`](#hashCode())) if its instances are not all
    functionally equivalent.

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
    `SslRMIClientSocketFactory`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this
        `SslRMIClientSocketFactory`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))