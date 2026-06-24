Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface Comment

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface Comment
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for comment events

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

  `String`

  `getText()`

  Return the string data of the comment, returns empty string if it
  does not exist.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getText

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getText()

    Return the string data of the comment, returns empty string if it
    does not exist.

    Returns:
    :   the string data of the comment