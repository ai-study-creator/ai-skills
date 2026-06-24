Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class SecureCacheResponse

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.CacheResponse](CacheResponse.md "class in java.net")

java.net.SecureCacheResponse

---

public abstract class SecureCacheResponse
extends [CacheResponse](CacheResponse.md "class in java.net")

Represents a cache response originally retrieved through secure
means, such as TLS.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SecureCacheResponse()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getCipherSuite()`

  Returns the cipher suite in use on the original connection that
  retrieved the network resource.

  `abstract List<Certificate>`

  `getLocalCertificateChain()`

  Returns the certificate chain that were sent to the server during
  handshaking of the original connection that retrieved the
  network resource.

  `abstract Principal`

  `getLocalPrincipal()`

  Returns the principal that was sent to the server during
  handshaking in the original connection that retrieved the
  network resource.

  `abstract Principal`

  `getPeerPrincipal()`

  Returns the server's principal which was established as part of
  defining the session during the original connection that
  retrieved the network resource.

  `abstract List<Certificate>`

  `getServerCertificateChain()`

  Returns the server's certificate chain, which was established as
  part of defining the session in the original connection that
  retrieved the network resource, from cache.

  `Optional<SSLSession>`

  `getSSLSession()`

  Returns an [`Optional`](../util/Optional.md "class in java.util") containing the `SSLSession` in
  use on the original connection that retrieved the network resource.

  ### Methods inherited from class java.net.[CacheResponse](CacheResponse.md "class in java.net")

  `getBody, getHeaders`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SecureCacheResponse

    public SecureCacheResponse()

    Constructor for subclasses to call.
* ## Method Details

  + ### getCipherSuite

    public abstract [String](../lang/String.md "class in java.lang") getCipherSuite()

    Returns the cipher suite in use on the original connection that
    retrieved the network resource.

    Returns:
    :   a string representing the cipher suite
  + ### getLocalCertificateChain

    public abstract [List](../util/List.md "interface in java.util")<[Certificate](../security/cert/Certificate.md "class in java.security.cert")> getLocalCertificateChain()

    Returns the certificate chain that were sent to the server during
    handshaking of the original connection that retrieved the
    network resource. Note: This method is useful only
    when using certificate-based cipher suites.

    Returns:
    :   an immutable List of Certificate representing the
        certificate chain that was sent to the server. If no
        certificate chain was sent, null will be returned.

    See Also:
    :   - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getServerCertificateChain

    public abstract [List](../util/List.md "interface in java.util")<[Certificate](../security/cert/Certificate.md "class in java.security.cert")> getServerCertificateChain()
    throws [SSLPeerUnverifiedException](../../javax/net/ssl/SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the server's certificate chain, which was established as
    part of defining the session in the original connection that
    retrieved the network resource, from cache. Note: This method
    can be used only when using certificate-based cipher suites;
    using it with non-certificate-based cipher suites, such as
    Kerberos, will throw an SSLPeerUnverifiedException.

    Returns:
    :   an immutable List of Certificate representing the server's
        certificate chain.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer is not verified.

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getPeerPrincipal

    public abstract [Principal](../security/Principal.md "interface in java.security") getPeerPrincipal()
    throws [SSLPeerUnverifiedException](../../javax/net/ssl/SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the server's principal which was established as part of
    defining the session during the original connection that
    retrieved the network resource.

    Returns:
    :   the server's principal. Returns an X500Principal of the
        end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer was not verified.

    See Also:
    :   - [`getServerCertificateChain()`](#getServerCertificateChain())
        - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getLocalPrincipal

    public abstract [Principal](../security/Principal.md "interface in java.security") getLocalPrincipal()

    Returns the principal that was sent to the server during
    handshaking in the original connection that retrieved the
    network resource.

    Returns:
    :   the principal sent to the server. Returns an X500Principal
        of the end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites. If no principal was
        sent, then null is returned.

    See Also:
    :   - [`getLocalCertificateChain()`](#getLocalCertificateChain())
        - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getSSLSession

    public [Optional](../util/Optional.md "class in java.util")<[SSLSession](../../javax/net/ssl/SSLSession.md "interface in javax.net.ssl")> getSSLSession()

    Returns an [`Optional`](../util/Optional.md "class in java.util") containing the `SSLSession` in
    use on the original connection that retrieved the network resource.
    Returns an empty `Optional` if the underlying implementation
    does not support this method.

    Returns:
    :   an [`Optional`](../util/Optional.md "class in java.util") containing the `SSLSession` in
        use on the original connection

    Since:
    :   12

    See Also:
    :   - [`SSLSession`](../../javax/net/ssl/SSLSession.md "interface in javax.net.ssl")