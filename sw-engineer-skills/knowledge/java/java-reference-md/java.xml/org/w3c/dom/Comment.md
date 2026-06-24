Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface Comment

All Superinterfaces:
:   `CharacterData`, `Node`

---

public interface Comment
extends [CharacterData](CharacterData.md "interface in org.w3c.dom")

This interface inherits from `CharacterData` and represents the
content of a comment, i.e., all the characters between the starting
'`<!--`' and ending '`-->`'. Note that this is
the definition of a comment in XML, and, in practice, HTML, although some
HTML tools may implement the full SGML comment structure.

No lexical check is done on the content of a comment and it is
therefore possible to have the character sequence `"--"`
(double-hyphen) in the content, which is illegal in a comment per section
2.5 of [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)]. The
presence of this character sequence must generate a fatal error during
serialization.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `ATTRIBUTE_NODE, CDATA_SECTION_NODE, COMMENT_NODE, DOCUMENT_FRAGMENT_NODE, DOCUMENT_NODE, DOCUMENT_POSITION_CONTAINED_BY, DOCUMENT_POSITION_CONTAINS, DOCUMENT_POSITION_DISCONNECTED, DOCUMENT_POSITION_FOLLOWING, DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, DOCUMENT_POSITION_PRECEDING, DOCUMENT_TYPE_NODE, ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE, NOTATION_NODE, PROCESSING_INSTRUCTION_NODE, TEXT_NODE`
* ## Method Summary

  ### Methods inherited from interface org.w3c.dom.[CharacterData](CharacterData.md "interface in org.w3c.dom")

  `appendData, deleteData, getData, getLength, insertData, replaceData, setData, substringData`

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`