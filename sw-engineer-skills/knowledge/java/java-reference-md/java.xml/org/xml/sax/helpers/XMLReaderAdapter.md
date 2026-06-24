Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class XMLReaderAdapter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.XMLReaderAdapter

All Implemented Interfaces:
:   `ContentHandler`, `Parser`

---

public class XMLReaderAdapter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Parser](../Parser.md "interface in org.xml.sax"), [ContentHandler](../ContentHandler.md "interface in org.xml.sax")

Adapt a SAX2 XMLReader as a SAX1 Parser.

This class wraps a SAX2 [`XMLReader`](../XMLReader.md "interface in org.xml.sax")
and makes it act as a SAX1 [`Parser`](../Parser.md "interface in org.xml.sax"). The XMLReader
must support a true value for the
http://xml.org/sax/features/namespace-prefixes property or parsing will fail
with a [`SAXException`](../SAXException.md "class in org.xml.sax"); if the XMLReader
supports a false value for the http://xml.org/sax/features/namespaces
property, that will also be used to improve efficiency.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`Parser`](../Parser.md "interface in org.xml.sax")
    * [`XMLReader`](../XMLReader.md "interface in org.xml.sax")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLReaderAdapter()`

  Create a new adapter.

  `XMLReaderAdapter(XMLReader xmlReader)`

  Create a new adapter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `characters(char[] ch,
  int start,
  int length)`

  Adapt a SAX2 characters event.

  `void`

  `endDocument()`

  End document event.

  `void`

  `endElement(String uri,
  String localName,
  String qName)`

  Adapt a SAX2 end element event.

  `void`

  `endPrefixMapping(String prefix)`

  Adapt a SAX2 end prefix mapping event.

  `void`

  `ignorableWhitespace(char[] ch,
  int start,
  int length)`

  Adapt a SAX2 ignorable whitespace event.

  `void`

  `parse(String systemId)`

  Parse the document.

  `void`

  `parse(InputSource input)`

  Parse the document.

  `void`

  `processingInstruction(String target,
  String data)`

  Adapt a SAX2 processing instruction event.

  `void`

  `setDocumentHandler(DocumentHandler handler)`

  Register the SAX1 document event handler.

  `void`

  `setDocumentLocator(Locator locator)`

  Set a document locator.

  `void`

  `setDTDHandler(DTDHandler handler)`

  Register the DTD event handler.

  `void`

  `setEntityResolver(EntityResolver resolver)`

  Register the entity resolver.

  `void`

  `setErrorHandler(ErrorHandler handler)`

  Register the error event handler.

  `void`

  `setLocale(Locale locale)`

  Set the locale for error reporting.

  `void`

  `skippedEntity(String name)`

  Adapt a SAX2 skipped entity event.

  `void`

  `startDocument()`

  Start document event.

  `void`

  `startElement(String uri,
  String localName,
  String qName,
  Attributes atts)`

  Adapt a SAX2 start element event.

  `void`

  `startPrefixMapping(String prefix,
  String uri)`

  Adapt a SAX2 start prefix mapping event.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../ContentHandler.md "interface in org.xml.sax")

  `declaration`

* ## Constructor Details

  + ### XMLReaderAdapter

    public XMLReaderAdapter()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Create a new adapter.

    Use the "org.xml.sax.driver" property to locate the SAX2
    driver to embed.

    Throws:
    :   `SAXException` - If the embedded driver
        cannot be instantiated or if the
        org.xml.sax.driver property is not specified.
  + ### XMLReaderAdapter

    public XMLReaderAdapter([XMLReader](../XMLReader.md "interface in org.xml.sax") xmlReader)

    Create a new adapter.

    Create a new adapter, wrapped around a SAX2 XMLReader.
    The adapter will make the XMLReader act like a SAX1
    Parser.

    Parameters:
    :   `xmlReader` - The SAX2 XMLReader to wrap.

    Throws:
    :   `NullPointerException` - If the argument is null.
* ## Method Details

  + ### setLocale

    public void setLocale([Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Set the locale for error reporting.

    This is not supported in SAX2, and will always throw
    an exception.

    Specified by:
    :   `setLocale` in interface `Parser`

    Parameters:
    :   `locale` - the locale for error reporting.

    Throws:
    :   `SAXException` - Thrown unless overridden.

    See Also:
    :   - [`Parser.setLocale(java.util.Locale)`](../Parser.md#setLocale(java.util.Locale))
  + ### setEntityResolver

    public void setEntityResolver([EntityResolver](../EntityResolver.md "interface in org.xml.sax") resolver)

    Register the entity resolver.

    Specified by:
    :   `setEntityResolver` in interface `Parser`

    Parameters:
    :   `resolver` - The new resolver.

    See Also:
    :   - [`Parser.setEntityResolver(org.xml.sax.EntityResolver)`](../Parser.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### setDTDHandler

    public void setDTDHandler([DTDHandler](../DTDHandler.md "interface in org.xml.sax") handler)

    Register the DTD event handler.

    Specified by:
    :   `setDTDHandler` in interface `Parser`

    Parameters:
    :   `handler` - The new DTD event handler.

    See Also:
    :   - [`Parser.setDTDHandler(org.xml.sax.DTDHandler)`](../Parser.md#setDTDHandler(org.xml.sax.DTDHandler))
  + ### setDocumentHandler

    public void setDocumentHandler([DocumentHandler](../DocumentHandler.md "interface in org.xml.sax") handler)

    Register the SAX1 document event handler.

    Note that the SAX1 document handler has no Namespace
    support.

    Specified by:
    :   `setDocumentHandler` in interface `Parser`

    Parameters:
    :   `handler` - The new SAX1 document event handler.

    See Also:
    :   - [`Parser.setDocumentHandler(org.xml.sax.DocumentHandler)`](../Parser.md#setDocumentHandler(org.xml.sax.DocumentHandler))
  + ### setErrorHandler

    public void setErrorHandler([ErrorHandler](../ErrorHandler.md "interface in org.xml.sax") handler)

    Register the error event handler.

    Specified by:
    :   `setErrorHandler` in interface `Parser`

    Parameters:
    :   `handler` - The new error event handler.

    See Also:
    :   - [`Parser.setErrorHandler(org.xml.sax.ErrorHandler)`](../Parser.md#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    public void parse([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [SAXException](../SAXException.md "class in org.xml.sax")

    Parse the document.

    This method will throw an exception if the embedded
    XMLReader does not support the
    http://xml.org/sax/features/namespace-prefixes property.

    Specified by:
    :   `parse` in interface `Parser`

    Parameters:
    :   `systemId` - The absolute URL of the document.

    Throws:
    :   `IOException` - If there is a problem reading
        the raw content of the document.
    :   `SAXException` - If there is a problem
        processing the document.

    See Also:
    :   - [`parse(org.xml.sax.InputSource)`](#parse(org.xml.sax.InputSource))
        - [`Parser.parse(java.lang.String)`](../Parser.md#parse(java.lang.String))
  + ### parse

    public void parse([InputSource](../InputSource.md "class in org.xml.sax") input)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [SAXException](../SAXException.md "class in org.xml.sax")

    Parse the document.

    This method will throw an exception if the embedded
    XMLReader does not support the
    http://xml.org/sax/features/namespace-prefixes property.

    Specified by:
    :   `parse` in interface `Parser`

    Parameters:
    :   `input` - An input source for the document.

    Throws:
    :   `IOException` - If there is a problem reading
        the raw content of the document.
    :   `SAXException` - If there is a problem
        processing the document.

    See Also:
    :   - [`parse(java.lang.String)`](#parse(java.lang.String))
        - [`Parser.parse(org.xml.sax.InputSource)`](../Parser.md#parse(org.xml.sax.InputSource))
  + ### setDocumentLocator

    public void setDocumentLocator([Locator](../Locator.md "interface in org.xml.sax") locator)

    Set a document locator.

    Specified by:
    :   `setDocumentLocator` in interface `ContentHandler`

    Parameters:
    :   `locator` - The document locator.

    See Also:
    :   - [`ContentHandler.setDocumentLocator(org.xml.sax.Locator)`](../ContentHandler.md#setDocumentLocator(org.xml.sax.Locator))
  + ### startDocument

    public void startDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Start document event.

    Specified by:
    :   `startDocument` in interface `ContentHandler`

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.startDocument()`](../ContentHandler.md#startDocument())
  + ### endDocument

    public void endDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    End document event.

    Specified by:
    :   `endDocument` in interface `ContentHandler`

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.endDocument()`](../ContentHandler.md#endDocument())
  + ### startPrefixMapping

    public void startPrefixMapping([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") uri)

    Adapt a SAX2 start prefix mapping event.

    Specified by:
    :   `startPrefixMapping` in interface `ContentHandler`

    Parameters:
    :   `prefix` - The prefix being mapped.
    :   `uri` - The Namespace URI being mapped to.

    See Also:
    :   - [`ContentHandler.startPrefixMapping(java.lang.String, java.lang.String)`](../ContentHandler.md#startPrefixMapping(java.lang.String,java.lang.String))
  + ### endPrefixMapping

    public void endPrefixMapping([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Adapt a SAX2 end prefix mapping event.

    Specified by:
    :   `endPrefixMapping` in interface `ContentHandler`

    Parameters:
    :   `prefix` - The prefix being mapped.

    See Also:
    :   - [`ContentHandler.endPrefixMapping(java.lang.String)`](../ContentHandler.md#endPrefixMapping(java.lang.String))
  + ### startElement

    public void startElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [Attributes](../Attributes.md "interface in org.xml.sax") atts)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 start element event.

    Specified by:
    :   `startElement` in interface `ContentHandler`

    Parameters:
    :   `uri` - The Namespace URI.
    :   `localName` - The Namespace local name.
    :   `qName` - The qualified (prefixed) name.
    :   `atts` - The SAX2 attributes.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.endDocument()`](../ContentHandler.md#endDocument())
  + ### endElement

    public void endElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 end element event.

    Specified by:
    :   `endElement` in interface `ContentHandler`

    Parameters:
    :   `uri` - The Namespace URI.
    :   `localName` - The Namespace local name.
    :   `qName` - The qualified (prefixed) name.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.endElement(java.lang.String, java.lang.String, java.lang.String)`](../ContentHandler.md#endElement(java.lang.String,java.lang.String,java.lang.String))
  + ### characters

    public void characters(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 characters event.

    Specified by:
    :   `characters` in interface `ContentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.characters(char[], int, int)`](../ContentHandler.md#characters(char%5B%5D,int,int))
  + ### ignorableWhitespace

    public void ignorableWhitespace(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 ignorable whitespace event.

    Specified by:
    :   `ignorableWhitespace` in interface `ContentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.ignorableWhitespace(char[], int, int)`](../ContentHandler.md#ignorableWhitespace(char%5B%5D,int,int))
  + ### processingInstruction

    public void processingInstruction([String](../../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 processing instruction event.

    Specified by:
    :   `processingInstruction` in interface `ContentHandler`

    Parameters:
    :   `target` - The processing instruction target.
    :   `data` - The remainder of the processing instruction

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`ContentHandler.processingInstruction(java.lang.String, java.lang.String)`](../ContentHandler.md#processingInstruction(java.lang.String,java.lang.String))
  + ### skippedEntity

    public void skippedEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapt a SAX2 skipped entity event.

    Specified by:
    :   `skippedEntity` in interface `ContentHandler`

    Parameters:
    :   `name` - The name of the skipped entity.

    Throws:
    :   `SAXException` - Throwable by subclasses.

    See Also:
    :   - [`ContentHandler.skippedEntity(java.lang.String)`](../ContentHandler.md#skippedEntity(java.lang.String))