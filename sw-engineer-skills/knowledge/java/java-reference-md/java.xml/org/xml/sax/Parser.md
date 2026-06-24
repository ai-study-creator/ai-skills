Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface Parser

All Known Implementing Classes:
:   `XMLReaderAdapter`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.5")
public interface Parser

Deprecated.

This interface has been replaced by the SAX2
[`XMLReader`](XMLReader.md "interface in org.xml.sax")
interface, which includes Namespace support.

Basic interface for SAX (Simple API for XML) parsers.

This was the main event supplier interface for SAX1; it has
been replaced in SAX2 by [`XMLReader`](XMLReader.md "interface in org.xml.sax"),
which includes Namespace support and sophisticated configurability
and extensibility.

All SAX1 parsers must implement this basic interface: it allows
applications to register handlers for different types of events
and to initiate a parse from a URI, or a character stream.

All SAX1 parsers must also implement a zero-argument constructor
(though other constructors are also allowed).

SAX1 parsers are reusable but not re-entrant: the application
may reuse a parser object (possibly with a different input source)
once the first parse has completed successfully, but it may not
invoke the parse() methods recursively within a parse.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`EntityResolver`](EntityResolver.md "interface in org.xml.sax")
    * [`DTDHandler`](DTDHandler.md "interface in org.xml.sax")
    * [`DocumentHandler`](DocumentHandler.md "interface in org.xml.sax")
    * [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax")
    * [`HandlerBase`](HandlerBase.md "class in org.xml.sax")
    * [`InputSource`](InputSource.md "class in org.xml.sax")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `parse(String systemId)`

  Deprecated.

  Parse an XML document from a system identifier (URI).

  `void`

  `parse(InputSource source)`

  Deprecated.

  Parse an XML document.

  `void`

  `setDocumentHandler(DocumentHandler handler)`

  Deprecated.

  Allow an application to register a document event handler.

  `void`

  `setDTDHandler(DTDHandler handler)`

  Deprecated.

  Allow an application to register a DTD event handler.

  `void`

  `setEntityResolver(EntityResolver resolver)`

  Deprecated.

  Allow an application to register a custom entity resolver.

  `void`

  `setErrorHandler(ErrorHandler handler)`

  Deprecated.

  Allow an application to register an error event handler.

  `void`

  `setLocale(Locale locale)`

  Deprecated.

  Allow an application to request a locale for errors and warnings.

* ## Method Details

  + ### setLocale

    void setLocale([Locale](../../../../java.base/java/util/Locale.md "class in java.util") locale)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Deprecated.

    Allow an application to request a locale for errors and warnings.

    SAX parsers are not required to provide localisation for errors
    and warnings; if they cannot support the requested locale,
    however, they must throw a SAX exception. Applications may
    not request a locale change in the middle of a parse.

    Parameters:
    :   `locale` - A Java Locale object.

    Throws:
    :   `SAXException` - Throws an exception
        (using the previous or default locale) if the
        requested locale is not supported.

    See Also:
    :   - [`SAXException`](SAXException.md "class in org.xml.sax")
        - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
  + ### setEntityResolver

    void setEntityResolver([EntityResolver](EntityResolver.md "interface in org.xml.sax") resolver)

    Deprecated.

    Allow an application to register a custom entity resolver.

    If the application does not register an entity resolver, the
    SAX parser will resolve system identifiers and open connections
    to entities itself (this is the default behaviour implemented in
    HandlerBase).

    Applications may register a new or different entity resolver
    in the middle of a parse, and the SAX parser must begin using
    the new resolver immediately.

    Parameters:
    :   `resolver` - The object for resolving entities.

    See Also:
    :   - [`EntityResolver`](EntityResolver.md "interface in org.xml.sax")
        - [`HandlerBase`](HandlerBase.md "class in org.xml.sax")
  + ### setDTDHandler

    void setDTDHandler([DTDHandler](DTDHandler.md "interface in org.xml.sax") handler)

    Deprecated.

    Allow an application to register a DTD event handler.

    If the application does not register a DTD handler, all DTD
    events reported by the SAX parser will be silently
    ignored (this is the default behaviour implemented by
    HandlerBase).

    Applications may register a new or different
    handler in the middle of a parse, and the SAX parser must
    begin using the new handler immediately.

    Parameters:
    :   `handler` - The DTD handler.

    See Also:
    :   - [`DTDHandler`](DTDHandler.md "interface in org.xml.sax")
        - [`HandlerBase`](HandlerBase.md "class in org.xml.sax")
  + ### setDocumentHandler

    void setDocumentHandler([DocumentHandler](DocumentHandler.md "interface in org.xml.sax") handler)

    Deprecated.

    Allow an application to register a document event handler.

    If the application does not register a document handler, all
    document events reported by the SAX parser will be silently
    ignored (this is the default behaviour implemented by
    HandlerBase).

    Applications may register a new or different handler in the
    middle of a parse, and the SAX parser must begin using the new
    handler immediately.

    Parameters:
    :   `handler` - The document handler.

    See Also:
    :   - [`DocumentHandler`](DocumentHandler.md "interface in org.xml.sax")
        - [`HandlerBase`](HandlerBase.md "class in org.xml.sax")
  + ### setErrorHandler

    void setErrorHandler([ErrorHandler](ErrorHandler.md "interface in org.xml.sax") handler)

    Deprecated.

    Allow an application to register an error event handler.

    If the application does not register an error event handler,
    all error events reported by the SAX parser will be silently
    ignored, except for fatalError, which will throw a SAXException
    (this is the default behaviour implemented by HandlerBase).

    Applications may register a new or different handler in the
    middle of a parse, and the SAX parser must begin using the new
    handler immediately.

    Parameters:
    :   `handler` - The error handler.

    See Also:
    :   - [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax")
        - [`SAXException`](SAXException.md "class in org.xml.sax")
        - [`HandlerBase`](HandlerBase.md "class in org.xml.sax")
  + ### parse

    void parse([InputSource](InputSource.md "class in org.xml.sax") source)
    throws [SAXException](SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    Parse an XML document.

    The application can use this method to instruct the SAX parser
    to begin parsing an XML document from any valid input
    source (a character stream, a byte stream, or a URI).

    Applications may not invoke this method while a parse is in
    progress (they should create a new Parser instead for each
    additional XML document). Once a parse is complete, an
    application may reuse the same Parser object, possibly with a
    different input source.

    Parameters:
    :   `source` - The input source for the top-level of the
        XML document.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - An IO exception from the parser,
        possibly from a byte stream or character stream
        supplied by the application.

    See Also:
    :   - [`InputSource`](InputSource.md "class in org.xml.sax")
        - [`parse(java.lang.String)`](#parse(java.lang.String))
        - [`setEntityResolver(org.xml.sax.EntityResolver)`](#setEntityResolver(org.xml.sax.EntityResolver))
        - [`setDTDHandler(org.xml.sax.DTDHandler)`](#setDTDHandler(org.xml.sax.DTDHandler))
        - [`setDocumentHandler(org.xml.sax.DocumentHandler)`](#setDocumentHandler(org.xml.sax.DocumentHandler))
        - [`setErrorHandler(org.xml.sax.ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    void parse([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    Parse an XML document from a system identifier (URI).

    This method is a shortcut for the common case of reading a
    document from a system identifier. It is the exact
    equivalent of the following:

    ```
     parse(new InputSource(systemId));
    ```

    If the system identifier is a URL, it must be fully resolved
    by the application before it is passed to the parser.

    Parameters:
    :   `systemId` - The system identifier (URI).

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - An IO exception from the parser,
        possibly from a byte stream or character stream
        supplied by the application.

    See Also:
    :   - [`parse(org.xml.sax.InputSource)`](#parse(org.xml.sax.InputSource))