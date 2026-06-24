Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface Entity

All Superinterfaces:
:   `Node`

---

public interface Entity
extends [Node](Node.md "interface in org.w3c.dom")

This interface represents a known entity, either parsed or unparsed, in an
XML document. Note that this models the entity itself *not* the entity declaration.

The `nodeName` attribute that is inherited from
`Node` contains the name of the entity.

An XML processor may choose to completely expand entities before the
structure model is passed to the DOM; in this case there will be no
`EntityReference` nodes in the document tree.

XML does not mandate that a non-validating XML processor read and
process entity declarations made in the external subset or declared in
parameter entities. This means that parsed entities declared in the
external subset need not be expanded by some classes of applications, and
that the replacement text of the entity may not be available. When the [replacement text](http://www.w3.org/TR/2004/REC-xml-20040204#intern-replacement) is available, the corresponding `Entity` node's child list
represents the structure of that replacement value. Otherwise, the child
list is empty.

DOM Level 3 does not support editing `Entity` nodes; if a
user wants to make changes to the contents of an `Entity`,
every related `EntityReference` node has to be replaced in the
structure model by a clone of the `Entity`'s contents, and
then the desired changes must be made to each of those clones instead.
`Entity` nodes and all their descendants are readonly.

An `Entity` node does not have any parent.

**Note:** If the entity contains an unbound namespace prefix, the
`namespaceURI` of the corresponding node in the
`Entity` node subtree is `null`. The same is true
for `EntityReference` nodes that refer to this entity, when
they are created using the `createEntityReference` method of
the `Document` interface.

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

  `getInputEncoding()`

  An attribute specifying the encoding used for this entity at the time
  of parsing, when it is an external parsed entity.

  `String`

  `getNotationName()`

  For unparsed entities, the name of the notation for the entity.

  `String`

  `getPublicId()`

  The public identifier associated with the entity if specified, and
  `null` otherwise.

  `String`

  `getSystemId()`

  The system identifier associated with the entity if specified, and
  `null` otherwise.

  `String`

  `getXmlEncoding()`

  An attribute specifying, as part of the text declaration, the encoding
  of this entity, when it is an external parsed entity.

  `String`

  `getXmlVersion()`

  An attribute specifying, as part of the text declaration, the version
  number of this entity, when it is an external parsed entity.

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`

* ## Method Details

  + ### getPublicId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    The public identifier associated with the entity if specified, and
    `null` otherwise.
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The system identifier associated with the entity if specified, and
    `null` otherwise. This may be an absolute URI or not.
  + ### getNotationName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNotationName()

    For unparsed entities, the name of the notation for the entity. For
    parsed entities, this is `null`.
  + ### getInputEncoding

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getInputEncoding()

    An attribute specifying the encoding used for this entity at the time
    of parsing, when it is an external parsed entity. This is
    `null` if it an entity from the internal subset or if it
    is not known.

    Since:
    :   1.5, DOM Level 3
  + ### getXmlEncoding

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getXmlEncoding()

    An attribute specifying, as part of the text declaration, the encoding
    of this entity, when it is an external parsed entity. This is
    `null` otherwise.

    Since:
    :   1.5, DOM Level 3
  + ### getXmlVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getXmlVersion()

    An attribute specifying, as part of the text declaration, the version
    number of this entity, when it is an external parsed entity. This is
    `null` otherwise.

    Since:
    :   1.5, DOM Level 3