Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class HandshakeCompletedEvent

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java/util/EventObject.md "class in java.util")

javax.net.ssl.HandshakeCompletedEvent

All Implemented Interfaces:
:   `Serializable`

---

public class HandshakeCompletedEvent
extends [EventObject](../../../java/util/EventObject.md "class in java.util")

This event indicates that an SSL handshake completed on a given
SSL connection. All the core information about that handshake's
result is captured through an "SSLSession" object. As a convenience,
this event class provides direct access to some important session
attributes.

The source of this event is the SSLSocket on which handshaking
just completed.

Since:
:   1.4

See Also:
:   * [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")
    * [`HandshakeCompletedListener`](HandshakeCompletedListener.md "interface in javax.net.ssl")
    * [`SSLSession`](SSLSession.md "interface in javax.net.ssl")
    * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.HandshakeCompletedEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HandshakeCompletedEvent(SSLSocket sock,
  SSLSession s)`

  Constructs a new HandshakeCompletedEvent.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCipherSuite()`

  Returns the cipher suite in use by the session which was produced
  by the handshake.

  `Certificate[]`

  `getLocalCertificates()`

  Returns the certificate(s) that were sent to the peer during
  handshaking.

  `Principal`

  `getLocalPrincipal()`

  Returns the principal that was sent to the peer during handshaking.

  `X509Certificate[]`

  `getPeerCertificateChain()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  The [`getPeerCertificates()`](#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  `Certificate[]`

  `getPeerCertificates()`

  Returns the identity of the peer which was established as part
  of defining the session.

  `Principal`

  `getPeerPrincipal()`

  Returns the identity of the peer which was established as part of
  defining the session.

  `SSLSession`

  `getSession()`

  Returns the session that triggered this event.

  `SSLSocket`

  `getSocket()`

  Returns the socket which is the source of this event.

  ### Methods inherited from class java.util.[EventObject](../../../java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HandshakeCompletedEvent

    public HandshakeCompletedEvent([SSLSocket](SSLSocket.md "class in javax.net.ssl") sock,
    [SSLSession](SSLSession.md "interface in javax.net.ssl") s)

    Constructs a new HandshakeCompletedEvent.

    Parameters:
    :   `sock` - the SSLSocket acting as the source of the event
    :   `s` - the SSLSession this event is associated with
* ## Method Details

  + ### getSession

    public [SSLSession](SSLSession.md "interface in javax.net.ssl") getSession()

    Returns the session that triggered this event.

    Returns:
    :   the `SSLSession` for this handshake
  + ### getCipherSuite

    public [String](../../../java/lang/String.md "class in java.lang") getCipherSuite()

    Returns the cipher suite in use by the session which was produced
    by the handshake. (This is a convenience method for
    getting the ciphersuite from the SSLsession.)

    Returns:
    :   the name of the cipher suite negotiated during this session.
  + ### getLocalCertificates

    public [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getLocalCertificates()

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
    :   an ordered array of certificates, with the local
        certificate first followed by any
        certificate authorities. If no certificates were sent,
        then null is returned.

    See Also:
    :   - [`getLocalPrincipal()`](#getLocalPrincipal())
  + ### getPeerCertificates

    public [Certificate](../../../java/security/cert/Certificate.md "class in java.security.cert")[] getPeerCertificates()
    throws [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

    Returns the identity of the peer which was established as part
    of defining the session.
    Note: This method can be used only when using certificate-based
    cipher suites; using it with non-certificate-based cipher suites,
    such as Kerberos, will throw an SSLPeerUnverifiedException.

    Note: The returned value may not be a valid certificate chain
    and should not be relied on for trust decisions.

    Returns:
    :   an ordered array of the peer certificates,
        with the peer's own certificate first followed by
        any certificate authorities.

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer is not verified.

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getPeerCertificateChain

    [@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
    [forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
    public [X509Certificate](../../security/cert/X509Certificate.md "class in javax.security.cert")[] getPeerCertificateChain()
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
        the original JSSE
        [`X509Certificate`](../../security/cert/X509Certificate.md "class in javax.security.cert") format).

    Throws:
    :   `SSLPeerUnverifiedException` - if the peer is not verified.
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the
        [`SSLSession.getPeerCertificateChain()`](SSLSession.md#getPeerCertificateChain()) operation.

    See Also:
    :   - [`getPeerPrincipal()`](#getPeerPrincipal())
  + ### getPeerPrincipal

    public [Principal](../../../java/security/Principal.md "interface in java.security") getPeerPrincipal()
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

    public [Principal](../../../java/security/Principal.md "interface in java.security") getLocalPrincipal()

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
  + ### getSocket

    public [SSLSocket](SSLSocket.md "class in javax.net.ssl") getSocket()

    Returns the socket which is the source of this event.
    (This is a convenience function, to let applications
    write code without type casts.)

    Returns:
    :   the socket on which the connection was made.