Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLContext

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SSLContext

---

public class SSLContext
extends [Object](../../../java/lang/Object.md "class in java.lang")

Instances of this class represent a secure socket protocol
implementation which acts as a factory for secure socket
factories or `SSLEngine`s. This class is initialized
with an optional set of key and trust managers and source of
secure random bytes.

Every implementation of the Java platform is required to support the
following standard `SSLContext` protocol:

* `TLSv1.2`

This protocol is described in the [SSLContext section](../../../../../specs/security/standard-names.md#sslcontext-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other protocols are supported.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SSLContext(SSLContextSpi contextSpi,
  Provider provider,
  String protocol)`

  Creates an SSLContext object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final SSLEngine`

  `createSSLEngine()`

  Creates a new `SSLEngine` using this context.

  `final SSLEngine`

  `createSSLEngine(String peerHost,
  int peerPort)`

  Creates a new `SSLEngine` using this context using
  advisory peer information.

  `final SSLSessionContext`

  `getClientSessionContext()`

  Returns the client session context, which represents the set of
  SSL sessions available for use during the handshake phase of
  client-side SSL sockets.

  `static SSLContext`

  `getDefault()`

  Returns the default SSL context.

  `final SSLParameters`

  `getDefaultSSLParameters()`

  Returns a copy of the SSLParameters indicating the default
  settings for this SSL context.

  `static SSLContext`

  `getInstance(String protocol)`

  Returns a `SSLContext` object that implements the
  specified secure socket protocol.

  `static SSLContext`

  `getInstance(String protocol,
  String provider)`

  Returns a `SSLContext` object that implements the
  specified secure socket protocol.

  `static SSLContext`

  `getInstance(String protocol,
  Provider provider)`

  Returns a `SSLContext` object that implements the
  specified secure socket protocol.

  `final String`

  `getProtocol()`

  Returns the protocol name of this `SSLContext` object.

  `final Provider`

  `getProvider()`

  Returns the provider of this `SSLContext` object.

  `final SSLSessionContext`

  `getServerSessionContext()`

  Returns the server session context, which represents the set of
  SSL sessions available for use during the handshake phase of
  server-side SSL sockets.

  `final SSLServerSocketFactory`

  `getServerSocketFactory()`

  Returns a `ServerSocketFactory` object for
  this context.

  `final SSLSocketFactory`

  `getSocketFactory()`

  Returns a `SocketFactory` object for this
  context.

  `final SSLParameters`

  `getSupportedSSLParameters()`

  Returns a copy of the SSLParameters indicating the supported
  settings for this SSL context.

  `final void`

  `init(KeyManager[] km,
  TrustManager[] tm,
  SecureRandom random)`

  Initializes this context.

  `static void`

  `setDefault(SSLContext context)`

  Sets the default SSL context.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SSLContext

    protected SSLContext([SSLContextSpi](SSLContextSpi.md "class in javax.net.ssl") contextSpi,
    [Provider](../../../java/security/Provider.md "class in java.security") provider,
    [String](../../../java/lang/String.md "class in java.lang") protocol)

    Creates an SSLContext object.

    Parameters:
    :   `contextSpi` - the delegate
    :   `provider` - the provider
    :   `protocol` - the protocol
