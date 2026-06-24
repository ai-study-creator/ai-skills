Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DocumentType

All Superinterfaces:
:   `Node`

---

public interface DocumentType
extends [Node](Node.md "interface in org.w3c.dom")

Each `Document` has a `doctype` attribute whose value
is either `null` or a `DocumentType` object. The
`DocumentType` interface in the DOM Core provides an interface
to the list of entities that are defined for the document, and little
else because the effect of namespaces and the various XML schema efforts
on DTD representation are not clearly understood as of this writing.

DOM Level 3 doesn't support editing `DocumentType` nodes.
`DocumentType` nodes are read-only.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `ATTRIBUTE_NODE, CDATA_SECTION_NODE, COMMENT_NODE, DOCUMENT_FRAGMENT_NODE, DOCUMENT_NODE, DOCUMENT_POSITION_CONTAINED_BY, DOCUMENT_POSITION_CONTAINS, DOCUMENT_POSITION_DISCONNECTED, DOCUMENT_POSITION_FOLLOWING, DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, DOCUMENT_POSITION_PRECEDING, DOCUMENT_TYPE_NODE, ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE, NOTATION_NODE, PROCESSING_INSTRUCTION_NODE, TEXT_NODE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `NamedNodeMap`

  `getEntities()`

  A `NamedNodeMap` containing the general entities, both
  external and internal, declared in the DTD.

  `String`

  `getInternalSubset()`

  The internal subset as a string, or `null` if there is none.

  `String`

  `getName()`

  The name of DTD; i.e., the name immediately following the
  `DOCTYPE` keyword.

  `NamedNodeMap`

  `getNotations()`

  A `NamedNodeMap` containing the notations declared in the
  DTD.

  `String`

  `getPublicId()`

  The public identifier of the external subset.

  `String`

  `getSystemId()`

  The system identifier of the external subset.

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    The name of DTD; i.e., the name immediately following the
    `DOCTYPE` keyword.
  + ### getEntities

    [NamedNodeMap](NamedNodeMap.md "interface in org.w3c.dom") getEntities()

    A `NamedNodeMap` containing the general entities, both
    external and internal, declared in the DTD. Parameter entities are
    not contained. Duplicates are discarded. For example in:

    ```
    <!DOCTYPE
     ex SYSTEM "ex.dtd" [ <!ENTITY foo "foo"> <!ENTITY bar
     "bar"> <!ENTITY bar "bar2"> <!ENTITY % baz "baz">
     ]> <ex/>
    ```

    the interface provides access to `foo`
    and the first declaration of `bar` but not the second
    declaration of `bar` or `baz`. Every node in
    this map also implements the `Entity` interface.
      
    The DOM Level 2 does not support editing entities, therefore
    `entities` cannot be altered in any way.
  + ### getNotations

    [NamedNodeMap](NamedNodeMap.md "interface in org.w3c.dom") getNotations()

    A `NamedNodeMap` containing the notations declared in the
    DTD. Duplicates are discarded. Every node in this map also implements
    the `Notation` interface.
      
    The DOM Level 2 does not support editing notations, therefore
    `notations` cannot be altered in any way.
  + ### getPublicId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    The public identifier of the external subset.

    Since:
    :   1.4, DOM Level 2
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The system identifier of the external subset. This may be an absolute
    URI or not.

    Since:
    :   1.4, DOM Level 2
  + ### getInternalSubset

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getInternalSubset()

    The internal subset as a string, or `null` if there is none.
    This is does not contain the delimiting square brackets.

    **Note:** The actual content returned depends on how much
    information is available to the implementation. This may vary
    depending on various parameters, including the XML processor used to
    build the document.

    Since:
    :   1.4, DOM Level 2