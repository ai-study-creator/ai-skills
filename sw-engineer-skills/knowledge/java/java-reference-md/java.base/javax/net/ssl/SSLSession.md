Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface SSLSession

All Known Implementing Classes:
:   `ExtendedSSLSession`

---

public interface SSLSession

In SSL, sessions are used to describe an ongoing relationship between
two entities. Each SSL connection involves one session at a time, but
that session may be used on many connections between those entities,
simultaneously or sequentially. The session used on a connection may
also be replaced by a different session. Sessions are created, or
rejoined, as part of the SSL handshaking protocol. Sessions may be
invalidated due to policies affecting security or resource usage,
or by an application explicitly calling `invalidate`.
Session management policies are typically used to tune performance.

In addition to the standard session attributes, SSL sessions expose
these read-only attributes:

* *Peer Identity.* Sessions are between a particular
  client and a particular server. The identity of the peer may
  have been established as part of session setup. Peers are
  generally identified by X.509 certificate chains.* *Cipher Suite Name.* Cipher suites describe the
    kind of cryptographic protection that's used by connections
    in a particular session.* *Peer Host.* All connections in a session are
      between the same two hosts. The address of the host on the other
      side of the connection is available.

Sessions may be explicitly invalidated. Invalidation may also
be done implicitly, when faced with certain kinds of errors.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `getApplicationBufferSize()`

  Gets the current size of the largest application data that is
  expected when using this session.

  `String`

  `getCipherSuite()`

  Returns the name of the SSL cipher suite which is used for all
  connections in the session.

  `long`

  `getCreationTime()`

  Returns the time at which this Session representation was created,
  in milliseconds since midnight, January 1, 1970 UTC.

  `byte[]`

  `getId()`

  Returns the identifier assigned to this Session.

  `long`

  `getLastAccessedTime()`

  Returns the last time this Session representation was accessed by the
  session level infrastructure, in milliseconds since
  midnight, January 1, 1970 UTC.

  `Certificate[]`

  `getLocalCertificates()`

  Returns the certificate(s) that were sent to the peer during
  handshaking.

  `Principal`

  `getLocalPrincipal()`

  Returns the principal that was sent to the peer during handshaking.

  `int`

  `getPacketBufferSize()`

  Gets the current size of the largest SSL/TLS/DTLS packet that is
  expected when using this session.

  `default X509Certificate[]`

  `getPeerCertificateChain()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  The [`getPeerCertificates()`](#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  `Certificate[]`

  `getPeerCertificates()`

  Returns the identity of the peer which was established as part
  of defining the session.

  `String`

  `getPeerHost()`

  Returns the host name of the peer in this session.

  `int`

  `getPeerPort()`

  Returns the port number of the peer in this session.

  `Principal`

  `getPeerPrincipal()`

  Returns the identity of the peer which was established as part of
  defining the session.

  `String`

  `getProtocol()`

  Returns the standard name of the protocol used for all
  connections in the session.

  `SSLSessionContext`

  `getSessionContext()`

  Returns the context in which this session is bound.

  `Object`

  `getValue(String name)`

  Returns the object bound to the given name in the session's
  application layer data.

  `String[]`

  `getValueNames()`

  Returns an array of the names of all the application layer
  data objects bound into the Session.

  `void`

  `invalidate()`

  Invalidates the session.

  `boolean`

  `isValid()`

  Returns whether this session is valid and available for resuming or
  joining.

  `void`

  `putValue(String name,
  Object value)`

  Binds the specified `value` object into the
  session's application layer data
  with the given `name`.

  `void`

  `removeValue(String name)`

  Removes the object bound to the given name in the session's
  application layer data.

* ## Method Details

  + ### getId

    byte[] getId()

    Returns the identifier assigned to this Session.

    Returns:
    :   the Session identifier
  + ### getSessionContext

    [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl") getSessionContext()

    Returns the context in which this session is bound.

    This context may be unavailable in some environments,
    in which case this method returns null.

    If the context is available and there is a
    security manager installed, the caller may require
    permission to access it or a security exception may be thrown.
    In a Java environment, the security manager's
    `checkPermission` method is called with a
    `SSLPermission("getSSLSessionContext")` permission.

    Returns:
    :   the session context used for this session, or null
        if the context is unavailable.

    Throws:
    :   `SecurityException` - if the calling thread does not have
        permission to get SSL session context.
  + ### getCreationTime

    long getCreationTime()

    Returns the time at which this Session representation was created,
    in milliseconds since midnight, January 1, 1970 UTC.

    Returns:
    :   the time this Session was created
  + ### getLastAccessedTime

    long getLastAccessedTime()

    Returns the last time this Session representation was accessed by the
    session level infrastructure, in milliseconds since
    midnight, January 1, 1970 UTC.

    Access indicates a new connection being established using session data.
    Application level operations, such as getting or setting a value
    associated with the session, are not reflected in this access time.

    This information is particularly useful in session management
    policies. For example, a session manager thread could leave all
    sessions in a given context which haven't been used in a long time;
    or, the sessions might be sorted according to age to optimize some task.

    Returns:
    :   the last time this Session was accessed
  + ### invalidate

    void invalidate()

    Invalidates the session.

    Future connections will not be able to
    resume or join this session. However, any existing connection
    using this session can continue to use the session until the
    connection is closed.

    See Also:
    :   - [`isValid()`](#isValid())
  + ### isValid

    boolean isValid()

    Returns whether this session is valid and available for resuming or
    joining.

    Returns:
    :   true if this session may be rejoined.

    Since:
    :   1.5

    See Also:
    :   - [`invalidate()`](#invalidate())
  + ### putValue

    void putValue([String](../../../java/lang/String.md "class in java.lang") name,
    [Object](../../../java/lang/Object.md "class in java.lang") value)

    Binds the specified `value` object into the
    session's application layer data
    with the given `name`.

    Any existing binding using the same `name` is
    replaced. If the new (or existing) `value` implements the
    `SSLSessionBindingListener` interface, the object
    represented by `value` is notified appropriately.

    For security reasons, the same named values may not be
    visible across different access control contexts.

    Parameters:
    :   `name` - the name to which the data object will be bound.
        This may not be null.
    :   `value` - the data object to be bound. This may not be null.

    Throws:
    :   `IllegalArgumentException` - if either argument is null.
  + ### getValue

    [Object](../../../java/lang/Object.md "class in java.lang") getValue([String](../../../java/lang/String.md "class in java.lang") name)

    Returns the object bound to the given name in the session's
    application layer data. Returns null if there is no such binding.

    For security reasons, the same named values may not be
    visible across different access control contexts.

    Parameters:
    :   `name` - the name of the binding to find.

    Returns:
    :   the value bound to that name, or null if the binding does
        not exist.

    Throws:
    :   `IllegalArgumentException` - if the argument is null.
  + ### removeValue

    void removeValue([String](../../../java/lang/String.md "class in java.lang") name)

    Removes the object bound to the given name in the session's
    application layer data. Does nothing if there is no object
    bound to the given name. If the bound existing object
    implements the `SSLSessionBindingListener` interface,
    it is notified appropriately.

    For security reasons, the same named values may not be
    visible across different access control contexts.

    Parameters:
    :   `name` - the name of the object to remove visible
        across different access control contexts

    Throws:
    :   `IllegalArgumentException` - if the argument is null.
  + ### getValueNames

    [String](../../../java/lang/String.md "class in java.lang")[] getValueNames()

    Returns an array of the names of all the application layer
    data objects bound into the Session.

    For security reasons, the same named values may not be
    visible across different access control contexts.

    Returns:
    :   a non-null (possibly empty) array of names of the objects
        bound to this Session.
  + ### getPeerCertificates

    [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getPeerCertificates()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the identity of the peer which was established as part
    of defining the session.

    Note: This method can be used only when using certificate-based
    cipher suites; using it with non-certificate-based cipher suites,
    such as Kerberos, will throw an SSLPeerUnverifiedException.

    Note: The returned value may not be a valid certificate chain
    and should not be relied on for trust decisions.

    Returns:
    :   an ordered array of peer certificates,
        with the peer's own certificate first followed by any
        certificate authorities.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer's identity has not
        been verified

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getLocalCertificates

    [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getLocalCertificates()

    Returns the certificate(s) that were sent to the peer during
    handshaking.

    Note: This method is useful only when using certificate-based
    cipher suites.

    When multiple certificates are available for use in a
    handshake, the implementation chooses what it considers the
    "best" certificate chain available, and transmits that to
    the other side. This method allows the caller to know
    which certificate chain was actually used.

    Returns:
    :   an ordered array of certificates,
        with the local certificate first followed by any
        certificate authorities. If no certificates were sent,
        then null is returned.

    See Also:
    :   - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getPeerCertificateChain

    [@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
    [forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
    default [X509Certificate](../../security/cert/X509Certificate.md "class in javax.security.cert")[] getPeerCertificateChain()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Deprecated, for removal: This API element is subject to removal in a future version.

    The [`getPeerCertificates()`](#getPeerCertificates()) method that returns an
    array of `java.security.cert.Certificate` should
    be used instead.

    Returns the identity of the peer which was identified as part
    of defining the session.

    Note: This method can be used only when using certificate-based
    cipher suites; using it with non-certificate-based cipher suites,
    such as Kerberos, will throw an SSLPeerUnverifiedException.

    Note: The returned value may not be a valid certificate chain
    and should not be relied on for trust decisions.

    *Note: this method exists for compatibility with previous
    releases. New applications should use
    [`getPeerCertificates()`](#getPeerCertificates()) instead.*

    Returns:
    :   an ordered array of peer X.509 certificates,
        with the peer's own certificate first followed by any
        certificate authorities. (The certificates are in
        the original JSSE certificate
        [`X509Certificate`](../../security/cert/X509Certificate.md "class in javax.security.cert") format.)

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer's identity
        has not been verified.
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation.

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getPeerPrincipal

    [Principal](../../../java/security/Principal.md "interface in java.security") getPeerPrincipal()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the identity of the peer which was established as part of
    defining the session.

    Returns:
    :   the peer's principal. Returns an X500Principal of the
        end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer's identity has not
        been verified

    Since:
    :   1.5

    See Also:
    :   - [`getPeerCertificates()`](#getPeerCertificates())
        - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getLocalPrincipal

    [Principal](../../../java/security/Principal.md "interface in java.security") getLocalPrincipal()

    Returns the principal that was sent to the peer during handshaking.

    Returns:
    :   the principal sent to the peer. Returns an X500Principal
        of the end-entity certificate for X509-based cipher suites, and
        KerberosPrincipal for Kerberos cipher suites. If no principal was
        sent, then null is returned.

    Since:
    :   1.5

    See Also:
    :   - [`getLocalCertificates()`](#getLocalCertificates())
        - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getCipherSuite

    [String](../../../java/lang/String.md "class in java.lang") getCipherSuite()

    Returns the name of the SSL cipher suite which is used for all
    connections in the session.

    This defines the level of protection
    provided to the data sent on the connection, including the kind
    of encryption used and most aspects of how authentication is done.

    Returns:
    :   the name of the session's cipher suite
  + ### getProtocol

    [String](../../../java/lang/String.md "class in java.lang") getProtocol()

    Returns the standard name of the protocol used for all
    connections in the session.

    This defines the protocol used in the connection.

    Returns:
    :   the standard name of the protocol used for all
        connections in the session.
  + ### getPeerHost

    [String](../../../java/lang/String.md "class in java.lang") getPeerHost()

    Returns the host name of the peer in this session.

    For the server, this is the client's host; and for
    the client, it is the server's host. The name may not be
    a fully qualified host name or even a host name at all as
    it may represent a string encoding of the peer's network address.
    If such a name is desired, it might
    be resolved through a name service based on the value returned
    by this method.

    This value is not authenticated and should not be relied upon.
    It is mainly used as a hint for `SSLSession` caching
    strategies.

    Returns:
    :   the host name of the peer host, or null if no information
        is available.
  + ### getPeerPort

    int getPeerPort()

    Returns the port number of the peer in this session.

    For the server, this is the client's port number; and for
    the client, it is the server's port number.

    This value is not authenticated and should not be relied upon.
    It is mainly used as a hint for `SSLSession` caching
    strategies.

    Returns:
    :   the port number of the peer host, or -1 if no information
        is available.

    Since:
    :   1.5
  + ### getPacketBufferSize

    int getPacketBufferSize()

    Gets the current size of the largest SSL/TLS/DTLS packet that is
    expected when using this session.

    An `SSLEngine` using this session may generate SSL/TLS/DTLS
    packets of any size up to and including the value returned by this
    method. All `SSLEngine` network buffers should be sized
    at least this large to avoid insufficient space problems when
    performing `wrap` and `unwrap` calls.

    Returns:
    :   the current maximum expected network packet size

    Since:
    :   1.5

    See Also:
    :   - [`SSLEngine.wrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#wrap(java.nio.ByteBuffer,java.nio.ByteBuffer))
        - [`SSLEngine.unwrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#unwrap(java.nio.ByteBuffer,java.nio.ByteBuffer))
  + ### getApplicationBufferSize

    int getApplicationBufferSize()

    Gets the current size of the largest application data that is
    expected when using this session.

    `SSLEngine` application data buffers must be large
    enough to hold the application data from any inbound network
    application data packet received. Typically, outbound
    application data buffers can be of any size.

    Returns:
    :   the current maximum expected application packet size

    Since:
    :   1.5

    See Also:
    :   - [`SSLEngine.wrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#wrap(java.nio.ByteBuffer,java.nio.ByteBuffer))
        - [`SSLEngine.unwrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#unwrap(java.nio.ByteBuffer,java.nio.ByteBuffer))