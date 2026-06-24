Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface Reference

All Superinterfaces:
:   `URIReference`, `XMLStructure`

---

public interface Reference
extends [URIReference](../URIReference.md "interface in javax.xml.crypto"), [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the `Reference` element as defined in the
[W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML schema is defined as:

```
 <element name="Reference" type="ds:ReferenceType"/>
 <complexType name="ReferenceType">
   <sequence>
     <element ref="ds:Transforms" minOccurs="0"/>
     <element ref="ds:DigestMethod"/>
     <element ref="ds:DigestValue"/>
   </sequence>
   <attribute name="Id" type="ID" use="optional"/>
   <attribute name="URI" type="anyURI" use="optional"/>
   <attribute name="Type" type="anyURI" use="optional"/>
 </complexType>

 <element name="DigestValue" type="ds:DigestValueType"/>
 <simpleType name="DigestValueType">
   <restriction base="base64Binary"/>
 </simpleType>
```

A `Reference` instance may be created by invoking one of the
[`newReference`](XMLSignatureFactory.md#newReference(java.lang.String,javax.xml.crypto.dsig.DigestMethod)) methods of the
[`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class; for example:

```
   XMLSignatureFactory factory = XMLSignatureFactory.getInstance("DOM");
   Reference ref = factory.newReference
     ("http://www.ietf.org/rfc/rfc3275.txt",
      factory.newDigestMethod(DigestMethod.SHA1, null));
```

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newReference(String, DigestMethod)`](XMLSignatureFactory.md#newReference(java.lang.String,javax.xml.crypto.dsig.DigestMethod))
    * [`XMLSignatureFactory.newReference(String, DigestMethod, List, String, String)`](XMLSignatureFactory.md#newReference(java.lang.String,javax.xml.crypto.dsig.DigestMethod,java.util.List,java.lang.String,java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getCalculatedDigestValue()`

  Returns the calculated digest value of this `Reference`
  after a validation operation.

  `Data`

  `getDereferencedData()`

  Returns the dereferenced data, if
  [reference caching](XMLSignContext.md#SupportedProperties)
  is enabled.

  `InputStream`

  `getDigestInputStream()`

  Returns the pre-digested input stream, if
  [reference caching](XMLSignContext.md#SupportedProperties)
  is enabled.

  `DigestMethod`

  `getDigestMethod()`

  Returns the digest method of this `Reference`.

  `byte[]`

  `getDigestValue()`

  Returns the digest value of this `Reference`.

  `String`

  `getId()`

  Returns the optional `Id` attribute of this
  `Reference`, which permits this reference to be
  referenced from elsewhere.

  `List<Transform>`

  `getTransforms()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s that are contained in this
  `Reference`.

  `boolean`

  `validate(XMLValidateContext validateContext)`

  Validates this reference.

  ### Methods inherited from interface javax.xml.crypto.[URIReference](../URIReference.md "interface in javax.xml.crypto")

  `getType, getURI`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getTransforms

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[Transform](Transform.md "interface in javax.xml.crypto.dsig")> getTransforms()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s that are contained in this
    `Reference`.

    Returns:
    :   an unmodifiable list of `Transform`s
        (may be empty but never `null`)
  + ### getDigestMethod

    [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") getDigestMethod()

    Returns the digest method of this `Reference`.

    Returns:
    :   the digest method
  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the optional `Id` attribute of this
    `Reference`, which permits this reference to be
    referenced from elsewhere.

    Returns:
    :   the `Id` attribute (may be `null` if not
        specified)
  + ### getDigestValue

    byte[] getDigestValue()

    Returns the digest value of this `Reference`.

    Returns:
    :   the raw digest value, or `null` if this reference has
        not been digested yet. Each invocation of this method returns a new
        clone to protect against subsequent modification.
  + ### getCalculatedDigestValue

    byte[] getCalculatedDigestValue()

    Returns the calculated digest value of this `Reference`
    after a validation operation. This method is useful for debugging if
    the reference fails to validate.

    Returns:
    :   the calculated digest value, or `null` if this
        reference has not been validated yet. Each invocation of this method
        returns a new clone to protect against subsequent modification.
  + ### validate

    boolean validate([XMLValidateContext](XMLValidateContext.md "interface in javax.xml.crypto.dsig") validateContext)
    throws [XMLSignatureException](XMLSignatureException.md "class in javax.xml.crypto.dsig")

    Validates this reference. This method verifies the digest of this
    reference.

    This method only validates the reference the first time it is
    invoked. On subsequent invocations, it returns a cached result.

    Parameters:
    :   `validateContext` - the validating context

    Returns:
    :   `true` if this reference was validated successfully;
        `false` otherwise

    Throws:
    :   `NullPointerException` - if `validateContext` is
        `null`
    :   `XMLSignatureException` - if an unexpected exception occurs while
        validating the reference
  + ### getDereferencedData

    [Data](../Data.md "interface in javax.xml.crypto") getDereferencedData()

    Returns the dereferenced data, if
    [reference caching](XMLSignContext.md#SupportedProperties)
    is enabled. This is the result of dereferencing the URI of this
    reference during a validation or generation operation.

    Returns:
    :   the dereferenced data, or `null` if reference
        caching is not enabled or this reference has not been generated or
        validated
  + ### getDigestInputStream

    [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") getDigestInputStream()

    Returns the pre-digested input stream, if
    [reference caching](XMLSignContext.md#SupportedProperties)
    is enabled. This is the input to the digest operation during a
    validation or signing operation.

    Returns:
    :   an input stream containing the pre-digested input, or
        `null` if reference caching is not enabled or this
        reference has not been generated or validated