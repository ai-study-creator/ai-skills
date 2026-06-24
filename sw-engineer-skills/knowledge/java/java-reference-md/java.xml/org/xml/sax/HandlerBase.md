Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Class HandlerBase

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.HandlerBase

All Implemented Interfaces:
:   `DocumentHandler`, `DTDHandler`, `EntityResolver`, `ErrorHandler`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.5")
public class HandlerBase
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [EntityResolver](EntityResolver.md "interface in org.xml.sax"), [DTDHandler](DTDHandler.md "interface in org.xml.sax"), [DocumentHandler](DocumentHandler.md "interface in org.xml.sax"), [ErrorHandler](ErrorHandler.md "interface in org.xml.sax")

Deprecated.

This class works with the deprecated
[`DocumentHandler`](DocumentHandler.md "interface in org.xml.sax")
interface. It has been replaced by the SAX2
[`DefaultHandler`](helpers/DefaultHandler.md "class in org.xml.sax.helpers")
class.

Default base class for handlers.

This class implements the default behavior for four SAX1
interfaces: EntityResolver, DTDHandler, DocumentHandler,
and ErrorHandler. It is now obsolete, but is included in SAX2 to
support legacy SAX1 applications. SAX2 applications should use
the [`DefaultHandler`](helpers/DefaultHandler.md "class in org.xml.sax.helpers")
class instead.

Application writers can extend this class when they need to
implement only part of an interface; parser writers can
instantiate this class to provide default handlers when the
application has not supplied its own.

