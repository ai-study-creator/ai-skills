Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface Namespace

All Superinterfaces:
:   `Attribute`, `XMLEvent`, `XMLStreamConstants`

---

public interface Namespace
extends [Attribute](Attribute.md "interface in javax.xml.stream.events")

An interface that contains information about a namespace.
Namespaces are accessed from a StartElement.

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

  `getNamespaceURI()`

  Gets the uri bound to the prefix of this namespace

  `String`

  `getPrefix()`

  Gets the prefix, returns "" if this is a default
  namespace declaration.

  `boolean`

  `isDefaultNamespaceDeclaration()`

  returns true if this attribute declares the default namespace

  ### Methods inherited from interface javax.xml.stream.events.[Attribute](Attribute.md "interface in javax.xml.stream.events")

  `getDTDType, getName, getValue, isSpecified`

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getPrefix

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPrefix()

    Gets the prefix, returns "" if this is a default
    namespace declaration.

    Returns:
    :   the prefix
  + ### getNamespaceURI

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI()

    Gets the uri bound to the prefix of this namespace

    Returns:
    :   the `NamespaceURI`
  + ### isDefaultNamespaceDeclaration

    boolean isDefaultNamespaceDeclaration()

    returns true if this attribute declares the default namespace

    Returns:
    :   true if this is default namespace, false otherwise