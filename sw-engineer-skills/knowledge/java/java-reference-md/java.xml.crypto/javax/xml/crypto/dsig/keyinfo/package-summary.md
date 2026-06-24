Module [java.xml.crypto](../../../../../module-summary.md)

# Package javax.xml.crypto.dsig.keyinfo

---

package javax.xml.crypto.dsig.keyinfo

Classes for parsing and processing [`KeyInfo`](KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") elements and structures.
`KeyInfo` is an optional element that enables the recipient(s) to
obtain the key needed to validate an [`XMLSignature`](../XMLSignature.md "interface in javax.xml.crypto.dsig"). `KeyInfo` may
contain keys, names, certificates and other public key management
information, such as in-band key distribution or key agreement data. This
package contains classes representing types defined in the W3C specification
for XML Signatures, such as
[`KeyName`](KeyName.md "interface in javax.xml.crypto.dsig.keyinfo"),
[`KeyValue`](KeyValue.md "interface in javax.xml.crypto.dsig.keyinfo"),
[`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo"),
[`X509Data`](X509Data.md "interface in javax.xml.crypto.dsig.keyinfo"),
[`X509IssuerSerial`](X509IssuerSerial.md "interface in javax.xml.crypto.dsig.keyinfo"), and
[`PGPData`](PGPData.md "interface in javax.xml.crypto.dsig.keyinfo").
[`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") is an
abstract factory that creates `KeyInfo` objects from scratch.

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

  [javax.xml.crypto.dsig.dom](../dom/package-summary.md)

  DOM-specific classes for the [`javax.xml.crypto.dsig`](../package-summary.md) package.

  [javax.xml.crypto.dsig.spec](../spec/package-summary.md)

  Parameter classes for XML digital signatures.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [KeyInfo](KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `KeyInfo` element as defined in
  the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [KeyInfoFactory](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo")

  A factory for creating [`KeyInfo`](KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") objects from scratch or for
  unmarshalling a `KeyInfo` object from a corresponding XML
  representation.

  [KeyName](KeyName.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `KeyName` element as
  defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [KeyValue](KeyValue.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `KeyValue` element as defined
  in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [PGPData](PGPData.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `PGPData` element as defined in
  the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [RetrievalMethod](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `RetrievalMethod` element as
  defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [X509Data](X509Data.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `X509Data` element as defined in
  the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).

  [X509IssuerSerial](X509IssuerSerial.md "interface in javax.xml.crypto.dsig.keyinfo")

  A representation of the XML `X509IssuerSerial` element as
  defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).