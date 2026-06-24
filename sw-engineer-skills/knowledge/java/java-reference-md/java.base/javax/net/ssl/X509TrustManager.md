Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface X509TrustManager

All Superinterfaces:
:   `TrustManager`

All Known Implementing Classes:
:   `X509ExtendedTrustManager`

---

public interface X509TrustManager
extends [TrustManager](TrustManager.md "interface in javax.net.ssl")

Instance of this interface manage which X509 certificates
may be used to authenticate the remote side of a secure
socket. Decisions may be based on trusted certificate
authorities, certificate revocation lists, online
status checking or other means.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `checkClientTrusted(X509Certificate[] chain,
  String authType)`

  Given the partial or complete certificate chain provided by the
  peer, build a certificate path to a trusted root and return if
  it can be validated and is trusted for client SSL
  authentication based on the authentication type.

  `void`

  `checkServerTrusted(X509Certificate[] chain,
  String authType)`

  Given the partial or complete certificate chain provided by the
  peer, build a certificate path to a trusted root and return if
  it can be validated and is trusted for server SSL
  authentication based on the authentication type.

  `X509Certificate[]`

  `getAcceptedIssuers()`

  Return an array of certificate authority certificates
  which are trusted for authenticating peers.

* ## Method Details

  + ### checkClientTrusted

    void checkClientTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build a certificate path to a trusted root and return if
    it can be validated and is trusted for client SSL
    authentication based on the authentication type.

    The authentication type is determined by the actual certificate
    used. For instance, if RSAPublicKey is used, the authType
    should be "RSA". Checking is case-sensitive.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the authentication type based on the client certificate

    Throws:
    :   `IllegalArgumentException` - if null or zero-length chain
        is passed in for the chain parameter or if null or zero-length
        string is passed in for the authType parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager.
  + ### checkServerTrusted

    void checkServerTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build a certificate path to a trusted root and return if
    it can be validated and is trusted for server SSL
    authentication based on the authentication type.

    The authentication type is the key exchange algorithm portion
    of the cipher suites represented as a String, such as "RSA",
    "DHE\_DSS". Note: for some exportable cipher suites, the key
    exchange algorithm is determined at run time during the
    handshake. For instance, for TLS\_RSA\_EXPORT\_WITH\_RC4\_40\_MD5,
    the authType should be RSA\_EXPORT when an ephemeral RSA key is
    used for the key exchange, and RSA when the key from the server
    certificate is used. Checking is case-sensitive.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the key exchange algorithm used

    Throws:
    :   `IllegalArgumentException` - if null or zero-length chain
        is passed in for the chain parameter or if null or zero-length
        string is passed in for the authType parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager.
  + ### getAcceptedIssuers

    [X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] getAcceptedIssuers()

    Return an array of certificate authority certificates
    which are trusted for authenticating peers.

    Returns:
    :   a non-null (possibly empty) array of acceptable
        CA issuer certificates.