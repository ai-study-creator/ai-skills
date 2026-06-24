Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface Manifest

All Superinterfaces:
:   `XMLStructure`

---

public interface Manifest
extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `Manifest` element as defined in
the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
The XML Schema Definition is defined as:

```
 <element name="Manifest" type="ds:ManifestType"/>
   <complexType name="ManifestType">
     <sequence>
       <element ref="ds:Reference" maxOccurs="unbounded"/>
     </sequence>
     <attribute name="Id" type="ID" use="optional"/>
   </complexType>
```

A `Manifest` instance may be created by invoking
one of the [`newManifest`](XMLSignatureFactory.md#newManifest(java.util.List))
methods of the [`XMLSignatureFactory`](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") class; for example:

```
   XMLSignatureFactory factory = XMLSignatureFactory.getInstance("DOM");
   Reference ref = factory.newReference("#reference-1", DigestMethod.SHA1);
   List<Reference> references = Collections.singletonList(ref);
   Manifest manifest = factory.newManifest(references, "manifest-1");
```

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.newManifest(List)`](XMLSignatureFactory.md#newManifest(java.util.List))
    * [`XMLSignatureFactory.newManifest(List, String)`](XMLSignatureFactory.md#newManifest(java.util.List,java.lang.String))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `TYPE`

  URI that identifies the `Manifest` element (this can be
  specified as the value of the `type` parameter of the
  [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getId()`

  Returns the Id of this `Manifest`.

  `List<Reference>`

  `getReferences()`

  Returns an [`unmodifiable
  list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s that are contained in this
  `Manifest`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### TYPE

    static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") TYPE

    URI that identifies the `Manifest` element (this can be
    specified as the value of the `type` parameter of the
    [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") class to identify the referent's type).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.crypto.dsig.Manifest.TYPE)
* ## Method Details

  + ### getId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getId()

    Returns the Id of this `Manifest`.

    Returns:
    :   the Id of this `Manifest` (or `null`
        if not specified)
  + ### getReferences

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[Reference](Reference.md "interface in javax.xml.crypto.dsig")> getReferences()

    Returns an [`unmodifiable
    list`](../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s that are contained in this
    `Manifest`.

    Returns:
    :   an unmodifiable list of one or more `Reference`s