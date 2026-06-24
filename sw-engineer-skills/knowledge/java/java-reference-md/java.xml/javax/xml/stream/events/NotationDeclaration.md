Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface NotationDeclaration

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface NotationDeclaration
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for handling Notation Declarations
Receive notification of a notation declaration event.
It is up to the application to record the notation for later reference,
At least one of publicId and systemId must be non-null.
There is no guarantee that the notation declaration
will be reported before any unparsed entities that use it.

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

  `getName()`

  The notation name.

  `String`

  `getPublicId()`

  The notation's public identifier, or null if none was given.

  `String`

  `getSystemId()`

  The notation's system identifier, or null if none was given.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    The notation name.

    Returns:
    :   the notation name
  + ### getPublicId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    The notation's public identifier, or null if none was given.

    Returns:
    :   the public identifier
  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The notation's system identifier, or null if none was given.

    Returns:
    :   the system identifier