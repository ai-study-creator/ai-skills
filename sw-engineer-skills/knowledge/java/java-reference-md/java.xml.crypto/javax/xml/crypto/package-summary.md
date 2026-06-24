Module [java.xml.crypto](../../../module-summary.md)

# Package javax.xml.crypto

---

package javax.xml.crypto

Common classes for XML cryptography. This package includes common classes
that are used to perform XML cryptographic operations, such as generating
an XML signature or encrypting XML data.

## Package Specification

* [XML-Signature Syntax and Processing: W3C Recommendation](http://www.w3.org/TR/xmldsig-core/)* [RFC 3275: XML-Signature Syntax and Processing](http://www.ietf.org/rfc/rfc3275.txt)

Since:
:   1.6

* Related Packages

  Module

  Package

  Description

  [java.xml](../../../../java.xml/module-summary.md)

  [javax.xml](../../../../java.xml/javax/xml/package-summary.md)

  Defines constants for XML processing.

  [java.xml.crypto](../../../module-summary.md)

  [javax.xml.crypto.dom](dom/package-summary.md)

  DOM-specific classes for the [`javax.xml.crypto`](package-summary.md) package.

  [java.xml.crypto](../../../module-summary.md)

  [javax.xml.crypto.dsig](dsig/package-summary.md)

  Classes for generating and validating XML digital
  signatures.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AlgorithmMethod](AlgorithmMethod.md "interface in javax.xml.crypto")

  An abstract representation of an algorithm defined in the XML Security
  specifications.

  [Data](Data.md "interface in javax.xml.crypto")

  An abstract representation of the result of dereferencing a
  [`URIReference`](URIReference.md "interface in javax.xml.crypto") or the input/output of subsequent [`Transform`](dsig/Transform.md "interface in javax.xml.crypto.dsig")s.

  [KeySelector](KeySelector.md "class in javax.xml.crypto")

  A selector that finds and returns a key using the data contained in a
  [`KeyInfo`](dsig/keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") object.

  [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto")

  The purpose of the key that is to be selected.

  [KeySelectorException](KeySelectorException.md "class in javax.xml.crypto")

  Indicates an exceptional condition thrown by a [`KeySelector`](KeySelector.md "class in javax.xml.crypto").

  [KeySelectorResult](KeySelectorResult.md "interface in javax.xml.crypto")

  The result returned by the [`KeySelector.select`](KeySelector.md#select(javax.xml.crypto.dsig.keyinfo.KeyInfo,javax.xml.crypto.KeySelector.Purpose,javax.xml.crypto.AlgorithmMethod,javax.xml.crypto.XMLCryptoContext))
  method.

  [MarshalException](MarshalException.md "class in javax.xml.crypto")

  Indicates an exceptional condition that occurred during the XML
  marshalling or unmarshalling process.

  [NodeSetData](NodeSetData.md "interface in javax.xml.crypto")<T>

  An abstract representation of a `Data` type containing a
  node-set.

  [NoSuchMechanismException](NoSuchMechanismException.md "class in javax.xml.crypto")

  This exception is thrown when a particular XML mechanism is requested but
  is not available in the environment.

  [OctetStreamData](OctetStreamData.md "class in javax.xml.crypto")

  A representation of a `Data` type containing an octet stream.

  [URIDereferencer](URIDereferencer.md "interface in javax.xml.crypto")

  A dereferencer of [`URIReference`](URIReference.md "interface in javax.xml.crypto")s.

  [URIReference](URIReference.md "interface in javax.xml.crypto")

  Identifies a data object via a URI-Reference, as specified by
  [RFC 2396](http://www.ietf.org/rfc/rfc2396.txt).

  [URIReferenceException](URIReferenceException.md "class in javax.xml.crypto")

  Indicates an exceptional condition thrown while dereferencing a
  [`URIReference`](URIReference.md "interface in javax.xml.crypto").

  [XMLCryptoContext](XMLCryptoContext.md "interface in javax.xml.crypto")

  Contains common context information for XML cryptographic operations.

  [XMLStructure](XMLStructure.md "interface in javax.xml.crypto")

  A representation of an XML structure from any namespace.