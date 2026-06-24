Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface SignatureProperties

All Superinterfaces:
:   `XMLStructure`

---

public interface SignatureProperties
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `SignatureProperties` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
<element name="SignatureProperties" type="ds:SignaturePropertiesType"/>
   <complexType name="SignaturePropertiesType">
     <sequence>
       <element ref="ds:SignatureProperty" maxOccurs="unbounded"/>
     </sequence>
     <attribute name="Id" type="ID" use="optional"/>
   </complexType>
```

A `SignatureProperties` instance may be created by invoking the
[`newSignatureProperties`](XMLSignatureFactory.md#newSignatureProperties(java.util.List,java.lang.String))
method of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class; for example:

```
   XMLSignatureFactory factory = XMLSignatureFactory.getInstance("DOM");
   SignatureProperties properties =
      factory.newSignatureProperties(props, "signature-properties-1");
```

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newSignatureProperties(List, String)`](XMLSignatureFactory.md#newSignatureProperties(java.util.List,java.lang.String))
    * [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `TYPE`

  URI that identifies the `SignatureProperties` element (this
  can be specified as the value of the `type` parameter of the
  [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getId()`

  Returns the Id of this `SignatureProperties`.

  `List<SignatureProperty>`

  `getProperties()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")s that are contained in
  this `SignatureProperties`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### TYPE

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") TYPE

    URI that identifies the `SignatureProperties` element (this
    can be specified as the value of the `type` parameter of the
    [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.SignatureProperties.TYPE)
* ## Method Details

  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the Id of this `SignatureProperties`.

    Returns:
    :   the Id of this `SignatureProperties` (or
        `null` if not specified)
  + ### getProperties

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[SignatureProperty](SignatureProperty.md "interface in javax.xml.crypto.dsig")> getProperties()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")s that are contained in
    this `SignatureProperties`.

    Returns:
    :   an unmodifiable list of one or more
        `SignatureProperty`s