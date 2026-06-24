Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface XMLStructure

All Known Subinterfaces:
:   `CanonicalizationMethod`, `DigestMethod`, `KeyInfo`, `KeyName`, `KeyValue`, `Manifest`, `PGPData`, `Reference`, `RetrievalMethod`, `SignatureMethod`, `SignatureProperties`, `SignatureProperty`, `SignedInfo`, `Transform`, `X509Data`, `X509IssuerSerial`, `XMLObject`, `XMLSignature`, `XMLSignature.SignatureValue`

All Known Implementing Classes:
:   `DOMStructure`, `TransformService`

---

public interface XMLStructure

A representation of an XML structure from any namespace. The purpose of
this interface is to group (and provide type safety for) all
representations of XML structures.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isFeatureSupported(String feature)`

  Indicates whether a specified feature is supported.

* ## Method Details

  + ### isFeatureSupported

    boolean isFeatureSupported([String](../../../../java.base/java/lang/String.md "class in java.lang") feature)

    Indicates whether a specified feature is supported.

    Parameters:
    :   `feature` - the feature name (as an absolute URI)

    Returns:
    :   `true` if the specified feature is supported,
        `false` otherwise

    Throws:
    :   `NullPointerException` - if `feature` is `null`