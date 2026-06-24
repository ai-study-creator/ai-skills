Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface XMLObject

All Superinterfaces:
:   `XMLStructure`

---

public interface XMLObject
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `Object` element as defined in
the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
An `XMLObject` may contain any data and may include optional
MIME type, ID, and encoding attributes. The XML Schema Definition is
defined as:

```
 <element name="Object" type="ds:ObjectType"/>
 <complexType name="ObjectType" mixed="true">
   <sequence minOccurs="0" maxOccurs="unbounded">
     <any namespace="##any" processContents="lax"/>
   </sequence>
   <attribute name="Id" type="ID" use="optional"/>
   <attribute name="MimeType" type="string" use="optional"/>
   <attribute name="Encoding" type="anyURI" use="optional"/>
 </complexType>
```

A `XMLObject` instance may be created by invoking the
[`newXMLObject`](XMLSignatureFactory.md#newXMLObject(java.util.List,java.lang.String,java.lang.String,java.lang.String)) method of the
[`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class; for example:

```
   XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
   Manifest manifest = fac.newManifest(references);
   List<XMLStructure> content = Collections.singletonList(manifest);
   XMLObject object = factory.newXMLObject(content, "object-1", null, null);
```

Note that this class is named `XMLObject` rather than
`Object` to avoid naming clashes with the existing
[`java.lang.Object`](../../../../../java.base/java/lang/Object.md "class in java.lang") class.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newXMLObject(List, String, String, String)`](XMLSignatureFactory.md#newXMLObject(java.util.List,java.lang.String,java.lang.String,java.lang.String))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `TYPE`

  URI that identifies the `Object` element (this can be
  specified as the value of the `type` parameter of the
  [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<XMLStructure>`

  `getContent()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s contained in this `XMLObject`,
  which represent elements from any namespace.

  `String`

  `getEncoding()`

  Returns the encoding URI of this `XMLObject`.

  `String`

  `getId()`

  Returns the Id of this `XMLObject`.

  `String`

  `getMimeType()`

  Returns the mime type of this `XMLObject`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### TYPE

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") TYPE

    URI that identifies the `Object` element (this can be
    specified as the value of the `type` parameter of the
    [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.XMLObject.TYPE)
* ## Method Details

  + ### getContent

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")> getContent()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s contained in this `XMLObject`,
    which represent elements from any namespace.

    If there is a public subclass representing the type of
    `XMLStructure`, it is returned as an instance of that class
    (ex: a `SignatureProperties` element would be returned
    as an instance of [`SignatureProperties`](SignatureProperties.md "interface in javax.xml.crypto.dsig")).

    Returns:
    :   an unmodifiable list of `XMLStructure`s (may be empty
        but never `null`)
  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the Id of this `XMLObject`.

    Returns:
    :   the Id (or `null` if not specified)
  + ### getMimeType

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getMimeType()

    Returns the mime type of this `XMLObject`. The
    mime type is an optional attribute which describes the data within this
    `XMLObject` (independent of its encoding).

    Returns:
    :   the mime type (or `null` if not specified)
  + ### getEncoding

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getEncoding()

    Returns the encoding URI of this `XMLObject`. The encoding
    URI identifies the method by which the object is encoded.

    Returns:
    :   the encoding URI (or `null` if not specified)