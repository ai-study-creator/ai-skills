Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLContextSpi

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SSLContextSpi

---

public abstract class SSLContextSpi
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `SSLContext` class.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular SSL context.

Since:
:   1.4

See Also:
:   * [`SSLContext`](SSLContext.md "class in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLContextSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract SSLEngine`

  `engineCreateSSLEngine()`

  Creates a new `SSLEngine` using this context.

  `protected abstract SSLEngine`

  `engineCreateSSLEngine(String host,
  int port)`

  Creates a `SSLEngine` using this context.

  `protected abstract SSLSessionContext`

  `engineGetClientSessionContext()`

  Returns a client `SSLSessionContext` object for
  this context.

  `protected SSLParameters`

  `engineGetDefaultSSLParameters()`

  Returns a copy of the SSLParameters indicating the default
  settings for this SSL context.

  `protected abstract SSLSessionContext`

  `engineGetServerSessionContext()`

  Returns a server `SSLSessionContext` object for
  this context.

  `protected abstract SSLServerSocketFactory`

  `engineGetServerSocketFactory()`

  Returns a `ServerSocketFactory` object for
  this context.

  `protected abstract SSLSocketFactory`

  `engineGetSocketFactory()`

  Returns a `SocketFactory` object for this
  context.

  `protected SSLParameters`

  `engineGetSupportedSSLParameters()`

  Returns a copy of the SSLParameters indicating the maximum supported
  settings for this SSL context.

  `protected abstract void`

  `engineInit(KeyManager[] km,
  TrustManager[] tm,
  SecureRandom sr)`

  Initializes this context.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SSLContextSpi

    public SSLContextSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit([KeyManager](KeyManager.md "interface in javax.net.ssl")[] km,
    [TrustManager](TrustManager.md "interface in javax.net.ssl")[] tm,
    [SecureRandom](../../../java/security/SecureRandom.md "class in java.security") sr)
    throws [KeyManagementException](../../../java/security/KeyManagementException.md "class in java.security")

    Initializes this context.

    Parameters:
    :   `km` - the sources of authentication keys
    :   `tm` - the sources of peer authentication trust decisions
    :   `sr` - the source of randomness

    Throws:
    :   `KeyManagementException` - if this operation fails

    See Also:
    :   - [`SSLContext.init(KeyManager[], TrustManager[], SecureRandom)`](SSLContext.md#init(javax.net.ssl.KeyManager%5B%5D,javax.net.ssl.TrustManager%5B%5D,java.security.SecureRandom))
  + ### engineGetSocketFactory

    protected abstract [SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") engineGetSocketFactory()

    Returns a `SocketFactory` object for this
    context.

    Returns:
    :   the `SocketFactory` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `engineInit()`
        has not been called

    See Also:
    :   - [`SSLContext.getSocketFactory()`](SSLContext.md#getSocketFactory())
  + ### engineGetServerSocketFactory

    protected abstract [SSLServerSocketFactory](SSLServerSocketFactory.md "class in javax.net.ssl") engineGetServerSocketFactory()

    Returns a `ServerSocketFactory` object for
    this context.

    Returns:
    :   the `ServerSocketFactory` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `engineInit()`
        has not been called

    See Also:
    :   - [`SSLContext.getServerSocketFactory()`](SSLContext.md#getServerSocketFactory())
  + ### engineCreateSSLEngine

    protected abstract [SSLEngine](SSLEngine.md "class in javax.net.ssl") engineCreateSSLEngine()

    Creates a new `SSLEngine` using this context.

    Applications using this factory method are providing no hints
    for an internal session reuse strategy. If hints are desired,
    [`engineCreateSSLEngine(String, int)`](#engineCreateSSLEngine(java.lang.String,int)) should be used
    instead.

    Some cipher suites (such as Kerberos) require remote hostname
    information, in which case this factory method should not be used.

    Returns:
    :   the `SSLEngine` Object

    Throws:
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `engineInit()`
        has not been called

    Since:
    :   1.5

    See Also:
    :   - [`SSLContext.createSSLEngine()`](SSLContext.md#createSSLEngine())
  + ### engineCreateSSLEngine

    protected abstract [SSLEngine](SSLEngine.md "class in javax.net.ssl") engineCreateSSLEngine([String](../../../java/lang/String.md "class in java.lang") host,
    int port)

    Creates a `SSLEngine` using this context.

    Applications using this factory method are providing hints
    for an internal session reuse strategy.

    Some cipher suites (such as Kerberos) require remote hostname
    information, in which case peerHost needs to be specified.

    Parameters:
    :   `host` - the non-authoritative name of the host
    :   `port` - the non-authoritative port

    Returns:
    :   the `SSLEngine` Object

    Throws:
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `engineInit()`
        has not been called

    Since:
    :   1.5

    See Also:
    :   - [`SSLContext.createSSLEngine(String, int)`](SSLContext.md#createSSLEngine(java.lang.String,int))
  + ### engineGetServerSessionContext

    protected abstract [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl") engineGetServerSessionContext()

    Returns a server `SSLSessionContext` object for
    this context.

    Returns:
    :   the `SSLSessionContext` object

    See Also:
    :   - [`SSLContext.getServerSessionContext()`](SSLContext.md#getServerSessionContext())
  + ### engineGetClientSessionContext

    protected abstract [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl") engineGetClientSessionContext()

    Returns a client `SSLSessionContext` object for
    this context.

    Returns:
    :   the `SSLSessionContext` object

    See Also:
    :   - [`SSLContext.getClientSessionContext()`](SSLContext.md#getClientSessionContext())
  + ### engineGetDefaultSSLParameters

    protected [SSLParameters](SSLParameters.md "class in javax.net.ssl") engineGetDefaultSSLParameters()

    Returns a copy of the SSLParameters indicating the default
    settings for this SSL context.

    The parameters will always have the ciphersuite and protocols
    arrays set to non-null values.

    The default implementation obtains the parameters from an
    SSLSocket created by calling the
    [SocketFactory.createSocket()](../SocketFactory.md#createSocket()) method of this context's SocketFactory.

    Returns:
    :   a copy of the SSLParameters object with the default settings

    Throws:
    :   `UnsupportedOperationException` - if the default SSL parameters
        could not be obtained.

    Since:
    :   1.6
  + ### engineGetSupportedSSLParameters

    protected [SSLParameters](SSLParameters.md "class in javax.net.ssl") engineGetSupportedSSLParameters()

    Returns a copy of the SSLParameters indicating the maximum supported
    settings for this SSL context.

    The parameters will always have the ciphersuite and protocols
    arrays set to non-null values.

    The default implementation obtains the parameters from an
    SSLSocket created by calling the
    [SocketFactory.createSocket()](../SocketFactory.md#createSocket()) method of this context's SocketFactory.

    Returns:
    :   a copy of the SSLParameters object with the maximum supported
        settings

    Throws:
    :   `UnsupportedOperationException` - if the supported SSL parameters
        could not be obtained.

    Since:
    :   1.6