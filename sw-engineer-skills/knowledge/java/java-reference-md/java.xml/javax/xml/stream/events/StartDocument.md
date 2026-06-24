Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface StartDocument

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface StartDocument
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for the start document event

Since:
:   1.6

* ## Field Summary

  ### Fields inherited from interface javax.xml.stream.[XMLStreamConstants](../XMLStreamConstants.md "interface in javax.xml.stream")

  `ATTRIBUTE, CDATA, CHARACTERS, COMMENT, DTD, END_DOCUMENT, END_ELEMENT, ENTITY_DECLARATION, ENTITY_REFERENCE, NAMESPACE, NOTATION_DECLARATION, PROCESSING_INSTRUCTION, SPACE, START_DOCUMENT, START_ELEMENT`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `encodingSet()`

  Returns true if CharacterEncodingScheme is set in
  the encoding declaration of the document

  `String`

  `getCharacterEncodingScheme()`

  Returns the encoding style of the XML data

  `String`

  `getSystemId()`

  Returns the system ID of the XML data

  `String`

  `getVersion()`

  Returns the version of XML of this XML stream

  `boolean`

  `isStandalone()`

  Returns if this XML is standalone

  `boolean`

  `standaloneSet()`

  Returns true if the standalone attribute is set in
  the encoding declaration of the document.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Returns the system ID of the XML data

    Returns:
    :   the system ID, defaults to ""
  + ### getCharacterEncodingScheme

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getCharacterEncodingScheme()

    Returns the encoding style of the XML data

    Returns:
    :   the character encoding, defaults to "UTF-8"
  + ### encodingSet

    boolean encodingSet()

    Returns true if CharacterEncodingScheme is set in
    the encoding declaration of the document

    Returns:
    :   true if `CharacterEncodingScheme` is set, false otherwise
  + ### isStandalone

    boolean isStandalone()

    Returns if this XML is standalone

    Returns:
    :   the standalone state of XML, defaults to "no"
  + ### standaloneSet

    boolean standaloneSet()

    Returns true if the standalone attribute is set in
    the encoding declaration of the document.

    Returns:
    :   true if the standalone attribute is set, false otherwise
  + ### getVersion

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Returns the version of XML of this XML stream

    Returns:
    :   the version of XML, defaults to "1.0"