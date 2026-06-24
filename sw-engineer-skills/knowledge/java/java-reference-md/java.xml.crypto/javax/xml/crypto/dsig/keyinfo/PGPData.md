Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface PGPData

All Superinterfaces:
:   `XMLStructure`

---

public interface PGPData
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `PGPData` element as defined in
the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/). A
`PGPData` object is used to convey information related to
PGP public key pairs and signatures on such keys. The XML Schema Definition
is defined as:

```
    <element name="PGPData" type="ds:PGPDataType"/>
    <complexType name="PGPDataType">
      <choice>
        <sequence>
          <element name="PGPKeyID" type="base64Binary"/>
          <element name="PGPKeyPacket" type="base64Binary" minOccurs="0"/>
          <any namespace="##other" processContents="lax" minOccurs="0"
           maxOccurs="unbounded"/>
        </sequence>
        <sequence>
          <element name="PGPKeyPacket" type="base64Binary"/>
          <any namespace="##other" processContents="lax" minOccurs="0"
           maxOccurs="unbounded"/>
        </sequence>
      </choice>
    </complexType>
```

A `PGPData` instance may be created by invoking one of the
[`newPGPData`](KeyInfoFactory.md#newPGPData(byte%5B%5D)) methods of the [`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it
`byte` arrays representing the contents of the PGP public key
identifier and/or PGP key material packet, and an optional list of
elements from an external namespace.

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newPGPData(byte[])`](KeyInfoFactory.md#newPGPData(byte%5B%5D))
    * [`KeyInfoFactory.newPGPData(byte[], byte[], List)`](KeyInfoFactory.md#newPGPData(byte%5B%5D,byte%5B%5D,java.util.List))
    * [`KeyInfoFactory.newPGPData(byte[], List)`](KeyInfoFactory.md#newPGPData(byte%5B%5D,java.util.List))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `TYPE`

  URI identifying the PGPData KeyInfo type:
  http://www.w3.org/2000/09/xmldsig#PGPData.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<XMLStructure>`

  `getExternalElements()`

  Returns an [`unmodifiable list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List))
  of [`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto")s representing elements from an external
  namespace.

  `byte[]`

  `getKeyId()`

  Returns the PGP public key identifier of this `PGPData` as
  defined in [RFC 2440](http://www.ietf.org/rfc/rfc2440.txt),
  section 11.2.

  `byte[]`

  `getKeyPacket()`

  Returns the PGP key material packet of this `PGPData` as
  defined in [RFC 2440](http://www.ietf.org/rfc/rfc2440.txt),
  section 5.5.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") TYPE

    URI identifying the PGPData KeyInfo type:
    http://www.w3.org/2000/09/xmldsig#PGPData. This can be specified as the
    value of the `type` parameter of the [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo")
    class to describe a remote `PGPData` structure.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.PGPData.TYPE)
* ## Method Details

  + ### getKeyId

    byte[] getKeyId()

    Returns the PGP public key identifier of this `PGPData` as
    defined in [RFC 2440](http://www.ietf.org/rfc/rfc2440.txt),
    section 11.2.

    Returns:
    :   the PGP public key identifier (may be `null` if
        not specified). Each invocation of this method returns a new clone
        to protect against subsequent modification.
  + ### getKeyPacket

    byte[] getKeyPacket()

    Returns the PGP key material packet of this `PGPData` as
    defined in [RFC 2440](http://www.ietf.org/rfc/rfc2440.txt),
    section 5.5.

    Returns:
    :   the PGP key material packet (may be `null` if not
        specified). Each invocation of this method returns a new clone to
        protect against subsequent modification.
  + ### getExternalElements

    [List](../../../../../../java.base/java/util/List.md "interface in java.util")<[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")> getExternalElements()

    Returns an [`unmodifiable list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List))
    of [`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto")s representing elements from an external
    namespace.

    Returns:
    :   an unmodifiable list of `XMLStructure`s (may be
        empty, but never `null`)