Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface DigestMethod

All Superinterfaces:
:   `AlgorithmMethod`, `XMLStructure`

---

public interface DigestMethod
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto"), [AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

A representation of the XML `DigestMethod` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](https://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
   <element name="DigestMethod" type="ds:DigestMethodType"/>
     <complexType name="DigestMethodType" mixed="true">
       <sequence>
         <any namespace="##any" minOccurs="0" maxOccurs="unbounded"/>
           <!-- (0,unbounded) elements from (1,1) namespace -->
       </sequence>
       <attribute name="Algorithm" type="anyURI" use="required"/>
     </complexType>
```

A `DigestMethod` instance may be created by invoking the
[`newDigestMethod`](XMLSignatureFactory.md#newDigestMethod(java.lang.String,javax.xml.crypto.dsig.spec.DigestMethodParameterSpec)) method
of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

The digest method algorithm URIs defined in this class are specified
in the [W3C Recommendation for XML-Signature Syntax and Processing](https://www.w3.org/TR/xmldsig-core/)
and [RFC 9231: Additional XML Security Uniform Resource Identifiers (URIs)](https://www.rfc-editor.org/info/rfc9231)

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newDigestMethod(String, DigestMethodParameterSpec)`](XMLSignatureFactory.md#newDigestMethod(java.lang.String,javax.xml.crypto.dsig.spec.DigestMethodParameterSpec))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `RIPEMD160`

  The [RIPEMD-160](http://www.w3.org/2001/04/xmlenc#ripemd160) digest method algorithm URI.

  `static final String`

  `SHA1`

  The [SHA1](http://www.w3.org/2000/09/xmldsig#sha1) digest method algorithm URI.

  `static final String`

  `SHA224`

  The [SHA224](http://www.w3.org/2001/04/xmldsig-more#sha224) digest method algorithm URI.

  `static final String`

  `SHA256`

  The [SHA256](http://www.w3.org/2001/04/xmlenc#sha256) digest method algorithm URI.

  `static final String`

  `SHA3_224`

  The [SHA3-224](http://www.w3.org/2007/05/xmldsig-more#sha3-224) digest method algorithm URI.

  `static final String`

  `SHA3_256`

  The [SHA3-256](http://www.w3.org/2007/05/xmldsig-more#sha3-256) digest method algorithm URI.

  `static final String`

  `SHA3_384`

  The [SHA3-384](http://www.w3.org/2007/05/xmldsig-more#sha3-384) digest method algorithm URI.

  `static final String`

  `SHA3_512`

  The [SHA3-512](http://www.w3.org/2007/05/xmldsig-more#sha3-512) digest method algorithm URI.

  `static final String`

  `SHA384`

  The [SHA384](http://www.w3.org/2001/04/xmldsig-more#sha384) digest method algorithm URI.

  `static final String`

  `SHA512`

  The [SHA512](http://www.w3.org/2001/04/xmlenc#sha512) digest method algorithm URI.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the algorithm-specific input parameters associated with this
  `DigestMethod`.

  ### Methods inherited from interface javax.xml.crypto.[AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

  `getAlgorithm`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### SHA1

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA1

    The [SHA1](http://www.w3.org/2000/09/xmldsig#sha1) digest method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA1)
  + ### SHA224

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA224

    The [SHA224](http://www.w3.org/2001/04/xmldsig-more#sha224) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA224)
  + ### SHA256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA256

    The [SHA256](http://www.w3.org/2001/04/xmlenc#sha256) digest method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA256)
  + ### SHA384

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA384

    The [SHA384](http://www.w3.org/2001/04/xmldsig-more#sha384) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA384)
  + ### SHA512

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA512

    The [SHA512](http://www.w3.org/2001/04/xmlenc#sha512) digest method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA512)
  + ### RIPEMD160

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RIPEMD160

    The [RIPEMD-160](http://www.w3.org/2001/04/xmlenc#ripemd160) digest method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.RIPEMD160)
  + ### SHA3\_224

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA3\_224

    The [SHA3-224](http://www.w3.org/2007/05/xmldsig-more#sha3-224) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA3_224)
  + ### SHA3\_256

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA3\_256

    The [SHA3-256](http://www.w3.org/2007/05/xmldsig-more#sha3-256) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA3_256)
  + ### SHA3\_384

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA3\_384

    The [SHA3-384](http://www.w3.org/2007/05/xmldsig-more#sha3-384) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA3_384)
  + ### SHA3\_512

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SHA3\_512

    The [SHA3-512](http://www.w3.org/2007/05/xmldsig-more#sha3-512) digest method algorithm URI.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.DigestMethod.SHA3_512)
* ## Method Details

  + ### getParameterSpec

    [AlgorithmParameterSpec](../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the algorithm-specific input parameters associated with this
    `DigestMethod`.

    The returned parameters can be typecast to a [`DigestMethodParameterSpec`](spec/DigestMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") object.

    Specified by:
    :   `getParameterSpec` in interface `AlgorithmMethod`

    Returns:
    :   the algorithm-specific parameters (may be `null` if
        not specified)