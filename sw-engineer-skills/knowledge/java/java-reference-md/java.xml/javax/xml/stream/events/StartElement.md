Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.events](package-summary.md)

# Interface StartElement

All Superinterfaces:
:   `XMLEvent`, `XMLStreamConstants`

---

public interface StartElement
extends [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

The StartElement interface provides access to information about
start elements. A StartElement is reported for each Start Tag
in the document.

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

  `Attribute`

  `getAttributeByName(QName name)`

  Returns the attribute referred to by the qname.

  `Iterator<Attribute>`

  `getAttributes()`

  Returns an Iterator of non-namespace attributes declared on this START\_ELEMENT.

  `QName`

  `getName()`

  Get the name of this event

  `NamespaceContext`

  `getNamespaceContext()`

  Gets a read-only namespace context.

  `Iterator<Namespace>`

  `getNamespaces()`

  Returns an Iterator of namespaces declared on this element.

  `String`

  `getNamespaceURI(String prefix)`

  Gets the value that the prefix is bound to in the
  context of this element.

  ### Methods inherited from interface javax.xml.stream.events.[XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  `asCharacters, asEndElement, asStartElement, getEventType, getLocation, getSchemaType, isAttribute, isCharacters, isEndDocument, isEndElement, isEntityReference, isNamespace, isProcessingInstruction, isStartDocument, isStartElement, writeAsEncodedUnicode`

* ## Method Details

  + ### getName

    [QName](../../namespace/QName.md "class in javax.xml.namespace") getName()

    Get the name of this event

    Returns:
    :   the qualified name of this event
  + ### getAttributes

    [Iterator](../../../../../java.base/java/util/Iterator.md "interface in java.util")<[Attribute](Attribute.md "interface in javax.xml.stream.events")> getAttributes()

    Returns an Iterator of non-namespace attributes declared on this START\_ELEMENT.
    Returns an empty iterator if there are no attributes.
    The iterator must contain only implementations of the
    [`Attribute`](Attribute.md "interface in javax.xml.stream.events") interface.
    Attributes are fundamentally unordered and may be reported
    in any order.

    Returns:
    :   a readonly Iterator over Attribute interfaces, or an
        empty iterator
  + ### getNamespaces

    [Iterator](../../../../../java.base/java/util/Iterator.md "interface in java.util")<[Namespace](Namespace.md "interface in javax.xml.stream.events")> getNamespaces()

    Returns an Iterator of namespaces declared on this element.
    This Iterator does not contain previously declared namespaces
    unless they appear on the current START\_ELEMENT.
    Therefore this list may contain redeclared namespaces and duplicate namespace
    declarations. Use the getNamespaceContext() method to get the
    current context of namespace declarations.

    The iterator must contain only implementations of the
    [`Namespace`](Namespace.md "interface in javax.xml.stream.events") interface.

    A [`Namespace`](Namespace.md "interface in javax.xml.stream.events") is an [`Attribute`](Attribute.md "interface in javax.xml.stream.events"). One
    can iterate over a list of namespaces as a list of attributes.
    However this method returns only the list of namespaces
    declared on this START\_ELEMENT and does not
    include the attributes declared on this START\_ELEMENT.
    Returns an empty iterator if there are no namespaces.

    Returns:
    :   a readonly Iterator over Namespace interfaces, or an
        empty iterator
  + ### getAttributeByName

    [Attribute](Attribute.md "interface in javax.xml.stream.events") getAttributeByName([QName](../../namespace/QName.md "class in javax.xml.namespace") name)

    Returns the attribute referred to by the qname.

    Parameters:
    :   `name` - the qname of the desired attribute

    Returns:
    :   the attribute corresponding to the name value or null
  + ### getNamespaceContext

    [NamespaceContext](../../namespace/NamespaceContext.md "interface in javax.xml.namespace") getNamespaceContext()

    Gets a read-only namespace context. If no context is
    available this method will return an empty namespace context.
    The NamespaceContext contains information about all namespaces
    in scope for this StartElement.

    Returns:
    :   the current namespace context
  + ### getNamespaceURI

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Gets the value that the prefix is bound to in the
    context of this element. Returns null if
    the prefix is not bound in this context

    Parameters:
    :   `prefix` - the prefix to lookup

    Returns:
    :   the uri bound to the prefix or null