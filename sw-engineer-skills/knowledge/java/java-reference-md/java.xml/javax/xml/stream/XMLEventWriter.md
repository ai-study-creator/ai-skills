Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLEventWriter

All Superinterfaces:
:   `XMLEventConsumer`

---

public interface XMLEventWriter
extends [XMLEventConsumer](util/XMLEventConsumer.md "interface in javax.xml.stream.util")

This is the top level interface for writing XML documents.
Instances of this interface are not required to validate the
form of the XML.

Since:
:   1.6

See Also:
:   * [`XMLEventReader`](XMLEventReader.md "interface in javax.xml.stream")
    * [`XMLEvent`](events/XMLEvent.md "interface in javax.xml.stream.events")
    * [`Characters`](events/Characters.md "interface in javax.xml.stream.events")
    * [`ProcessingInstruction`](events/ProcessingInstruction.md "interface in javax.xml.stream.events")
    * [`StartElement`](events/StartElement.md "interface in javax.xml.stream.events")
    * [`EndElement`](events/EndElement.md "interface in javax.xml.stream.events")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(XMLEvent event)`

  Add an event to the output stream
  Adding a START\_ELEMENT will open a new namespace scope that
  will be closed when the corresponding END\_ELEMENT is written.

  `void`

  `add(XMLEventReader reader)`

  Adds an entire stream to an output stream,
  calls next() on the inputStream argument until hasNext() returns false
  This should be treated as a convenience method that will
  perform the following loop over all the events in an
  event reader and call add on each event.

  `void`

  `close()`

  Frees any resources associated with this stream

  `void`

  `flush()`

  Writes any cached events to the underlying output mechanism

  `NamespaceContext`

  `getNamespaceContext()`

  Returns the current namespace context.

  `String`

  `getPrefix(String uri)`

  Gets the prefix the uri is bound to

  `void`

  `setDefaultNamespace(String uri)`

  Binds a URI to the default namespace
  This URI is bound
  in the scope of the current START\_ELEMENT / END\_ELEMENT pair.

  `void`

  `setNamespaceContext(NamespaceContext context)`

  Sets the current namespace context for prefix and uri bindings.

  `void`

  `setPrefix(String prefix,
  String uri)`

  Sets the prefix the uri is bound to.

* ## Method Details

  + ### flush

    void flush()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes any cached events to the underlying output mechanism

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### close

    void close()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Frees any resources associated with this stream

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### add

    void add([XMLEvent](events/XMLEvent.md "interface in javax.xml.stream.events") event)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Add an event to the output stream
    Adding a START\_ELEMENT will open a new namespace scope that
    will be closed when the corresponding END\_ELEMENT is written.

    Required and optional fields for events added to the writer

    | Event Type | Required Fields | Optional Fields | Required Behavior |
    | --- | --- | --- | --- |
    | START\_ELEMENT | QName name | namespaces , attributes | A START\_ELEMENT will be written by writing the name, namespaces, and attributes of the event in XML 1.0 valid syntax for START\_ELEMENTs. The name is written by looking up the prefix for the namespace uri. The writer can be configured to respect prefixes of QNames. If the writer is respecting prefixes it must use the prefix set on the QName. The default behavior is to lookup the value for the prefix on the EventWriter's internal namespace context. Each attribute (if any) is written using the behavior specified in the attribute section of this table. Each namespace (if any) is written using the behavior specified in the namespace section of this table. |
    | END\_ELEMENT | Qname name | None | A well formed END\_ELEMENT tag is written. The name is written by looking up the prefix for the namespace uri. The writer can be configured to respect prefixes of QNames. If the writer is respecting prefixes it must use the prefix set on the QName. The default behavior is to lookup the value for the prefix on the EventWriter's internal namespace context. If the END\_ELEMENT name does not match the START\_ELEMENT name an XMLStreamException is thrown. |
    | ATTRIBUTE | QName name , String value | QName type | An attribute is written using the same algorithm to find the lexical form as used in START\_ELEMENT. The default is to use double quotes to wrap attribute values and to escape any double quotes found in the value. The type value is ignored. |
    | NAMESPACE | String prefix, String namespaceURI, boolean isDefaultNamespaceDeclaration | None | A namespace declaration is written. If the namespace is a default namespace declaration (isDefault is true) then xmlns="$namespaceURI" is written and the prefix is optional. If isDefault is false, the prefix must be declared and the writer must prepend xmlns to the prefix and write out a standard prefix declaration. |
    | PROCESSING\_INSTRUCTION | None | String target, String data | The data does not need to be present and may be null. Target is required and many not be null. The writer will write data section directly after the target, enclosed in appropriate XML 1.0 syntax |
    | COMMENT | None | String comment | If the comment is present (not null) it is written, otherwise an an empty comment is written |
    | START\_DOCUMENT | None | String encoding , boolean standalone, String version | A START\_DOCUMENT event is not required to be written to the stream. If present the attributes are written inside the appropriate XML declaration syntax |
    | END\_DOCUMENT | None | None | Nothing is written to the output |
    | DTD | String DocumentTypeDefinition | None | The DocumentTypeDefinition is written to the output |

    Specified by:
    :   `add` in interface `XMLEventConsumer`

    Parameters:
    :   `event` - the event to be added

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### add

    void add([XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Adds an entire stream to an output stream,
    calls next() on the inputStream argument until hasNext() returns false
    This should be treated as a convenience method that will
    perform the following loop over all the events in an
    event reader and call add on each event.

    Parameters:
    :   `reader` - the event stream to add to the output

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### getPrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Gets the prefix the uri is bound to

    Parameters:
    :   `uri` - the uri to look up

    Returns:
    :   the prefix

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### setPrefix

    void setPrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Sets the prefix the uri is bound to. This prefix is bound
    in the scope of the current START\_ELEMENT / END\_ELEMENT pair.
    If this method is called before a START\_ELEMENT has been written
    the prefix is bound in the root scope.

    Parameters:
    :   `prefix` - the prefix to bind to the uri
    :   `uri` - the uri to bind to the prefix

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### setDefaultNamespace

    void setDefaultNamespace([String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Binds a URI to the default namespace
    This URI is bound
    in the scope of the current START\_ELEMENT / END\_ELEMENT pair.
    If this method is called before a START\_ELEMENT has been written
    the uri is bound in the root scope.

    Parameters:
    :   `uri` - the uri to bind to the default namespace

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### setNamespaceContext

    void setNamespaceContext([NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") context)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Sets the current namespace context for prefix and uri bindings.
    This context becomes the root namespace context for writing and
    will replace the current root namespace context. Subsequent calls
    to setPrefix and setDefaultNamespace will bind namespaces using
    the context passed to the method as the root context for resolving
    namespaces.

    Parameters:
    :   `context` - the namespace context to use for this writer

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### getNamespaceContext

    [NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") getNamespaceContext()

    Returns the current namespace context.

    Returns:
    :   the current namespace context