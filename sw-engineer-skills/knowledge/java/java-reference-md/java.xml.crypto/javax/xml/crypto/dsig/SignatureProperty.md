Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface SignatureProperty

All Superinterfaces:
:   `XMLStructure`

---

public interface SignatureProperty
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `SignatureProperty` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
<element name="SignatureProperty" type="ds:SignaturePropertyType"/>
   <complexType name="SignaturePropertyType" mixed="true">
     <choice maxOccurs="unbounded">
       <any namespace="##other" processContents="lax"/>
       <!-- (1,1) elements from (1, unbounded) namespaces -->
     </choice>
     <attribute name="Target" type="anyURI" use="required"/>
     <attribute name="Id" type="ID" use="optional"/>
   </complexType>
```

A `SignatureProperty` instance may be created by invoking the
[`newSignatureProperty`](XMLSignatureFactory.md#newSignatureProperty(java.util.List,java.lang.String,java.lang.String))
method of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class; for example:

```
   XMLSignatureFactory factory = XMLSignatureFactory.getInstance("DOM");
   SignatureProperty property = factory.newSignatureProperty
      (Collections.singletonList(content), "#Signature-1", "TimeStamp");
```

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newSignatureProperty(List, String, String)`](XMLSignatureFactory.md#newSignatureProperty(java.util.List,java.lang.String,java.lang.String))
    * [`SignatureProperties`](SignatureProperties.md "interface in javax.xml.crypto.dsig")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<XMLStructure>`

  `getContent()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s that are contained in
  this `SignatureProperty`.

  `String`

  `getId()`

  Returns the Id of this `SignatureProperty`.

  `String`

  `getTarget()`

  Returns the target URI of this `SignatureProperty`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getTarget

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getTarget()

    Returns the target URI of this `SignatureProperty`.

    Returns:
    :   the target URI of this `SignatureProperty` (never
        `null`)
  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the Id of this `SignatureProperty`.

    Returns:
    :   the Id of this `SignatureProperty` (or
        `null` if not specified)
  + ### getContent

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")> getContent()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s that are contained in
    this `SignatureProperty`. These represent additional
    information items concerning the generation of the [`XMLSignature`](XMLSignature.md "interface in javax.xml.crypto.dsig")
    (i.e. date/time stamp or serial numbers of cryptographic hardware used
    in signature generation).

    Returns:
    :   an unmodifiable list of one or more `XMLStructure`s