Module [java.xml.crypto](../../../../../module-summary.md)

# Package javax.xml.crypto.dsig.dom

---

package javax.xml.crypto.dsig.dom

DOM-specific classes for the [`javax.xml.crypto.dsig`](../package-summary.md) package.
Only users who are using a DOM-based [`XMLSignatureFactory`](../XMLSignatureFactory.md "class in javax.xml.crypto.dsig") or
[`KeyInfoFactory`](../keyinfo/KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo")
should need to make direct use of this package.

## Package Specification

* [XML-Signature Syntax and Processing: W3C Recommendation](http://www.w3.org/TR/xmldsig-core/)* [RFC 3275: XML-Signature Syntax and Processing](http://www.ietf.org/rfc/rfc3275.txt)

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.crypto.dsig](../package-summary.md)

  Classes for generating and validating XML digital
  signatures.

  [javax.xml.crypto.dsig.keyinfo](../keyinfo/package-summary.md)

  Classes for parsing and processing [`KeyInfo`](../keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") elements and structures.

  [javax.xml.crypto.dsig.spec](../spec/package-summary.md)

  Parameter classes for XML digital signatures.
* Classes

  Class

  Description

  [DOMSignContext](DOMSignContext.md "class in javax.xml.crypto.dsig.dom")

  A DOM-specific [`XMLSignContext`](../XMLSignContext.md "interface in javax.xml.crypto.dsig").

  [DOMValidateContext](DOMValidateContext.md "class in javax.xml.crypto.dsig.dom")

  A DOM-specific [`XMLValidateContext`](../XMLValidateContext.md "interface in javax.xml.crypto.dsig").