* ## Method Details

  + ### getDefault

    public static [SSLContext](SSLContext.md "class in javax.net.ssl") getDefault()
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns the default SSL context.

    If a default context was set using the [`SSLContext.setDefault()`](#setDefault(javax.net.ssl.SSLContext)) method, it is returned. Otherwise, the first
    call of this method triggers the call
    `SSLContext.getInstance("Default")`.
    If successful, that object is made the default SSL context and returned.

    The default context is immediately
    usable and does not require [initialization](#init(javax.net.ssl.KeyManager%5B%5D,javax.net.ssl.TrustManager%5B%5D,java.security.SecureRandom)).

    Returns:
    :   the default SSL context

    Throws:
    :   `NoSuchAlgorithmException` - if the
        [`SSLContext.getInstance()`](#getInstance(java.lang.String)) call fails

    Since:
    :   1.6
  + ### setDefault

    public static void setDefault([SSLContext](SSLContext.md "class in javax.net.ssl") context)

    Sets the default SSL context. It will be returned by subsequent calls
    to [`getDefault()`](#getDefault()). The default context must be immediately usable
    and not require [initialization](#init(javax.net.ssl.KeyManager%5B%5D,javax.net.ssl.TrustManager%5B%5D,java.security.SecureRandom)).

    Parameters:
    :   `context` - the SSLContext

    Throws:
    :   `NullPointerException` - if context is null
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method does not allow
        `SSLPermission("setDefaultSSLContext")`

    Since:
    :   1.6
  + ### getInstance

    public static [SSLContext](SSLContext.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") protocol)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `SSLContext` object that implements the
    specified secure socket protocol.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new SSLContext object encapsulating the
    SSLContextSpi implementation from the first
    Provider that supports the specified protocol is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `protocol` - the standard name of the requested protocol.
        See the SSLContext section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#sslcontext-algorithms)
        for information about standard protocol names.

    Returns:
    :   the new `SSLContext` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `SSLContextSpi` implementation for the
        specified protocol
    :   `NullPointerException` - if `protocol` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [SSLContext](SSLContext.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") protocol,
    [String](../../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `SSLContext` object that implements the
    specified secure socket protocol.

    A new SSLContext object encapsulating the
    SSLContextSpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `protocol` - the standard name of the requested protocol.
        See the SSLContext section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#sslcontext-algorithms)
        for information about standard protocol names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `SSLContext` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is
        `null` or empty
    :   `NoSuchAlgorithmException` - if a `SSLContextSpi`
        implementation for the specified protocol is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `protocol` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [SSLContext](SSLContext.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") protocol,
    [Provider](../../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `SSLContext` object that implements the
    specified secure socket protocol.

    A new SSLContext object encapsulating the
    SSLContextSpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `protocol` - the standard name of the requested protocol.
        See the SSLContext section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#sslcontext-algorithms)
        for information about standard protocol names.
    :   `provider` - an instance of the provider.

    Returns:
    :   the new `SSLContext` object

    Throws:
    :   `IllegalArgumentException` - if the provider is `null`
    :   `NoSuchAlgorithmException` - if a `SSLContextSpi`
        implementation for the specified protocol is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `protocol` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getProtocol

    public final [String](../../../java/lang/String.md "class in java.lang") getProtocol()

    Returns the protocol name of this `SSLContext` object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `SSLContext` object.

    Returns:
    :   the protocol name of this `SSLContext` object.
  + ### getProvider

    public final [Provider](../../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `SSLContext` object.

    Returns:
    :   the provider of this `SSLContext` object
  + ### init

    public final void init([KeyManager](KeyManager.md "interface in javax.net.ssl")[] km,
    [TrustManager](TrustManager.md "interface in javax.net.ssl")[] tm,
    [SecureRandom](../../../java/security/SecureRandom.md "class in java.security") random)
    throws [KeyManagementException](../../../java/security/KeyManagementException.md "class in java.security")

    Initializes this context. Either of the first two parameters
    may be null in which case the installed security providers will
    be searched for the highest priority implementation of the
    appropriate factory. Likewise, the secure random parameter may
    be null in which case the default implementation will be used.

    Only the first instance of a particular key and/or trust manager
    implementation type in the array is used. (For example, only
    the first javax.net.ssl.X509KeyManager in the array will be used.)

    Parameters:
    :   `km` - the sources of authentication keys or null
    :   `tm` - the sources of peer authentication trust decisions or null
    :   `random` - the source of randomness for this generator or null

    Throws:
    :   `KeyManagementException` - if this operation fails
  + ### getSocketFactory

    public final [SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") getSocketFactory()

    Returns a `SocketFactory` object for this
    context.

    Returns:
    :   the `SocketFactory` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `init()` has not been called
  + ### getServerSocketFactory

    public final [SSLServerSocketFactory](SSLServerSocketFactory.md "class in javax.net.ssl") getServerSocketFactory()

    Returns a `ServerSocketFactory` object for
    this context.

    Returns:
    :   the `ServerSocketFactory` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `init()` has not been called
  + ### createSSLEngine

    public final [SSLEngine](SSLEngine.md "class in javax.net.ssl") createSSLEngine()

    Creates a new `SSLEngine` using this context.

    Applications using this factory method are providing no hints
    for an internal session reuse strategy. If hints are desired,
    [`createSSLEngine(String, int)`](#createSSLEngine(java.lang.String,int)) should be used
    instead.

    Some cipher suites (such as Kerberos) require remote hostname
    information, in which case this factory method should not be used.

    Returns:
    :   the `SSLEngine` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `init()` has not been called

    Since:
    :   1.5
  + ### createSSLEngine

    public final [SSLEngine](SSLEngine.md "class in javax.net.ssl") createSSLEngine([String](../../../java/lang/String.md "class in java.lang") peerHost,
    int peerPort)

    Creates a new `SSLEngine` using this context using
    advisory peer information.

    Applications using this factory method are providing hints
    for an internal session reuse strategy.

    Some cipher suites (such as Kerberos) require remote hostname
    information, in which case peerHost needs to be specified.

    Parameters:
    :   `peerHost` - the non-authoritative name of the host
    :   `peerPort` - the non-authoritative port

    Returns:
    :   the new `SSLEngine` object

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.
    :   `IllegalStateException` - if the SSLContextImpl requires
        initialization and the `init()` has not been called

    Since:
    :   1.5
  + ### getServerSessionContext

    public final [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl") getServerSessionContext()

    Returns the server session context, which represents the set of
    SSL sessions available for use during the handshake phase of
    server-side SSL sockets.

    This context may be unavailable in some environments, in which
    case this method returns null. For example, when the underlying
    SSL provider does not provide an implementation of SSLSessionContext
    interface, this method returns null. A non-null session context
    is returned otherwise.

    Returns:
    :   server session context bound to this SSL context
  + ### getClientSessionContext

    public final [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl") getClientSessionContext()

    Returns the client session context, which represents the set of
    SSL sessions available for use during the handshake phase of
    client-side SSL sockets.

    This context may be unavailable in some environments, in which
    case this method returns null. For example, when the underlying
    SSL provider does not provide an implementation of SSLSessionContext
    interface, this method returns null. A non-null session context
    is returned otherwise.

    Returns:
    :   client session context bound to this SSL context
  + ### getDefaultSSLParameters

    public final [SSLParameters](SSLParameters.md "class in javax.net.ssl") getDefaultSSLParameters()

    Returns a copy of the SSLParameters indicating the default
    settings for this SSL context.

    The parameters will always have the ciphersuites and protocols
    arrays set to non-null values.

    Returns:
    :   a copy of the SSLParameters object with the default settings

    Throws:
    :   `UnsupportedOperationException` - if the default SSL parameters
        could not be obtained.

    Since:
    :   1.6
  + ### getSupportedSSLParameters

    public final [SSLParameters](SSLParameters.md "class in javax.net.ssl") getSupportedSSLParameters()

    Returns a copy of the SSLParameters indicating the supported
    settings for this SSL context.

    The parameters will always have the ciphersuites and protocols
    arrays set to non-null values.

    Returns:
    :   a copy of the SSLParameters object with the supported
        settings

    Throws:
    :   `UnsupportedOperationException` - if the supported SSL parameters
        could not be obtained.

    Since:
    :   1.6