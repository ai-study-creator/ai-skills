Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface Attribute

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

All Known Subinterfaces:
:   `Namespace`

---

public interface Attribute
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

An interface that contains information about an attribute. Attributes are reported
as a set of events accessible from a StartElement. Other applications may report
Attributes as first-order events, for example as the results of an XPath expression.

Since:
:   1.6

See Also:
:   * [`StartElement`](StartElement.md "interface in javax.xml.stream.events")

* ## Field Summary

  ### Fields inherited from interface javax.xml.stream.[XMLStreamConstants](../XMLStreamConstants.md "interface in javax.xml.stream")

  `ATTRIBUTE, CDATA, CHARACTERS, COMMENT, DTD, END_DOCUMENT, END_ELEMENT, ENTITY_DECLARATION, ENTITY_REFERENCE, NAMESPACE, NOTATION_DECLARATION, PROCESSING_INSTRUCTION, SPACE, START_DOCUMENT, START_ELEMENT`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDTDType()`

  Gets the type of this attribute, default is
  the String "CDATA".

  `QName`

  `getName()`

  Returns the QName for this attribute.

  `String`

  `getValue()`

  Gets the normalized value of this attribute.

  `boolean`

  `isSpecified()`

  A flag indicating whether this attribute was actually
  specified in the start-tag of its element, or was defaulted from the schema.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getName

    [QName](../../namespace/QName.md "class in javax.xml.namespace") getName()

    Returns the QName for this attribute.

    Returns:
    :   the QName of the attribute
  + ### getValue

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue()

    Gets the normalized value of this attribute.

    Returns:
    :   the normalized value of the attribute
  + ### getDTDType

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDTDType()

    Gets the type of this attribute, default is
    the String "CDATA".

    Returns:
    :   the type as a String, default is "CDATA"
  + ### isSpecified

    boolean isSpecified()

    A flag indicating whether this attribute was actually
    specified in the start-tag of its element, or was defaulted from the schema.

    Returns:
    :   returns true if this was specified in the start element