Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface CanonicalizationMethod

All Superinterfaces:
:   `AlgorithmMethod`, `Transform`, `XMLStructure`

---

public interface CanonicalizationMethod
extends [Transform](Transform.md "interface in javax.xml.crypto.dsig")

A representation of the XML `CanonicalizationMethod`
element as defined in the
[W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/). The XML
Schema Definition is defined as:

```
   <element name="CanonicalizationMethod" type="ds:CanonicalizationMethodType"/>
     <complexType name="CanonicalizationMethodType" mixed="true">
       <sequence>
         <any namespace="##any" minOccurs="0" maxOccurs="unbounded"/>
           <!-- (0,unbounded) elements from (1,1) namespace -->
       </sequence>
       <attribute name="Algorithm" type="anyURI" use="required"/>
     </complexType>
```

A `CanonicalizationMethod` instance may be created by invoking
the [`newCanonicalizationMethod`](XMLSignatureFactory.md#newCanonicalizationMethod(java.lang.String,javax.xml.crypto.dsig.spec.C14NMethodParameterSpec)) method of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newCanonicalizationMethod(String, C14NMethodParameterSpec)`](XMLSignatureFactory.md#newCanonicalizationMethod(java.lang.String,javax.xml.crypto.dsig.spec.C14NMethodParameterSpec))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `EXCLUSIVE`

  The [Exclusive
  Canonical XML (without comments)](http://www.w3.org/2001/10/xml-exc-c14n#) canonicalization method algorithm
  URI.

  `static final String`

  `EXCLUSIVE_WITH_COMMENTS`

  The [Exclusive Canonical XML with comments](http://www.w3.org/2001/10/xml-exc-c14n#WithComments) canonicalization method
  algorithm URI.

  `static final String`

  `INCLUSIVE`

  The [Canonical
  XML (without comments)](http://www.w3.org/TR/2001/REC-xml-c14n-20010315) canonicalization method algorithm URI.

  `static final String`

  `INCLUSIVE_11`

  The [Canonical XML 1.1
  (without comments)](https://www.w3.org/TR/xml-c14n11/) canonicalization method algorithm URI.

  `static final String`

  `INCLUSIVE_11_WITH_COMMENTS`

  The [Canonical XML 1.1 with comments](https://www.w3.org/TR/xml-c14n11/#WithComments) canonicalization method algorithm
  URI.

  `static final String`

  `INCLUSIVE_WITH_COMMENTS`

  The
  [Canonical XML with comments](http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments) canonicalization method algorithm URI.

  ### Fields inherited from interface javax.xml.crypto.dsig.[Transform](Transform.md "interface in javax.xml.crypto.dsig")

  `BASE64, ENVELOPED, XPATH, XPATH2, XSLT`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the algorithm-specific input parameters associated with this
  `CanonicalizationMethod`.

  ### Methods inherited from interface javax.xml.crypto.[AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

  `getAlgorithm`

  ### Methods inherited from interface javax.xml.crypto.dsig.[Transform](Transform.md "interface in javax.xml.crypto.dsig")

  `transform, transform`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### INCLUSIVE

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INCLUSIVE

    The [Canonical
    XML (without comments)](http://www.w3.org/TR/2001/REC-xml-c14n-20010315) canonicalization method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.INCLUSIVE)
  + ### INCLUSIVE\_WITH\_COMMENTS

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INCLUSIVE\_WITH\_COMMENTS

    The
    [Canonical XML with comments](http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments) canonicalization method algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.INCLUSIVE_WITH_COMMENTS)
  + ### EXCLUSIVE

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") EXCLUSIVE

    The [Exclusive
    Canonical XML (without comments)](http://www.w3.org/2001/10/xml-exc-c14n#) canonicalization method algorithm
    URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.EXCLUSIVE)
  + ### EXCLUSIVE\_WITH\_COMMENTS

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") EXCLUSIVE\_WITH\_COMMENTS

    The [Exclusive Canonical XML with comments](http://www.w3.org/2001/10/xml-exc-c14n#WithComments) canonicalization method
    algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.EXCLUSIVE_WITH_COMMENTS)
  + ### INCLUSIVE\_11

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INCLUSIVE\_11

    The [Canonical XML 1.1
    (without comments)](https://www.w3.org/TR/xml-c14n11/) canonicalization method algorithm URI.

    Since:
    :   13

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.INCLUSIVE_11)
  + ### INCLUSIVE\_11\_WITH\_COMMENTS

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INCLUSIVE\_11\_WITH\_COMMENTS

    The [Canonical XML 1.1 with comments](https://www.w3.org/TR/xml-c14n11/#WithComments) canonicalization method algorithm
    URI.

    Since:
    :   13

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.CanonicalizationMethod.INCLUSIVE_11_WITH_COMMENTS)
* ## Method Details

  + ### getParameterSpec

    [AlgorithmParameterSpec](../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the algorithm-specific input parameters associated with this
    `CanonicalizationMethod`.

    The returned parameters can be typecast to a
    [`C14NMethodParameterSpec`](spec/C14NMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") object.

    Specified by:
    :   `getParameterSpec` in interface `AlgorithmMethod`

    Specified by:
    :   `getParameterSpec` in interface `Transform`

    Returns:
    :   the algorithm-specific input parameters (may be
        `null` if not specified)