Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface Notation

All Superinterfaces:
:   `Node`

---

public interface Notation
extends [Node](Node.md "interface in org.w3c.dom")

This interface represents a notation declared in the DTD. A notation either
declares, by name, the format of an unparsed entity (see [section 4.7](http://www.w3.org/TR/2004/REC-xml-20040204#Notations) of the XML 1.0 specification [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)]), or is
used for formal declaration of processing instruction targets (see [section 2.6](http://www.w3.org/TR/2004/REC-xml-20040204#sec-pi) of the XML 1.0 specification [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)]). The
`nodeName` attribute inherited from `Node` is set
to the declared name of the notation.

The DOM Core does not support editing `Notation` nodes; they
are therefore readonly.

A `Notation` node does not have any parent.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `ATTRIBUTE_NODE, CDATA_SECTION_NODE, COMMENT_NODE, DOCUMENT_FRAGMENT_NODE, DOCUMENT_NODE, DOCUMENT_POSITION_CONTAINED_BY, DOCUMENT_POSITION_CONTAINS, DOCUMENT_POSITION_DISCONNECTED, DOCUMENT_POSITION_FOLLOWING, DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, DOCUMENT_POSITION_PRECEDING, DOCUMENT_TYPE_NODE, ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE, NOTATION_NODE, PROCESSING_INSTRUCTION_NODE, TEXT_NODE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getPublicId()`

  The public identifier of this notation.

  `String`

  `getSystemId()`

  The system identifier of this notation.

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`

* ## Method Details

  + ### getPublicId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    The public identifier of this notation. If the public identifier was
    not specified, this is `null`.
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The system identifier of this notation. If the system identifier was
    not specified, this is `null`. This may be an absolute URI
    or not.