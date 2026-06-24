Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface EntityReference

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface EntityReference
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for handling Entity events.
This event reports entities that have not been resolved
and reports their replacement text unprocessed (if
available). This event will be reported if javax.xml.stream.isReplacingEntityReferences
is set to false. If javax.xml.stream.isReplacingEntityReferences is set to true
entity references will be resolved transparently.
Entities are handled in two possible ways:
(1) If javax.xml.stream.isReplacingEntityReferences is set to true
all entity references are resolved and reported as markup transparently.
(2) If javax.xml.stream.isReplacingEntityReferences is set to false
Entity references are reported as an EntityReference Event.

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

  `EntityDeclaration`

  `getDeclaration()`

  Return the declaration of this entity.

  `String`

  `getName()`

  The name of the entity

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getDeclaration

    [EntityDeclaration](EntityDeclaration.md "interface in javax.xml.stream.events") getDeclaration()

    Return the declaration of this entity.

    Returns:
    :   the declaration
  + ### getName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    The name of the entity

    Returns:
    :   the entity's name, may not be null