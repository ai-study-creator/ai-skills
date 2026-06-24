Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class XMLFilterImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.XMLFilterImpl

All Implemented Interfaces:
:   `ContentHandler`, `DTDHandler`, `EntityResolver`, `ErrorHandler`, `XMLFilter`, `XMLReader`

---

public class XMLFilterImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLFilter](../XMLFilter.md "interface in org.xml.sax"), [EntityResolver](../EntityResolver.md "interface in org.xml.sax"), [DTDHandler](../DTDHandler.md "interface in org.xml.sax"), [ContentHandler](../ContentHandler.md "interface in org.xml.sax"), [ErrorHandler](../ErrorHandler.md "interface in org.xml.sax")

Base class for deriving an XML filter.

This class is designed to sit between an [`XMLReader`](../XMLReader.md "interface in org.xml.sax") and the client application's event handlers. By default, it
does nothing but pass requests up to the reader and events
on to the handlers unmodified, but subclasses can override
specific methods to modify the event stream or the configuration
requests as they pass through.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`XMLFilter`](../XMLFilter.md "interface in org.xml.sax")
    * [`XMLReader`](../XMLReader.md "interface in org.xml.sax")
    * [`EntityResolver`](../EntityResolver.md "interface in org.xml.sax")
    * [`DTDHandler`](../DTDHandler.md "interface in org.xml.sax")
    * [`ContentHandler`](../ContentHandler.md "interface in org.xml.sax")
    * [`ErrorHandler`](../ErrorHandler.md "interface in org.xml.sax")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLFilterImpl()`

  Construct an empty XML filter, with no parent.

  `XMLFilterImpl(XMLReader parent)`

  Construct an XML filter with the specified parent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `characters(char[] ch,
  int start,
  int length)`

  Filter a character data event.

  `void`

  `endDocument()`

  Filter an end document event.

  `void`

  `endElement(String uri,
  String localName,
  String qName)`

  Filter an end element event.

  `void`

  `endPrefixMapping(String prefix)`

  Filter an end Namespace prefix mapping event.

  `void`

  `error(SAXParseException e)`

  Filter an error event.

  `void`

  `fatalError(SAXParseException e)`

  Filter a fatal error event.

  `ContentHandler`

  `getContentHandler()`

  Get the content event handler.

  `DTDHandler`

  `getDTDHandler()`

  Get the current DTD event handler.

  `EntityResolver`

  `getEntityResolver()`

  Get the current entity resolver.

  `ErrorHandler`

  `getErrorHandler()`

  Get the current error event handler.

  `boolean`

  `getFeature(String name)`

  Look up the value of a feature.

  `XMLReader`

  `getParent()`

  Get the parent reader.

  `Object`

  `getProperty(String name)`

  Look up the value of a property.

  `void`

  `ignorableWhitespace(char[] ch,
  int start,
  int length)`

  Filter an ignorable whitespace event.

  `void`

  `notationDecl(String name,
  String publicId,
  String systemId)`

  Filter a notation declaration event.

  `void`

  `parse(String systemId)`

  Parse a document.

  `void`

  `parse(InputSource input)`

  Parse a document.

  `void`

  `processingInstruction(String target,
  String data)`

  Filter a processing instruction event.

  `InputSource`

  `resolveEntity(String publicId,
  String systemId)`

  Filter an external entity resolution.

  `void`

  `setContentHandler(ContentHandler handler)`

  Set the content event handler.

  `void`

  `setDocumentLocator(Locator locator)`

  Filter a new document locator event.

  `void`

  `setDTDHandler(DTDHandler handler)`

  Set the DTD event handler.

  `void`

  `setEntityResolver(EntityResolver resolver)`

  Set the entity resolver.

  `void`

  `setErrorHandler(ErrorHandler handler)`

  Set the error event handler.

  `void`

  `setFeature(String name,
  boolean value)`

  Set the value of a feature.

  `void`

  `setParent(XMLReader parent)`

  Set the parent reader.

  `void`

  `setProperty(String name,
  Object value)`

  Set the value of a property.

  `void`

  `skippedEntity(String name)`

  Filter a skipped entity event.

  `void`

  `startDocument()`

  Filter a start document event.

  `void`

  `startElement(String uri,
  String localName,
  String qName,
  Attributes atts)`

  Filter a start element event.

  `void`

  `startPrefixMapping(String prefix,
  String uri)`

  Filter a start Namespace prefix mapping event.

  `void`

  `unparsedEntityDecl(String name,
  String publicId,
  String systemId,
  String notationName)`

  Filter an unparsed entity declaration event.

  `void`

  `warning(SAXParseException e)`

  Filter a warning event.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../ContentHandler.md "interface in org.xml.sax")

  `declaration`

* ## Constructor Details

  + ### XMLFilterImpl

    public XMLFilterImpl()

    Construct an empty XML filter, with no parent.

    This filter will have no parent: you must assign a parent
    before you start a parse or do any configuration with
    setFeature or setProperty, unless you use this as a pure event
    consumer rather than as an [`XMLReader`](../XMLReader.md "interface in org.xml.sax").

    See Also:
    :   - [`XMLReader.setFeature(java.lang.String, boolean)`](../XMLReader.md#setFeature(java.lang.String,boolean))
        - [`XMLReader.setProperty(java.lang.String, java.lang.Object)`](../XMLReader.md#setProperty(java.lang.String,java.lang.Object))
        - [`setParent(org.xml.sax.XMLReader)`](#setParent(org.xml.sax.XMLReader))
  + ### XMLFilterImpl

    public XMLFilterImpl([XMLReader](../XMLReader.md "interface in org.xml.sax") parent)

    Construct an XML filter with the specified parent.

    Parameters:
    :   `parent` - the specified parent

    See Also:
    :   - [`setParent(org.xml.sax.XMLReader)`](#setParent(org.xml.sax.XMLReader))
        - [`getParent()`](#getParent())
* ## Method Details

  + ### setParent

    public void setParent([XMLReader](../XMLReader.md "interface in org.xml.sax") parent)

    Set the parent reader.

    This is the [`XMLReader`](../XMLReader.md "interface in org.xml.sax") from which
    this filter will obtain its events and to which it will pass its
    configuration requests. The parent may itself be another filter.

    If there is no parent reader set, any attempt to parse
    or to set or get a feature or property will fail.

    Specified by:
    :   `setParent` in interface `XMLFilter`

    Parameters:
    :   `parent` - The parent XML reader.

    See Also:
    :   - [`getParent()`](#getParent())
  + ### getParent

    public [XMLReader](../XMLReader.md "interface in org.xml.sax") getParent()

    Get the parent reader.

    Specified by:
    :   `getParent` in interface `XMLFilter`

    Returns:
    :   The parent XML reader, or null if none is set.

    See Also:
    :   - [`setParent(org.xml.sax.XMLReader)`](#setParent(org.xml.sax.XMLReader))
  + ### setFeature

    public void setFeature([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a feature.

    This will always fail if the parent is null.

    Specified by:
    :   `setFeature` in interface `XMLReader`

    Parameters:
    :   `name` - The feature name.
    :   `value` - The requested feature value.

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved from the parent.
    :   `SAXNotSupportedException` - When the
        parent recognizes the feature name but
        cannot set the requested value.

    See Also:
    :   - [`XMLReader.getFeature(java.lang.String)`](../XMLReader.md#getFeature(java.lang.String))
  + ### getFeature

    public boolean getFeature([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a feature.

    This will always fail if the parent is null.

    Specified by:
    :   `getFeature` in interface `XMLReader`

    Parameters:
    :   `name` - The feature name.

    Returns:
    :   The current value of the feature.

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved from the parent.
    :   `SAXNotSupportedException` - When the
        parent recognizes the feature name but
        cannot determine its value at this time.

    See Also:
    :   - [`XMLReader.setFeature(java.lang.String, boolean)`](../XMLReader.md#setFeature(java.lang.String,boolean))
  + ### setProperty

    public void setProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a property.

    This will always fail if the parent is null.

    Specified by:
    :   `setProperty` in interface `XMLReader`

    Parameters:
    :   `name` - The property name.
    :   `value` - The requested property value.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved from the parent.
    :   `SAXNotSupportedException` - When the
        parent recognizes the property name but
        cannot set the requested value.
  + ### getProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a property.

    Specified by:
    :   `getProperty` in interface `XMLReader`

    Parameters:
    :   `name` - The property name.

    Returns:
    :   The current value of the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved from the parent.
    :   `SAXNotSupportedException` - When the
        parent recognizes the property name but
        cannot determine its value at this time.

    See Also:
    :   - [`XMLReader.setProperty(java.lang.String, java.lang.Object)`](../XMLReader.md#setProperty(java.lang.String,java.lang.Object))
  + ### setEntityResolver

    public void setEntityResolver([EntityResolver](../EntityResolver.md "interface in org.xml.sax") resolver)

    Set the entity resolver.

    Specified by:
    :   `setEntityResolver` in interface `XMLReader`

    Parameters:
    :   `resolver` - The new entity resolver.

    See Also:
    :   - [`XMLReader.getEntityResolver()`](../XMLReader.md#getEntityResolver())
  + ### getEntityResolver

    public [EntityResolver](../EntityResolver.md "interface in org.xml.sax") getEntityResolver()

    Get the current entity resolver.

    Specified by:
    :   `getEntityResolver` in interface `XMLReader`

    Returns:
    :   The current entity resolver, or null if none was set.

    See Also:
    :   - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
  + ### setDTDHandler

    public void setDTDHandler([DTDHandler](../DTDHandler.md "interface in org.xml.sax") handler)

    Set the DTD event handler.

    Specified by:
    :   `setDTDHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - the new DTD handler

    See Also:
    :   - [`XMLReader.getDTDHandler()`](../XMLReader.md#getDTDHandler())
  + ### getDTDHandler

    public [DTDHandler](../DTDHandler.md "interface in org.xml.sax") getDTDHandler()

    Get the current DTD event handler.

    Specified by:
    :   `getDTDHandler` in interface `XMLReader`

    Returns:
    :   The current DTD handler, or null if none was set.

    See Also:
    :   - [`XMLReader.setDTDHandler(org.xml.sax.DTDHandler)`](../XMLReader.md#setDTDHandler(org.xml.sax.DTDHandler))
  + ### setContentHandler

    public void setContentHandler([ContentHandler](../ContentHandler.md "interface in org.xml.sax") handler)

    Set the content event handler.

    Specified by:
    :   `setContentHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - the new content handler

    See Also:
    :   - [`XMLReader.getContentHandler()`](../XMLReader.md#getContentHandler())
  + ### getContentHandler

    public [ContentHandler](../ContentHandler.md "interface in org.xml.sax") getContentHandler()

    Get the content event handler.

    Specified by:
    :   `getContentHandler` in interface `XMLReader`

    Returns:
    :   The current content handler, or null if none was set.

    See Also:
    :   - [`XMLReader.setContentHandler(org.xml.sax.ContentHandler)`](../XMLReader.md#setContentHandler(org.xml.sax.ContentHandler))
  + ### setErrorHandler

    public void setErrorHandler([ErrorHandler](../ErrorHandler.md "interface in org.xml.sax") handler)

    Set the error event handler.

    Specified by:
    :   `setErrorHandler` in interface `XMLReader`

    Parameters:
    :   `handler` - the new error handler

    See Also:
    :   - [`XMLReader.getErrorHandler()`](../XMLReader.md#getErrorHandler())
  + ### getErrorHandler

    public [ErrorHandler](../ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Get the current error event handler.

    Specified by:
    :   `getErrorHandler` in interface `XMLReader`

    Returns:
    :   The current error handler, or null if none was set.

    See Also:
    :   - [`XMLReader.setErrorHandler(org.xml.sax.ErrorHandler)`](../XMLReader.md#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    public void parse([InputSource](../InputSource.md "class in org.xml.sax") input)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse a document.

    Specified by:
    :   `parse` in interface `XMLReader`

    Parameters:
    :   `input` - The input source for the document entity.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - An IO exception from the parser,
        possibly from a byte stream or character stream
        supplied by the application.

    See Also:
    :   - [`InputSource`](../InputSource.md "class in org.xml.sax")
        - [`XMLReader.parse(java.lang.String)`](../XMLReader.md#parse(java.lang.String))
        - [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](../XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
        - [`XMLReader.setDTDHandler(org.xml.sax.DTDHandler)`](../XMLReader.md#setDTDHandler(org.xml.sax.DTDHandler))
        - [`XMLReader.setContentHandler(org.xml.sax.ContentHandler)`](../XMLReader.md#setContentHandler(org.xml.sax.ContentHandler))
        - [`XMLReader.setErrorHandler(org.xml.sax.ErrorHandler)`](../XMLReader.md#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    public void parse([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse a document.

    Specified by:
    :   `parse` in interface `XMLReader`

    Parameters:
    :   `systemId` - The system identifier as a fully-qualified URI.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - An IO exception from the parser,
        possibly from a byte stream or character stream
        supplied by the application.

    See Also:
    :   - [`XMLReader.parse(org.xml.sax.InputSource)`](../XMLReader.md#parse(org.xml.sax.InputSource))
  + ### resolveEntity

    public [InputSource](../InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Filter an external entity resolution.

    Specified by:
    :   `resolveEntity` in interface `EntityResolver`

    Parameters:
    :   `publicId` - The entity's public identifier, or null.
    :   `systemId` - The entity's system identifier.

    Returns:
    :   A new InputSource or null for the default.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.
    :   `IOException` - The client may throw an
        I/O-related exception while obtaining the
        new InputSource.

    See Also:
    :   - [`InputSource`](../InputSource.md "class in org.xml.sax")
  + ### notationDecl

    public void notationDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a notation declaration event.

    Specified by:
    :   `notationDecl` in interface `DTDHandler`

    Parameters:
    :   `name` - The notation name.
    :   `publicId` - The notation's public identifier, or null.
    :   `systemId` - The notation's system identifier, or null.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
        - [`Attributes`](../Attributes.md "interface in org.xml.sax")
  + ### unparsedEntityDecl

    public void unparsedEntityDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") notationName)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an unparsed entity declaration event.

    Specified by:
    :   `unparsedEntityDecl` in interface `DTDHandler`

    Parameters:
    :   `name` - The entity name.
    :   `publicId` - The entity's public identifier, or null.
    :   `systemId` - The entity's system identifier, or null.
    :   `notationName` - The name of the associated notation.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`DTDHandler.notationDecl(java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#notationDecl(java.lang.String,java.lang.String,java.lang.String))
        - [`Attributes`](../Attributes.md "interface in org.xml.sax")
  + ### setDocumentLocator

    public void setDocumentLocator([Locator](../Locator.md "interface in org.xml.sax") locator)

    Filter a new document locator event.

    Specified by:
    :   `setDocumentLocator` in interface `ContentHandler`

    Parameters:
    :   `locator` - The document locator.

    See Also:
    :   - [`Locator`](../Locator.md "interface in org.xml.sax")
  + ### startDocument

    public void startDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a start document event.

    Specified by:
    :   `startDocument` in interface `ContentHandler`

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.endDocument()`](../ContentHandler.md#endDocument())
  + ### endDocument

    public void endDocument()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an end document event.

    Specified by:
    :   `endDocument` in interface `ContentHandler`

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.startDocument()`](../ContentHandler.md#startDocument())
  + ### startPrefixMapping

    public void startPrefixMapping([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a start Namespace prefix mapping event.

    Specified by:
    :   `startPrefixMapping` in interface `ContentHandler`

    Parameters:
    :   `prefix` - The Namespace prefix.
    :   `uri` - The Namespace URI.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.endPrefixMapping(java.lang.String)`](../ContentHandler.md#endPrefixMapping(java.lang.String))
        - [`ContentHandler.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes))
  + ### endPrefixMapping

    public void endPrefixMapping([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an end Namespace prefix mapping event.

    Specified by:
    :   `endPrefixMapping` in interface `ContentHandler`

    Parameters:
    :   `prefix` - The Namespace prefix.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.startPrefixMapping(java.lang.String, java.lang.String)`](../ContentHandler.md#startPrefixMapping(java.lang.String,java.lang.String))
        - [`ContentHandler.endElement(java.lang.String, java.lang.String, java.lang.String)`](../ContentHandler.md#endElement(java.lang.String,java.lang.String,java.lang.String))
  + ### startElement

    public void startElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [Attributes](../Attributes.md "interface in org.xml.sax") atts)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a start element event.

    Specified by:
    :   `startElement` in interface `ContentHandler`

    Parameters:
    :   `uri` - The element's Namespace URI, or the empty string.
    :   `localName` - The element's local name, or the empty string.
    :   `qName` - The element's qualified (prefixed) name, or the empty
        string.
    :   `atts` - The element's attributes.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.endElement(java.lang.String, java.lang.String, java.lang.String)`](../ContentHandler.md#endElement(java.lang.String,java.lang.String,java.lang.String))
        - [`Attributes`](../Attributes.md "interface in org.xml.sax")
        - [`AttributesImpl`](AttributesImpl.md "class in org.xml.sax.helpers")
  + ### endElement

    public void endElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an end element event.

    Specified by:
    :   `endElement` in interface `ContentHandler`

    Parameters:
    :   `uri` - The element's Namespace URI, or the empty string.
    :   `localName` - The element's local name, or the empty string.
    :   `qName` - The element's qualified (prefixed) name, or the empty
        string.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.
  + ### characters

    public void characters(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a character data event.

    Specified by:
    :   `characters` in interface `ContentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use from the array.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.ignorableWhitespace(char[], int, int)`](../ContentHandler.md#ignorableWhitespace(char%5B%5D,int,int))
        - [`Locator`](../Locator.md "interface in org.xml.sax")
  + ### ignorableWhitespace

    public void ignorableWhitespace(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an ignorable whitespace event.

    Specified by:
    :   `ignorableWhitespace` in interface `ContentHandler`

    Parameters:
    :   `ch` - An array of characters.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use from the array.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`ContentHandler.characters(char[], int, int)`](../ContentHandler.md#characters(char%5B%5D,int,int))
  + ### processingInstruction

    public void processingInstruction([String](../../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a processing instruction event.

    Specified by:
    :   `processingInstruction` in interface `ContentHandler`

    Parameters:
    :   `target` - The processing instruction target.
    :   `data` - The text following the target.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.
  + ### skippedEntity

    public void skippedEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a skipped entity event.

    Specified by:
    :   `skippedEntity` in interface `ContentHandler`

    Parameters:
    :   `name` - The name of the skipped entity.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.
  + ### warning

    public void warning([SAXParseException](../SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a warning event.

    Specified by:
    :   `warning` in interface `ErrorHandler`

    Parameters:
    :   `e` - The warning as an exception.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`SAXParseException`](../SAXParseException.md "class in org.xml.sax")
  + ### error

    public void error([SAXParseException](../SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter an error event.

    Specified by:
    :   `error` in interface `ErrorHandler`

    Parameters:
    :   `e` - The error as an exception.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.

    See Also:
    :   - [`SAXParseException`](../SAXParseException.md "class in org.xml.sax")
  + ### fatalError

    public void fatalError([SAXParseException](../SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Filter a fatal error event.

    Specified by:
    :   `fatalError` in interface `ErrorHandler`

    Parameters:
    :   `e` - The error as an exception.

    Throws:
    :   `SAXException` - The client may throw
        an exception during processing.