Note that the use of this class is optional.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`EntityResolver`](EntityResolver.md "interface in org.xml.sax")
    * [`DTDHandler`](DTDHandler.md "interface in org.xml.sax")
    * [`DocumentHandler`](DocumentHandler.md "interface in org.xml.sax")
    * [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HandlerBase()`

  Deprecated.

  Creates a `HandlerBase`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `characters(char[] ch,
  int start,
  int length)`

  Deprecated.

  Receive notification of character data inside an element.

  `void`

  `endDocument()`

  Deprecated.

  Receive notification of the end of the document.

  `void`

  `endElement(String name)`

  Deprecated.

  Receive notification of the end of an element.

  `void`

  `error(SAXParseException e)`

  Deprecated.

  Receive notification of a recoverable parser error.

  `void`

  `fatalError(SAXParseException e)`

  Deprecated.

  Report a fatal XML parsing error.

  `void`

  `ignorableWhitespace(char[] ch,
  int start,
  int length)`

  Deprecated.

  Receive notification of ignorable whitespace in element content.

  `void`

  `notationDecl(String name,
  String publicId,
  String systemId)`

  Deprecated.

  Receive notification of a notation declaration.

  `void`

  `processingInstruction(String target,
  String data)`

  Deprecated.

  Receive notification of a processing instruction.

  `InputSource`

  `resolveEntity(String publicId,
  String systemId)`

  Deprecated.

  Resolve an external entity.

  `void`

  `setDocumentLocator(Locator locator)`

  Deprecated.

  Receive a Locator object for document events.

  `void`

  `startDocument()`

  Deprecated.

  Receive notification of the beginning of the document.

  `void`

  `startElement(String name,
  AttributeList attributes)`

  Deprecated.

  Receive notification of the start of an element.

  `void`

  `unparsedEntityDecl(String name,
  String publicId,
  String systemId,
  String notationName)`

  Deprecated.

  Receive notification of an unparsed entity declaration.

  `void`

  `warning(SAXParseException e)`

  Deprecated.

  Receive notification of a parser warning.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HandlerBase

    public HandlerBase()

    Deprecated.

    Creates a `HandlerBase`.
* ## Method Details

  + ### resolveEntity

    public [InputSource](InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Resolve an external entity.

    Always return null, so that the parser will use the system
    identifier provided in the XML document. This method implements
    the SAX default behaviour: application writers can override it
    in a subclass to do special translations such as catalog lookups
    or URI redirection.

    Specified by:
    :   `resolveEntity` in interface `EntityResolver`

    Parameters:
    :   `publicId` - The public identifier, or null if none is
        available.
    :   `systemId` - The system identifier provided in the XML
        document.

    Returns:
    :   The new input source, or null to require the
        default behaviour.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`EntityResolver.resolveEntity(java.lang.String, java.lang.String)`](EntityResolver.md#resolveEntity(java.lang.String,java.lang.String))
  + ### notationDecl

    public void notationDecl([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Deprecated.

    Receive notification of a notation declaration.

    By default, do nothing. Application writers may override this
    method in a subclass if they wish to keep track of the notations
    declared in a document.

    Specified by:
    :   `notationDecl` in interface `DTDHandler`

    Parameters:
    :   `name` - The notation name.
    :   `publicId` - The notation public identifier, or null if not
        available.
    :   `systemId` - The notation system identifier.

    See Also:
    :   - [`DTDHandler.notationDecl(java.lang.String, java.lang.String, java.lang.String)`](DTDHandler.md#notationDecl(java.lang.String,java.lang.String,java.lang.String))
  + ### unparsedEntityDecl

    public void unparsedEntityDecl([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") notationName)

    Deprecated.

    Receive notification of an unparsed entity declaration.

    By default, do nothing. Application writers may override this
    method in a subclass to keep track of the unparsed entities
    declared in a document.

    Specified by:
    :   `unparsedEntityDecl` in interface `DTDHandler`

    Parameters:
    :   `name` - The entity name.
    :   `publicId` - The entity public identifier, or null if not
        available.
    :   `systemId` - The entity system identifier.
    :   `notationName` - The name of the associated notation.

    See Also:
    :   - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  + ### setDocumentLocator

    public void setDocumentLocator([Locator](Locator.md "interface in org.xml.sax") locator)

    Deprecated.

    Receive a Locator object for document events.

    By default, do nothing. Application writers may override this
    method in a subclass if they wish to store the locator for use
    with other document events.

    Specified by:
    :   `setDocumentLocator` in interface `DocumentHandler`

    Parameters:
    :   `locator` - A locator for all SAX document events.

    See Also:
    :   - [`DocumentHandler.setDocumentLocator(org.xml.sax.Locator)`](DocumentHandler.md#setDocumentLocator(org.xml.sax.Locator))
        - [`Locator`](Locator.md "interface in org.xml.sax")
  + ### startDocument

    public void startDocument()
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of the beginning of the document.

    By default, do nothing. Application writers may override this
    method in a subclass to take specific actions at the beginning
    of a document (such as allocating the root node of a tree or
    creating an output file).

    Specified by:
    :   `startDocument` in interface `DocumentHandler`

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.startDocument()`](DocumentHandler.md#startDocument())
  + ### endDocument

    public void endDocument()
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of the end of the document.

    By default, do nothing. Application writers may override this
    method in a subclass to take specific actions at the end
    of a document (such as finalising a tree or closing an output
    file).

    Specified by:
    :   `endDocument` in interface `DocumentHandler`

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.endDocument()`](DocumentHandler.md#endDocument())
  + ### startElement

    public void startElement([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [AttributeList](AttributeList.md "interface in org.xml.sax") attributes)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of the start of an element.

    By default, do nothing. Application writers may override this
    method in a subclass to take specific actions at the start of
    each element (such as allocating a new tree node or writing
    output to a file).

    Specified by:
    :   `startElement` in interface `DocumentHandler`

    Parameters:
    :   `name` - The element type name.
    :   `attributes` - The specified or defaulted attributes.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.startElement(java.lang.String, org.xml.sax.AttributeList)`](DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
  + ### endElement

    public void endElement([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of the end of an element.

    By default, do nothing. Application writers may override this
    method in a subclass to take specific actions at the end of
    each element (such as finalising a tree node or writing
    output to a file).

    Specified by:
    :   `endElement` in interface `DocumentHandler`

    Parameters:
    :   `name` - the element name

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.endElement(java.lang.String)`](DocumentHandler.md#endElement(java.lang.String))
  + ### characters

    public void characters(char[] ch,
    int start,
    int length)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of character data inside an element.

    By default, do nothing. Application writers may override this
    method to take specific actions for each chunk of character data
    (such as adding the data to a node or buffer, or printing it to
    a file).

    Specified by:
    :   `characters` in interface `DocumentHandler`

    Parameters:
    :   `ch` - The characters.
    :   `start` - The start position in the character array.
    :   `length` - The number of characters to use from the
        character array.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.characters(char[], int, int)`](DocumentHandler.md#characters(char%5B%5D,int,int))
  + ### ignorableWhitespace

    public void ignorableWhitespace(char[] ch,
    int start,
    int length)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of ignorable whitespace in element content.

    By default, do nothing. Application writers may override this
    method to take specific actions for each chunk of ignorable
    whitespace (such as adding data to a node or buffer, or printing
    it to a file).

    Specified by:
    :   `ignorableWhitespace` in interface `DocumentHandler`

    Parameters:
    :   `ch` - The whitespace characters.
    :   `start` - The start position in the character array.
    :   `length` - The number of characters to use from the
        character array.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.ignorableWhitespace(char[], int, int)`](DocumentHandler.md#ignorableWhitespace(char%5B%5D,int,int))
  + ### processingInstruction

    public void processingInstruction([String](../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") data)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of a processing instruction.

    By default, do nothing. Application writers may override this
    method in a subclass to take specific actions for each
    processing instruction, such as setting status variables or
    invoking other methods.

    Specified by:
    :   `processingInstruction` in interface `DocumentHandler`

    Parameters:
    :   `target` - The processing instruction target.
    :   `data` - The processing instruction data, or null if
        none is supplied.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`DocumentHandler.processingInstruction(java.lang.String, java.lang.String)`](DocumentHandler.md#processingInstruction(java.lang.String,java.lang.String))
  + ### warning

    public void warning([SAXParseException](SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of a parser warning.

    The default implementation does nothing. Application writers
    may override this method in a subclass to take specific actions
    for each warning, such as inserting the message in a log file or
    printing it to the console.

    Specified by:
    :   `warning` in interface `ErrorHandler`

    Parameters:
    :   `e` - The warning information encoded as an exception.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`ErrorHandler.warning(org.xml.sax.SAXParseException)`](ErrorHandler.md#warning(org.xml.sax.SAXParseException))
        - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
  + ### error

    public void error([SAXParseException](SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Receive notification of a recoverable parser error.

    The default implementation does nothing. Application writers
    may override this method in a subclass to take specific actions
    for each error, such as inserting the message in a log file or
    printing it to the console.

    Specified by:
    :   `error` in interface `ErrorHandler`

    Parameters:
    :   `e` - The warning information encoded as an exception.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`ErrorHandler.warning(org.xml.sax.SAXParseException)`](ErrorHandler.md#warning(org.xml.sax.SAXParseException))
        - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
  + ### fatalError

    public void fatalError([SAXParseException](SAXParseException.md "class in org.xml.sax") e)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Report a fatal XML parsing error.

    The default implementation throws a SAXParseException.
    Application writers may override this method in a subclass if
    they need to take specific actions for each fatal error (such as
    collecting all of the errors into a single report): in any case,
    the application must stop all regular processing when this
    method is invoked, since the document is no longer reliable, and
    the parser may no longer report parsing events.

    Specified by:
    :   `fatalError` in interface `ErrorHandler`

    Parameters:
    :   `e` - The error information encoded as an exception.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`ErrorHandler.fatalError(org.xml.sax.SAXParseException)`](ErrorHandler.md#fatalError(org.xml.sax.SAXParseException))
        - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")