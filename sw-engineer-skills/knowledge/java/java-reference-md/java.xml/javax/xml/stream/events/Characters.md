Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface Characters

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface Characters
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

This describes the interface to Characters events.
All text events get reported as Characters events.
Content, CData and whitespace are all reported as
Characters events. IgnorableWhitespace, in most cases,
will be set to false unless an element declaration of element
content is present for the current element.

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

  Get the character data of this event

  `boolean`

  `isCData()`

  Returns true if this is a CData section.

  `boolean`

  `isIgnorableWhiteSpace()`

  Return true if this is ignorableWhiteSpace.

  `boolean`

  `isWhiteSpace()`

  Returns true if this set of Characters
  is all whitespace.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getData

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getData()

    Get the character data of this event

    Returns:
    :   the character data
  + ### isWhiteSpace

    boolean isWhiteSpace()

    Returns true if this set of Characters
    is all whitespace. Whitespace inside a document
    is reported as CHARACTERS. This method allows
    checking of CHARACTERS events to see if they
    are composed of only whitespace characters

    Returns:
    :   true if the `Characters` are all whitespace, false otherwise
  + ### isCData

    boolean isCData()

    Returns true if this is a CData section. If this
    event is CData its event type will be CDATA
    If javax.xml.stream.isCoalescing is set to true CDATA Sections
    that are surrounded by non CDATA characters will be reported
    as a single Characters event. This method will return false
    in this case.

    Returns:
    :   true if it is `CDATA`, false otherwise
  + ### isIgnorableWhiteSpace

    boolean isIgnorableWhiteSpace()

    Return true if this is ignorableWhiteSpace. If
    this event is ignorableWhiteSpace its event type will
    be SPACE.

    Returns:
    :   true if it is ignorable whitespace, false otherwise