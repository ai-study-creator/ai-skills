Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLParameters

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SSLParameters

---

public class SSLParameters
extends [Object](../../../java/lang/Object.md "class in java.lang")

Encapsulates parameters for an SSL/TLS/DTLS connection. The parameters
are the list of ciphersuites to be accepted in an SSL/TLS/DTLS handshake,
the list of protocols to be allowed, the endpoint identification
algorithm during SSL/TLS/DTLS handshaking, the Server Name Indication (SNI),
the maximum network packet size, the algorithm constraints, the signature
schemes, the key exchange named groups and whether SSL/TLS/DTLS servers
should request or require client authentication, etc.

`SSLParameter` objects can be created via the constructors in this
class, and can be described as pre-populated objects. `SSLParameter`
objects can also be obtained using the `getSSLParameters()` methods in
[`SSLSocket`](SSLSocket.md#getSSLParameters()) and
[`SSLServerSocket`](SSLServerSocket.md#getSSLParameters()) and
[`SSLEngine`](SSLEngine.md#getSSLParameters()) or the
[`getDefaultSSLParameters()`](SSLContext.md#getDefaultSSLParameters()) and
[`getSupportedSSLParameters()`](SSLContext.md#getSupportedSSLParameters())
methods in `SSLContext`, and can be described as connection populated
objects.

SSLParameters can be applied to a connection via the methods
[`SSLSocket.setSSLParameters()`](SSLSocket.md#setSSLParameters(javax.net.ssl.SSLParameters)) and
[`SSLServerSocket.setSSLParameters()`](SSLServerSocket.md#setSSLParameters(javax.net.ssl.SSLParameters))
and [`SSLEngine.setSSLParameters()`](SSLEngine.md#setSSLParameters(javax.net.ssl.SSLParameters)).

For example:
> ```
>      SSLParameters p = sslSocket.getSSLParameters();
>      p.setProtocols(new String[] { "TLSv1.2" });
>      p.setCipherSuites(
>          new String[] { "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", ... });
>      p.setApplicationProtocols(new String[] {"h2", "http/1.1"});
>      sslSocket.setSSLParameters(p);
> ```

Since:
:   1.6

See Also:
:   * [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")
    * [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")
    * [`SSLContext`](SSLContext.md "class in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLParameters()`

  Constructs SSLParameters.

  `SSLParameters(String[] cipherSuites)`

  Constructs SSLParameters from the specified array of ciphersuites.

  `SSLParameters(String[] cipherSuites,
  String[] protocols)`

  Constructs SSLParameters from the specified array of ciphersuites
  and protocols.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AlgorithmConstraints`

  `getAlgorithmConstraints()`

  Returns the cryptographic algorithm constraints.

  `String[]`

  `getApplicationProtocols()`

  Returns a prioritized array of application-layer protocol names that
  can be negotiated over the SSL/TLS/DTLS protocols.

  `String[]`

  `getCipherSuites()`

  Returns a copy of the array of ciphersuites or null if none
  have been set.

  `boolean`

  `getEnableRetransmissions()`

  Returns whether DTLS handshake retransmissions should be enabled.

  `String`

  `getEndpointIdentificationAlgorithm()`

  Gets the endpoint identification algorithm.

  `int`

  `getMaximumPacketSize()`

  Returns the maximum expected network packet size in bytes for
  SSL/TLS/DTLS records.

  `String[]`

  `getNamedGroups()`

  Returns a prioritized array of key exchange named groups names that
  can be used over the SSL/TLS/DTLS protocols.

  `boolean`

  `getNeedClientAuth()`

  Returns whether client authentication should be required.

  `String[]`

  `getProtocols()`

  Returns a copy of the array of protocols or null if none
  have been set.

  `final List<SNIServerName>`

  `getServerNames()`

  Returns a [`List`](../../../java/util/List.md "interface in java.util") containing all [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s of the
  Server Name Indication (SNI) parameter, or null if none has been set.

  `String[]`

  `getSignatureSchemes()`

  Returns a prioritized array of signature scheme names that can be used
  over the SSL/TLS/DTLS protocols.

  `final Collection<SNIMatcher>`

  `getSNIMatchers()`

  Returns a [`Collection`](../../../java/util/Collection.md "interface in java.util") containing all [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s of the
  Server Name Indication (SNI) parameter, or null if none has been set.

  `final boolean`

  `getUseCipherSuitesOrder()`

  Returns whether the local cipher suites preference should be honored.

  `boolean`

  `getWantClientAuth()`

  Returns whether client authentication should be requested.

  `void`

  `setAlgorithmConstraints(AlgorithmConstraints constraints)`

  Sets the cryptographic algorithm constraints, which will be used
  in addition to any configured by the runtime environment.

  `void`

  `setApplicationProtocols(String[] protocols)`

  Sets the prioritized array of application-layer protocol names that
  can be negotiated over the SSL/TLS/DTLS protocols.

  `void`

  `setCipherSuites(String[] cipherSuites)`

  Sets the array of ciphersuites.

  `void`

  `setEnableRetransmissions(boolean enableRetransmissions)`

  Sets whether DTLS handshake retransmissions should be enabled.

  `void`

  `setEndpointIdentificationAlgorithm(String algorithm)`

  Sets the endpoint identification algorithm.

  `void`

  `setMaximumPacketSize(int maximumPacketSize)`

  Sets the maximum expected network packet size in bytes for
  SSL/TLS/DTLS records.

  `void`

  `setNamedGroups(String[] namedGroups)`

  Sets the prioritized array of key exchange named groups names that
  can be used over the SSL/TLS/DTLS protocols.

  `void`

  `setNeedClientAuth(boolean needClientAuth)`

  Sets whether client authentication should be required.

  `void`

  `setProtocols(String[] protocols)`

  Sets the array of protocols.

  `final void`

  `setServerNames(List<SNIServerName> serverNames)`

  Sets the desired [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s of the Server Name
  Indication (SNI) parameter.

  `void`

  `setSignatureSchemes(String[] signatureSchemes)`

  Sets the prioritized array of signature scheme names that
  can be used over the SSL/TLS/DTLS protocols.

  `final void`

  `setSNIMatchers(Collection<SNIMatcher> matchers)`

  Sets the [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s of the Server Name Indication (SNI)
  parameter.

  `final void`

  `setUseCipherSuitesOrder(boolean honorOrder)`

  Sets whether the local cipher suites preference should be honored.

  `void`

  `setWantClientAuth(boolean wantClientAuth)`

  Sets whether client authentication should be requested.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SSLParameters

    public SSLParameters()

    Constructs SSLParameters.

    The values of cipherSuites, protocols, cryptographic algorithm
    constraints, endpoint identification algorithm, signature schemes,
    server names and server name matchers are set to `null`;
    useCipherSuitesOrder, wantClientAuth and needClientAuth are set
    to `false`; enableRetransmissions is set to `true`;
    maximum network packet size is set to `0`.
  + ### SSLParameters

    public SSLParameters([String](../../../java/lang/String.md "class in java.lang")[] cipherSuites)

    Constructs SSLParameters from the specified array of ciphersuites.

    Calling this constructor is equivalent to calling the no-args
    constructor followed by
    `setCipherSuites(cipherSuites);`. Note that the
    standard list of cipher suite names may be found in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification. Providers may support cipher suite
    names not found in this list.

    Parameters:
    :   `cipherSuites` - the array of ciphersuites (or null)
  + ### SSLParameters

    public SSLParameters([String](../../../java/lang/String.md "class in java.lang")[] cipherSuites,
    [String](../../../java/lang/String.md "class in java.lang")[] protocols)

    Constructs SSLParameters from the specified array of ciphersuites
    and protocols.

    Calling this constructor is equivalent to calling the no-args
    constructor followed by
    `setCipherSuites(cipherSuites); setProtocols(protocols);`.
    Note that the standard list of cipher suite names may be found in the
    [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification. Providers may support cipher suite
    names not found in this list.

    Parameters:
    :   `cipherSuites` - the array of ciphersuites (or null)
    :   `protocols` - the array of protocols (or null)
* ## Method Details

  + ### getCipherSuites

    public [String](../../../java/lang/String.md "class in java.lang")[] getCipherSuites()

    Returns a copy of the array of ciphersuites or null if none
    have been set.

    The returned array includes cipher suites from the list of standard
    cipher suite names in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification, and may also include other cipher suites
    that the provider supports.

    Returns:
    :   a copy of the array of ciphersuites or null if none
        have been set.
  + ### setCipherSuites

    public void setCipherSuites([String](../../../java/lang/String.md "class in java.lang")[] cipherSuites)

    Sets the array of ciphersuites.

    Parameters:
    :   `cipherSuites` - the array of ciphersuites (or null). Note that the
        standard list of cipher suite names may be found in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
        Algorithm Names Specification. Providers may support cipher suite
        names not found in this list or might not use the recommended name
        for a certain cipher suite.
  + ### getProtocols

    public [String](../../../java/lang/String.md "class in java.lang")[] getProtocols()

    Returns a copy of the array of protocols or null if none
    have been set.

    Returns:
    :   a copy of the array of protocols or null if none
        have been set.
  + ### setProtocols

    public void setProtocols([String](../../../java/lang/String.md "class in java.lang")[] protocols)

    Sets the array of protocols.

    Parameters:
    :   `protocols` - the array of protocols (or null)
  + ### getWantClientAuth

    public boolean getWantClientAuth()

    Returns whether client authentication should be requested.

    Returns:
    :   whether client authentication should be requested.
  + ### setWantClientAuth

    public void setWantClientAuth(boolean wantClientAuth)

    Sets whether client authentication should be requested. Calling
    this method clears the `needClientAuth` flag.

    Parameters:
    :   `wantClientAuth` - whether client authentication should be requested
  + ### getNeedClientAuth

    public boolean getNeedClientAuth()

    Returns whether client authentication should be required.

    Returns:
    :   whether client authentication should be required.
  + ### setNeedClientAuth

    public void setNeedClientAuth(boolean needClientAuth)

    Sets whether client authentication should be required. Calling
    this method clears the `wantClientAuth` flag.

    Parameters:
    :   `needClientAuth` - whether client authentication should be required
  + ### getAlgorithmConstraints

    public [AlgorithmConstraints](../../../java/security/AlgorithmConstraints.md "interface in java.security") getAlgorithmConstraints()

    Returns the cryptographic algorithm constraints.

    Returns:
    :   the cryptographic algorithm constraints, or null if the
        constraints have not been set

    Since:
    :   1.7

    See Also:
    :   - [`setAlgorithmConstraints(AlgorithmConstraints)`](#setAlgorithmConstraints(java.security.AlgorithmConstraints))
  + ### setAlgorithmConstraints

    public void setAlgorithmConstraints([AlgorithmConstraints](../../../java/security/AlgorithmConstraints.md "interface in java.security") constraints)

    Sets the cryptographic algorithm constraints, which will be used
    in addition to any configured by the runtime environment.

    If the `constraints` parameter is non-null, every
    cryptographic algorithm, key and algorithm parameters used in the
    SSL/TLS/DTLS handshake must be permitted by the constraints.

    Parameters:
    :   `constraints` - the algorithm constraints (or null)

    Since:
    :   1.7
  + ### getEndpointIdentificationAlgorithm

    public [String](../../../java/lang/String.md "class in java.lang") getEndpointIdentificationAlgorithm()

    Gets the endpoint identification algorithm.

    Returns:
    :   the endpoint identification algorithm, or null if none
        has been set.

    Since:
    :   1.7

    See Also:
    :   - [`X509ExtendedTrustManager`](X509ExtendedTrustManager.md "class in javax.net.ssl")
        - [`setEndpointIdentificationAlgorithm(String)`](#setEndpointIdentificationAlgorithm(java.lang.String))
  + ### setEndpointIdentificationAlgorithm

    public void setEndpointIdentificationAlgorithm([String](../../../java/lang/String.md "class in java.lang") algorithm)

    Sets the endpoint identification algorithm.

    If the `algorithm` parameter is non-null or non-empty, the
    endpoint identification/verification procedures must be handled during
    SSL/TLS/DTLS handshaking. This is to prevent man-in-the-middle attacks.

    Parameters:
    :   `algorithm` - The standard string name of the endpoint
        identification algorithm (or null).
        See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
        for information about standard algorithm names.

    Since:
    :   1.7

    See Also:
    :   - [`X509ExtendedTrustManager`](X509ExtendedTrustManager.md "class in javax.net.ssl")
  + ### setServerNames

    public final void setServerNames([List](../../../java/util/List.md "interface in java.util")<[SNIServerName](SNIServerName.md "class in javax.net.ssl")> serverNames)

    Sets the desired [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s of the Server Name
    Indication (SNI) parameter.

    This method is only useful to [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")s or [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")s
    operating in client mode.

    Note that the `serverNames` list is cloned
    to protect against subsequent modification.

    Parameters:
    :   `serverNames` - the list of desired [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s (or null)

    Throws:
    :   `NullPointerException` - if the `serverNames`
        contains `null` element
    :   `IllegalArgumentException` - if the `serverNames`
        contains more than one name of the same name type

    Since:
    :   1.8

    See Also:
    :   - [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
        - [`getServerNames()`](#getServerNames())
  + ### getServerNames

    public final [List](../../../java/util/List.md "interface in java.util")<[SNIServerName](SNIServerName.md "class in javax.net.ssl")> getServerNames()

    Returns a [`List`](../../../java/util/List.md "interface in java.util") containing all [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s of the
    Server Name Indication (SNI) parameter, or null if none has been set.

    This method is only useful to [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")s or [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")s
    operating in client mode.

    For SSL/TLS/DTLS connections, the underlying SSL/TLS/DTLS provider
    may specify a default value for a certain server name type. In
    client mode, it is recommended that, by default, providers should
    include the server name indication whenever the server can be located
    by a supported server name type.

    It is recommended that providers initialize default Server Name
    Indications when creating `SSLSocket`/`SSLEngine`s.
    In the following examples, the server name may be represented by an
    instance of [`SNIHostName`](SNIHostName.md "class in javax.net.ssl") which has been initialized with the
    hostname "www.example.com" and type
    [`StandardConstants.SNI_HOST_NAME`](StandardConstants.md#SNI_HOST_NAME).

    ```
         Socket socket =
             sslSocketFactory.createSocket("www.example.com", 443);
    ```

    or

    ```
         SSLEngine engine =
             sslContext.createSSLEngine("www.example.com", 443);
    ```

    Returns:
    :   null or an immutable list of non-null [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")s

    Since:
    :   1.8

    See Also:
    :   - [`List`](../../../java/util/List.md "interface in java.util")
        - [`setServerNames(List)`](#setServerNames(java.util.List))
  + ### setSNIMatchers

    public final void setSNIMatchers([Collection](../../../java/util/Collection.md "interface in java.util")<[SNIMatcher](SNIMatcher.md "class in javax.net.ssl")> matchers)

    Sets the [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s of the Server Name Indication (SNI)
    parameter.

    This method is only useful to [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")s or [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")s
    operating in server mode.

    Note that the `matchers` collection is cloned to protect
    against subsequent modification.

    Parameters:
    :   `matchers` - the collection of [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s (or null)

    Throws:
    :   `NullPointerException` - if the `matchers`
        contains `null` element
    :   `IllegalArgumentException` - if the `matchers`
        contains more than one name of the same name type

    Since:
    :   1.8

    See Also:
    :   - [`Collection`](../../../java/util/Collection.md "interface in java.util")
        - [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")
        - [`getSNIMatchers()`](#getSNIMatchers())
  + ### getSNIMatchers

    public final [Collection](../../../java/util/Collection.md "interface in java.util")<[SNIMatcher](SNIMatcher.md "class in javax.net.ssl")> getSNIMatchers()

    Returns a [`Collection`](../../../java/util/Collection.md "interface in java.util") containing all [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s of the
    Server Name Indication (SNI) parameter, or null if none has been set.

    This method is only useful to [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")s or [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")s
    operating in server mode.

    For better interoperability, providers generally will not define
    default matchers so that by default servers will ignore the SNI
    extension and continue the handshake.

    Returns:
    :   null or an immutable collection of non-null [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")s

    Since:
    :   1.8

    See Also:
    :   - [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl")
        - [`setSNIMatchers(Collection)`](#setSNIMatchers(java.util.Collection))
  + ### setUseCipherSuitesOrder

    public final void setUseCipherSuitesOrder(boolean honorOrder)

    Sets whether the local cipher suites preference should be honored.

    Parameters:
    :   `honorOrder` - whether local cipher suites order in
        `#getCipherSuites` should be honored during
        SSL/TLS/DTLS handshaking.

    Since:
    :   1.8

    See Also:
    :   - [`getUseCipherSuitesOrder()`](#getUseCipherSuitesOrder())
  + ### getUseCipherSuitesOrder

    public final boolean getUseCipherSuitesOrder()

    Returns whether the local cipher suites preference should be honored.

    Returns:
    :   whether local cipher suites order in `#getCipherSuites`
        should be honored during SSL/TLS/DTLS handshaking.

    Since:
    :   1.8

    See Also:
    :   - [`setUseCipherSuitesOrder(boolean)`](#setUseCipherSuitesOrder(boolean))
  + ### setEnableRetransmissions

    public void setEnableRetransmissions(boolean enableRetransmissions)

    Sets whether DTLS handshake retransmissions should be enabled.
    This method only applies to DTLS.

    Parameters:
    :   `enableRetransmissions` - `true` indicates that DTLS handshake retransmissions
        should be enabled; `false` indicates that DTLS handshake
        retransmissions should be disabled

    Since:
    :   9

    See Also:
    :   - [`getEnableRetransmissions()`](#getEnableRetransmissions())
  + ### getEnableRetransmissions

    public boolean getEnableRetransmissions()

    Returns whether DTLS handshake retransmissions should be enabled.
    This method only applies to DTLS.

    Returns:
    :   true, if DTLS handshake retransmissions should be enabled

    Since:
    :   9

    See Also:
    :   - [`setEnableRetransmissions(boolean)`](#setEnableRetransmissions(boolean))
  + ### setMaximumPacketSize

    public void setMaximumPacketSize(int maximumPacketSize)

    Sets the maximum expected network packet size in bytes for
    SSL/TLS/DTLS records.

    Parameters:
    :   `maximumPacketSize` - the maximum expected network packet size in bytes, or
        `0` to use the implicit size that is automatically
        specified by the underlying implementation.

    Throws:
    :   `IllegalArgumentException` - if `maximumPacketSize` is negative.

    Since:
    :   9

    See Also:
    :   - [`getMaximumPacketSize()`](#getMaximumPacketSize())
  + ### getMaximumPacketSize

    public int getMaximumPacketSize()

    Returns the maximum expected network packet size in bytes for
    SSL/TLS/DTLS records.

    Returns:
    :   the maximum expected network packet size, or `0` if
        use the implicit size that is automatically specified by
        the underlying implementation and this object has not been
        populated by any connection.

    Since:
    :   9

    See Also:
    :   - [`setMaximumPacketSize(int)`](#setMaximumPacketSize(int))
  + ### getApplicationProtocols

    public [String](../../../java/lang/String.md "class in java.lang")[] getApplicationProtocols()

    Returns a prioritized array of application-layer protocol names that
    can be negotiated over the SSL/TLS/DTLS protocols.

    The array could be empty (zero-length), in which case protocol
    indications will not be used.

    This method will return a new array each time it is invoked.

    Returns:
    :   a non-null, possibly zero-length array of application protocol
        `String`s. The array is ordered based on protocol
        preference, with the first entry being the most preferred.

    Since:
    :   9

    See Also:
    :   - [`setApplicationProtocols(java.lang.String[])`](#setApplicationProtocols(java.lang.String%5B%5D))
  + ### setApplicationProtocols

    public void setApplicationProtocols([String](../../../java/lang/String.md "class in java.lang")[] protocols)

    Sets the prioritized array of application-layer protocol names that
    can be negotiated over the SSL/TLS/DTLS protocols.

    If application-layer protocols are supported by the underlying
    SSL/TLS implementation, this method configures which values can
    be negotiated by protocols such as  [RFC 7301](http://www.ietf.org/rfc/rfc7301.txt) , the
    Application Layer Protocol Negotiation (ALPN).

    If this end of the connection is expected to offer application protocol
    values, all protocols configured by this method will be sent to the
    peer.

    If this end of the connection is expected to select the application
    protocol value, the `protocols` configured by this method are
    compared with those sent by the peer. The first matched value becomes
    the negotiated value. If none of the `protocols` were actually
    requested by the peer, the underlying protocol will determine what
    action to take. (For example, ALPN will send a
    `"no_application_protocol"` alert and terminate the connection.)

    The `String` values must be presented using the network
    byte representation expected by the peer. For example, if an ALPN
    `String` should be exchanged using `UTF-8`, the
    `String` should be converted to its `byte[]` representation
    and stored as a byte-oriented `String` before calling this method.
    > ```
    >      // MEETEI MAYEK LETTERS HUK UN I (Unicode 0xabcd->0xabcf): 2 bytes
    >      byte[] bytes = "\uabcd\uabce\uabcf"
    >              .getBytes(StandardCharsets.UTF_8);
    >      String HUK_UN_I = new String(bytes, StandardCharsets.ISO_8859_1);
    >
    >      // 0x00-0xFF:  1 byte
    >      String rfc7301Grease8A = "\u008A\u008A";
    >
    >      SSLParameters p = sslSocket.getSSLParameters();
    >      p.setApplicationProtocols(new String[] {
    >              "h2", "http/1.1", rfc7301Grease8A, HUK_UN_I});
    >      sslSocket.setSSLParameters(p);
    > ```

    Parameters:
    :   `protocols` - an ordered array of application protocols,
        with `protocols[0]` being the most preferred.
        If the array is empty (zero-length), protocol
        indications will not be used.

    Throws:
    :   `IllegalArgumentException` - if protocols is null, or if
        any element in a non-empty array is null or an
        empty (zero-length) string

    Since:
    :   9

    See Also:
    :   - [`getApplicationProtocols()`](#getApplicationProtocols())
  + ### getSignatureSchemes

    public [String](../../../java/lang/String.md "class in java.lang")[] getSignatureSchemes()

    Returns a prioritized array of signature scheme names that can be used
    over the SSL/TLS/DTLS protocols.

    Note that the standard list of signature scheme names are defined in
    the [Signature Schemes](../../../../../specs/security/standard-names.md#signature-schemes) section of the Java Security Standard Algorithm
    Names Specification. Providers may support signature schemes not defined
    in this list or may not use the recommended name for a certain
    signature scheme.

    The set of signature schemes that will be used over the SSL/TLS/DTLS
    connections is determined by the returned array of this method and the
    underlying provider-specific default signature schemes.

    If the returned array is `null`, then the underlying
    provider-specific default signature schemes will be used over the
    SSL/TLS/DTLS connections.

    If the returned array is empty (zero-length), then the signature scheme
    negotiation mechanism is turned off for SSL/TLS/DTLS protocols, and
    the connections may not be able to be established if the negotiation
    mechanism is required by a certain SSL/TLS/DTLS protocol. This
    parameter will override the underlying provider-specific default
    signature schemes.

    If the returned array is not `null` or empty (zero-length),
    then the signature schemes in the returned array will be used over
    the SSL/TLS/DTLS connections. This parameter will override the
    underlying provider-specific default signature schemes.

    This method returns the most recent value passed to
    [`setSignatureSchemes(java.lang.String[])`](#setSignatureSchemes(java.lang.String%5B%5D)) if that method has been called and
    otherwise returns the default signature schemes for connection
    populated objects, or `null` for pre-populated objects.

    Returns:
    :   an array of signature scheme `Strings` or `null` if
        none have been set. For non-null returns, this method will
        return a new array each time it is invoked. The array is
        ordered based on signature scheme preference, with the first
        entry being the most preferred. Providers should ignore unknown
        signature scheme names while establishing the SSL/TLS/DTLS
        connections.

    Since:
    :   19

    See Also:
    :   - [`setSignatureSchemes(java.lang.String[])`](#setSignatureSchemes(java.lang.String%5B%5D))
  + ### setSignatureSchemes

    public void setSignatureSchemes([String](../../../java/lang/String.md "class in java.lang")[] signatureSchemes)

    Sets the prioritized array of signature scheme names that
    can be used over the SSL/TLS/DTLS protocols.

    Note that the standard list of signature scheme names are defined in
    the [Signature Schemes](../../../../../specs/security/standard-names.md#signature-schemes) section of the Java Security Standard Algorithm
    Names Specification. Providers may support signature schemes not
    defined in this list or may not use the recommended name for a certain
    signature scheme.

    The set of signature schemes that will be used over the SSL/TLS/DTLS
    connections is determined by the input parameter `signatureSchemes`
    array and the underlying provider-specific default signature schemes.
    See [`getSignatureSchemes()`](#getSignatureSchemes()) for specific details on how the
    parameters are used in SSL/TLS/DTLS connections.

    Parameters:
    :   `signatureSchemes` - an ordered array of signature scheme names with
        the first entry being the most preferred, or `null`. This
        method will make a copy of this array. Providers should ignore
        unknown signature scheme names while establishing the
        SSL/TLS/DTLS connections.

    Throws:
    :   `IllegalArgumentException` - if any element in the
        `signatureSchemes` array is `null` or
        [blank](../../../java/lang/String.md#isBlank()).

    Since:
    :   19

    See Also:
    :   - [`getSignatureSchemes()`](#getSignatureSchemes())
  + ### getNamedGroups

    public [String](../../../java/lang/String.md "class in java.lang")[] getNamedGroups()

    Returns a prioritized array of key exchange named groups names that
    can be used over the SSL/TLS/DTLS protocols.

    Note that the standard list of key exchange named groups are defined
    in the [Named Groups](../../../../../specs/security/standard-names.md#named-groups) section of the Java Security Standard Algorithm
    Names Specification. Providers may support named groups not defined
    in this list or may not use the recommended name for a certain named
    group.

    The set of named groups that will be used over the SSL/TLS/DTLS
    connections is determined by the returned array of this method and the
    underlying provider-specific default named groups.

    If the returned array is `null`, then the underlying
    provider-specific default named groups will be used over the
    SSL/TLS/DTLS connections.

    If the returned array is empty (zero-length), then the named group
    negotiation mechanism is turned off for SSL/TLS/DTLS protocols, and
    the connections may not be able to be established if the negotiation
    mechanism is required by a certain SSL/TLS/DTLS protocol. This
    parameter will override the underlying provider-specific default
    name groups.

    If the returned array is not `null` or empty (zero-length),
    then the named groups in the returned array will be used over
    the SSL/TLS/DTLS connections. This parameter will override the
    underlying provider-specific default named groups.

    This method returns the most recent value passed to
    [`setNamedGroups(java.lang.String[])`](#setNamedGroups(java.lang.String%5B%5D)) if that method has been called and otherwise
    returns the default named groups for connection populated objects,
    or `null` for pre-populated objects.

    Returns:
    :   an array of key exchange named group names `Strings` or
        `null` if none have been set. For non-null returns, this
        method will return a new array each time it is invoked. The
        array is ordered based on named group preference, with the first
        entry being the most preferred. Providers should ignore unknown
        named group names while establishing the SSL/TLS/DTLS
        connections.

    Since:
    :   20

    See Also:
    :   - [`setNamedGroups(java.lang.String[])`](#setNamedGroups(java.lang.String%5B%5D))
  + ### setNamedGroups

    public void setNamedGroups([String](../../../java/lang/String.md "class in java.lang")[] namedGroups)

    Sets the prioritized array of key exchange named groups names that
    can be used over the SSL/TLS/DTLS protocols.

    Note that the standard list of key exchange named groups are defined in
    the [Named Groups](../../../../../specs/security/standard-names.md#named-groups) section of the Java Security Standard Algorithm
    Names Specification. Providers may support named groups not defined
    in this list or may not use the recommended name for a certain named
    group.

    The set of named groups that will be used over the SSL/TLS/DTLS
    connections is determined by the input parameter `namedGroups`
    array and the underlying provider-specific default named groups.
    See [`getNamedGroups()`](#getNamedGroups()) for specific details on how the
    parameters are used in SSL/TLS/DTLS connections.

    Parameters:
    :   `namedGroups` - an ordered array of key exchange named group names
        with the first entry being the most preferred, or `null`.
        This method will make a copy of this array. Providers should
        ignore unknown named group scheme names while establishing the
        SSL/TLS/DTLS connections.

    Throws:
    :   `IllegalArgumentException` - if any element in the
        `namedGroups` array is a duplicate, `null` or
        [blank](../../../java/lang/String.md#isBlank()).

    Since:
    :   20

    See Also:
    :   - [`getNamedGroups()`](#getNamedGroups())