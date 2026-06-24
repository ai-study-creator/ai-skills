Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface SignatureMethod

All Superinterfaces:
:   `AlgorithmMethod`, `XMLStructure`

---

public interface SignatureMethod
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto"), [AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

A representation of the XML `SignatureMethod` element
as defined in the [W3C Recommendation for XML-Signature Syntax and Processing](https://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
   <element name="SignatureMethod" type="ds:SignatureMethodType"/>
     <complexType name="SignatureMethodType" mixed="true">
       <sequence>
         <element name="HMACOutputLength" minOccurs="0" type="ds:HMACOutputLengthType"/>
         <any namespace="##any" minOccurs="0" maxOccurs="unbounded"/>
           <!-- (0,unbounded) elements from (1,1) namespace -->
       </sequence>
       <attribute name="Algorithm" type="anyURI" use="required"/>
     </complexType>
```

A `SignatureMethod` instance may be created by invoking the
[`newSignatureMethod`](XMLSignatureFactory.md#newSignatureMethod(java.lang.String,javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec)) method
of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

The signature method algorithm URIs defined in this class are specified
in the [W3C Recommendation for XML-Signature Syntax and Processing](https://www.w3.org/TR/xmldsig-core/)
and [RFC 9231: Additional XML Security Uniform Resource Identifiers (URIs)](https://www.rfc-editor.org/info/rfc9231)

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newSignatureMethod(String, SignatureMethodParameterSpec)`](XMLSignatureFactory.md#newSignatureMethod(java.lang.String,javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DSA_SHA1`

  The [DSA-SHA1](http://www.w3.org/2000/09/xmldsig#dsa-sha1)
  (DSS) signature method algorithm URI.

  `static final String`

  `DSA_SHA256`

  The [DSA-SHA256](http://www.w3.org/2009/xmldsig11#dsa-sha256)
  (DSS) signature method algorithm URI.

  `static final String`

  `ECDSA_SHA1`

  The [ECDSA-SHA1](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha1) (FIPS 180-4) signature method algorithm URI.

  `static final String`

  `ECDSA_SHA224`

  The [ECDSA-SHA224](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha224) (FIPS 180-4) signature method algorithm URI.

  `static final String`

  `ECDSA_SHA256`

  The [ECDSA-SHA256](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha256) (FIPS 180-4) signature method algorithm URI.

  `static final String`

  `ECDSA_SHA384`

  The [ECDSA-SHA384](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha384) (FIPS 180-4) signature method algorithm URI.

  `static final String`

  `ECDSA_SHA512`

  The [ECDSA-SHA512](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha512) (FIPS 180-4) signature method algorithm URI.

  `static final String`

  `ED25519`

  The [ED25519](http://www.w3.org/2021/04/xmldsig-more#eddsa-ed25519) signature method algorithm URI.

  `static final String`

  `ED448`

  The [ED448](http://www.w3.org/2021/04/xmldsig-more#eddsa-ed448) signature method algorithm URI.

  `static final String`

  `HMAC_SHA1`

  The [HMAC-SHA1](http://www.w3.org/2000/09/xmldsig#hmac-sha1)
  MAC signature method algorithm URI

  `static final String`

  `HMAC_SHA224`

  The [HMAC-SHA224](http://www.w3.org/2001/04/xmldsig-more#hmac-sha224) MAC signature method algorithm URI.

  `static final String`

  `HMAC_SHA256`

  The [HMAC-SHA256](http://www.w3.org/2001/04/xmldsig-more#hmac-sha256) MAC signature method algorithm URI.

  `static final String`

  `HMAC_SHA384`

  The [HMAC-SHA384](http://www.w3.org/2001/04/xmldsig-more#hmac-sha384) MAC signature method algorithm URI.

  `static final String`

  `HMAC_SHA512`

  The [HMAC-SHA512](http://www.w3.org/2001/04/xmldsig-more#hmac-sha512) MAC signature method algorithm URI.

  `static final String`

  `RSA_PSS`

  The [RSASSA-PSS](http://www.w3.org/2007/05/xmldsig-more#rsa-pss) signature method algorithm URI.

  `static final String`

  `RSA_SHA1`

  The [RSA-SHA1](http://www.w3.org/2000/09/xmldsig#rsa-sha1)
  (PKCS #1) signature method algorithm URI.

  `static final String`

  `RSA_SHA224`

  The [RSA-SHA224](http://www.w3.org/2001/04/xmldsig-more#rsa-sha224) (PKCS #1) signature method algorithm URI.

  `static final String`

  `RSA_SHA256`

  The [RSA-SHA256](http://www.w3.org/2001/04/xmldsig-more#rsa-sha256) (PKCS #1) signature method algorithm URI.

  `static final String`

  `RSA_SHA384`

  The [RSA-SHA384](http://www.w3.org/2001/04/xmldsig-more#rsa-sha384) (PKCS #1) signature method algorithm URI.

  `static final String`

  `RSA_SHA512`

  The [RSA-SHA512](http://www.w3.org/2001/04/xmldsig-more#rsa-sha512) (PKCS #1) signature method algorithm URI.

  `static final String`

  `SHA1_RSA_MGF1`

  The [SHA1-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha1-rsa-MGF1) (PKCS #1) signature method algorithm URI.

  `static final String`

  `SHA224_RSA_MGF1`

  The [SHA224-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha224-rsa-MGF1) (PKCS #1) signature method algorithm URI.

  `static final String`

  `SHA256_RSA_MGF1`

  The [SHA256-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha256-rsa-MGF1) (PKCS #1) signature method algorithm URI.

  `static final String`

  `SHA384_RSA_MGF1`

  The [SHA384-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha384-rsa-MGF1) (PKCS #1) signature method algorithm URI.

  `static final String`

  `SHA512_RSA_MGF1`

  The [SHA512-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha512-rsa-MGF1) (PKCS #1) signature method algorithm URI.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the algorithm-specific input parameters of this
  `SignatureMethod`.

  ### Methods inherited from interface javax.xml.crypto.[AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

  `getAlgorithm`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### DSA\_SHA1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DSA\_SHA1

    The [DSA-SHA1](http://www.w3.org/2000/09/xmldsig#dsa-sha1)
    (DSS) signature method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.DSA_SHA1)
  + ### DSA\_SHA256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DSA\_SHA256

    The [DSA-SHA256](http://www.w3.org/2009/xmldsig11#dsa-sha256)
    (DSS) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.DSA_SHA256)
  + ### RSA\_SHA1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_SHA1

    The [RSA-SHA1](http://www.w3.org/2000/09/xmldsig#rsa-sha1)
    (PKCS #1) signature method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_SHA1)
  + ### RSA\_SHA224

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_SHA224

    The [RSA-SHA224](http://www.w3.org/2001/04/xmldsig-more#rsa-sha224) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_SHA224)
  + ### RSA\_SHA256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_SHA256

    The [RSA-SHA256](http://www.w3.org/2001/04/xmldsig-more#rsa-sha256) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_SHA256)
  + ### RSA\_SHA384

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_SHA384

    The [RSA-SHA384](http://www.w3.org/2001/04/xmldsig-more#rsa-sha384) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_SHA384)
  + ### RSA\_SHA512

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_SHA512

    The [RSA-SHA512](http://www.w3.org/2001/04/xmldsig-more#rsa-sha512) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_SHA512)
  + ### SHA1\_RSA\_MGF1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA1\_RSA\_MGF1

    The [SHA1-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha1-rsa-MGF1) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.SHA1_RSA_MGF1)
  + ### SHA224\_RSA\_MGF1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA224\_RSA\_MGF1

    The [SHA224-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha224-rsa-MGF1) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.SHA224_RSA_MGF1)
  + ### SHA256\_RSA\_MGF1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA256\_RSA\_MGF1

    The [SHA256-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha256-rsa-MGF1) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.SHA256_RSA_MGF1)
  + ### SHA384\_RSA\_MGF1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA384\_RSA\_MGF1

    The [SHA384-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha384-rsa-MGF1) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.SHA384_RSA_MGF1)
  + ### SHA512\_RSA\_MGF1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA512\_RSA\_MGF1

    The [SHA512-RSA-MGF1](http://www.w3.org/2007/05/xmldsig-more#sha512-rsa-MGF1) (PKCS #1) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.SHA512_RSA_MGF1)
  + ### ECDSA\_SHA1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ECDSA\_SHA1

    The [ECDSA-SHA1](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha1) (FIPS 180-4) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ECDSA_SHA1)
  + ### ECDSA\_SHA224

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ECDSA\_SHA224

    The [ECDSA-SHA224](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha224) (FIPS 180-4) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ECDSA_SHA224)
  + ### ECDSA\_SHA256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ECDSA\_SHA256

    The [ECDSA-SHA256](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha256) (FIPS 180-4) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ECDSA_SHA256)
  + ### ECDSA\_SHA384

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ECDSA\_SHA384

    The [ECDSA-SHA384](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha384) (FIPS 180-4) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ECDSA_SHA384)
  + ### ECDSA\_SHA512

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ECDSA\_SHA512

    The [ECDSA-SHA512](http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha512) (FIPS 180-4) signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ECDSA_SHA512)
  + ### HMAC\_SHA1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") HMAC\_SHA1

    The [HMAC-SHA1](http://www.w3.org/2000/09/xmldsig#hmac-sha1)
    MAC signature method algorithm URI

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA1)
  + ### HMAC\_SHA224

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") HMAC\_SHA224

    The [HMAC-SHA224](http://www.w3.org/2001/04/xmldsig-more#hmac-sha224) MAC signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA224)
  + ### HMAC\_SHA256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") HMAC\_SHA256

    The [HMAC-SHA256](http://www.w3.org/2001/04/xmldsig-more#hmac-sha256) MAC signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA256)
  + ### HMAC\_SHA384

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") HMAC\_SHA384

    The [HMAC-SHA384](http://www.w3.org/2001/04/xmldsig-more#hmac-sha384) MAC signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA384)
  + ### HMAC\_SHA512

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") HMAC\_SHA512

    The [HMAC-SHA512](http://www.w3.org/2001/04/xmldsig-more#hmac-sha512) MAC signature method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA512)
  + ### RSA\_PSS

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_PSS

    The [RSASSA-PSS](http://www.w3.org/2007/05/xmldsig-more#rsa-pss) signature method algorithm URI.

    Calling [`XMLSignatureFactory.newSignatureMethod(RSA_PSS, null)`](XMLSignatureFactory.md#newSignatureMethod(java.lang.String,javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec)) returns a
    `SignatureMethod` object that uses the default parameter as defined in
    [RFC 6931 Section 2.3.9](https://tools.ietf.org/html/rfc6931#section-2.3.9),
    which uses SHA-256 as the `DigestMethod`, MGF1 with SHA-256 as the
    `MaskGenerationFunction`, 32 as `SaltLength`, and 1 as
    `TrailerField`. This default parameter is represented as an
    [`RSAPSSParameterSpec`](spec/RSAPSSParameterSpec.md "class in javax.xml.crypto.dsig.spec")
    type and returned by the [`getParameterSpec()`](#getParameterSpec()) method
    of the `SignatureMethod` object.

    Since:
    :   17

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.RSA_PSS)
  + ### ED25519

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ED25519

    The [ED25519](http://www.w3.org/2021/04/xmldsig-more#eddsa-ed25519) signature method algorithm URI.

    Since:
    :   21

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ED25519)
  + ### ED448

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ED448

    The [ED448](http://www.w3.org/2021/04/xmldsig-more#eddsa-ed448) signature method algorithm URI.

    Since:
    :   21

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureMethod.ED448)
* ## Method Details

  + ### getParameterSpec

    [AlgorithmParameterSpec](../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the algorithm-specific input parameters of this
    `SignatureMethod`.

    The returned parameters can be typecast to a [`SignatureMethodParameterSpec`](spec/SignatureMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") object.

    Specified by:
    :   `getParameterSpec` in interface `AlgorithmMethod`

    Returns:
    :   the algorithm-specific input parameters of this
        `SignatureMethod` (may be `null` if not
        specified)