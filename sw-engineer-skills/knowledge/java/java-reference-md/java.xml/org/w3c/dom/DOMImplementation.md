Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMImplementation

---

public interface DOMImplementation

The `DOMImplementation` interface provides a number of methods
for performing operations that are independent of any particular instance
of the document object model.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Document`

  `createDocument(String namespaceURI,
  String qualifiedName,
  DocumentType doctype)`

  Creates a DOM Document object of the specified type with its document
  element.

  `DocumentType`

  `createDocumentType(String qualifiedName,
  String publicId,
  String systemId)`

  Creates an empty `DocumentType` node.

  `Object`

  `getFeature(String feature,
  String version)`

  This method returns a specialized object which implements the
  specialized APIs of the specified feature and version, as specified
  in [DOM Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures).

  `boolean`

  `hasFeature(String feature,
  String version)`

  Test if the DOM implementation implements a specific feature and
  version, as specified in [DOM Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures).

* ## Method Details

  + ### hasFeature

    boolean hasFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") feature,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    Test if the DOM implementation implements a specific feature and
    version, as specified in [DOM Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures).

    Parameters:
    :   `feature` - The name of the feature to test.
    :   `version` - This is the version number of the feature to test.

    Returns:
    :   `true` if the feature is implemented in the
        specified version, `false` otherwise.
  + ### createDocumentType

    [DocumentType](DocumentType.md "interface in org.w3c.dom") createDocumentType([String](../../../../java.base/java/lang/String.md "class in java.lang") qualifiedName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Creates an empty `DocumentType` node. Entity declarations
    and notations are not made available. Entity reference expansions and
    default attribute additions do not occur..

    Parameters:
    :   `qualifiedName` - The qualified name of the document type to be
        created.
    :   `publicId` - The external subset public identifier.
    :   `systemId` - The external subset system identifier.

    Returns:
    :   A new `DocumentType` node with
        `Node.ownerDocument` set to `null`.

    Throws:
    :   `DOMException` - INVALID\_CHARACTER\_ERR: Raised if the specified qualified name is not
        an XML name according to [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)].
          
        NAMESPACE\_ERR: Raised if the `qualifiedName` is
        malformed.
          
        NOT\_SUPPORTED\_ERR: May be raised if the implementation does not
        support the feature "XML" and the language exposed through the
        Document does not support XML Namespaces (such as [[HTML 4.01](http://www.w3.org/TR/1999/REC-html401-19991224/)]).

    Since:
    :   1.4, DOM Level 2
  + ### createDocument

    [Document](Document.md "interface in org.w3c.dom") createDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") qualifiedName,
    [DocumentType](DocumentType.md "interface in org.w3c.dom") doctype)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Creates a DOM Document object of the specified type with its document
    element.
      
    Note that based on the `DocumentType` given to create
    the document, the implementation may instantiate specialized
    `Document` objects that support additional features than
    the "Core", such as "HTML" [[DOM Level 2 HTML](http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109)]
    . On the other hand, setting the `DocumentType` after the
    document was created makes this very unlikely to happen.
    Alternatively, specialized `Document` creation methods,
    such as `createHTMLDocument` [[DOM Level 2 HTML](http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109)]
    , can be used to obtain specific types of `Document`
    objects.

    Parameters:
    :   `namespaceURI` - The namespace URI of the document element to
        create or `null`.
    :   `qualifiedName` - The qualified name of the document element to be
        created or `null`.
    :   `doctype` - The type of document to be created or `null`.
        When `doctype` is not `null`, its
        `Node.ownerDocument` attribute is set to the document
        being created.

    Returns:
    :   A new `Document` object with its document element.
        If the `NamespaceURI`, `qualifiedName`, and
        `doctype` are `null`, the returned
        `Document` is empty with no document element.

    Throws:
    :   `DOMException` - INVALID\_CHARACTER\_ERR: Raised if the specified qualified name is not
        an XML name according to [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)].
          
        NAMESPACE\_ERR: Raised if the `qualifiedName` is
        malformed, if the `qualifiedName` has a prefix and the
        `namespaceURI` is `null`, or if the
        `qualifiedName` is `null` and the
        `namespaceURI` is different from `null`, or
        if the `qualifiedName` has a prefix that is "xml" and
        the `namespaceURI` is different from "<http://www.w3.org/XML/1998/namespace>" [[XML Namespaces](http://www.w3.org/TR/1999/REC-xml-names-19990114/)]
        , or if the DOM implementation does not support the
        `"XML"` feature but a non-null namespace URI was
        provided, since namespaces were defined by XML.
          
        WRONG\_DOCUMENT\_ERR: Raised if `doctype` has already
        been used with a different document or was created from a different
        implementation.
          
        NOT\_SUPPORTED\_ERR: May be raised if the implementation does not
        support the feature "XML" and the language exposed through the
        Document does not support XML Namespaces (such as [[HTML 4.01](http://www.w3.org/TR/1999/REC-html401-19991224/)]).

    Since:
    :   1.4, DOM Level 2
  + ### getFeature

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") feature,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    This method returns a specialized object which implements the
    specialized APIs of the specified feature and version, as specified
    in [DOM Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures). The specialized object may also be obtained by using
    binding-specific casting methods but is not necessarily expected to,
    as discussed in . This method also allow the implementation to
    provide specialized objects which do not support the
    `DOMImplementation` interface.

    Parameters:
    :   `feature` - The name of the feature requested. Note that any plus
        sign "+" prepended to the name of the feature will be ignored since
        it is not significant in the context of this method.
    :   `version` - This is the version number of the feature to test.

    Returns:
    :   Returns an object which implements the specialized APIs of
        the specified feature and version, if any, or `null` if
        there is no object which implements interfaces associated with that
        feature. If the `DOMObject` returned by this method
        implements the `DOMImplementation` interface, it must
        delegate to the primary core `DOMImplementation` and not
        return results inconsistent with the primary core
        `DOMImplementation` such as `hasFeature`,
        `getFeature`, etc.

    Since:
    :   1.5, DOM Level 3