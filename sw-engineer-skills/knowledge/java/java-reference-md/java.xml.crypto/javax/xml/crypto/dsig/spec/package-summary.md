Module [java.xml.crypto](../../../../../module-summary.md)

# Package javax.xml.crypto.dsig.spec

---

package javax.xml.crypto.dsig.spec

Parameter classes for XML digital signatures. This package
contains interfaces and classes representing input parameters for the
digest, signature, transform, or canonicalization algorithms used in
the processing of XML signatures.

## Package Specification

* [XML-Signature Syntax and Processing: W3C Recommendation](http://www.w3.org/TR/xmldsig-core/)* [RFC 3275: XML-Signature Syntax and Processing](http://www.ietf.org/rfc/rfc3275.txt)* [Exclusive XML Canonicalization algorithm: W3C Recommendation](http://www.w3.org/TR/xml-exc-c14n/)* [XPath Filter 2.0 Transform Algorithm: W3C Recommendation](http://www.w3.org/TR/xmldsig-filter2/)

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.crypto.dsig](../package-summary.md)

  Classes for generating and validating XML digital
  signatures.

  [javax.xml.crypto.dsig.dom](../dom/package-summary.md)

  DOM-specific classes for the [`javax.xml.crypto.dsig`](../package-summary.md) package.

  [javax.xml.crypto.dsig.keyinfo](../keyinfo/package-summary.md)

  Classes for parsing and processing [`KeyInfo`](../keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") elements and structures.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [C14NMethodParameterSpec](C14NMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

  A specification of algorithm parameters for a [`CanonicalizationMethod`](../CanonicalizationMethod.md "interface in javax.xml.crypto.dsig")
  Algorithm.

  [DigestMethodParameterSpec](DigestMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

  A specification of algorithm parameters for a [`DigestMethod`](../DigestMethod.md "interface in javax.xml.crypto.dsig")
  algorithm.

  [ExcC14NParameterSpec](ExcC14NParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the W3C Recommendation:
  [Exclusive XML Canonicalization (C14N) algorithm](http://www.w3.org/TR/xml-exc-c14n/).

  [HMACParameterSpec](HMACParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the [XML Signature HMAC Algorithm](http://www.w3.org/TR/xmldsig-core/#sec-MACs).

  [RSAPSSParameterSpec](RSAPSSParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the [XML Signature RSASSA-PSS Algorithm](http://www.w3.org/2007/05/xmldsig-more#rsa-pss).

  [SignatureMethodParameterSpec](SignatureMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

  A specification of algorithm parameters for an XML [`SignatureMethod`](../SignatureMethod.md "interface in javax.xml.crypto.dsig")
  algorithm.

  [TransformParameterSpec](TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

  A specification of algorithm parameters for a [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")
  algorithm.

  [XPathFilter2ParameterSpec](XPathFilter2ParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the W3C Recommendation
  [XPath Filter 2.0 Transform Algorithm](http://www.w3.org/TR/xmldsig-filter2/).

  [XPathFilterParameterSpec](XPathFilterParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the [XPath Filtering Transform Algorithm](http://www.w3.org/TR/xmldsig-core/#sec-XPath).

  [XPathType](XPathType.md "class in javax.xml.crypto.dsig.spec")

  The XML Schema Definition of the `XPath` element as defined in the
  [W3C Recommendation for XML-Signature XPath Filter 2.0](http://www.w3.org/TR/xmldsig-filter2):

  [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec")

  Represents the filter set operation.

  [XSLTTransformParameterSpec](XSLTTransformParameterSpec.md "class in javax.xml.crypto.dsig.spec")

  Parameters for the [XSLT Transform Algorithm](http://www.w3.org/TR/1999/REC-xslt-19991116).