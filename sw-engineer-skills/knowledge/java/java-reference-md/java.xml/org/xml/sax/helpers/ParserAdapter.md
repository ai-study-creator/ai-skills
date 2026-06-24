Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class ParserAdapter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.ParserAdapter

All Implemented Interfaces:
:   `DocumentHandler`, `XMLReader`

---

public class ParserAdapter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLReader](../XMLReader.md "interface in org.xml.sax"), [DocumentHandler](../DocumentHandler.md "interface in org.xml.sax")

Adapt a SAX1 Parser as a SAX2 XMLReader.

This class wraps a SAX1 [`Parser`](../Parser.md "interface in org.xml.sax")
and makes it act as a SAX2 [`XMLReader`](../XMLReader.md "interface in org.xml.sax"),
with feature, property, and Namespace support. Note
that it is not possible to report [`skippedEntity`](../ContentHandler.md#skippedEntity(java.lang.String)) events, since SAX1 does not make that information available.

This adapter does not test for duplicate Namespace-qualified
attribute names.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`XMLReaderAdapter`](XMLReaderAdapter.md "class in org.xml.sax.helpers")
    * [`XMLReader`](../XMLReader.md "interface in org.xml.sax")
    * [`Parser`](../Parser.md "interface in org.xml.sax")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParserAdapter()`

  Construct a new parser adapter.

  `ParserAdapter(Parser parser)`

  Construct a new parser adapter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `characters(char[] ch,
  int start,
  int length)`

  Adapter implementation method; do not call.

  `void`

  `endDocument()`

  Adapter implementation method; do not call.

  `void`

  `endElement(String qName)`

  Adapter implementation method; do not call.

  `ContentHandler`

  `getContentHandler()`

  Return the current content handler.

  `DTDHandler`

  `getDTDHandler()`

  Return the current DTD handler.

  `EntityResolver`

  `getEntityResolver()`

  Return the current entity resolver.

  `ErrorHandler`

  `getErrorHandler()`

  Return the current error handler.

  `boolean`

  `getFeature(String name)`

  Check a parser feature flag.

  `Object`

  `getProperty(String name)`

  Get a parser property.

  `void`

  `ignorableWhitespace(char[] ch,
  int start,
  int length)`

  Adapter implementation method; do not call.

  `void`

  `parse(String systemId)`

  Parse an XML document.

  `void`

  `parse(InputSource input)`

  Parse an XML document.

  `void`

  `processingInstruction(String target,
  String data)`

  Adapter implementation method; do not call.

  `void`

  `setContentHandler(ContentHandler handler)`

  Set the content handler.

  `void`

  `setDocumentLocator(Locator locator)`

  Adapter implementation method; do not call.

  `void`

  `setDTDHandler(DTDHandler handler)`

  Set the DTD handler.

  `void`

  `setEntityResolver(EntityResolver resolver)`

  Set the entity resolver.

  `void`

  `setErrorHandler(ErrorHandler handler)`

  Set the error handler.

  `void`

  `setFeature(String name,
  boolean value)`

  Set a feature flag for the parser.

  `void`

  `setProperty(String name,
  Object value)`

  Set a parser property.

  `void`

  `startDocument()`

  Adapter implementation method; do not call.

  `void`

  `startElement(String qName,
  AttributeList qAtts)`

  Adapter implementation method; do not call.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ParserAdapter

    public ParserAdapter()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Construct a new parser adapter.

    Use the "org.xml.sax.parser" property to locate the
    embedded SAX1 driver.

    Throws:
    :   `SAXException` - If the embedded driver
        cannot be instantiated or if the
        org.xml.sax.parser property is not specified.
  + ### ParserAdapter

    public ParserAdapter([Parser](../Parser.md "interface in org.xml.sax") parser)

    Construct a new parser adapter.

    Note that the embedded parser cannot be changed once the
    adapter is created; to embed a different parser, allocate
    a new ParserAdapter.

    Parameters:
    :   `parser` - The SAX1 parser to embed.

    Throws:
    :   `NullPointerException` - If the parser parameter
        is null.
* ## Method Details

  + ### setFeature

    public void setFeature([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Set a feature flag for the parser.

    The only features recognized are namespaces and
    namespace-prefixes.

    Specified by:
    :   `setFeature` in interface `XMLReader`

    Parameters:
    :   `name` - The feature name, as a complete URI.
    :   `value` - The requested feature value.

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        can't be assigned or retrieved.
    :   `SAXNotSupportedException` - If the feature
        can't be assigned that value.

    See Also:
    :   - [`XMLReader.setFeature(java.lang.String, boolean)`](../XMLReader.md#setFeature(java.lang.String,boolean))
  + ### getFeature

    public boolean getFeature([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Check a parser feature flag.

    The only features recognized are namespaces and
    namespace-prefixes.

    Specified by:
    :   `getFeature` in interface `XMLReader`

    Parameters:
    :   `name` - The feature name, as a complete URI.

    Returns:
    :   The current feature value.

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - If the
        feature is not currently readable.

    See Also:
    :   - [`XMLReader.setFeature(java.lang.String, boolean)`](../XMLReader.md#setFeature(java.lang.String,boolean))
  + ### setProperty

    public void setProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Set a parser property.

    No properties are currently recognized.

    Specified by:
    :   `setProperty` in interface `XMLReader`

    Parameters:
    :   `name` - The property name.
    :   `value` - The property value.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - If the property
        can't be assigned that value.

    See Also:
    :   - [`XMLReader.setProperty(java.lang.String, java.lang.Object)`](../XMLReader.md#setProperty(java.lang.String,java.lang.Object))
  + ### getProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Get a parser property.

    No properties are currently recognized.

    Specified by:
    :   `getProperty` in interface `XMLReader`

    Parameters:
    :   `name` - The property name.

    Returns:
    :   The property value.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - If the property
        value is not currently readable.

    See Also:
    :   - [`XMLReader.getProperty(java.lang.String)`](../XMLReader.md#getProperty(java.lang.String))
  + ### setEntityResolver

    public void setEntityResolver([EntityResolver](../EntityResolver.md "interface in org.xml.sax") resolver)

    Set the entity resolver.

    Specified by:
    :   `setEntityResolver` in interface `XMLReader`

    Parameters:
    :   `resolver` - The new entity resolver.

    See Also:
    :   - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### getEntityResolver

    public [EntityResolver](../EntityResolver.md "interface in org.xml.sax") getEntityResolver()

    Return the current entity resolver.

    Specified by:
    :   `getEntityResolver` in interface `XMLReader`

    Returns:
    :   The current entity resolver, or null if none was supplied.

    See Also:
    :   - [`XMLReader.getEntityResolver()`](../XMLReader.md#getEntityResolver())
  + ### setDTDHandler

    public void setDTDHandler([DTDHandler](../DTDHandler.md "interface in org.xml.sax") handler)

    Set the DTD handler.

    Specified by:
    :   `setDTDHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - the new DTD handler

    See Also:
    :   - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### getDTDHandler

    public [DTDHandler](../DTDHandler.md "interface in org.xml.sax") getDTDHandler()

    Return the current DTD handler.

    Specified by:
    :   `getDTDHandler` in interface `XMLReader`

    Returns:
    :   the current DTD handler, or null if none was supplied

    See Also:
    :   - [`XMLReader.getEntityResolver()`](../XMLReader.md#getEntityResolver())
  + ### setContentHandler

    public void setContentHandler([ContentHandler](../ContentHandler.md "interface in org.xml.sax") handler)

    Set the content handler.

    Specified by:
    :   `setContentHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - the new content handler

    See Also:
    :   - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### getContentHandler

    public [ContentHandler](../ContentHandler.md "interface in org.xml.sax") getContentHandler()

    Return the current content handler.

    Specified by:
    :   `getContentHandler` in interface `XMLReader`

    Returns:
    :   The current content handler, or null if none was supplied.

    See Also:
    :   - [`XMLReader.getEntityResolver()`](../XMLReader.md#getEntityResolver())
  + ### setErrorHandler

    public void setErrorHandler([ErrorHandler](../ErrorHandler.md "interface in org.xml.sax") handler)

    Set the error handler.

    Specified by:
    :   `setErrorHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - The new error handler.

    See Also:
    :   - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### getErrorHandler

    public [ErrorHandler](../ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Return the current error handler.

    Specified by:
    :   `getErrorHandler` in interface `XMLReader`

    Returns:
    :   The current error handler, or null if none was supplied.

    See Also:
    :   - [`XMLReader.getEntityResolver()`](../XMLReader.md#getEntityResolver())
  + ### parse

    public void parse([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [SAXException](../SAXException.md "class in org.xml.sax")

    Parse an XML document.

    Specified by:
    :   `parse` in interface `XMLReader`

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

    Parse an XML document.

    Specified by:
    :   `parse` in interface `XMLReader`

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

    Adapter implementation method; do not call.
    Adapt a SAX1 document locator event.

    Specified by:
    :   `setDocumentLocator` in interface `DocumentHandler`

    Parameters:
    :   `locator` - A document locator.

    See Also:
    :   - [`ContentHandler.setDocumentLocator(org.xml.sax.Locator)`](../ContentHandler.md#setDocumentLocator(org.xml.sax.Locator))
  + ### startDocument

    public void startDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 start document event.

    Specified by:
    :   `startDocument` in interface `DocumentHandler`

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.startDocument()`](../DocumentHandler.md#startDocument())
  + ### endDocument

    public void endDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 end document event.

    Specified by:
    :   `endDocument` in interface `DocumentHandler`

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.endDocument()`](../DocumentHandler.md#endDocument())
  + ### startElement

    public void startElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [AttributeList](../AttributeList.md "interface in org.xml.sax") qAtts)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 startElement event.

    If necessary, perform Namespace processing.

    Specified by:
    :   `startElement` in interface `DocumentHandler`

    Parameters:
    :   `qName` - The qualified (prefixed) name.
    :   `qAtts` - The XML attribute list (with qnames).

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.endElement(java.lang.String)`](../DocumentHandler.md#endElement(java.lang.String))
        - [`AttributeList`](../AttributeList.md "interface in org.xml.sax")
  + ### endElement

    public void endElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 end element event.

    Specified by:
    :   `endElement` in interface `DocumentHandler`

    Parameters:
    :   `qName` - The qualified (prefixed) name.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.endElement(java.lang.String)`](../DocumentHandler.md#endElement(java.lang.String))
  + ### characters

    public void characters(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 characters event.

    Specified by:
    :   `characters` in interface `DocumentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.characters(char[], int, int)`](../DocumentHandler.md#characters(char%5B%5D,int,int))
  + ### ignorableWhitespace

    public void ignorableWhitespace(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 ignorable whitespace event.

    Specified by:
    :   `ignorableWhitespace` in interface `DocumentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use.

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.ignorableWhitespace(char[], int, int)`](../DocumentHandler.md#ignorableWhitespace(char%5B%5D,int,int))
  + ### processingInstruction

    public void processingInstruction([String](../../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Adapter implementation method; do not call.
    Adapt a SAX1 processing instruction event.

    Specified by:
    :   `processingInstruction` in interface `DocumentHandler`

    Parameters:
    :   `target` - The processing instruction target.
    :   `data` - The remainder of the processing instruction

    Throws:
    :   `SAXException` - The client may raise a
        processing exception.

    See Also:
    :   - [`DocumentHandler.processingInstruction(java.lang.String, java.lang.String)`](../DocumentHandler.md#processingInstruction(java.lang.String,java.lang.String))