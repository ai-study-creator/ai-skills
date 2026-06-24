Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class RSAPSSParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.RSAPSSParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `SignatureMethodParameterSpec`

---

public final class RSAPSSParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SignatureMethodParameterSpec](SignatureMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the [XML Signature RSASSA-PSS Algorithm](http://www.w3.org/2007/05/xmldsig-more#rsa-pss). The parameters are represented as a
[`PSSParameterSpec`](../../../../../../java.base/java/security/spec/PSSParameterSpec.md "class in java.security.spec") object.

The XML Schema Definition is defined as:

```
    <xs:element name="RSAPSSParams" type="pss:RSAPSSParamsType">
        <xs:annotation>
            <xs:documentation>
    Top level element that can be used in xs:any namespace="#other"
    wildcard of ds:SignatureMethod content.
            </xs:documentation>
        </xs:annotation>
    </xs:element>
    <xs:complexType name="RSAPSSParamsType">
        <xs:sequence>
            <xs:element ref="ds:DigestMethod" minOccurs="0"/>
            <xs:element name="MaskGenerationFunction"
               type="pss:MaskGenerationFunctionType" minOccurs="0"/>
            <xs:element name="SaltLength" type="xs:int"
               minOccurs="0"/>
            <xs:element name="TrailerField" type="xs:int"
               minOccurs="0"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="MaskGenerationFunctionType">
        <xs:sequence>
            <xs:element ref="ds:DigestMethod" minOccurs="0"/>
        </xs:sequence>
        <xs:attribute name="Algorithm" type="xs:anyURI"
           default="http://www.w3.org/2007/05/xmldsig-more#MGF1"/>
    </xs:complexType>
```

Since:
:   17

See Also:
:   * [`SignatureMethod.RSA_PSS`](../SignatureMethod.md#RSA_PSS)
    * [RFC 6931](https://www.ietf.org/rfc/rfc6931.txt)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAPSSParameterSpec(PSSParameterSpec spec)`

  Creates a new `RSAPSSParameterSpec` object with the specified
  [`PSSParameterSpec`](../../../../../../java.base/java/security/spec/PSSParameterSpec.md "class in java.security.spec") object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PSSParameterSpec`

  `getPSSParameterSpec()`

  Returns the `PSSParameterSpec` object inside.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RSAPSSParameterSpec

    public RSAPSSParameterSpec([PSSParameterSpec](../../../../../../java.base/java/security/spec/PSSParameterSpec.md "class in java.security.spec") spec)

    Creates a new `RSAPSSParameterSpec` object with the specified
    [`PSSParameterSpec`](../../../../../../java.base/java/security/spec/PSSParameterSpec.md "class in java.security.spec") object.

    Parameters:
    :   `spec` - the input `PSSParameterSpec` object

    Throws:
    :   `NullPointerException` - if `spec` is null
* ## Method Details

  + ### getPSSParameterSpec

    public [PSSParameterSpec](../../../../../../java.base/java/security/spec/PSSParameterSpec.md "class in java.security.spec") getPSSParameterSpec()

    Returns the `PSSParameterSpec` object inside.

    Returns:
    :   the `PSSParameterSpec` object inside