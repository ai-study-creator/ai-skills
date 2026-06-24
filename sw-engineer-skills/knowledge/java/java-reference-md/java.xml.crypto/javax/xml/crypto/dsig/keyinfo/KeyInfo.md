Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface KeyInfo

All Superinterfaces:
:   `XMLStructure`

---

public interface KeyInfo
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `KeyInfo` element as defined in
the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
A `KeyInfo` contains a list of [`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto")s, each of
which contain information that enables the recipient(s) to obtain the key
needed to validate an XML signature. The XML Schema Definition is defined as:

```
 <element name="KeyInfo" type="ds:KeyInfoType"/>
 <complexType name="KeyInfoType" mixed="true">
   <choice maxOccurs="unbounded">
     <element ref="ds:KeyName"/>
     <element ref="ds:KeyValue"/>
     <element ref="ds:RetrievalMethod"/>
     <element ref="ds:X509Data"/>
     <element ref="ds:PGPData"/>
     <element ref="ds:SPKIData"/>
     <element ref="ds:MgmtData"/>
     <any processContents="lax" namespace="##other"/>
     <!-- (1,1) elements from (0,unbounded) namespaces -->
   </choice>
   <attribute name="Id" type="ID" use="optional"/>
 </complexType>
```

A `KeyInfo` instance may be created by invoking one of the
[`newKeyInfo`](KeyInfoFactory.md#newKeyInfo(java.util.List)) methods of the
[`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it a list of one or more
`XMLStructure`s and an optional id parameter;
for example:

```
   KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
   KeyInfo keyInfo = factory.newKeyInfo
      (Collections.singletonList(factory.newKeyName("Alice"), "keyinfo-1"));
```

`KeyInfo` objects can also be marshalled to XML by invoking
the [`marshal`](#marshal(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)) method.

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newKeyInfo(List)`](KeyInfoFactory.md#newKeyInfo(java.util.List))
    * [`KeyInfoFactory.newKeyInfo(List, String)`](KeyInfoFactory.md#newKeyInfo(java.util.List,java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<XMLStructure>`

  `getContent()`

  Returns an [`unmodifiable
  list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) containing the key information.

  `String`

  `getId()`

  Return the optional Id attribute of this `KeyInfo`, which
  may be useful for referencing this `KeyInfo` from other
  XML structures.

  `void`

  `marshal(XMLStructure parent,
  XMLCryptoContext context)`

  Marshals the key info to XML.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getContent

    [List](../../../../../../java.base/java/util/List.md "interface in java.util")<[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")> getContent()

    Returns an [`unmodifiable
    list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) containing the key information. Each entry of the list is
    an [`XMLStructure`](../../XMLStructure.md "interface in javax.xml.crypto").

    If there is a public subclass representing the type of
    `XMLStructure`, it is returned as an instance of that
    class (ex: an `X509Data` element would be returned as an
    instance of [`X509Data`](X509Data.md "interface in javax.xml.crypto.dsig.keyinfo")).

    Returns:
    :   an unmodifiable list of one or more `XMLStructure`s
        in this `KeyInfo`. Never returns `null` or an
        empty list.
  + ### getId

    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Return the optional Id attribute of this `KeyInfo`, which
    may be useful for referencing this `KeyInfo` from other
    XML structures.

    Returns:
    :   the Id attribute of this `KeyInfo` (may be
        `null` if not specified)
  + ### marshal

    void marshal([XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto") parent,
    [XMLCryptoContext](../../XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [MarshalException](../../MarshalException.md "class in javax.xml.crypto")

    Marshals the key info to XML.

    Parameters:
    :   `parent` - a mechanism-specific structure containing the parent node
        that the marshalled key info will be appended to
    :   `context` - the `XMLCryptoContext` containing additional
        context (may be null if not applicable)

    Throws:
    :   `ClassCastException` - if the type of `parent` or
        `context` is not compatible with this key info
    :   `MarshalException` - if the key info cannot be marshalled
    :   `NullPointerException` - if `parent` is `null`