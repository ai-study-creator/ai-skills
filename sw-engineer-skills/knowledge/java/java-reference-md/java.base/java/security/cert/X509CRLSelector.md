Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class X509CRLSelector

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.X509CRLSelector

All Implemented Interfaces:
:   `Cloneable`, `CRLSelector`

---

public class X509CRLSelector
extends [Object](../../lang/Object.md "class in java.lang")
implements [CRLSelector](CRLSelector.md "interface in java.security.cert")

A `CRLSelector` that selects `X509CRLs` that
match all specified criteria. This class is particularly useful when
selecting CRLs from a `CertStore` to check revocation status
of a particular certificate.

When first constructed, an `X509CRLSelector` has no criteria
enabled and each of the `get` methods return a default
value (`null`). Therefore, the [`match`](#match(java.security.cert.CRL)) method
would return `true` for any `X509CRL`. Typically,
several criteria are enabled (by calling [`setIssuers`](#setIssuers(java.util.Collection))
or [`setDateAndTime`](#setDateAndTime(java.util.Date)), for instance) and then the
`X509CRLSelector` is passed to
[`CertStore.getCRLs`](CertStore.md#getCRLs(java.security.cert.CRLSelector)) or some similar
method.

Please refer to [RFC 5280:
Internet X.509 Public Key Infrastructure Certificate and CRL Profile](https://tools.ietf.org/html/rfc5280)
for definitions of the X.509 CRL fields and extensions mentioned below.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CRLSelector`](CRLSelector.md "interface in java.security.cert")
    * [`X509CRL`](X509CRL.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `X509CRLSelector()`

  Creates an `X509CRLSelector`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addIssuer(X500Principal issuer)`

  Adds a name to the issuerNames criterion.

  `void`

  `addIssuerName(byte[] name)`

  Adds a name to the issuerNames criterion.

  `void`

  `addIssuerName(String name)`

  Deprecated.

  Use [`addIssuer(X500Principal)`](#addIssuer(javax.security.auth.x500.X500Principal)) or
  [`addIssuerName(byte[])`](#addIssuerName(byte%5B%5D)) instead.

  `Object`

  `clone()`

  Returns a copy of this object.

  `X509Certificate`

  `getCertificateChecking()`

  Returns the certificate being checked.

  `Date`

  `getDateAndTime()`

  Returns the dateAndTime criterion.

  `Collection<Object>`

  `getIssuerNames()`

  Returns a copy of the issuerNames criterion.

  `Collection<X500Principal>`

  `getIssuers()`

  Returns the issuerNames criterion.

  `BigInteger`

  `getMaxCRL()`

  Returns the maxCRLNumber criterion.

  `BigInteger`

  `getMinCRL()`

  Returns the minCRLNumber criterion.

  `boolean`

  `match(CRL crl)`

  Decides whether a `CRL` should be selected.

  `void`

  `setCertificateChecking(X509Certificate cert)`

  Sets the certificate being checked.

  `void`

  `setDateAndTime(Date dateAndTime)`

  Sets the dateAndTime criterion.

  `void`

  `setIssuerNames(Collection<?> names)`

  **Note:** use [setIssuers(Collection)](#setIssuers(java.util.Collection)) instead
  or only specify the byte array form of distinguished names when using
  this method.

  `void`

  `setIssuers(Collection<X500Principal> issuers)`

  Sets the issuerNames criterion.

  `void`

  `setMaxCRLNumber(BigInteger maxCRL)`

  Sets the maxCRLNumber criterion.

  `void`

  `setMinCRLNumber(BigInteger minCRL)`

  Sets the minCRLNumber criterion.

  `String`

  `toString()`

  Returns a printable representation of the `X509CRLSelector`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### X509CRLSelector

    public X509CRLSelector()

    Creates an `X509CRLSelector`. Initially, no criteria are set
    so any `X509CRL` will match.
* ## Method Details

  + ### setIssuers

    public void setIssuers([Collection](../../util/Collection.md "interface in java.util")<[X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500")> issuers)

    Sets the issuerNames criterion. The issuer distinguished name in the
    `X509CRL` must match at least one of the specified
    distinguished names. If `null`, any issuer distinguished name
    will do.

    This method allows the caller to specify, with a single method call,
    the complete set of issuer names which `X509CRLs` may contain.
    The specified value replaces the previous value for the issuerNames
    criterion.

    The `names` parameter (if not `null`) is a
    `Collection` of `X500Principal`s.

    Note that the `names` parameter can contain duplicate
    distinguished names, but they may be removed from the
    `Collection` of names returned by the
    [`getIssuers`](#getIssuers()) method.

    Note that a copy is performed on the `Collection` to
    protect against subsequent modifications.

    Parameters:
    :   `issuers` - a `Collection` of X500Principals
        (or `null`)

    Since:
    :   1.5

    See Also:
    :   - [`getIssuers()`](#getIssuers())
  + ### setIssuerNames

    public void setIssuerNames([Collection](../../util/Collection.md "interface in java.util")<?> names)
    throws [IOException](../../io/IOException.md "class in java.io")

    **Note:** use [setIssuers(Collection)](#setIssuers(java.util.Collection)) instead
    or only specify the byte array form of distinguished names when using
    this method. See [`addIssuerName(String)`](#addIssuerName(java.lang.String)) for more information.

    Sets the issuerNames criterion. The issuer distinguished name in the
    `X509CRL` must match at least one of the specified
    distinguished names. If `null`, any issuer distinguished name
    will do.

    This method allows the caller to specify, with a single method call,
    the complete set of issuer names which `X509CRLs` may contain.
    The specified value replaces the previous value for the issuerNames
    criterion.

    The `names` parameter (if not `null`) is a
    `Collection` of names. Each name is a `String`
    or a byte array representing a distinguished name (in
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) or
    ASN.1 DER encoded form, respectively). If `null` is supplied
    as the value for this argument, no issuerNames check will be performed.

    Note that the `names` parameter can contain duplicate
    distinguished names, but they may be removed from the
    `Collection` of names returned by the
    [`getIssuerNames`](#getIssuerNames()) method.

    If a name is specified as a byte array, it should contain a single DER
    encoded distinguished name, as defined in X.501. The ASN.1 notation for
    this structure is as follows.

    ```
     Name ::= CHOICE {
       RDNSequence }

     RDNSequence ::= SEQUENCE OF RelativeDistinguishedName

     RelativeDistinguishedName ::=
       SET SIZE (1 .. MAX) OF AttributeTypeAndValue

     AttributeTypeAndValue ::= SEQUENCE {
       type     AttributeType,
       value    AttributeValue }

     AttributeType ::= OBJECT IDENTIFIER

     AttributeValue ::= ANY DEFINED BY AttributeType
     ....
     DirectoryString ::= CHOICE {
           teletexString           TeletexString (SIZE (1..MAX)),
           printableString         PrintableString (SIZE (1..MAX)),
           universalString         UniversalString (SIZE (1..MAX)),
           utf8String              UTF8String (SIZE (1.. MAX)),
           bmpString               BMPString (SIZE (1..MAX)) }
    ```

    Note that a deep copy is performed on the `Collection` to
    protect against subsequent modifications.

    Parameters:
    :   `names` - a `Collection` of names (or `null`)

    Throws:
    :   `IOException` - if a parsing error occurs

    See Also:
    :   - [`getIssuerNames()`](#getIssuerNames())
  + ### addIssuer

    public void addIssuer([X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500") issuer)

    Adds a name to the issuerNames criterion. The issuer distinguished
    name in the `X509CRL` must match at least one of the specified
    distinguished names.

    This method allows the caller to add a name to the set of issuer names
    which `X509CRLs` may contain. The specified name is added to
    any previous value for the issuerNames criterion.
    If the specified name is a duplicate, it may be ignored.

    Parameters:
    :   `issuer` - the issuer as X500Principal

    Since:
    :   1.5
  + ### addIssuerName

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="16")
    public void addIssuerName([String](../../lang/String.md "class in java.lang") name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Deprecated.

    Use [`addIssuer(X500Principal)`](#addIssuer(javax.security.auth.x500.X500Principal)) or
    [`addIssuerName(byte[])`](#addIssuerName(byte%5B%5D)) instead. This method should not be
    relied on as it can fail to match some CRLs because of a loss of
    encoding information in the RFC 2253 String form of some distinguished
    names.

    Adds a name to the issuerNames criterion. The issuer distinguished
    name in the `X509CRL` must match at least one of the specified
    distinguished names.

    This method allows the caller to add a name to the set of issuer names
    which `X509CRLs` may contain. The specified name is added to
    any previous value for the issuerNames criterion.
    If the specified name is a duplicate, it may be ignored.

    Parameters:
    :   `name` - the name in
        [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) form

    Throws:
    :   `IOException` - if a parsing error occurs
  + ### addIssuerName

    public void addIssuerName(byte[] name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Adds a name to the issuerNames criterion. The issuer distinguished
    name in the `X509CRL` must match at least one of the specified
    distinguished names.

    This method allows the caller to add a name to the set of issuer names
    which `X509CRLs` may contain. The specified name is added to
    any previous value for the issuerNames criterion. If the specified name
    is a duplicate, it may be ignored.
    If a name is specified as a byte array, it should contain a single DER
    encoded distinguished name, as defined in X.501. The ASN.1 notation for
    this structure is as follows.

    The name is provided as a byte array. This byte array should contain
    a single DER encoded distinguished name, as defined in X.501. The ASN.1
    notation for this structure appears in the documentation for
    [`setIssuerNames(Collection names)`](#setIssuerNames(java.util.Collection)).

    Note that the byte array supplied here is cloned to protect against
    subsequent modifications.

    Parameters:
    :   `name` - a byte array containing the name in ASN.1 DER encoded form

    Throws:
    :   `IOException` - if a parsing error occurs
  + ### setMinCRLNumber

    public void setMinCRLNumber([BigInteger](../../math/BigInteger.md "class in java.math") minCRL)

    Sets the minCRLNumber criterion. The `X509CRL` must have a
    CRL number extension whose value is greater than or equal to the
    specified value. If `null`, no minCRLNumber check will be
    done.

    Parameters:
    :   `minCRL` - the minimum CRL number accepted (or `null`)
  + ### setMaxCRLNumber

    public void setMaxCRLNumber([BigInteger](../../math/BigInteger.md "class in java.math") maxCRL)

    Sets the maxCRLNumber criterion. The `X509CRL` must have a
    CRL number extension whose value is less than or equal to the
    specified value. If `null`, no maxCRLNumber check will be
    done.

    Parameters:
    :   `maxCRL` - the maximum CRL number accepted (or `null`)
  + ### setDateAndTime

    public void setDateAndTime([Date](../../util/Date.md "class in java.util") dateAndTime)

    Sets the dateAndTime criterion. The specified date must be
    equal to or later than the value of the thisUpdate component
    of the `X509CRL` and earlier than the value of the
    nextUpdate component. There is no match if the `X509CRL`
    does not contain a nextUpdate component.
    If `null`, no dateAndTime check will be done.

    Note that the `Date` supplied here is cloned to protect
    against subsequent modifications.

    Parameters:
    :   `dateAndTime` - the `Date` to match against
        (or `null`)

    See Also:
    :   - [`getDateAndTime()`](#getDateAndTime())
  + ### setCertificateChecking

    public void setCertificateChecking([X509Certificate](X509Certificate.md "class in java.security.cert") cert)

    Sets the certificate being checked. This is not a criterion. Rather,
    it is optional information that may help a `CertStore`
    find CRLs that would be relevant when checking revocation for the
    specified certificate. If `null` is specified, then no
    such optional information is provided.

    Parameters:
    :   `cert` - the `X509Certificate` being checked
        (or `null`)

    See Also:
    :   - [`getCertificateChecking()`](#getCertificateChecking())
  + ### getIssuers

    public [Collection](../../util/Collection.md "interface in java.util")<[X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500")> getIssuers()

    Returns the issuerNames criterion. The issuer distinguished
    name in the `X509CRL` must match at least one of the specified
    distinguished names. If the value returned is `null`, any
    issuer distinguished name will do.

    If the value returned is not `null`, it is a
    unmodifiable `Collection` of `X500Principal`s.

    Returns:
    :   an unmodifiable `Collection` of names
        (or `null`)

    Since:
    :   1.5

    See Also:
    :   - [`setIssuers(java.util.Collection<javax.security.auth.x500.X500Principal>)`](#setIssuers(java.util.Collection))
  + ### getIssuerNames

    public [Collection](../../util/Collection.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang")> getIssuerNames()

    Returns a copy of the issuerNames criterion. The issuer distinguished
    name in the `X509CRL` must match at least one of the specified
    distinguished names. If the value returned is `null`, any
    issuer distinguished name will do.

    If the value returned is not `null`, it is a
    `Collection` of names. Each name is a `String`
    or a byte array representing a distinguished name (in
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) or
    ASN.1 DER encoded form, respectively). Note that the
    `Collection` returned may contain duplicate names.

    If a name is specified as a byte array, it should contain a single DER
    encoded distinguished name, as defined in X.501. The ASN.1 notation for
    this structure is given in the documentation for
    [`setIssuerNames(Collection names)`](#setIssuerNames(java.util.Collection)).

    Note that a deep copy is performed on the `Collection` to
    protect against subsequent modifications.

    Returns:
    :   a `Collection` of names (or `null`)

    See Also:
    :   - [`setIssuerNames(java.util.Collection<?>)`](#setIssuerNames(java.util.Collection))
  + ### getMinCRL

    public [BigInteger](../../math/BigInteger.md "class in java.math") getMinCRL()

    Returns the minCRLNumber criterion. The `X509CRL` must have a
    CRL number extension whose value is greater than or equal to the
    specified value. If `null`, no minCRLNumber check will be done.

    Returns:
    :   the minimum CRL number accepted (or `null`)
  + ### getMaxCRL

    public [BigInteger](../../math/BigInteger.md "class in java.math") getMaxCRL()

    Returns the maxCRLNumber criterion. The `X509CRL` must have a
    CRL number extension whose value is less than or equal to the
    specified value. If `null`, no maxCRLNumber check will be
    done.

    Returns:
    :   the maximum CRL number accepted (or `null`)
  + ### getDateAndTime

    public [Date](../../util/Date.md "class in java.util") getDateAndTime()

    Returns the dateAndTime criterion. The specified date must be
    equal to or later than the value of the thisUpdate component
    of the `X509CRL` and earlier than the value of the
    nextUpdate component. There is no match if the
    `X509CRL` does not contain a nextUpdate component.
    If `null`, no dateAndTime check will be done.

    Note that the `Date` returned is cloned to protect against
    subsequent modifications.

    Returns:
    :   the `Date` to match against (or `null`)

    See Also:
    :   - [`setDateAndTime(java.util.Date)`](#setDateAndTime(java.util.Date))
  + ### getCertificateChecking

    public [X509Certificate](X509Certificate.md "class in java.security.cert") getCertificateChecking()

    Returns the certificate being checked. This is not a criterion. Rather,
    it is optional information that may help a `CertStore`
    find CRLs that would be relevant when checking revocation for the
    specified certificate. If the value returned is `null`, then
    no such optional information is provided.

    Returns:
    :   the certificate being checked (or `null`)

    See Also:
    :   - [`setCertificateChecking(java.security.cert.X509Certificate)`](#setCertificateChecking(java.security.cert.X509Certificate))
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a printable representation of the `X509CRLSelector`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` describing the contents of the
        `X509CRLSelector`.
  + ### match

    public boolean match([CRL](CRL.md "class in java.security.cert") crl)

    Decides whether a `CRL` should be selected.

    Specified by:
    :   `match` in interface `CRLSelector`

    Parameters:
    :   `crl` - the `CRL` to be checked

    Returns:
    :   `true` if the `CRL` should be selected,
        `false` otherwise
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of this object.

    Specified by:
    :   `clone` in interface `CRLSelector`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")