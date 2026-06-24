Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface CDATASection

All Superinterfaces:
:   `CharacterData`, `Node`, `Text`

---

public interface CDATASection
extends [Text](Text.md "interface in org.w3c.dom")

CDATA sections are used to escape blocks of text containing characters that
would otherwise be regarded as markup. The only delimiter that is
recognized in a CDATA section is the "]]>" string that ends the CDATA
section. CDATA sections cannot be nested. Their primary purpose is for
including material such as XML fragments, without needing to escape all
the delimiters.

The `CharacterData.data` attribute holds the text that is
contained by the CDATA section. Note that this *may* contain characters that need to be escaped outside of CDATA sections and
that, depending on the character encoding ("charset") chosen for
serialization, it may be impossible to write out some characters as part
of a CDATA section.

The `CDATASection` interface inherits from the
`CharacterData` interface through the `Text`
interface. Adjacent `CDATASection` nodes are not merged by use
of the `normalize` method of the `Node` interface.

No lexical check is done on the content of a CDATA section and it is
therefore possible to have the character sequence `"]]>"`
in the content, which is illegal in a CDATA section per section 2.7 of [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)]. The
presence of this character sequence must generate a fatal error during
serialization or the cdata section must be split before the
serialization (see also the parameter `"split-cdata-sections"`
in the `DOMConfiguration` interface).

**Note:** Because no markup is recognized within a
`CDATASection`, character numeric references cannot be used as
an escape mechanism when serializing. Therefore, action needs to be taken
when serializing a `CDATASection` with a character encoding
where some of the contained characters cannot be represented. Failure to
do so would not produce well-formed XML.

**Note:** One potential solution in the serialization process is to
end the CDATA section before the character, output the character using a
character reference or entity reference, and open a new CDATA section for
any further characters in the text node. Note, however, that some code
conversion libraries at the time of writing do not return an error or
exception when a character is missing from the encoding, making the task
of ensuring that data is not corrupted on serialization more difficult.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `ATTRIBUTE_NODE, CDATA_SECTION_NODE, COMMENT_NODE, DOCUMENT_FRAGMENT_NODE, DOCUMENT_NODE, DOCUMENT_POSITION_CONTAINED_BY, DOCUMENT_POSITION_CONTAINS, DOCUMENT_POSITION_DISCONNECTED, DOCUMENT_POSITION_FOLLOWING, DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, DOCUMENT_POSITION_PRECEDING, DOCUMENT_TYPE_NODE, ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE, NOTATION_NODE, PROCESSING_INSTRUCTION_NODE, TEXT_NODE`
* ## Method Summary

  ### Methods inherited from interface org.w3c.dom.[CharacterData](CharacterData.md "interface in org.w3c.dom")

  `appendData, deleteData, getData, getLength, insertData, replaceData, setData, substringData`

  ### Methods inherited from interface org.w3c.dom.[Node](Node.md "interface in org.w3c.dom")

  `appendChild, cloneNode, compareDocumentPosition, getAttributes, getBaseURI, getChildNodes, getFeature, getFirstChild, getLastChild, getLocalName, getNamespaceURI, getNextSibling, getNodeName, getNodeType, getNodeValue, getOwnerDocument, getParentNode, getPrefix, getPreviousSibling, getTextContent, getUserData, hasAttributes, hasChildNodes, insertBefore, isDefaultNamespace, isEqualNode, isSameNode, isSupported, lookupNamespaceURI, lookupPrefix, normalize, removeChild, replaceChild, setNodeValue, setPrefix, setTextContent, setUserData`

  ### Methods inherited from interface org.w3c.dom.[Text](Text.md "interface in org.w3c.dom")

  `getWholeText, isElementContentWhitespace, replaceWholeText, splitText`