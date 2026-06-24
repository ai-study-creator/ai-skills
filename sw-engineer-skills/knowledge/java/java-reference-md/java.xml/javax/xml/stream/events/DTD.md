Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface DTD

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface DTD
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

This is the top level interface for events dealing with DTDs

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

  `getDocumentTypeDeclaration()`

  Returns the entire Document Type Declaration as a string, including the
  internal DTD subset.

  `List<EntityDeclaration>`

  `getEntities()`

  Return a List containing the general entities, both external and
  internal, declared in the DTD.

  `List<NotationDeclaration>`

  `getNotations()`

  Return a List containing the notations declared in the DTD.

  `Object`

  `getProcessedDTD()`

  Returns an implementation defined representation of the DTD.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getDocumentTypeDeclaration

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDocumentTypeDeclaration()

    Returns the entire Document Type Declaration as a string, including the
    internal DTD subset. This may be null if there is not an internal subset.
    If it is not null it must return the entire Document Type Declaration
    which matches the doctypedecl production in the XML 1.0 specification

    Returns:
    :   the Document Type Declaration
  + ### getProcessedDTD

    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProcessedDTD()

    Returns an implementation defined representation of the DTD. This method
    may return null if no representation is available.

    Returns:
    :   the representation of the DTD
  + ### getNotations

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[NotationDeclaration](NotationDeclaration.md "interface in javax.xml.stream.events")> getNotations()

    Return a List containing the notations declared in the DTD. This list
    must contain NotationDeclaration events.

    Returns:
    :   an unordered list of NotationDeclaration events

    See Also:
    :   - [`NotationDeclaration`](NotationDeclaration.md "interface in javax.xml.stream.events")
  + ### getEntities

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[EntityDeclaration](EntityDeclaration.md "interface in javax.xml.stream.events")> getEntities()

    Return a List containing the general entities, both external and
    internal, declared in the DTD. This list must contain EntityDeclaration
    events.

    Returns:
    :   an unordered list of EntityDeclaration events

    See Also:
    :   - [`EntityDeclaration`](EntityDeclaration.md "interface in javax.xml.stream.events")