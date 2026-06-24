Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface RetrievalMethod

All Superinterfaces:
:   `URIReference`, `XMLStructure`

---

public interface RetrievalMethod
extends [URIReference](../../URIReference.md "interface in javax.xml.crypto"), [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `RetrievalMethod` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
A `RetrievalMethod` object is used to convey a reference to
`KeyInfo` information that is stored at another location.
The XML schema definition is defined as:

```
   <element name="RetrievalMethod" type="ds:RetrievalMethodType"/>
   <complexType name="RetrievalMethodType">
     <sequence>
       <element name="Transforms" type="ds:TransformsType" minOccurs="0"/>
     </sequence>
     <attribute name="URI" type="anyURI"/>
     <attribute name="Type" type="anyURI" use="optional"/>
   </complexType>
```

A `RetrievalMethod` instance may be created by invoking one of the
[`newRetrievalMethod`](KeyInfoFactory.md#newRetrievalMethod(java.lang.String)) methods
of the [`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it the URI
identifying the location of the KeyInfo, an optional type URI identifying
the type of KeyInfo, and an optional list of [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")s; for example:

```
   KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
   RetrievalMethod rm = factory.newRetrievalMethod
      ("#KeyValue-1", KeyValue.DSA_TYPE, Collections.singletonList(Transform.BASE64));
```

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newRetrievalMethod(String)`](KeyInfoFactory.md#newRetrievalMethod(java.lang.String))
    * [`KeyInfoFactory.newRetrievalMethod(String, String, List)`](KeyInfoFactory.md#newRetrievalMethod(java.lang.String,java.lang.String,java.util.List))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Data`

  `dereference(XMLCryptoContext context)`

  Dereferences the `KeyInfo` information referenced by this
  `RetrievalMethod` and applies the specified
  `Transform`s.

  `List<Transform>`

  `getTransforms()`

  Returns an [`unmodifiable
  list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")s of this `RetrievalMethod`.

  `String`

  `getURI()`

  Returns the URI of the referenced `KeyInfo` information.

  ### Methods inherited from interface javax.xml.crypto.[URIReference](../../URIReference.md "interface in javax.xml.crypto")

  `getType`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getTransforms

    [List](../../../../../../java.base/java/util/List.md "interface in java.util")<[Transform](../Transform.md "interface in javax.xml.crypto.dsig")> getTransforms()

    Returns an [`unmodifiable
    list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)) of [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")s of this `RetrievalMethod`.

    Returns:
    :   an unmodifiable list of `Transform` objects (may be
        empty but never `null`).
  + ### getURI

    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getURI()

    Returns the URI of the referenced `KeyInfo` information.

    Specified by:
    :   `getURI` in interface `URIReference`

    Returns:
    :   the URI of the referenced `KeyInfo` information in
        RFC 2396 format (never `null`)
  + ### dereference

    [Data](../../Data.md "interface in javax.xml.crypto") dereference([XMLCryptoContext](../../XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [URIReferenceException](../../URIReferenceException.md "class in javax.xml.crypto")

    Dereferences the `KeyInfo` information referenced by this
    `RetrievalMethod` and applies the specified
    `Transform`s.

    Parameters:
    :   `context` - an `XMLCryptoContext` that may contain
        additional useful information for dereferencing the URI. The
        context's `baseURI` and `dereferencer`
        parameters (if specified) are used to resolve and dereference this
        `RetrievalMethod`

    Returns:
    :   a `Data` object representing the raw contents of the
        `KeyInfo` information referenced by this
        `RetrievalMethod`. It is the caller's responsibility to
        convert the returned data to an appropriate
        `KeyInfo` object.

    Throws:
    :   `NullPointerException` - if `context` is `null`
    :   `URIReferenceException` - if there is an error while dereferencing