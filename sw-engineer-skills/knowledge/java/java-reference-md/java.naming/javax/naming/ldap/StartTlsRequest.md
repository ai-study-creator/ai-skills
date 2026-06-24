Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class StartTlsRequest

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.StartTlsRequest

All Implemented Interfaces:
:   `Serializable`, `ExtendedRequest`

---

public class StartTlsRequest
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ExtendedRequest](ExtendedRequest.md "interface in javax.naming.ldap")

This class implements the LDAPv3 Extended Request for StartTLS as
defined in
[Lightweight Directory
Access Protocol (v3): Extension for Transport Layer Security](http://www.ietf.org/rfc/rfc2830.txt)
The object identifier for StartTLS is 1.3.6.1.4.1.1466.20037
and no extended request value is defined.

`StartTlsRequest`/`StartTlsResponse` are used to establish
a TLS connection over the existing LDAP connection associated with
the JNDI context on which `extendedOperation()` is invoked.
Typically, a JNDI program uses these classes as follows.
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
>  // of the negotiated TLS session: cipher suite, peer certificate, etc.
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
:   * [`StartTlsResponse`](StartTlsResponse.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.StartTlsRequest)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The StartTLS extended request's assigned object identifier
  is 1.3.6.1.4.1.1466.20037.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StartTlsRequest()`

  Constructs a StartTLS extended request.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ExtendedResponse`

  `createExtendedResponse(String id,
  byte[] berValue,
  int offset,
  int length)`

  Creates an extended response object that corresponds to the
  LDAP StartTLS extended request.

  `byte[]`

  `getEncodedValue()`

  Retrieves the StartTLS request's ASN.1 BER encoded value.

  `String`

  `getID()`

  Retrieves the StartTLS request's object identifier string.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The StartTLS extended request's assigned object identifier
    is 1.3.6.1.4.1.1466.20037.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.StartTlsRequest.OID)
* ## Constructor Details

  + ### StartTlsRequest

    public StartTlsRequest()

    Constructs a StartTLS extended request.
* ## Method Details

  + ### getID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Retrieves the StartTLS request's object identifier string.

    Specified by:
    :   `getID` in interface `ExtendedRequest`

    Returns:
    :   The object identifier string, "1.3.6.1.4.1.1466.20037".
  + ### getEncodedValue

    public byte[] getEncodedValue()

    Retrieves the StartTLS request's ASN.1 BER encoded value.
    Since the request has no defined value, null is always
    returned.

    Specified by:
    :   `getEncodedValue` in interface `ExtendedRequest`

    Returns:
    :   The null value.
  + ### createExtendedResponse

    public [ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap") createExtendedResponse([String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    byte[] berValue,
    int offset,
    int length)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Creates an extended response object that corresponds to the
    LDAP StartTLS extended request.

    The result must be a concrete subclass of StartTlsResponse
    and must have a public zero-argument constructor.

    This method locates the implementation class by locating
    configuration files that have the name:
    > `META-INF/services/javax.naming.ldap.StartTlsResponse`

    The configuration files and their corresponding implementation classes must
    be accessible to the calling thread's context class loader.

    Each configuration file should contain a list of fully-qualified class
    names, one per line. Space and tab characters surrounding each name, as
    well as blank lines, are ignored. The comment character is `'#'`
    (`0x23`); on each line all characters following the first comment
    character are ignored. The file must be encoded in UTF-8.

    This method will return an instance of the first implementation
    class that it is able to load and instantiate successfully from
    the list of class names collected from the configuration files.
    This method uses the calling thread's context classloader to find the
    configuration files and to load the implementation class.

    If no class can be found in this way, this method will use
    an implementation-specific way to locate an implementation.
    If none is found, a NamingException is thrown.

    Specified by:
    :   `createExtendedResponse` in interface `ExtendedRequest`

    Parameters:
    :   `id` - The object identifier of the extended response.
        Its value must be "1.3.6.1.4.1.1466.20037" or null.
        Both values are equivalent.
    :   `berValue` - The possibly null ASN.1 BER encoded value of the
        extended response. This is the raw BER bytes
        including the tag and length of the response value.
        It does not include the response OID.
        Its value is ignored because a Start TLS response
        is not expected to contain any response value.
    :   `offset` - The starting position in berValue of the bytes to use.
        Its value is ignored because a Start TLS response
        is not expected to contain any response value.
    :   `length` - The number of bytes in berValue to use.
        Its value is ignored because a Start TLS response
        is not expected to contain any response value.

    Returns:
    :   The StartTLS extended response object.

    Throws:
    :   `NamingException` - If a naming exception was encountered
        while creating the StartTLS extended response object.

    See Also:
    :   - [`ExtendedResponse`](ExtendedResponse.md "interface in javax.naming.ldap")