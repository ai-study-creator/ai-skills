Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLStreamWriter

---

public interface XMLStreamWriter

The XMLStreamWriter interface specifies how to write XML. The XMLStreamWriter does
not perform well formedness checking on its input. However
the writeCharacters method is required to escape &, < and >
For attribute values the writeAttribute method will escape the
above characters plus " to ensure that all character content
and attribute values are well formed.
Each NAMESPACE
and ATTRIBUTE must be individually written.

XML Namespaces, `javax.xml.stream.isRepairingNamespaces` and write method behaviour

| Method | `isRepairingNamespaces` == true | | `isRepairingNamespaces` == false | |
| --- | --- | --- | --- | --- |
| namespaceURI bound | namespaceURI unbound | namespaceURI bound | namespaceURI unbound |
| `writeAttribute(namespaceURI, localName, value)` | prefix:localName="value" [1] | xmlns:{generated}="namespaceURI" {generated}:localName="value" | prefix:localName="value" [1] | `XMLStreamException` |
| `writeAttribute(prefix, namespaceURI, localName, value)` | bound to same prefix:  prefix:localName="value" [1]    bound to different prefix:  xmlns:{generated}="namespaceURI" {generated}:localName="value" | xmlns:prefix="namespaceURI" prefix:localName="value" [3] | bound to same prefix:  prefix:localName="value" [1][2]    bound to different prefix:  `XMLStreamException`[2] | xmlns:prefix="namespaceURI" prefix:localName="value" [2][5] |
| `writeStartElement(namespaceURI, localName)`    `writeEmptyElement(namespaceURI, localName)` | `<prefix:localName>` [1] | `<{generated}:localName xmlns:{generated}="namespaceURI">` | `prefix:localName>` [1] | `XMLStreamException` |
| `writeStartElement(prefix, localName, namespaceURI)`    `writeEmptyElement(prefix, localName, namespaceURI)` | bound to same prefix:  `<prefix:localName>` [1]    bound to different prefix:  `<{generated}:localName xmlns:{generated}="namespaceURI">` | `<prefix:localName xmlns:prefix="namespaceURI">` [4] | bound to same prefix:  `<prefix:localName>` [1]    bound to different prefix:  `XMLStreamException` | `<prefix:localName>` |

Notes:

* [1] if namespaceURI == default Namespace URI, then no prefix is written
* [2] if prefix == "" || null && namespaceURI == "", then
  no prefix or Namespace declaration is generated or written
* [3] if prefix == "" || null, then a prefix is randomly generated
* [4] if prefix == "" || null, then it is treated as the default Namespace and
  no prefix is generated or written, an xmlns declaration is generated
  and written if the namespaceURI is unbound
* [5] if prefix == "" || null, then it is treated as an invalid attempt to
  define the default Namespace and an XMLStreamException is thrown

Since:
:   1.6

See Also:
:   * [`XMLOutputFactory`](XMLOutputFactory.md "class in javax.xml.stream")
    * [`XMLStreamReader`](XMLStreamReader.md "interface in javax.xml.stream")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Close this writer and free any resources associated with the
  writer.

  `void`

  `flush()`

  Write any cached data to the underlying output mechanism.

  `NamespaceContext`

  `getNamespaceContext()`

  Returns the current namespace context.

  `String`

  `getPrefix(String uri)`

  Gets the prefix the uri is bound to.

  `Object`

  `getProperty(String name)`

  Get the value of a feature/property from the underlying implementation

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

  `void`

  `writeAttribute(String localName,
  String value)`

  Writes an attribute to the output stream without
  a prefix.

  `void`

  `writeAttribute(String namespaceURI,
  String localName,
  String value)`

  Writes an attribute to the output stream

  `void`

  `writeAttribute(String prefix,
  String namespaceURI,
  String localName,
  String value)`

  Writes an attribute to the output stream

  `void`

  `writeCData(String data)`

  Writes a CData section

  `void`

  `writeCharacters(char[] text,
  int start,
  int len)`

  Write text to the output

  `void`

  `writeCharacters(String text)`

  Write text to the output

  `void`

  `writeComment(String data)`

  Writes an xml comment with the data enclosed

  `void`

  `writeDefaultNamespace(String namespaceURI)`

  Writes the default namespace to the stream

  `void`

  `writeDTD(String dtd)`

  Write a DTD section.

  `void`

  `writeEmptyElement(String localName)`

  Writes an empty element tag to the output

  `void`

  `writeEmptyElement(String namespaceURI,
  String localName)`

  Writes an empty element tag to the output

  `void`

  `writeEmptyElement(String prefix,
  String localName,
  String namespaceURI)`

  Writes an empty element tag to the output

  `void`

  `writeEndDocument()`

  Closes any start tags and writes corresponding end tags.

  `void`

  `writeEndElement()`

  Writes an end tag to the output relying on the internal
  state of the writer to determine the prefix and local name
  of the event.

  `void`

  `writeEntityRef(String name)`

  Writes an entity reference

  `void`

  `writeNamespace(String prefix,
  String namespaceURI)`

  Writes a namespace to the output stream
  If the prefix argument to this method is the empty string,
  "xmlns", or null this method will delegate to writeDefaultNamespace

  `void`

  `writeProcessingInstruction(String target)`

  Writes a processing instruction

  `void`

  `writeProcessingInstruction(String target,
  String data)`

  Writes a processing instruction

  `void`

  `writeStartDocument()`

  Write the XML Declaration.

  `void`

  `writeStartDocument(String version)`

  Write the XML Declaration.

  `void`

  `writeStartDocument(String encoding,
  String version)`

  Write the XML Declaration.

  `void`

  `writeStartElement(String localName)`

  Writes a start tag to the output.

  `void`

  `writeStartElement(String namespaceURI,
  String localName)`

  Writes a start tag to the output

  `void`

  `writeStartElement(String prefix,
  String localName,
  String namespaceURI)`

  Writes a start tag to the output

