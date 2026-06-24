Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface ProcessingInstruction

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface ProcessingInstruction
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface that describes the data found in processing instructions

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

  `getData()`

  The data section of the processing instruction

  `String`

  `getTarget()`

  The target section of the processing instruction

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getTarget

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getTarget()

    The target section of the processing instruction

    Returns:
    :   the String value of the PI or null
  + ### getData

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getData()

    The data section of the processing instruction

    Returns:
    :   the String value of the PI's data or null