Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface XMLSignature

All Superinterfaces:
:   `XMLStructure`

---

public interface XMLSignature
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `Signature` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
This class contains methods for signing and validating XML signatures
with behavior as defined by the W3C specification. The XML Schema Definition
is defined as:

```
 <element name="Signature" type="ds:SignatureType"/>
 <complexType name="SignatureType">
    <sequence>
      <element ref="ds:SignedInfo"/>
      <element ref="ds:SignatureValue"/>
      <element ref="ds:KeyInfo" minOccurs="0"/>
      <element ref="ds:Object" minOccurs="0" maxOccurs="unbounded"/>
    </sequence>
    <attribute name="Id" type="ID" use="optional"/>
 </complexType>
```

An `XMLSignature` instance may be created by invoking one of the
[`newXMLSignature`](XMLSignatureFactory.md#newXMLSignature(javax.xml.crypto.dsig.SignedInfo,javax.xml.crypto.dsig.keyinfo.KeyInfo)) methods of the
[`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class.

If the contents of the underlying document containing the
`XMLSignature` are subsequently modified, the behavior is
undefined.

Note that this class is named `XMLSignature` rather than
`Signature` to avoid naming clashes with the existing
[`java.security.Signature`](../../../../../java.base/java/security/Signature.md "class in java.security") class.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newXMLSignature(SignedInfo, KeyInfo)`](XMLSignatureFactory.md#newXMLSignature(javax.xml.crypto.dsig.SignedInfo,javax.xml.crypto.dsig.keyinfo.KeyInfo))
    * [`XMLSignatureFactory.newXMLSignature(SignedInfo, KeyInfo, List, String, String)`](XMLSignatureFactory.md#newXMLSignature(javax.xml.crypto.dsig.SignedInfo,javax.xml.crypto.dsig.keyinfo.KeyInfo,java.util.List,java.lang.String,java.lang.String))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `XMLSignature.SignatureValue`

  A representation of the XML `SignatureValue` element as
  defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `XMLNS`

  The XML Namespace URI of the W3C Recommendation for XML-Signature
  Syntax and Processing.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getId()`

  Returns the optional Id of this `XMLSignature`.

  `KeyInfo`

  `getKeyInfo()`

  Returns the key info of this `XMLSignature`.

  `KeySelectorResult`

  `getKeySelectorResult()`

  Returns the result of the [`KeySelector`](../KeySelector.md "class in javax.xml.crypto"), if specified, after
  this `XMLSignature` has been signed or validated.

  `List<XMLObject>`

  `getObjects()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`XMLObject`](XMLObject.md "interface in javax.xml.crypto.dsig")s contained in this `XMLSignature`.

  `XMLSignature.SignatureValue`

  `getSignatureValue()`

  Returns the signature value of this `XMLSignature`.

  `SignedInfo`

  `getSignedInfo()`

  Returns the signed info of this `XMLSignature`.

  `void`

  `sign(XMLSignContext signContext)`

  Signs this `XMLSignature`.

  `boolean`

  `validate(XMLValidateContext validateContext)`

  Validates the signature according to the
  [core validation processing rules](http://www.w3.org/TR/xmldsig-core/#sec-CoreValidation).

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### XMLNS

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") XMLNS

    The XML Namespace URI of the W3C Recommendation for XML-Signature
    Syntax and Processing.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.XMLSignature.XMLNS)
* ## Method Details

  + ### validate

    boolean validate([XMLValidateContext](XMLValidateContext.md "interface in javax.xml.crypto.dsig") validateContext)
    throws [XMLSignatureException](XMLSignatureException.md "class in javax.xml.crypto.dsig")

    Validates the signature according to the
    [core validation processing rules](http://www.w3.org/TR/xmldsig-core/#sec-CoreValidation). This method validates the
    signature using the existing state, it does not unmarshal and
    reinitialize the contents of the `XMLSignature` using the
    location information specified in the context.

    This method only validates the signature the first time it is
    invoked. On subsequent invocations, it returns a cached result.

    Parameters:
    :   `validateContext` - the validating context

    Returns:
    :   `true` if the signature passed core validation,
        otherwise `false`

    Throws:
    :   `ClassCastException` - if the type of `validateContext`
        is not compatible with this `XMLSignature`
    :   `NullPointerException` - if `validateContext` is
        `null`
    :   `XMLSignatureException` - if an unexpected error occurs during
        validation that prevented the validation operation from completing
  + ### getKeyInfo

    [KeyInfo](keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") getKeyInfo()

    Returns the key info of this `XMLSignature`.

    Returns:
    :   the key info (may be `null` if not specified)
  + ### getSignedInfo

    [SignedInfo](SignedInfo.md "interface in javax.xml.crypto.dsig") getSignedInfo()

    Returns the signed info of this `XMLSignature`.

    Returns:
    :   the signed info (never `null`)
  + ### getObjects

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[XMLObject](XMLObject.md "interface in javax.xml.crypto.dsig")> getObjects()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`XMLObject`](XMLObject.md "interface in javax.xml.crypto.dsig")s contained in this `XMLSignature`.

    Returns:
    :   an unmodifiable list of `XMLObject`s (may be empty
        but never `null`)
  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the optional Id of this `XMLSignature`.

    Returns:
    :   the Id (may be `null` if not specified)
  + ### getSignatureValue

    [XMLSignature.SignatureValue](XMLSignature.SignatureValue.md "interface in javax.xml.crypto.dsig") getSignatureValue()

    Returns the signature value of this `XMLSignature`.

    Returns:
    :   the signature value
  + ### sign

    void sign([XMLSignContext](XMLSignContext.md "interface in javax.xml.crypto.dsig") signContext)
    throws [MarshalException](../MarshalException.md "class in javax.xml.crypto"),
    [XMLSignatureException](XMLSignatureException.md "class in javax.xml.crypto.dsig")

    Signs this `XMLSignature`.

    If this method throws an exception, this `XMLSignature` and
    the `signContext` parameter will be left in the state that
    it was in prior to the invocation.

    Parameters:
    :   `signContext` - the signing context

    Throws:
    :   `ClassCastException` - if the type of `signContext` is
        not compatible with this `XMLSignature`
    :   `NullPointerException` - if `signContext` is
        `null`
    :   `MarshalException` - if an exception occurs while marshalling
    :   `XMLSignatureException` - if an unexpected exception occurs while
        generating the signature
  + ### getKeySelectorResult

    [KeySelectorResult](../KeySelectorResult.md "interface in javax.xml.crypto") getKeySelectorResult()

    Returns the result of the [`KeySelector`](../KeySelector.md "class in javax.xml.crypto"), if specified, after
    this `XMLSignature` has been signed or validated.

    Returns:
    :   the key selector result, or `null` if a key
        selector has not been specified or this `XMLSignature`
        has not been signed or validated