Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface X509Data

All Superinterfaces:
:   `XMLStructure`

---

public interface X509Data
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `X509Data` element as defined in
the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/). An
`X509Data` object contains one or more identifiers of keys
or X.509 certificates (or certificates' identifiers or a revocation list).
The XML Schema Definition is defined as:

```
    <element name="X509Data" type="ds:X509DataType"/>
    <complexType name="X509DataType">
        <sequence maxOccurs="unbounded">
          <choice>
            <element name="X509IssuerSerial" type="ds:X509IssuerSerialType"/>
            <element name="X509SKI" type="base64Binary"/>
            <element name="X509SubjectName" type="string"/>
            <element name="X509Certificate" type="base64Binary"/>
            <element name="X509CRL" type="base64Binary"/>
            <any namespace="##other" processContents="lax"/>
          </choice>
        </sequence>
    </complexType>

    <complexType name="X509IssuerSerialType">
      <sequence>
        <element name="X509IssuerName" type="string"/>
        <element name="X509SerialNumber" type="integer"/>
      </sequence>
    </complexType>
```

An `X509Data` instance may be created by invoking the
[`newX509Data`](KeyInfoFactory.md#newX509Data(java.util.List)) methods of the
[`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class and passing it a list of one or more
[`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto")s representing X.509 content; for example:

```
   KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
   X509Data x509Data = factory.newX509Data
       (Collections.singletonList("cn=Alice"));
```

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newX509Data(List)`](KeyInfoFactory.md#newX509Data(java.util.List))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `RAW_X509_CERTIFICATE_TYPE`

  URI identifying the binary (ASN.1 DER) X.509 Certificate KeyInfo type:
  http://www.w3.org/2000/09/xmldsig#rawX509Certificate.

  `static final String`

  `TYPE`

  URI identifying the X509Data KeyInfo type:
  http://www.w3.org/2000/09/xmldsig#X509Data.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<?>`

  `getContent()`

  Returns an [`unmodifiable
  list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of the content in this `X509Data`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") TYPE

    URI identifying the X509Data KeyInfo type:
    http://www.w3.org/2000/09/xmldsig#X509Data. This can be specified as
    the value of the `type` parameter of the
    [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") class to describe a remote
    `X509Data` structure.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.X509Data.TYPE)
  + ### RAW\_X509\_CERTIFICATE\_TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") RAW\_X509\_CERTIFICATE\_TYPE

    URI identifying the binary (ASN.1 DER) X.509 Certificate KeyInfo type:
    http://www.w3.org/2000/09/xmldsig#rawX509Certificate. This can be
    specified as the value of the `type` parameter of the
    [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") class to describe a remote X509 Certificate.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.X509Data.RAW_X509_CERTIFICATE_TYPE)
* ## Method Details

  + ### getContent

    [List](../../../../../../java.base/java/util/List.md "interface in java.util")<?> getContent()

    Returns an [`unmodifiable
    list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of the content in this `X509Data`. Valid types are
    [`String`](../../../../../../java.base/java/lang/String.md "class in java.lang") (subject names), `byte[]` (subject key ids),
    [`X509Certificate`](../../../../../../java.base/java/security/cert/X509Certificate.md "class in java.security.cert"), [`X509CRL`](../../../../../../java.base/java/security/cert/X509CRL.md "class in java.security.cert"),
    or [`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto") ([`X509IssuerSerial`](X509IssuerSerial.md "interface in javax.xml.crypto.dsig.keyinfo")
    objects or elements from an external namespace).

    Returns:
    :   an unmodifiable list of the content in this `X509Data`
        (never `null` or empty)