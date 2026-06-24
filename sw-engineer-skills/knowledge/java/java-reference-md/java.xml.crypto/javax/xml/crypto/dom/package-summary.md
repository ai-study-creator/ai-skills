Module [java.xml.crypto](../../../../module-summary.md)

# Package javax.xml.crypto.dom

---

package javax.xml.crypto.dom

DOM-specific classes for the [`javax.xml.crypto`](../package-summary.md) package.
Only users who are using DOM-based XML cryptographic implementations (ex:
[`XMLSignatureFactory`](../dsig/XMLSignatureFactory.md "class in javax.xml.crypto.dsig") or
[`KeyInfoFactory`](../dsig/keyinfo/KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo"))
should need to make direct use of this package.

## Package Specification

* [XML-Signature Syntax and Processing: W3C Recommendation](http://www.w3.org/TR/xmldsig-core/)* [RFC 3275: XML-Signature Syntax and Processing](http://www.ietf.org/rfc/rfc3275.txt)

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.crypto](../package-summary.md)

  Common classes for XML cryptography.

  [javax.xml.crypto.dsig](../dsig/package-summary.md)

  Classes for generating and validating XML digital
  signatures.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [DOMCryptoContext](DOMCryptoContext.md "class in javax.xml.crypto.dom")

  This class provides a DOM-specific implementation of the
  [`XMLCryptoContext`](../XMLCryptoContext.md "interface in javax.xml.crypto") interface.

  [DOMStructure](DOMStructure.md "class in javax.xml.crypto.dom")

  A DOM-specific [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto").

  [DOMURIReference](DOMURIReference.md "interface in javax.xml.crypto.dom")

  A DOM-specific [`URIReference`](../URIReference.md "interface in javax.xml.crypto").