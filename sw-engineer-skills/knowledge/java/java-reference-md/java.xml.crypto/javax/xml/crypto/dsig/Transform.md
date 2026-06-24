Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface Transform

All Superinterfaces:
:   `AlgorithmMethod`, `XMLStructure`

All Known Subinterfaces:
:   `CanonicalizationMethod`

All Known Implementing Classes:
:   `TransformService`

---

public interface Transform
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto"), [AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

A representation of the XML `Transform` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
 <element name="Transform" type="ds:TransformType"/>
   <complexType name="TransformType" mixed="true">
     <choice minOccurs="0" maxOccurs="unbounded">
       <any namespace="##other" processContents="lax"/>
       <!-- (1,1) elements from (0,unbounded) namespaces -->
       <element name="XPath" type="string"/>
     </choice>
     <attribute name="Algorithm" type="anyURI" use="required"/>
   </complexType>
```

A `Transform` instance may be created by invoking the
[`newTransform`](XMLSignatureFactory.md#newTransform(java.lang.String,javax.xml.crypto.dsig.spec.TransformParameterSpec)) method
of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newTransform(String, TransformParameterSpec)`](XMLSignatureFactory.md#newTransform(java.lang.String,javax.xml.crypto.dsig.spec.TransformParameterSpec))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `BASE64`

  The [Base64](http://www.w3.org/2000/09/xmldsig#base64)
  transform algorithm URI.

  `static final String`

  `ENVELOPED`

  The [Enveloped Signature](http://www.w3.org/2000/09/xmldsig#enveloped-signature) transform algorithm URI.

  `static final String`

  `XPATH`

  The [XPath](http://www.w3.org/TR/1999/REC-xpath-19991116)
  transform algorithm URI.

  `static final String`

  `XPATH2`

  The [XPath Filter 2](http://www.w3.org/2002/06/xmldsig-filter2) transform algorithm URI.

  `static final String`

  `XSLT`

  The [XSLT](http://www.w3.org/TR/1999/REC-xslt-19991116)
  transform algorithm URI.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the algorithm-specific input parameters associated with this
  `Transform`.

  `Data`

  `transform(Data data,
  XMLCryptoContext context)`

  Transforms the specified data using the underlying transform algorithm.

  `Data`

  `transform(Data data,
  XMLCryptoContext context,
  OutputStream os)`

  Transforms the specified data using the underlying transform algorithm.

  ### Methods inherited from interface javax.xml.crypto.[AlgorithmMethod](../AlgorithmMethod.md "interface in javax.xml.crypto")

  `getAlgorithm`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### BASE64

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") BASE64

    The [Base64](http://www.w3.org/2000/09/xmldsig#base64)
    transform algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Transform.BASE64)
  + ### ENVELOPED

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ENVELOPED

    The [Enveloped Signature](http://www.w3.org/2000/09/xmldsig#enveloped-signature) transform algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Transform.ENVELOPED)
  + ### XPATH

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") XPATH

    The [XPath](http://www.w3.org/TR/1999/REC-xpath-19991116)
    transform algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Transform.XPATH)
  + ### XPATH2

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") XPATH2

    The [XPath Filter 2](http://www.w3.org/2002/06/xmldsig-filter2) transform algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Transform.XPATH2)
  + ### XSLT

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") XSLT

    The [XSLT](http://www.w3.org/TR/1999/REC-xslt-19991116)
    transform algorithm URI.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Transform.XSLT)
* ## Method Details

  + ### getParameterSpec

    [AlgorithmParameterSpec](../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the algorithm-specific input parameters associated with this
    `Transform`.

    The returned parameters can be typecast to a
    [`TransformParameterSpec`](spec/TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec") object.

    Specified by:
    :   `getParameterSpec` in interface `AlgorithmMethod`

    Returns:
    :   the algorithm-specific input parameters (may be `null`
        if not specified)
  + ### transform

    [Data](../Data.md "interface in javax.xml.crypto") transform([Data](../Data.md "interface in javax.xml.crypto") data,
    [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [TransformException](TransformException.md "class in javax.xml.crypto.dsig")

    Transforms the specified data using the underlying transform algorithm.

    Parameters:
    :   `data` - the data to be transformed
    :   `context` - the `XMLCryptoContext` containing
        additional context (may be `null` if not applicable)

    Returns:
    :   the transformed data

    Throws:
    :   `NullPointerException` - if `data` is `null`
    :   `TransformException` - if an error occurs while executing the
        transform
  + ### transform

    [Data](../Data.md "interface in javax.xml.crypto") transform([Data](../Data.md "interface in javax.xml.crypto") data,
    [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto") context,
    [OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") os)
    throws [TransformException](TransformException.md "class in javax.xml.crypto.dsig")

    Transforms the specified data using the underlying transform algorithm.
    If the output of this transform is an `OctetStreamData`, then
    this method returns `null` and the bytes are written to the
    specified `OutputStream`. Otherwise, the
    `OutputStream` is ignored and the method behaves as if
    [`transform(Data, XMLCryptoContext)`](#transform(javax.xml.crypto.Data,javax.xml.crypto.XMLCryptoContext)) were invoked.

    Parameters:
    :   `data` - the data to be transformed
    :   `context` - the `XMLCryptoContext` containing
        additional context (may be `null` if not applicable)
    :   `os` - the `OutputStream` that should be used to write
        the transformed data to

    Returns:
    :   the transformed data (or `null` if the data was
        written to the `OutputStream` parameter)

    Throws:
    :   `NullPointerException` - if `data` or `os`
        is `null`
    :   `TransformException` - if an error occurs while executing the
        transform