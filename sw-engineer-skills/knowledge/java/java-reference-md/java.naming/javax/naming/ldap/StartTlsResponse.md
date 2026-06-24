Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class StartTlsResponse

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.StartTlsResponse

All Implemented Interfaces:
:   `Serializable`, `ExtendedResponse`

---

public abstract class StartTlsResponse
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap")

This class implements the LDAPv3 Extended Response for StartTLS as
defined in
[Lightweight Directory
Access Protocol (v3): Extension for Transport Layer Security](http://www.ietf.org/rfc/rfc2830.txt)
The object identifier for StartTLS is 1.3.6.1.4.1.1466.20037
and no extended response value is defined.

The Start TLS extended request and response are used to establish
a TLS connection over the existing LDAP connection associated with
the JNDI context on which `extendedOperation()` is invoked.
Typically, a JNDI program uses the StartTLS extended request and response
classes as follows.
> ```
>  import javax.naming.ldap.*;
>
>  // Open an LDAP association
>  LdapContext ctx = new InitialLdapContext();
>
>  // Perform a StartTLS extended operation
>  StartTlsResponse tls =
>      (StartTlsResponse) ctx.extendedOperation(new StartTlsRequest());
>
>  // Open a TLS connection (over the existing LDAP association) and get details
>  // of the negotiated TLS session: cipher suite, peer certificate, ...
>  SSLSession session = tls.negotiate();
>
>  // ... use ctx to perform protected LDAP operations
>
>  // Close the TLS connection (revert back to the underlying LDAP association)
>  tls.close();
>
>  // ... use ctx to perform unprotected LDAP operations
>
>  // Close the LDAP association
>  ctx.close;
> ```

Since:
:   1.4

See Also:
:   * [`StartTlsRequest`](StartTlsRequest.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.StartTlsResponse)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The StartTLS extended response's assigned object identifier
  is 1.3.6.1.4.1.1466.20037.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `StartTlsResponse()`

  Constructs a StartTLS extended response.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `close()`

  Closes the TLS connection gracefully and reverts back to the underlying
  connection.

  `byte[]`

  `getEncodedValue()`

  Retrieves the StartTLS response's ASN.1 BER encoded value.

  `String`

  `getID()`

  Retrieves the StartTLS response's object identifier string.

  `abstract SSLSession`

  `negotiate()`

  Negotiates a TLS session using the default SSL socket factory.

  `abstract SSLSession`

  `negotiate(SSLSocketFactory factory)`

  Negotiates a TLS session using an SSL socket factory.

  `abstract void`

  `setEnabledCipherSuites(String[] suites)`

  Overrides the default list of cipher suites enabled for use on the
  TLS connection.

  `abstract void`

  `setHostnameVerifier(HostnameVerifier verifier)`

  Sets the hostname verifier used by `negotiate()`
  after the TLS handshake has completed and the default hostname
  verification has failed.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The StartTLS extended response's assigned object identifier
    is 1.3.6.1.4.1.1466.20037.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.StartTlsResponse.OID)
* ## Constructor Details

  + ### StartTlsResponse

    protected StartTlsResponse()

    Constructs a StartTLS extended response.
    A concrete subclass must have a public no-arg constructor.
* ## Method Details

  + ### getID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Retrieves the StartTLS response's object identifier string.

    Specified by:
    :   `getID` in interface `ExtendedResponse`

    Returns:
    :   The object identifier string, "1.3.6.1.4.1.1466.20037".
  + ### getEncodedValue

    public byte[] getEncodedValue()

    Retrieves the StartTLS response's ASN.1 BER encoded value.
    Since the response has no defined value, null is always
    returned.

    Specified by:
    :   `getEncodedValue` in interface `ExtendedResponse`

    Returns:
    :   The null value.
  + ### setEnabledCipherSuites

    public abstract void setEnabledCipherSuites([String](../../../../java.base/java/lang/String.md "class in java.lang")[] suites)

    Overrides the default list of cipher suites enabled for use on the
    TLS connection. The cipher suites must have already been listed by
    `SSLSocketFactory.getSupportedCipherSuites()` as being supported.
    Even if a suite has been enabled, it still might not be used because
    the peer does not support it, or because the requisite certificates
    (and private keys) are not available.

    Parameters:
    :   `suites` - The non-null list of names of all the cipher suites to
        enable.

    See Also:
    :   - [`negotiate()`](#negotiate())
  + ### setHostnameVerifier

    public abstract void setHostnameVerifier([HostnameVerifier](../../../../java.base/javax/net/ssl/HostnameVerifier.md "interface in javax.net.ssl") verifier)

    Sets the hostname verifier used by `negotiate()`
    after the TLS handshake has completed and the default hostname
    verification has failed.
    `setHostnameVerifier()` must be called before
    `negotiate()` is invoked for it to have effect.
    If called after
    `negotiate()`, this method does not do anything.

    Parameters:
    :   `verifier` - The non-null hostname verifier callback.

    See Also:
    :   - [`negotiate()`](#negotiate())
  + ### negotiate

    public abstract [SSLSession](../../../../java.base/javax/net/ssl/SSLSession.md "interface in javax.net.ssl") negotiate()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Negotiates a TLS session using the default SSL socket factory.

    This method is equivalent to `negotiate(null)`.

    Returns:
    :   The negotiated SSL session

    Throws:
    :   `IOException` - If an IO error was encountered while establishing
        the TLS session.

    See Also:
    :   - [`setEnabledCipherSuites(java.lang.String[])`](#setEnabledCipherSuites(java.lang.String%5B%5D))
        - [`setHostnameVerifier(javax.net.ssl.HostnameVerifier)`](#setHostnameVerifier(javax.net.ssl.HostnameVerifier))
  + ### negotiate

    public abstract [SSLSession](../../../../java.base/javax/net/ssl/SSLSession.md "interface in javax.net.ssl") negotiate([SSLSocketFactory](../../../../java.base/javax/net/ssl/SSLSocketFactory.md "class in javax.net.ssl") factory)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Negotiates a TLS session using an SSL socket factory.

    Creates an SSL socket using the supplied SSL socket factory and
    attaches it to the existing connection. Performs the TLS handshake
    and returns the negotiated session information.

    If cipher suites have been set via `setEnabledCipherSuites`
    then they are enabled before the TLS handshake begins.

    Hostname verification is performed after the TLS handshake completes.
    The default hostname verification performs a match of the server's
    hostname against the hostname information found in the server's certificate.
    If this verification fails and no callback has been set via
    `setHostnameVerifier` then the negotiation fails.
    If this verification fails and a callback has been set via
    `setHostnameVerifier`, then the callback is used to determine whether
    the negotiation succeeds.

    If an error occurs then the SSL socket is closed and an IOException
    is thrown. The underlying connection remains intact.

    Parameters:
    :   `factory` - The possibly null SSL socket factory to use.
        If null, the default SSL socket factory is used.

    Returns:
    :   The negotiated SSL session

    Throws:
    :   `IOException` - If an IO error was encountered while establishing
        the TLS session.

    See Also:
    :   - [`setEnabledCipherSuites(java.lang.String[])`](#setEnabledCipherSuites(java.lang.String%5B%5D))
        - [`setHostnameVerifier(javax.net.ssl.HostnameVerifier)`](#setHostnameVerifier(javax.net.ssl.HostnameVerifier))
  + ### close

    public abstract void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Closes the TLS connection gracefully and reverts back to the underlying
    connection.

    Throws:
    :   `IOException` - If an IO error was encountered while closing the
        TLS connection