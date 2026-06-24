Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface SignedInfo

All Superinterfaces:
:   `XMLStructure`

---

public interface SignedInfo
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

An representation of the XML `SignedInfo` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
 <element name="SignedInfo" type="ds:SignedInfoType"/>
 <complexType name="SignedInfoType">
   <sequence>
     <element ref="ds:CanonicalizationMethod"/>
     <element ref="ds:SignatureMethod"/>
     <element ref="ds:Reference" maxOccurs="unbounded"/>
   </sequence>
   <attribute name="Id" type="ID" use="optional"/>
 </complexType>
```

A `SignedInfo` instance may be created by invoking one of the
[`newSignedInfo`](XMLSignatureFactory.md#newSignedInfo(javax.xml.crypto.dsig.CanonicalizationMethod,javax.xml.crypto.dsig.SignatureMethod,java.util.List)) methods of the
[`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newSignedInfo(CanonicalizationMethod, SignatureMethod, List)`](XMLSignatureFactory.md#newSignedInfo(javax.xml.crypto.dsig.CanonicalizationMethod,javax.xml.crypto.dsig.SignatureMethod,java.util.List))
    * [`XMLSignatureFactory.newSignedInfo(CanonicalizationMethod, SignatureMethod, List, String)`](XMLSignatureFactory.md#newSignedInfo(javax.xml.crypto.dsig.CanonicalizationMethod,javax.xml.crypto.dsig.SignatureMethod,java.util.List,java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `CanonicalizationMethod`

  `getCanonicalizationMethod()`

  Returns the canonicalization method of this `SignedInfo`.

  `InputStream`

  `getCanonicalizedData()`

  Returns the canonicalized signed info bytes after a signing or
  validation operation.

  `String`

  `getId()`

  Returns the optional `Id` attribute of this
  `SignedInfo`.

  `List<Reference>`

  `getReferences()`

  Returns an [`unmodifiable list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s.

  `SignatureMethod`

  `getSignatureMethod()`

  Returns the signature method of this `SignedInfo`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getCanonicalizationMethod

    [CanonicalizationMethod](CanonicalizationMethod.md "interface in javax.xml.crypto.dsig") getCanonicalizationMethod()

    Returns the canonicalization method of this `SignedInfo`.

    Returns:
    :   the canonicalization method
  + ### getSignatureMethod

    [SignatureMethod](SignatureMethod.md "interface in javax.xml.crypto.dsig") getSignatureMethod()

    Returns the signature method of this `SignedInfo`.

    Returns:
    :   the signature method
  + ### getReferences

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[Reference](Reference.md "interface in javax.xml.crypto.dsig")> getReferences()

    Returns an [`unmodifiable list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s.

    Returns:
    :   an unmodifiable list of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s
  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the optional `Id` attribute of this
    `SignedInfo`.

    Returns:
    :   the id (may be `null` if not specified)
  + ### getCanonicalizedData

    [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") getCanonicalizedData()

    Returns the canonicalized signed info bytes after a signing or
    validation operation. This method is useful for debugging.

    Returns:
    :   an `InputStream` containing the canonicalized bytes,
        or `null` if this `SignedInfo` has not been
        signed or validated yet