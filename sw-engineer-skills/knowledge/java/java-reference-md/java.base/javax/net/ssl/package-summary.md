Module [java.base](../../../module-summary.md)

# Package javax.net.ssl

---

package javax.net.ssl

Provides classes for the secure socket package. Using the secure
socket classes, you can communicate using SSL or a related security
protocol to reliably detect any errors introduced into the network
byte stream and to optionally encrypt the data and/or authenticate
the communicating peers.

* [**Java Security Standard Algorithm Names Specification**](../../../../../specs/security/standard-names.md)

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.net](../package-summary.md)

  Provides classes for networking applications.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [CertPathTrustManagerParameters](CertPathTrustManagerParameters.md "class in javax.net.ssl")

  A wrapper for CertPathParameters.

  [ExtendedSSLSession](ExtendedSSLSession.md "class in javax.net.ssl")

  Extends the `SSLSession` interface to support additional
  session attributes.

  [HandshakeCompletedEvent](HandshakeCompletedEvent.md "class in javax.net.ssl")

  This event indicates that an SSL handshake completed on a given
  SSL connection.

  [HandshakeCompletedListener](HandshakeCompletedListener.md "interface in javax.net.ssl")

  This interface is implemented by any class which wants to receive
  notifications about the completion of an SSL protocol handshake
  on a given SSL connection.

  [HostnameVerifier](HostnameVerifier.md "interface in javax.net.ssl")

  This class is the base interface for hostname verification.

  [HttpsURLConnection](HttpsURLConnection.md "class in javax.net.ssl")

  `HttpsURLConnection` extends `HttpURLConnection`
  with support for https-specific features.

  [KeyManager](KeyManager.md "interface in javax.net.ssl")

  This is the base interface for JSSE key managers.

  [KeyManagerFactory](KeyManagerFactory.md "class in javax.net.ssl")

  This class acts as a factory for key managers based on a
  source of key material.

  [KeyManagerFactorySpi](KeyManagerFactorySpi.md "class in javax.net.ssl")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `KeyManagerFactory` class.

  [KeyStoreBuilderParameters](KeyStoreBuilderParameters.md "class in javax.net.ssl")

  A parameters object for X509KeyManagers that encapsulates a List
  of KeyStore.Builders.

  [ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl")

  This class is the base interface for providing
  algorithm-specific information to a KeyManagerFactory or
  TrustManagerFactory.

  [SNIHostName](SNIHostName.md "class in javax.net.ssl")

  Instances of this class represent a server name of type
  [`host_name`](StandardConstants.md#SNI_HOST_NAME) in a Server Name
  Indication (SNI) extension.

  [SNIMatcher](SNIMatcher.md "class in javax.net.ssl")

  Instances of this class represent a matcher that performs match
  operations on an [`SNIServerName`](SNIServerName.md "class in javax.net.ssl") instance.

  [SNIServerName](SNIServerName.md "class in javax.net.ssl")

  Instances of this class represent a server name in a Server Name
  Indication (SNI) extension.

  [SSLContext](SSLContext.md "class in javax.net.ssl")

  Instances of this class represent a secure socket protocol
  implementation which acts as a factory for secure socket
  factories or `SSLEngine`s.

  [SSLContextSpi](SSLContextSpi.md "class in javax.net.ssl")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `SSLContext` class.

  [SSLEngine](SSLEngine.md "class in javax.net.ssl")

  A class which enables secure communications using protocols such as
  the Secure Sockets Layer (SSL) or
   [IETF RFC 2246 "Transport
  Layer Security" (TLS)](http://www.ietf.org/rfc/rfc2246.txt)  protocols, but is transport independent.

  [SSLEngineResult](SSLEngineResult.md "class in javax.net.ssl")

  An encapsulation of the result state produced by
  `SSLEngine` I/O calls.

  [SSLEngineResult.HandshakeStatus](SSLEngineResult.HandshakeStatus.md "enum class in javax.net.ssl")

  An `SSLEngineResult` enum describing the current
  handshaking state of this `SSLEngine`.

  [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl")

  An `SSLEngineResult` enum describing the overall result
  of the `SSLEngine` operation.

  [SSLException](SSLException.md "class in javax.net.ssl")

  Indicates some kind of error detected by an SSL subsystem.

  [SSLHandshakeException](SSLHandshakeException.md "class in javax.net.ssl")

  Indicates that the client and server could not negotiate the
  desired level of security.

  [SSLKeyException](SSLKeyException.md "class in javax.net.ssl")

  Reports a bad SSL key.

  [SSLParameters](SSLParameters.md "class in javax.net.ssl")

  Encapsulates parameters for an SSL/TLS/DTLS connection.

  [SSLPeerUnverifiedException](SSLPeerUnverifiedException.md "class in javax.net.ssl")

  Indicates that the peer's identity has not been verified.

  [SSLPermission](SSLPermission.md "class in javax.net.ssl")

  This class is for various network permissions.

  [SSLProtocolException](SSLProtocolException.md "class in javax.net.ssl")

  Reports an error in the operation of the SSL protocol.

  [SSLServerSocket](SSLServerSocket.md "class in javax.net.ssl")

  This class extends `ServerSocket` and
  provides secure server sockets using protocols such as the Secure
  Sockets Layer (SSL) or Transport Layer Security (TLS) protocols.

  [SSLServerSocketFactory](SSLServerSocketFactory.md "class in javax.net.ssl")

  `SSLServerSocketFactory`s create
  `SSLServerSocket`s.

  [SSLSession](SSLSession.md "interface in javax.net.ssl")

  In SSL, sessions are used to describe an ongoing relationship between
  two entities.

  [SSLSessionBindingEvent](SSLSessionBindingEvent.md "class in javax.net.ssl")

  This event is propagated to a SSLSessionBindingListener.

  [SSLSessionBindingListener](SSLSessionBindingListener.md "interface in javax.net.ssl")

  This interface is implemented by objects which want to know when
  they are being bound or unbound from a SSLSession.

  [SSLSessionContext](SSLSessionContext.md "interface in javax.net.ssl")

  A `SSLSessionContext` represents a set of
  `SSLSession`s associated with a single entity.

  [SSLSocket](SSLSocket.md "class in javax.net.ssl")

  This class extends `Socket` and provides secure
  sockets using protocols such as the "Secure
  Sockets Layer" (SSL) or IETF "Transport Layer Security" (TLS) protocols.

  [SSLSocketFactory](SSLSocketFactory.md "class in javax.net.ssl")

  `SSLSocketFactory`s create `SSLSocket`s.

  [StandardConstants](StandardConstants.md "class in javax.net.ssl")

  Standard constants definitions

  [TrustManager](TrustManager.md "interface in javax.net.ssl")

  This is the base interface for JSSE trust managers.

  [TrustManagerFactory](TrustManagerFactory.md "class in javax.net.ssl")

  This class acts as a factory for trust managers based on a
  source of trust material.

  [TrustManagerFactorySpi](TrustManagerFactorySpi.md "class in javax.net.ssl")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `TrustManagerFactory` class.

  [X509ExtendedKeyManager](X509ExtendedKeyManager.md "class in javax.net.ssl")

  Abstract class that provides for extension of the X509KeyManager
  interface.

  [X509ExtendedTrustManager](X509ExtendedTrustManager.md "class in javax.net.ssl")

  Extensions to the `X509TrustManager` interface to support
  SSL/TLS/DTLS connection sensitive trust management.

  [X509KeyManager](X509KeyManager.md "interface in javax.net.ssl")

  Instances of this interface manage which X509 certificate-based
  key pairs are used to authenticate the local side of a secure
  socket.

  [X509TrustManager](X509TrustManager.md "interface in javax.net.ssl")

  Instance of this interface manage which X509 certificates
  may be used to authenticate the remote side of a secure
  socket.