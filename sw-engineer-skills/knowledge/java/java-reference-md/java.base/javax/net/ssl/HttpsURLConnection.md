Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class HttpsURLConnection

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.net.URLConnection](../../../java/net/URLConnection.md "class in java.net")

[java.net.HttpURLConnection](../../../java/net/HttpURLConnection.md "class in java.net")

javax.net.ssl.HttpsURLConnection

---

public abstract class HttpsURLConnection
extends [HttpURLConnection](../../../java/net/HttpURLConnection.md "class in java.net")

`HttpsURLConnection` extends `HttpURLConnection`
with support for https-specific features.

See <http://www.w3.org/pub/WWW/Protocols/> and
 [RFC 2818](http://www.ietf.org/) 
for more details on the
https specification.

This class uses `HostnameVerifier` and
`SSLSocketFactory`.
There are default implementations defined for both classes.
However, the implementations can be replaced on a per-class (static) or
per-instance basis. All new `HttpsURLConnection`s instances
will be assigned
the "default" static values at instance creation, but they can be overridden
by calling the appropriate per-instance set method(s) before
`connect`ing.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected HostnameVerifier`

  `hostnameVerifier`

  The `hostnameVerifier` for this object.

  ### Fields inherited from class java.net.[HttpURLConnection](../../../java/net/HttpURLConnection.md "class in java.net")

  `chunkLength, fixedContentLength, fixedContentLengthLong, HTTP_ACCEPTED, HTTP_BAD_GATEWAY, HTTP_BAD_METHOD, HTTP_BAD_REQUEST, HTTP_CLIENT_TIMEOUT, HTTP_CONFLICT, HTTP_CREATED, HTTP_ENTITY_TOO_LARGE, HTTP_FORBIDDEN, HTTP_GATEWAY_TIMEOUT, HTTP_GONE, HTTP_INTERNAL_ERROR, HTTP_LENGTH_REQUIRED, HTTP_MOVED_PERM, HTTP_MOVED_TEMP, HTTP_MULT_CHOICE, HTTP_NO_CONTENT, HTTP_NOT_ACCEPTABLE, HTTP_NOT_AUTHORITATIVE, HTTP_NOT_FOUND, HTTP_NOT_IMPLEMENTED, HTTP_NOT_MODIFIED, HTTP_OK, HTTP_PARTIAL, HTTP_PAYMENT_REQUIRED, HTTP_PRECON_FAILED, HTTP_PROXY_AUTH, HTTP_REQ_TOO_LONG, HTTP_RESET, HTTP_SEE_OTHER, HTTP_SERVER_ERROR, HTTP_UNAUTHORIZED, HTTP_UNAVAILABLE, HTTP_UNSUPPORTED_TYPE, HTTP_USE_PROXY, HTTP_VERSION, instanceFollowRedirects, method, responseCode, responseMessage`

  ### Fields inherited from class java.net.[URLConnection](../../../java/net/URLConnection.md "class in java.net")

  `allowUserInteraction, connected, doInput, doOutput, ifModifiedSince, url, useCaches`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `HttpsURLConnection(URL url)`

  Creates an `HttpsURLConnection` using the
  URL specified.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getCipherSuite()`

  Returns the cipher suite in use on this connection.

  `static HostnameVerifier`

  `getDefaultHostnameVerifier()`

  Gets the default `HostnameVerifier` that is inherited
  by new instances of this class.

  `static SSLSocketFactory`

  `getDefaultSSLSocketFactory()`

  Gets the default static `SSLSocketFactory` that is
  inherited by new instances of this class.

  `HostnameVerifier`

  `getHostnameVerifier()`

  Gets the `HostnameVerifier` in place on this instance.

  `abstract Certificate[]`

  `getLocalCertificates()`

  Returns the certificate(s) that were sent to the server during
  handshaking.

  `Principal`

  `getLocalPrincipal()`

  Returns the principal that was sent to the server during handshaking.

  `Principal`

  `getPeerPrincipal()`

  Returns the server's principal which was established as part of
  defining the session.

  `abstract Certificate[]`

  `getServerCertificates()`

  Returns the server's certificate chain which was established
  as part of defining the session.

  `Optional<SSLSession>`

  `getSSLSession()`

  Returns an [`Optional`](../../../java/util/Optional.md "class in java.util") containing the `SSLSession` in
  use on this connection.

  `SSLSocketFactory`

  `getSSLSocketFactory()`

  Gets the SSL socket factory to be used when creating sockets
  for secure https URL connections.

  `static void`

  `setDefaultHostnameVerifier(HostnameVerifier v)`

  Sets the default `HostnameVerifier` inherited by a
  new instance of this class.

  `static void`

  `setDefaultSSLSocketFactory(SSLSocketFactory sf)`

  Sets the default `SSLSocketFactory` inherited by new
  instances of this class.

  `void`

  `setHostnameVerifier(HostnameVerifier v)`

  Sets the `HostnameVerifier` for this instance.

  `void`

  `setSSLSocketFactory(SSLSocketFactory sf)`

  Sets the `SSLSocketFactory` to be used when this instance
  creates sockets for secure https URL connections.

  ### Methods inherited from class java.net.[HttpURLConnection](../../../java/net/HttpURLConnection.md "class in java.net")

  `disconnect, getErrorStream, getFollowRedirects, getHeaderField, getHeaderFieldDate, getHeaderFieldKey, getInstanceFollowRedirects, getPermission, getRequestMethod, getResponseCode, getResponseMessage, setAuthenticator, setChunkedStreamingMode, setFixedLengthStreamingMode, setFixedLengthStreamingMode, setFollowRedirects, setInstanceFollowRedirects, setRequestMethod, usingProxy`

  ### Methods inherited from class java.net.[URLConnection](../../../java/net/URLConnection.md "class in java.net")

  `addRequestProperty, connect, getAllowUserInteraction, getConnectTimeout, getContent, getContent, getContentEncoding, getContentLength, getContentLengthLong, getContentType, getDate, getDefaultAllowUserInteraction, getDefaultRequestProperty, getDefaultUseCaches, getDefaultUseCaches, getDoInput, getDoOutput, getExpiration, getFileNameMap, getHeaderField, getHeaderFieldInt, getHeaderFieldLong, getHeaderFields, getIfModifiedSince, getInputStream, getLastModified, getOutputStream, getReadTimeout, getRequestProperties, getRequestProperty, getURL, getUseCaches, guessContentTypeFromName, guessContentTypeFromStream, setAllowUserInteraction, setConnectTimeout, setContentHandlerFactory, setDefaultAllowUserInteraction, setDefaultRequestProperty, setDefaultUseCaches, setDefaultUseCaches, setDoInput, setDoOutput, setFileNameMap, setIfModifiedSince, setReadTimeout, setRequestProperty, setUseCaches, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### hostnameVerifier

    protected [HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl") hostnameVerifier

    The `hostnameVerifier` for this object.
* ## Constructor Details

  + ### HttpsURLConnection

    protected HttpsURLConnection([URL](../../../java/net/URL.md "class in java.net") url)

    Creates an `HttpsURLConnection` using the
    URL specified.

    Parameters:
    :   `url` - the URL
* ## Method Details

  + ### getCipherSuite

    public abstract [String](../../../java/lang/String.md "class in java.lang") getCipherSuite()

    Returns the cipher suite in use on this connection.

    Returns:
    :   the cipher suite

    Throws:
    :   `IllegalStateException` - if this method is called before
        the connection has been established.
  + ### getLocalCertificates

    public abstract [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getLocalCertificates()

    Returns the certificate(s) that were sent to the server during
    handshaking.

    Note: This method is useful only when using certificate-based
    cipher suites.

    When multiple certificates are available for use in a
    handshake, the implementation chooses what it considers the
    "best" certificate chain available, and transmits that to
    the other side. This method allows the caller to know
    which certificate chain was actually sent.

    Returns:
    :   an ordered array of certificates,
        with the client's own certificate first followed by any
        certificate authorities. If no certificates were sent,
        then null is returned.

    Throws:
    :   `IllegalStateException` - if this method is called before
        the connection has been established.

    See Also:
    :   - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getServerCertificates

    public abstract [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getServerCertificates()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the server's certificate chain which was established
    as part of defining the session.

    Note: This method can be used only when using certificate-based
    cipher suites; using it with non-certificate-based cipher suites,
    such as Kerberos, will throw an SSLPeerUnverifiedException.

    Note: The returned value may not be a valid certificate chain
    and should not be relied on for trust decisions.

    Returns:
    :   an ordered array of server certificates,
        with the peer's own certificate first followed by
        any certificate authorities.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer is not verified.
    :   `IllegalStateException` - if this method is called before
        the connection has been established.

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getPeerPrincipal

    public [Principal](../../../java/security/Principal.md "interface in java.security") getPeerPrincipal()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the server's principal which was established as part of
    defining the session.

    Note: Subclasses should override this method. If not overridden, it
    will default to returning the X500Principal of the server's end-entity
    certificate for certificate-based ciphersuites, or throw an
    SSLPeerUnverifiedException for non-certificate based ciphersuites,
    such as Kerberos.

    Returns:
    :   the server's principal. Returns an X500Principal of the
        end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer was not verified
    :   `IllegalStateException` - if this method is called before
        the connection has been established.

    Since:
    :   1.5

    See Also:
    :   - [`getServerCertificates()`](#getServerCertificates())
        - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getLocalPrincipal

    public [Principal](../../../java/security/Principal.md "interface in java.security") getLocalPrincipal()

    Returns the principal that was sent to the server during handshaking.

    Note: Subclasses should override this method. If not overridden, it
    will default to returning the X500Principal of the end-entity certificate
    that was sent to the server for certificate-based ciphersuites or,
    return null for non-certificate based ciphersuites, such as Kerberos.

    Returns:
    :   the principal sent to the server. Returns an X500Principal
        of the end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites. If no principal was
        sent, then null is returned.

    Throws:
    :   `IllegalStateException` - if this method is called before
        the connection has been established.

    Since:
    :   1.5

    See Also:
    :   - [`getLocalCertificates()`](#getLocalCertificates())
        - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### setDefaultHostnameVerifier

    public static void setDefaultHostnameVerifier([HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl") v)

    Sets the default `HostnameVerifier` inherited by a
    new instance of this class.

    If this method is not called, the default
    `HostnameVerifier` assumes the connection should not
    be permitted.

    Parameters:
    :   `v` - the default host name verifier

    Throws:
    :   `IllegalArgumentException` - if the `HostnameVerifier`
        parameter is null.
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method does not allow
        `SSLPermission("setHostnameVerifier")`

    See Also:
    :   - [`getDefaultHostnameVerifier()`](#getDefaultHostnameVerifier())
  + ### getDefaultHostnameVerifier

    public static [HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl") getDefaultHostnameVerifier()

    Gets the default `HostnameVerifier` that is inherited
    by new instances of this class.

    Returns:
    :   the default host name verifier

    See Also:
    :   - [`setDefaultHostnameVerifier(HostnameVerifier)`](#setDefaultHostnameVerifier(javax.net.ssl.HostnameVerifier))
  + ### setHostnameVerifier

    public void setHostnameVerifier([HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl") v)

    Sets the `HostnameVerifier` for this instance.

    New instances of this class inherit the default static hostname
    verifier set by [`setDefaultHostnameVerifier`](#setDefaultHostnameVerifier(javax.net.ssl.HostnameVerifier)). Calls to this method replace
    this object's `HostnameVerifier`.

    Parameters:
    :   `v` - the host name verifier

    Throws:
    :   `IllegalArgumentException` - if the `HostnameVerifier`
        parameter is null.

    See Also:
    :   - [`getHostnameVerifier()`](#getHostnameVerifier())
        - [`setDefaultHostnameVerifier(HostnameVerifier)`](#setDefaultHostnameVerifier(javax.net.ssl.HostnameVerifier))
  + ### getHostnameVerifier

    public [HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl") getHostnameVerifier()

    Gets the `HostnameVerifier` in place on this instance.

    Returns:
    :   the host name verifier

    See Also:
    :   - [`setHostnameVerifier(HostnameVerifier)`](#setHostnameVerifier(javax.net.ssl.HostnameVerifier))
        - [`setDefaultHostnameVerifier(HostnameVerifier)`](#setDefaultHostnameVerifier(javax.net.ssl.HostnameVerifier))
  + ### setDefaultSSLSocketFactory

    public static void setDefaultSSLSocketFactory([SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") sf)

    Sets the default `SSLSocketFactory` inherited by new
    instances of this class.

    The socket factories are used when creating sockets for secure
    https URL connections.

    Parameters:
    :   `sf` - the default SSL socket factory

    Throws:
    :   `IllegalArgumentException` - if the SSLSocketFactory
        parameter is null.
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method does not allow
        a socket factory to be specified.

    See Also:
    :   - [`getDefaultSSLSocketFactory()`](#getDefaultSSLSocketFactory())
  + ### getDefaultSSLSocketFactory

    public static [SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") getDefaultSSLSocketFactory()

    Gets the default static `SSLSocketFactory` that is
    inherited by new instances of this class.

    The socket factories are used when creating sockets for secure
    https URL connections.

    Returns:
    :   the default `SSLSocketFactory`

    See Also:
    :   - [`setDefaultSSLSocketFactory(SSLSocketFactory)`](#setDefaultSSLSocketFactory(javax.net.ssl.SSLSocketFactory))
  + ### setSSLSocketFactory

    public void setSSLSocketFactory([SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") sf)

    Sets the `SSLSocketFactory` to be used when this instance
    creates sockets for secure https URL connections.

    New instances of this class inherit the default static
    `SSLSocketFactory` set by
    [`setDefaultSSLSocketFactory`](#setDefaultSSLSocketFactory(javax.net.ssl.SSLSocketFactory)). Calls to this method replace
    this object's `SSLSocketFactory`.

    Parameters:
    :   `sf` - the SSL socket factory

    Throws:
    :   `IllegalArgumentException` - if the `SSLSocketFactory`
        parameter is null.
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method does not allow
        a socket factory to be specified.

    See Also:
    :   - [`getSSLSocketFactory()`](#getSSLSocketFactory())
  + ### getSSLSocketFactory

    public [SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl") getSSLSocketFactory()

    Gets the SSL socket factory to be used when creating sockets
    for secure https URL connections.

    Returns:
    :   the `SSLSocketFactory`

    See Also:
    :   - [`setSSLSocketFactory(SSLSocketFactory)`](#setSSLSocketFactory(javax.net.ssl.SSLSocketFactory))
  + ### getSSLSession

    public [Optional](../../../java/util/Optional.md "class in java.util")<[SSLSession](SSLSession.md "interface in javax.net.ssl")> getSSLSession()

    Returns an [`Optional`](../../../java/util/Optional.md "class in java.util") containing the `SSLSession` in
    use on this connection. Returns an empty `Optional` if the
    underlying implementation does not support this method.

    Returns:
    :   an [`Optional`](../../../java/util/Optional.md "class in java.util") containing the `SSLSession` in
        use on this connection.

    Throws:
    :   `IllegalStateException` - if this method is called before
        the connection has been established

    Since:
    :   12

    See Also:
    :   - [`SSLSession`](SSLSession.md "interface in javax.net.ssl")