Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface EndElement

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface EndElement
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface for the end element event. An EndElement is reported
for each End Tag in the document.

Since:
:   1.6

See Also:
:   * [`XMLEvent`](XMLEvent.md "interface in javax.xml.stream.events")

* ## Field Summary

  ### Fields inherited from interface javax.xml.stream.[XMLStreamConstants](../XMLStreamConstants.md "interface in javax.xml.stream")

  `ATTRIBUTE, CDATA, CHARACTERS, COMMENT, DTD, END_DOCUMENT, END_ELEMENT, ENTITY_DECLARATION, ENTITY_REFERENCE, NAMESPACE, NOTATION_DECLARATION, PROCESSING_INSTRUCTION, SPACE, START_DOCUMENT, START_ELEMENT`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `QName`

  `getName()`

  Get the name of this event

  `Iterator<Namespace>`

  `getNamespaces()`

  Returns an Iterator of namespaces that have gone out
  of scope.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getName

    [QName](../../namespace/QName.md "class in javax.xml.namespace") getName()

    Get the name of this event

    Returns:
    :   the qualified name of this event
  + ### getNamespaces

    [Iterator](../../../../../java.base/java/util/Iterator.md "interface in java.util")<[Namespace](Namespace.md "interface in javax.xml.stream.events")> getNamespaces()

    Returns an Iterator of namespaces that have gone out
    of scope. Returns an empty iterator if no namespaces have gone
    out of scope.

    Returns:
    :   an Iterator over Namespace interfaces, or an
        empty iterator