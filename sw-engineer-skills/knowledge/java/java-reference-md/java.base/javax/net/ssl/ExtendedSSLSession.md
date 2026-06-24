Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class ExtendedSSLSession

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.ExtendedSSLSession

All Implemented Interfaces:
:   `SSLSession`

---

public abstract class ExtendedSSLSession
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [SSLSession](SSLSession.md "interface in javax.net.ssl")

Extends the `SSLSession` interface to support additional
session attributes.

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExtendedSSLSession()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String[]`

  `getLocalSupportedSignatureAlgorithms()`

  Obtains an array of supported signature algorithms that the local side
  is willing to use.

  `abstract String[]`

  `getPeerSupportedSignatureAlgorithms()`

  Obtains an array of supported signature algorithms that the peer is
  able to use.

  `List<SNIServerName>`

  `getRequestedServerNames()`

  Obtains a [`List`](../../../java/util/List.md "interface in java.util") containing all [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s
  of the requested Server Name Indication (SNI) extension.

  `List<byte[]>`

  `getStatusResponses()`

  Returns a [`List`](../../../java/util/List.md "interface in java.util") containing DER-encoded OCSP responses
  (using the ASN.1 type OCSPResponse defined in RFC 6960) for
  the client to verify status of the server's certificate during
  handshaking.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.net.ssl.[SSLSession](SSLSession.md "interface in javax.net.ssl")

  `getApplicationBufferSize, getCipherSuite, getCreationTime, getId, getLastAccessedTime, getLocalCertificates, getLocalPrincipal, getPacketBufferSize, getPeerCertificateChain, getPeerCertificates, getPeerHost, getPeerPort, getPeerPrincipal, getProtocol, getSessionContext, getValue, getValueNames, invalidate, isValid, putValue, removeValue`

* ## Constructor Details

  + ### ExtendedSSLSession

    public ExtendedSSLSession()

    Constructor for subclasses to call.
* ## Method Details

  + ### getLocalSupportedSignatureAlgorithms

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getLocalSupportedSignatureAlgorithms()

    Obtains an array of supported signature algorithms that the local side
    is willing to use.

    Note: this method is used to indicate to the peer which signature
    algorithms may be used for digital signatures in TLS/DTLS 1.2. It is
    not meaningful for TLS/DTLS versions prior to 1.2.

    The signature algorithm name must be a standard Java Security
    name (such as "SHA1withRSA", "SHA256withECDSA", and so on).
    See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
    for information about standard algorithm names.

    Note: the local supported signature algorithms should conform to
    the algorithm constraints specified by
    [`getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
    method in `SSLParameters`.

    Returns:
    :   An array of supported signature algorithms, in descending
        order of preference. The return value is an empty array if
        no signature algorithm is supported.

    See Also:
    :   - [`SSLParameters.getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
  + ### getPeerSupportedSignatureAlgorithms

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getPeerSupportedSignatureAlgorithms()

    Obtains an array of supported signature algorithms that the peer is
    able to use.

    Note: this method is used to indicate to the local side which signature
    algorithms may be used for digital signatures in TLS/DTLS 1.2. It is
    not meaningful for TLS/DTLS versions prior to 1.2.

    The signature algorithm name must be a standard Java Security
    name (such as "SHA1withRSA", "SHA256withECDSA", and so on).
    See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
    for information about standard algorithm names.

    Returns:
    :   An array of supported signature algorithms, in descending
        order of preference. The return value is an empty array if
        the peer has not sent the supported signature algorithms.

    See Also:
    :   - [`X509KeyManager`](X509KeyManager.md "interface in javax.net.ssl")
        - [`X509ExtendedKeyManager`](X509ExtendedKeyManager.md "class in javax.net.ssl")
  + ### getRequestedServerNames

    public [List](../../../java/util/List.md "interface in java.util")<[SNIServerName](SNIServerName.md "class in javax.net.ssl")> getRequestedServerNames()

    Obtains a [`List`](../../../java/util/List.md "interface in java.util") containing all [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s
    of the requested Server Name Indication (SNI) extension.

    In server mode, unless the return [`List`](../../../java/util/List.md "interface in java.util") is empty,
    the server should use the requested server names to guide its
    selection of an appropriate authentication certificate, and/or
    other aspects of security policy.

    In client mode, unless the return [`List`](../../../java/util/List.md "interface in java.util") is empty,
    the client should use the requested server names to guide its
    endpoint identification of the peer's identity, and/or
    other aspects of security policy.

    Returns:
    :   a non-null immutable list of [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s of the
        requested server name indications. The returned list may be
        empty if no server name indications were requested.

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation

    Since:
    :   1.8

    See Also:
    :   - [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
        - [`X509ExtendedTrustManager`](X509ExtendedTrustManager.md "class in javax.net.ssl")
        - [`X509ExtendedKeyManager`](X509ExtendedKeyManager.md "class in javax.net.ssl")
  + ### getStatusResponses

    public [List](../../../java/util/List.md "interface in java.util")<byte[]> getStatusResponses()

    Returns a [`List`](../../../java/util/List.md "interface in java.util") containing DER-encoded OCSP responses
    (using the ASN.1 type OCSPResponse defined in RFC 6960) for
    the client to verify status of the server's certificate during
    handshaking.

    This method only applies to certificate-based server
    authentication. An [`X509ExtendedTrustManager`](X509ExtendedTrustManager.md "class in javax.net.ssl") will use the
    returned value for server certificate validation.

    Returns:
    :   a non-null unmodifiable list of byte arrays, each entry
        containing a DER-encoded OCSP response (using the
        ASN.1 type OCSPResponse defined in RFC 6960). The order
        of the responses must match the order of the certificates
        presented by the server in its Certificate message (See
        [`SSLSession.getLocalCertificates()`](SSLSession.md#getLocalCertificates()) for server mode,
        and [`SSLSession.getPeerCertificates()`](SSLSession.md#getPeerCertificates()) for client mode).
        It is possible that fewer response entries may be returned than
        the number of presented certificates. If an entry in the list
        is a zero-length byte array, it should be treated by the
        caller as if the OCSP entry for the corresponding certificate
        is missing. The returned list may be empty if no OCSP responses
        were presented during handshaking or if OCSP stapling is not
        supported by either endpoint for this handshake.

    Throws:
    :   `UnsupportedOperationException` - if the underlying provider
        does not implement the operation

    Since:
    :   9

    See Also:
    :   - [`X509ExtendedTrustManager`](X509ExtendedTrustManager.md "class in javax.net.ssl")