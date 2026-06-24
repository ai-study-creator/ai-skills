Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface XMLSignature.SignatureValue

All Superinterfaces:
:   `XMLStructure`

Enclosing interface:
:   `XMLSignature`

---

public static interface XMLSignature.SignatureValue
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `SignatureValue` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
   <element name="SignatureValue" type="ds:SignatureValueType"/>
     <complexType name="SignatureValueType">
       <simpleContent>
         <extension base="base64Binary">
           <attribute name="Id" type="ID" use="optional"/>
         </extension>
       </simpleContent>
     </complexType>
```

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getId()`

  Returns the optional `Id` attribute of this
  `SignatureValue`, which permits this element to be
  referenced from elsewhere.

  `byte[]`

  `getValue()`

  Returns the signature value of this `SignatureValue`.

  `boolean`

  `validate(XMLValidateContext validateContext)`

  Validates the signature value.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the optional `Id` attribute of this
    `SignatureValue`, which permits this element to be
    referenced from elsewhere.

    Returns:
    :   the `Id` attribute (may be `null` if
        not specified)
  + ### getValue

    byte[] getValue()

    Returns the signature value of this `SignatureValue`.

    Returns:
    :   the signature value (may be `null` if the
        `XMLSignature` has not been signed yet). Each
        invocation of this method returns a new clone of the array to
        prevent subsequent modification.
  + ### validate

    boolean validate([XMLValidateContext](XMLValidateContext.md "interface in javax.xml.crypto.dsig") validateContext)
    throws [XMLSignatureException](XMLSignatureException.md "class in javax.xml.crypto.dsig")

    Validates the signature value. This method performs a
    cryptographic validation of the signature calculated over the
    `SignedInfo` of the `XMLSignature`.

    This method only validates the signature the first
    time it is invoked. On subsequent invocations, it returns a cached
    result.

    Parameters:
    :   `validateContext` - the validating context

    Returns:
    :   `true` if the signature was
        validated successfully; `false` otherwise

    Throws:
    :   `NullPointerException` - if `validateContext` is
        `null`
    :   `XMLSignatureException` - if an unexpected exception occurs while
        validating the signature