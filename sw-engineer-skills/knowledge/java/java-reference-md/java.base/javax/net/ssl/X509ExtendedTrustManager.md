Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class X509ExtendedTrustManager

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.X509ExtendedTrustManager

All Implemented Interfaces:
:   `TrustManager`, `X509TrustManager`

---

public abstract class X509ExtendedTrustManager
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [X509TrustManager](X509TrustManager.md "interface in javax.net.ssl")

Extensions to the `X509TrustManager` interface to support
SSL/TLS/DTLS connection sensitive trust management.

To prevent man-in-the-middle attacks, hostname checks can be done
to verify that the hostname in an end-entity certificate matches the
targeted hostname. TLS/DTLS does not require such checks, but some
protocols over TLS/DTLS (such as HTTPS) do. In earlier versions of the
JDK, the certificate chain checks were done at the SSL/TLS/DTLS layer,
and the hostname verification checks were done at the layer over TLS/DTLS.
This class allows for the checking to be done during a single call to
this class.

RFC 2830 defines the server identification specification for the "LDAPS"
algorithm. RFC 2818 defines both the server identification and the
client identification specification for the "HTTPS" algorithm.

Since:
:   1.7

See Also:
:   * [`X509TrustManager`](X509TrustManager.md "interface in javax.net.ssl")
    * [`HostnameVerifier`](HostnameVerifier.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `X509ExtendedTrustManager()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `checkClientTrusted(X509Certificate[] chain,
  String authType,
  Socket socket)`

  Given the partial or complete certificate chain provided by the
  peer, build and validate the certificate path based on the
  authentication type and ssl parameters.

  `abstract void`

  `checkClientTrusted(X509Certificate[] chain,
  String authType,
  SSLEngine engine)`

  Given the partial or complete certificate chain provided by the
  peer, build and validate the certificate path based on the
  authentication type and ssl parameters.

  `abstract void`

  `checkServerTrusted(X509Certificate[] chain,
  String authType,
  Socket socket)`

  Given the partial or complete certificate chain provided by the
  peer, build and validate the certificate path based on the
  authentication type and ssl parameters.

  `abstract void`

  `checkServerTrusted(X509Certificate[] chain,
  String authType,
  SSLEngine engine)`

  Given the partial or complete certificate chain provided by the
  peer, build and validate the certificate path based on the
  authentication type and ssl parameters.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.net.ssl.[X509TrustManager](X509TrustManager.md "interface in javax.net.ssl")

  `checkClientTrusted, checkServerTrusted, getAcceptedIssuers`

* ## Constructor Details

  + ### X509ExtendedTrustManager

    public X509ExtendedTrustManager()

    Constructor for subclasses to call.
* ## Method Details

  + ### checkClientTrusted

    public abstract void checkClientTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType,
    [Socket](../../../java/net/Socket.md "class in java.net") socket)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build and validate the certificate path based on the
    authentication type and ssl parameters.

    The authentication type is determined by the actual certificate
    used. For instance, if RSAPublicKey is used, the authType
    should be "RSA". Checking is case-sensitive.

    If the `socket` parameter is an instance of
    [`SSLSocket`](SSLSocket.md "class in javax.net.ssl"), and the endpoint identification
    algorithm of the `SSLParameters` is non-empty, to prevent
    man-in-the-middle attacks, the address that the `socket`
    connected to should be checked against the peer's identity presented
    in the end-entity X509 certificate, as specified in the endpoint
    identification algorithm.

    If the `socket` parameter is an instance of
    [`SSLSocket`](SSLSocket.md "class in javax.net.ssl"), and the algorithm constraints of the
    `SSLParameters` is non-null, for every certificate in the
    certification path, fields such as subject public key, the signature
    algorithm, key usage, extended key usage, etc. need to conform to the
    algorithm constraints in place on this socket.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the key exchange algorithm used
    :   `socket` - the socket used for this connection. This parameter
        can be null, which indicates that implementations need not check
        the ssl parameters

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
        in for the `chain` parameter or if null or zero-length
        string is passed in for the `authType` parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager

    See Also:
    :   - [`SSLParameters.getEndpointIdentificationAlgorithm()`](SSLParameters.md#getEndpointIdentificationAlgorithm())
        - [`SSLParameters.setEndpointIdentificationAlgorithm(String)`](SSLParameters.md#setEndpointIdentificationAlgorithm(java.lang.String))
        - [`SSLParameters.getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
        - [`SSLParameters.setAlgorithmConstraints(AlgorithmConstraints)`](SSLParameters.md#setAlgorithmConstraints(java.security.AlgorithmConstraints))
  + ### checkServerTrusted

    public abstract void checkServerTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType,
    [Socket](../../../java/net/Socket.md "class in java.net") socket)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build and validate the certificate path based on the
    authentication type and ssl parameters.

    The authentication type is the key exchange algorithm portion
    of the cipher suites represented as a String, such as "RSA",
    "DHE\_DSS". Note: for some exportable cipher suites, the key
    exchange algorithm is determined at run time during the
    handshake. For instance, for TLS\_RSA\_EXPORT\_WITH\_RC4\_40\_MD5,
    the authType should be RSA\_EXPORT when an ephemeral RSA key is
    used for the key exchange, and RSA when the key from the server
    certificate is used. Checking is case-sensitive.

    If the `socket` parameter is an instance of
    [`SSLSocket`](SSLSocket.md "class in javax.net.ssl"), and the endpoint identification
    algorithm of the `SSLParameters` is non-empty, to prevent
    man-in-the-middle attacks, the address that the `socket`
    connected to should be checked against the peer's identity presented
    in the end-entity X509 certificate, as specified in the endpoint
    identification algorithm.

    If the `socket` parameter is an instance of
    [`SSLSocket`](SSLSocket.md "class in javax.net.ssl"), and the algorithm constraints of the
    `SSLParameters` is non-null, for every certificate in the
    certification path, fields such as subject public key, the signature
    algorithm, key usage, extended key usage, etc. need to conform to the
    algorithm constraints in place on this socket.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the key exchange algorithm used
    :   `socket` - the socket used for this connection. This parameter
        can be null, which indicates that implementations need not check
        the ssl parameters

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
        in for the `chain` parameter or if null or zero-length
        string is passed in for the `authType` parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager

    See Also:
    :   - [`SSLParameters.getEndpointIdentificationAlgorithm()`](SSLParameters.md#getEndpointIdentificationAlgorithm())
        - [`SSLParameters.setEndpointIdentificationAlgorithm(String)`](SSLParameters.md#setEndpointIdentificationAlgorithm(java.lang.String))
        - [`SSLParameters.getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
        - [`SSLParameters.setAlgorithmConstraints(AlgorithmConstraints)`](SSLParameters.md#setAlgorithmConstraints(java.security.AlgorithmConstraints))
  + ### checkClientTrusted

    public abstract void checkClientTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType,
    [SSLEngine](SSLEngine.md "class in javax.net.ssl") engine)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build and validate the certificate path based on the
    authentication type and ssl parameters.

    The authentication type is determined by the actual certificate
    used. For instance, if RSAPublicKey is used, the authType
    should be "RSA". Checking is case-sensitive.

    If the `engine` parameter is available, and the endpoint
    identification algorithm of the `SSLParameters` is
    non-empty, to prevent man-in-the-middle attacks, the address that
    the `engine` connected to should be checked against
    the peer's identity presented in the end-entity X509 certificate,
    as specified in the endpoint identification algorithm.

    If the `engine` parameter is available, and the algorithm
    constraints of the `SSLParameters` is non-null, for every
    certificate in the certification path, fields such as subject public
    key, the signature algorithm, key usage, extended key usage, etc.
    need to conform to the algorithm constraints in place on this engine.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the key exchange algorithm used
    :   `engine` - the engine used for this connection. This parameter
        can be null, which indicates that implementations need not check
        the ssl parameters

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
        in for the `chain` parameter or if null or zero-length
        string is passed in for the `authType` parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager

    See Also:
    :   - [`SSLParameters.getEndpointIdentificationAlgorithm()`](SSLParameters.md#getEndpointIdentificationAlgorithm())
        - [`SSLParameters.setEndpointIdentificationAlgorithm(String)`](SSLParameters.md#setEndpointIdentificationAlgorithm(java.lang.String))
        - [`SSLParameters.getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
        - [`SSLParameters.setAlgorithmConstraints(AlgorithmConstraints)`](SSLParameters.md#setAlgorithmConstraints(java.security.AlgorithmConstraints))
  + ### checkServerTrusted

    public abstract void checkServerTrusted([X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] chain,
    [String](../../../java/lang/String.md "class in java.lang") authType,
    [SSLEngine](SSLEngine.md "class in javax.net.ssl") engine)
    throws [CertificateException](../../../java/security/cert/CertificateException.md "class in java.security.cert")

    Given the partial or complete certificate chain provided by the
    peer, build and validate the certificate path based on the
    authentication type and ssl parameters.

    The authentication type is the key exchange algorithm portion
    of the cipher suites represented as a String, such as "RSA",
    "DHE\_DSS". Note: for some exportable cipher suites, the key
    exchange algorithm is determined at run time during the
    handshake. For instance, for TLS\_RSA\_EXPORT\_WITH\_RC4\_40\_MD5,
    the authType should be RSA\_EXPORT when an ephemeral RSA key is
    used for the key exchange, and RSA when the key from the server
    certificate is used. Checking is case-sensitive.

    If the `engine` parameter is available, and the endpoint
    identification algorithm of the `SSLParameters` is
    non-empty, to prevent man-in-the-middle attacks, the address that
    the `engine` connected to should be checked against
    the peer's identity presented in the end-entity X509 certificate,
    as specified in the endpoint identification algorithm.

    If the `engine` parameter is available, and the algorithm
    constraints of the `SSLParameters` is non-null, for every
    certificate in the certification path, fields such as subject public
    key, the signature algorithm, key usage, extended key usage, etc.
    need to conform to the algorithm constraints in place on this engine.

    Parameters:
    :   `chain` - the peer certificate chain
    :   `authType` - the key exchange algorithm used
    :   `engine` - the engine used for this connection. This parameter
        can be null, which indicates that implementations need not check
        the ssl parameters

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
        in for the `chain` parameter or if null or zero-length
        string is passed in for the `authType` parameter
    :   `CertificateException` - if the certificate chain is not trusted
        by this TrustManager

    See Also:
    :   - [`SSLParameters.getEndpointIdentificationAlgorithm()`](SSLParameters.md#getEndpointIdentificationAlgorithm())
        - [`SSLParameters.setEndpointIdentificationAlgorithm(String)`](SSLParameters.md#setEndpointIdentificationAlgorithm(java.lang.String))
        - [`SSLParameters.getAlgorithmConstraints()`](SSLParameters.md#getAlgorithmConstraints())
        - [`SSLParameters.setAlgorithmConstraints(AlgorithmConstraints)`](SSLParameters.md#setAlgorithmConstraints(java.security.AlgorithmConstraints))