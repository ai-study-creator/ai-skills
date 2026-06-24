Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface ProcessingInstruction

All Superinterfaces:
:   `Node`

---

public interface ProcessingInstruction
extends [Node](Node.md "interface in org.w3c.dom")

The `ProcessingInstruction` interface represents a "processing
instruction", used in XML as a way to keep processor-specific information
in the text of the document.

No lexical check is done on the content of a processing instruction and
it is therefore possible to have the character sequence
`"?>"` in the content, which is illegal a processing
instruction per section 2.6 of [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)]. The
presence of this character sequence must generate a fatal error during
serialization.

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

  `getData()`

  The content of this processing instruction.

  `String`

  `getTarget()`

  The target of this processing instruction.

  `void`

  `setData(String data)`

  The content of this processing instruction.

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`

* ## Method Details

  + ### getTarget

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getTarget()

    The target of this processing instruction. XML defines this as being
    the first token following the markup that begins the processing
    instruction.
  + ### getData

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getData()

    The content of this processing instruction. This is from the first non
    white space character after the target to the character immediately
    preceding the `?>`.
  + ### setData

    void setData([String](../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    The content of this processing instruction. This is from the first non
    white space character after the target to the character immediately
    preceding the `?>`.

    Throws:
    :   `DOMException` - NO\_MODIFICATION\_ALLOWED\_ERR: Raised when the node is readonly.