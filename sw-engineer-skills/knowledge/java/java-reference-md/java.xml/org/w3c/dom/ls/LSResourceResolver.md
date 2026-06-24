Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Interface LSResourceResolver

All Known Subinterfaces:
:   `CatalogResolver`

---

public interface LSResourceResolver

`LSResourceResolver` provides a way for applications to
redirect references to external resources.

Applications needing to implement custom handling for external
resources can implement this interface and register their implementation
by setting the "resource-resolver" parameter of
`DOMConfiguration` objects attached to `LSParser`
and `LSSerializer`. It can also be register on
`DOMConfiguration` objects attached to `Document`
if the "LS" feature is supported.

The `LSParser` will then allow the application to intercept
any external entities, including the external DTD subset and external
parameter entities, before including them. The top-level document entity
is never passed to the `resolveResource` method.

Many DOM applications will not need to implement this interface, but it
will be especially useful for applications that build XML documents from
databases or other specialized input sources, or for applications that
use URNs.

**Note:** `LSResourceResolver` is based on the SAX2 [[SAX](http://www.saxproject.org/)] `EntityResolver`
interface.

See also the [Document Object Model (DOM) Level 3 Load
and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `LSInput`

  `resolveResource(String type,
  String namespaceURI,
  String publicId,
  String systemId,
  String baseURI)`

  Allow the application to resolve external resources.

* ## Method Details

  + ### resolveResource

    [LSInput](LSInput.md "interface in org.w3c.dom.ls") resolveResource([String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") baseURI)

    Allow the application to resolve external resources.
      
     The `LSParser` will call this method before opening any
    external resource, including the external DTD subset, external
    entities referenced within the DTD, and external entities referenced
    within the document element (however, the top-level document entity
    is not passed to this method). The application may then request that
    the `LSParser` resolve the external resource itself, that
    it use an alternative URI, or that it use an entirely different input
    source.
      
     Application writers can use this method to redirect external
    system identifiers to secure and/or local URI, to look up public
    identifiers in a catalogue, or to read an entity from a database or
    other input source (including, for example, a dialog box).

    Parameters:
    :   `type` - The type of the resource being resolved. For XML [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)] resources
        (i.e. entities), applications must use the value
        `"http://www.w3.org/TR/REC-xml"`. For XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
        , applications must use the value
        `"http://www.w3.org/2001/XMLSchema"`. Other types of
        resources are outside the scope of this specification and therefore
        should recommend an absolute URI in order to use this method.
    :   `namespaceURI` - The namespace of the resource being resolved,
        e.g. the target namespace of the XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
        when resolving XML Schema resources.
    :   `publicId` - The public identifier of the external entity being
        referenced, or `null` if no public identifier was
        supplied or if the resource is not an entity.
    :   `systemId` - The system identifier, a URI reference [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)], of the
        external resource being referenced, or `null` if no
        system identifier was supplied.
    :   `baseURI` - The absolute base URI of the resource being parsed, or
        `null` if there is no base URI.

    Returns:
    :   A `LSInput` object describing the new input
        source, or `null` to request that the parser open a
        regular URI connection to the resource.