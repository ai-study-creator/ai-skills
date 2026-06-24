Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class X509CRL

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.cert.CRL](CRL.md "class in java.security.cert")

java.security.cert.X509CRL

All Implemented Interfaces:
:   `X509Extension`

---

public abstract class X509CRL
extends [CRL](CRL.md "class in java.security.cert")
implements [X509Extension](X509Extension.md "interface in java.security.cert")

Abstract class for an X.509 Certificate Revocation List (CRL).
A CRL is a time-stamped list identifying revoked certificates.
It is signed by a Certificate Authority (CA) and made freely
available in a public repository.

Each revoked certificate is
identified in a CRL by its certificate serial number. When a
certificate-using system uses a certificate (e.g., for verifying a
remote user's digital signature), that system not only checks the
certificate signature and validity but also acquires a suitably-
recent CRL and checks that the certificate serial number is not on
that CRL. The meaning of "suitably-recent" may vary with local
policy, but it usually means the most recently-issued CRL. A CA
issues a new CRL on a regular periodic basis (e.g., hourly, daily, or
weekly). Entries are added to CRLs as revocations occur, and an
entry may be removed when the certificate expiration date is reached.

The X.509 v2 CRL format is described below in ASN.1:

```
 CertificateList  ::=  SEQUENCE  {
     tbsCertList          TBSCertList,
     signatureAlgorithm   AlgorithmIdentifier,
     signature            BIT STRING  }
```

More information can be found in
[RFC 5280: Internet X.509
Public Key Infrastructure Certificate and CRL Profile](https://tools.ietf.org/html/rfc5280).

The ASN.1 definition of `tbsCertList` is:

```
 TBSCertList  ::=  SEQUENCE  {
     version                 Version OPTIONAL,
                             -- if present, must be v2
     signature               AlgorithmIdentifier,
     issuer                  Name,
     thisUpdate              ChoiceOfTime,
     nextUpdate              ChoiceOfTime OPTIONAL,
     revokedCertificates     SEQUENCE OF SEQUENCE  {
         userCertificate         CertificateSerialNumber,
         revocationDate          ChoiceOfTime,
         crlEntryExtensions      Extensions OPTIONAL
                                 -- if present, must be v2
         }  OPTIONAL,
     crlExtensions           [0]  EXPLICIT Extensions OPTIONAL
                                  -- if present, must be v2
     }
```

CRLs are instantiated using a certificate factory. The following is an
example of how to instantiate an X.509 CRL:

```
 try (InputStream inStream = new FileInputStream("fileName-of-crl")) {
     CertificateFactory cf = CertificateFactory.getInstance("X.509");
     X509CRL crl = (X509CRL)cf.generateCRL(inStream);
 }
```

Since:
:   1.2

See Also:
:   * [`CRL`](CRL.md "class in java.security.cert")
    * [`CertificateFactory`](CertificateFactory.md "class in java.security.cert")
    * [`X509Extension`](X509Extension.md "interface in java.security.cert")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `X509CRL()`

  Constructor for X.509 CRLs.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Compares this CRL for equality with the given
  object.

  `abstract byte[]`

  `getEncoded()`

  Returns the ASN.1 DER-encoded form of this CRL.

  `abstract Principal`

  `getIssuerDN()`

  Deprecated.

  Use [`getIssuerX500Principal()`](#getIssuerX500Principal()) instead.

  `X500Principal`

  `getIssuerX500Principal()`

  Returns the issuer (issuer distinguished name) value from the
  CRL as an `X500Principal`.

  `abstract Date`

  `getNextUpdate()`

  Gets the `nextUpdate` date from the CRL.

  `abstract X509CRLEntry`

  `getRevokedCertificate(BigInteger serialNumber)`

  Gets the CRL entry, if any, with the given certificate serialNumber.

  `X509CRLEntry`

  `getRevokedCertificate(X509Certificate certificate)`

  Get the CRL entry, if any, for the given certificate.

  `abstract Set<? extends X509CRLEntry>`

  `getRevokedCertificates()`

  Gets all the entries from this CRL.

  `abstract String`

  `getSigAlgName()`

  Gets the signature algorithm name for the CRL
  signature algorithm.

  `abstract String`

  `getSigAlgOID()`

  Gets the signature algorithm OID string from the CRL.

  `abstract byte[]`

  `getSigAlgParams()`

  Gets the DER-encoded signature algorithm parameters from this
  CRL's signature algorithm.

  `abstract byte[]`

  `getSignature()`

  Gets the `signature` value (the raw signature bits) from
  the CRL.

  `abstract byte[]`

  `getTBSCertList()`

  Gets the DER-encoded CRL information, the
  `tbsCertList` from this CRL.

  `abstract Date`

  `getThisUpdate()`

  Gets the `thisUpdate` date from the CRL.

  `abstract int`

  `getVersion()`

  Gets the `version` (version number) value from the CRL.

  `int`

  `hashCode()`

  Returns a hashcode value for this CRL from its
  encoded form.

  `abstract void`

  `verify(PublicKey key)`

  Verifies that this CRL was signed using the
  private key that corresponds to the given public key.

  `abstract void`

  `verify(PublicKey key,
  String sigProvider)`

  Verifies that this CRL was signed using the
  private key that corresponds to the given public key.

  `void`

  `verify(PublicKey key,
  Provider sigProvider)`

  Verifies that this CRL was signed using the
  private key that corresponds to the given public key.

  ### Methods inherited from class java.security.cert.[CRL](CRL.md "class in java.security.cert")

  `getType, isRevoked, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.cert.[X509Extension](X509Extension.md "interface in java.security.cert")

  `getCriticalExtensionOIDs, getExtensionValue, getNonCriticalExtensionOIDs, hasUnsupportedCriticalExtension`

* ## Constructor Details

  + ### X509CRL

    protected X509CRL()

    Constructor for X.509 CRLs.
* ## Method Details

  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") other)

    Compares this CRL for equality with the given
    object. If the `other` object is an
    `instanceof` `X509CRL`, then
    its encoded form is retrieved and compared with the
    encoded form of this CRL.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to test for equality with this CRL.

    Returns:
    :   true iff the encoded forms of the two CRLs
        match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hashcode value for this CRL from its
    encoded form.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### getEncoded

    public abstract byte[] getEncoded()
    throws [CRLException](CRLException.md "class in java.security.cert")

    Returns the ASN.1 DER-encoded form of this CRL.

    Returns:
    :   the encoded form of this certificate

    Throws:
    :   `CRLException` - if an encoding error occurs.
  + ### verify

    public abstract void verify([PublicKey](../PublicKey.md "interface in java.security") key)
    throws [CRLException](CRLException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

    Verifies that this CRL was signed using the
    private key that corresponds to the given public key.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `NoSuchProviderException` - if there's no default provider.
    :   `SignatureException` - on signature errors.
    :   `CRLException` - on encoding errors.
  + ### verify

    public abstract void verify([PublicKey](../PublicKey.md "interface in java.security") key,
    [String](../../lang/String.md "class in java.lang") sigProvider)
    throws [CRLException](CRLException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

    Verifies that this CRL was signed using the
    private key that corresponds to the given public key.
    This method uses the signature verification engine
    supplied by the given provider.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.
    :   `sigProvider` - the name of the signature provider.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `NoSuchProviderException` - on incorrect provider.
    :   `SignatureException` - on signature errors.
    :   `CRLException` - on encoding errors.
  + ### verify

    public void verify([PublicKey](../PublicKey.md "interface in java.security") key,
    [Provider](../Provider.md "class in java.security") sigProvider)
    throws [CRLException](CRLException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

    Verifies that this CRL was signed using the
    private key that corresponds to the given public key.
    This method uses the signature verification engine
    supplied by the given provider. Note that the specified Provider object
    does not have to be registered in the provider list.
    This method was added to version 1.8 of the Java Platform Standard
    Edition. In order to maintain backwards compatibility with existing
    service providers, this method is not `abstract`
    and it provides a default implementation.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.
    :   `sigProvider` - the signature provider.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `SignatureException` - on signature errors.
    :   `CRLException` - on encoding errors.

    Since:
    :   1.8
  + ### getVersion

    public abstract int getVersion()

    Gets the `version` (version number) value from the CRL.
    The ASN.1 definition for this is:

    ```
     version    Version OPTIONAL,
                 -- if present, must be v2

     Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
                 -- v3 does not apply to CRLs but appears for consistency
                 -- with definition of Version for certs
    ```

    Returns:
    :   the version number, i.e. 1 or 2.
  + ### getIssuerDN

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="16")
    public abstract [Principal](../Principal.md "interface in java.security") getIssuerDN()

    Deprecated.

    Use [`getIssuerX500Principal()`](#getIssuerX500Principal()) instead. This method
    returns the `issuer` as an implementation specific
    `Principal` object, which should not be relied upon by portable
    code.

    Gets the `issuer` (issuer distinguished name) value from
    the CRL. The issuer name identifies the entity that signed (and
    issued) the CRL.

    The issuer name field contains an
    X.500 distinguished name (DN).
    The ASN.1 definition for this is:

    ```
     issuer    Name

     Name ::= CHOICE { RDNSequence }
     RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
     RelativeDistinguishedName ::=
         SET OF AttributeValueAssertion

     AttributeValueAssertion ::= SEQUENCE {
                                   AttributeType,
                                   AttributeValue }
     AttributeType ::= OBJECT IDENTIFIER
     AttributeValue ::= ANY
    ```

    The `Name` describes a hierarchical name composed of
    attributes,
    such as country name, and corresponding values, such as US.
    The type of the `AttributeValue` component is determined by
    the `AttributeType`; in general it will be a
    `directoryString`. A `directoryString` is usually
    one of `PrintableString`,
    `TeletexString` or `UniversalString`.

    Returns:
    :   a Principal whose name is the issuer distinguished name.
  + ### getIssuerX500Principal

    public [X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500") getIssuerX500Principal()

    Returns the issuer (issuer distinguished name) value from the
    CRL as an `X500Principal`.

    It is recommended that subclasses override this method.

    Returns:
    :   an `X500Principal` representing the issuer
        distinguished name

    Since:
    :   1.4
  + ### getThisUpdate

    public abstract [Date](../../util/Date.md "class in java.util") getThisUpdate()

    Gets the `thisUpdate` date from the CRL.
    The ASN.1 definition for this is:

    ```
     thisUpdate   ChoiceOfTime
     ChoiceOfTime ::= CHOICE {
         utcTime        UTCTime,
         generalTime    GeneralizedTime }
    ```

    Returns:
    :   the `thisUpdate` date from the CRL.
  + ### getNextUpdate

    public abstract [Date](../../util/Date.md "class in java.util") getNextUpdate()

    Gets the `nextUpdate` date from the CRL.

    Returns:
    :   the `nextUpdate` date from the CRL, or null if
        not present.
  + ### getRevokedCertificate

    public abstract [X509CRLEntry](X509CRLEntry.md "class in java.security.cert") getRevokedCertificate([BigInteger](../../math/BigInteger.md "class in java.math") serialNumber)

    Gets the CRL entry, if any, with the given certificate serialNumber.

    Parameters:
    :   `serialNumber` - the serial number of the certificate for which a CRL entry
        is to be looked up

    Returns:
    :   the entry with the given serial number, or null if no such entry
        exists in this CRL.

    See Also:
    :   - [`X509CRLEntry`](X509CRLEntry.md "class in java.security.cert")
  + ### getRevokedCertificate

    public [X509CRLEntry](X509CRLEntry.md "class in java.security.cert") getRevokedCertificate([X509Certificate](X509Certificate.md "class in java.security.cert") certificate)

    Get the CRL entry, if any, for the given certificate.

    This method can be used to lookup CRL entries in indirect CRLs,
    that means CRLs that contain entries from issuers other than the CRL
    issuer. The default implementation will only return entries for
    certificates issued by the CRL issuer. Subclasses that wish to
    support indirect CRLs should override this method.

    Parameters:
    :   `certificate` - the certificate for which a CRL entry is to be looked
        up

    Returns:
    :   the entry for the given certificate, or null if no such entry
        exists in this CRL.

    Throws:
    :   `NullPointerException` - if certificate is null

    Since:
    :   1.5
  + ### getRevokedCertificates

    public abstract [Set](../../util/Set.md "interface in java.util")<? extends [X509CRLEntry](X509CRLEntry.md "class in java.security.cert")> getRevokedCertificates()

    Gets all the entries from this CRL.
    This returns a Set of X509CRLEntry objects.

    Returns:
    :   all the entries or null if there are none present.

    See Also:
    :   - [`X509CRLEntry`](X509CRLEntry.md "class in java.security.cert")
  + ### getTBSCertList

    public abstract byte[] getTBSCertList()
    throws [CRLException](CRLException.md "class in java.security.cert")

    Gets the DER-encoded CRL information, the
    `tbsCertList` from this CRL.
    This can be used to verify the signature independently.

    Returns:
    :   the DER-encoded CRL information.

    Throws:
    :   `CRLException` - if an encoding error occurs.
  + ### getSignature

    public abstract byte[] getSignature()

    Gets the `signature` value (the raw signature bits) from
    the CRL.
    The ASN.1 definition for this is:

    ```
     signature     BIT STRING
    ```

    Returns:
    :   the signature.
  + ### getSigAlgName

    public abstract [String](../../lang/String.md "class in java.lang") getSigAlgName()

    Gets the signature algorithm name for the CRL
    signature algorithm. An example is the string "SHA256withRSA".
    The ASN.1 definition for this is:

    ```
     signatureAlgorithm   AlgorithmIdentifier

     AlgorithmIdentifier  ::=  SEQUENCE  {
         algorithm               OBJECT IDENTIFIER,
         parameters              ANY DEFINED BY algorithm OPTIONAL  }
                                 -- contains a value of the type
                                 -- registered for use with the
                                 -- algorithm object identifier value
    ```

    The algorithm name is determined from the `algorithm`
    OID string.

    Returns:
    :   the signature algorithm name.
  + ### getSigAlgOID

    public abstract [String](../../lang/String.md "class in java.lang") getSigAlgOID()

    Gets the signature algorithm OID string from the CRL.
    An OID is represented by a set of nonnegative whole numbers separated
    by periods.
    For example, the string "1.2.840.10040.4.3" identifies the SHA-1
    with DSA signature algorithm defined in
    [RFC 3279: Algorithms and
    Identifiers for the Internet X.509 Public Key Infrastructure Certificate
    and CRL Profile](http://www.ietf.org/rfc/rfc3279.txt).

    See [`getSigAlgName`](#getSigAlgName()) for
    relevant ASN.1 definitions.

    Returns:
    :   the signature algorithm OID string.
  + ### getSigAlgParams

    public abstract byte[] getSigAlgParams()

    Gets the DER-encoded signature algorithm parameters from this
    CRL's signature algorithm. In most cases, the signature
    algorithm parameters are null; the parameters are usually
    supplied with the public key.
    If access to individual parameter values is needed then use
    [`AlgorithmParameters`](../AlgorithmParameters.md "class in java.security")
    and instantiate with the name returned by
    [`getSigAlgName`](#getSigAlgName()).

    See [`getSigAlgName`](#getSigAlgName()) for
    relevant ASN.1 definitions.

    Returns:
    :   the DER-encoded signature algorithm parameters, or
        null if no parameters are present.