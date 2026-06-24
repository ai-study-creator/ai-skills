Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface EntityDeclaration

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface EntityDeclaration
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for handling Entity Declarations
This interface is used to record and report unparsed entity declarations.

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

  `getBaseURI()`

  Get the base URI for this reference
  or null if this information is not available

  `String`

  `getName()`

  The entity's name

  `String`

  `getNotationName()`

  The name of the associated notation.

  `String`

  `getPublicId()`

  The entity's public identifier, or null if none was given

  `String`

  `getReplacementText()`

  The replacement text of the entity.

  `String`

  `getSystemId()`

  The entity's system identifier.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getPublicId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    The entity's public identifier, or null if none was given

    Returns:
    :   the public ID for this declaration or null
  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The entity's system identifier.

    Returns:
    :   the system ID for this declaration or null
  + ### getName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    The entity's name

    Returns:
    :   the name, may not be null
  + ### getNotationName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNotationName()

    The name of the associated notation.

    Returns:
    :   the notation name
  + ### getReplacementText

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getReplacementText()

    The replacement text of the entity.
    This method will only return non-null
    if this is an internal entity.

    Returns:
    :   null or the replacement text
  + ### getBaseURI

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getBaseURI()

    Get the base URI for this reference
    or null if this information is not available

    Returns:
    :   the base URI or null