* ## Method Details

  + ### writeStartElement

    void writeStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a start tag to the output. All writeStartElement methods
    open a new scope in the internal namespace context. Writing the
    corresponding EndElement causes the scope to be closed.

    Parameters:
    :   `localName` - local name of the tag, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeStartElement

    void writeStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a start tag to the output

    Parameters:
    :   `namespaceURI` - the namespaceURI of the prefix to use, may not be null
    :   `localName` - local name of the tag, may not be null

    Throws:
    :   `XMLStreamException` - if the namespace URI has not been bound to a prefix and
        javax.xml.stream.isRepairingNamespaces has not been set to true
  + ### writeStartElement

    void writeStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a start tag to the output

    Parameters:
    :   `prefix` - the prefix of the tag, may not be null
    :   `localName` - local name of the tag, may not be null
    :   `namespaceURI` - the uri to bind the prefix to, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeEmptyElement

    void writeEmptyElement([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an empty element tag to the output

    Parameters:
    :   `namespaceURI` - the uri to bind the tag to, may not be null
    :   `localName` - local name of the tag, may not be null

    Throws:
    :   `XMLStreamException` - if the namespace URI has not been bound to a prefix and
        javax.xml.stream.isRepairingNamespaces has not been set to true
  + ### writeEmptyElement

    void writeEmptyElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an empty element tag to the output

    Parameters:
    :   `prefix` - the prefix of the tag, may not be null
    :   `localName` - local name of the tag, may not be null
    :   `namespaceURI` - the uri to bind the tag to, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeEmptyElement

    void writeEmptyElement([String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an empty element tag to the output

    Parameters:
    :   `localName` - local name of the tag, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeEndElement

    void writeEndElement()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an end tag to the output relying on the internal
    state of the writer to determine the prefix and local name
    of the event.

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeEndDocument

    void writeEndDocument()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Closes any start tags and writes corresponding end tags.

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### close

    void close()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Close this writer and free any resources associated with the
    writer. This must not close the underlying output stream.

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### flush

    void flush()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write any cached data to the underlying output mechanism.

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeAttribute

    void writeAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an attribute to the output stream without
    a prefix.

    Parameters:
    :   `localName` - the local name of the attribute
    :   `value` - the value of the attribute

    Throws:
    :   `IllegalStateException` - if the current state does not allow Attribute writing
    :   `XMLStreamException` - if an error occurs
  + ### writeAttribute

    void writeAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an attribute to the output stream

    Parameters:
    :   `prefix` - the prefix for this attribute
    :   `namespaceURI` - the uri of the prefix for this attribute
    :   `localName` - the local name of the attribute
    :   `value` - the value of the attribute

    Throws:
    :   `IllegalStateException` - if the current state does not allow Attribute writing
    :   `XMLStreamException` - if the namespace URI has not been bound to a prefix and
        javax.xml.stream.isRepairingNamespaces has not been set to true
  + ### writeAttribute

    void writeAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an attribute to the output stream

    Parameters:
    :   `namespaceURI` - the uri of the prefix for this attribute
    :   `localName` - the local name of the attribute
    :   `value` - the value of the attribute

    Throws:
    :   `IllegalStateException` - if the current state does not allow Attribute writing
    :   `XMLStreamException` - if the namespace URI has not been bound to a prefix and
        javax.xml.stream.isRepairingNamespaces has not been set to true
  + ### writeNamespace

    void writeNamespace([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a namespace to the output stream
    If the prefix argument to this method is the empty string,
    "xmlns", or null this method will delegate to writeDefaultNamespace

    Parameters:
    :   `prefix` - the prefix to bind this namespace to
    :   `namespaceURI` - the uri to bind the prefix to

    Throws:
    :   `IllegalStateException` - if the current state does not allow Namespace writing
    :   `XMLStreamException` - if an error occurs
  + ### writeDefaultNamespace

    void writeDefaultNamespace([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes the default namespace to the stream

    Parameters:
    :   `namespaceURI` - the uri to bind the default namespace to

    Throws:
    :   `IllegalStateException` - if the current state does not allow Namespace writing
    :   `XMLStreamException` - if an error occurs
  + ### writeComment

    void writeComment([String](../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an xml comment with the data enclosed

    Parameters:
    :   `data` - the data contained in the comment, may be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeProcessingInstruction

    void writeProcessingInstruction([String](../../../../java.base/java/lang/String.md "class in java.lang") target)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a processing instruction

    Parameters:
    :   `target` - the target of the processing instruction, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeProcessingInstruction

    void writeProcessingInstruction([String](../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a processing instruction

    Parameters:
    :   `target` - the target of the processing instruction, may not be null
    :   `data` - the data contained in the processing instruction, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeCData

    void writeCData([String](../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes a CData section

    Parameters:
    :   `data` - the data contained in the CData Section, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeDTD

    void writeDTD([String](../../../../java.base/java/lang/String.md "class in java.lang") dtd)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write a DTD section. This string represents the entire doctypedecl production
    from the XML 1.0 specification.

    Parameters:
    :   `dtd` - the DTD to be written

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeEntityRef

    void writeEntityRef([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Writes an entity reference

    Parameters:
    :   `name` - the name of the entity

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeStartDocument

    void writeStartDocument()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write the XML Declaration. Defaults the XML version to 1.0, and the encoding to utf-8

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeStartDocument

    void writeStartDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") version)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write the XML Declaration. Defaults the XML version to 1.0

    Parameters:
    :   `version` - version of the xml document

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeStartDocument

    void writeStartDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") encoding,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write the XML Declaration. Note that the encoding parameter does
    not set the actual encoding of the underlying output. That must
    be set when the instance of the XMLStreamWriter is created using the
    XMLOutputFactory

    Parameters:
    :   `encoding` - encoding of the xml declaration
    :   `version` - version of the xml document

    Throws:
    :   `XMLStreamException` - If given encoding does not match encoding
        of the underlying stream
  + ### writeCharacters

    void writeCharacters([String](../../../../java.base/java/lang/String.md "class in java.lang") text)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write text to the output

    Parameters:
    :   `text` - the value to write

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### writeCharacters

    void writeCharacters(char[] text,
    int start,
    int len)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Write text to the output

    Parameters:
    :   `text` - the value to write
    :   `start` - the starting position in the array
    :   `len` - the number of characters to write

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### getPrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Gets the prefix the uri is bound to.

    Parameters:
    :   `uri` - the uri the prefix is bound to

    Returns:
    :   the prefix or null

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
    :   `prefix` - the prefix to bind to the uri, may not be null
    :   `uri` - the uri to bind to the prefix, may be null

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
    :   `uri` - the uri to bind to the default namespace, may be null

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
    namespaces. This method may only be called once at the start of
    the document. It does not cause the namespaces to be declared.
    If a namespace URI to prefix mapping is found in the namespace
    context it is treated as declared and the prefix may be used
    by the StreamWriter.

    Parameters:
    :   `context` - the namespace context to use for this writer, may not be null

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### getNamespaceContext

    [NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") getNamespaceContext()

    Returns the current namespace context.

    Returns:
    :   the current NamespaceContext
  + ### getProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Get the value of a feature/property from the underlying implementation

    Parameters:
    :   `name` - The name of the property, may not be null

    Returns:
    :   The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
    :   `NullPointerException` - if the name is null