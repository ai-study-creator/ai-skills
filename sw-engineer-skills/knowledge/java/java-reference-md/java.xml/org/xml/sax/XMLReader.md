Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface XMLReader

All Known Subinterfaces:
:   `XMLFilter`

All Known Implementing Classes:
:   `ParserAdapter`, `XMLFilterImpl`

---

public interface XMLReader

Interface for reading an XML document using callbacks.

XMLReader is the interface that an XML parser's SAX2 driver must
implement. This interface allows an application to set and
query features and properties in the parser, to register
event handlers for document processing, and to initiate
a document parse.

All SAX interfaces are assumed to be synchronous: the
[`parse`](#parse(org.xml.sax.InputSource)) methods must not return until parsing
is complete, and readers must wait for an event-handler callback
to return before reporting the next event.

This interface replaces the (now deprecated) SAX 1.0 [`Parser`](Parser.md "interface in org.xml.sax") interface. The XMLReader interface
contains two important enhancements over the old Parser
interface (as well as some minor ones):

1. it adds a standard way to query and set features and
   properties; and
2. it adds Namespace support, which is required for many
   higher-level XML standards.

There are adapters available to convert a SAX1 Parser to
a SAX2 XMLReader and vice-versa.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`XMLFilter`](XMLFilter.md "interface in org.xml.sax")
    * [`ParserAdapter`](helpers/ParserAdapter.md "class in org.xml.sax.helpers")
    * [`XMLReaderAdapter`](helpers/XMLReaderAdapter.md "class in org.xml.sax.helpers")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

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

  Look up the value of a feature flag.

  `Object`

  `getProperty(String name)`

  Look up the value of a property.

  `void`

  `parse(String systemId)`

  Parse an XML document from a system identifier (URI).

  `void`

  `parse(InputSource input)`

  Parse an XML document.

  `void`

  `setContentHandler(ContentHandler handler)`

  Allow an application to register a content event handler.

  `void`

  `setDTDHandler(DTDHandler handler)`

  Allow an application to register a DTD event handler.

  `void`

  `setEntityResolver(EntityResolver resolver)`

  Allow an application to register an entity resolver.

  `void`

  `setErrorHandler(ErrorHandler handler)`

  Allow an application to register an error event handler.

  `void`

  `setFeature(String name,
  boolean value)`

  Set the value of a feature flag.

  `void`

  `setProperty(String name,
  Object value)`

  Set the value of a property.

* ## Method Details

  + ### getFeature

    boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a feature flag.

    The feature name is any fully-qualified URI. It is
    possible for an XMLReader to recognize a feature name but
    temporarily be unable to return its value.
    Some feature values may be available only in specific
    contexts, such as before, during, or after a parse.
    Also, some feature values may not be programmatically accessible.
    (In the case of an adapter for SAX1 [`Parser`](Parser.md "interface in org.xml.sax"), there is no
    implementation-independent way to expose whether the underlying
    parser is performing validation, expanding external entities,
    and so forth.)

    All XMLReaders are required to recognize the
    http://xml.org/sax/features/namespaces and the
    http://xml.org/sax/features/namespace-prefixes feature names.

    Typical usage is something like this:

    ```
     XMLReader r = new MySAXDriver();

                             // try to activate validation
     try {
       r.setFeature("http://xml.org/sax/features/validation", true);
     } catch (SAXException e) {
       System.err.println("Cannot activate validation.");
     }

                             // register event handlers
     r.setContentHandler(new MyContentHandler());
     r.setErrorHandler(new MyErrorHandler());

                             // parse the first document
     try {
       r.parse("http://www.foo.com/mydoc.xml");
     } catch (IOException e) {
       System.err.println("I/O exception reading XML document");
     } catch (SAXException e) {
       System.err.println("XML exception reading document.");
     }
    ```

    Implementors are free (and encouraged) to invent their own features,
    using names built on their own URIs.

    Parameters:
    :   `name` - The feature name, which is a fully-qualified URI.

    Returns:
    :   The current value of the feature (true or false).

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        XMLReader recognizes the feature name but
        cannot determine its value at this time.

    See Also:
    :   - [`setFeature(java.lang.String, boolean)`](#setFeature(java.lang.String,boolean))
  + ### setFeature

    void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a feature flag.

    The feature name is any fully-qualified URI. It is
    possible for an XMLReader to expose a feature value but
    to be unable to change the current value.
    Some feature values may be immutable or mutable only
    in specific contexts, such as before, during, or after
    a parse.

    All XMLReaders are required to support setting
    http://xml.org/sax/features/namespaces to true and
    http://xml.org/sax/features/namespace-prefixes to false.

    Parameters:
    :   `name` - The feature name, which is a fully-qualified URI.
    :   `value` - The requested value of the feature (true or false).

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        XMLReader recognizes the feature name but
        cannot set the requested value.

    See Also:
    :   - [`getFeature(java.lang.String)`](#getFeature(java.lang.String))
  + ### getProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a property.

    The property name is any fully-qualified URI. It is
    possible for an XMLReader to recognize a property name but
    temporarily be unable to return its value.
    Some property values may be available only in specific
    contexts, such as before, during, or after a parse.

    XMLReaders are not required to recognize any specific
    property names, though an initial core set is documented for
    SAX2.

    Implementors are free (and encouraged) to invent their own properties,
    using names built on their own URIs.

    Parameters:
    :   `name` - The property name, which is a fully-qualified URI.

    Returns:
    :   The current value of the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        XMLReader recognizes the property name but
        cannot determine its value at this time.

    See Also:
    :   - [`setProperty(java.lang.String, java.lang.Object)`](#setProperty(java.lang.String,java.lang.Object))
  + ### setProperty

    void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [SAXNotRecognizedException](SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a property.

    The property name is any fully-qualified URI. It is
    possible for an XMLReader to recognize a property name but
    to be unable to change the current value.
    Some property values may be immutable or mutable only
    in specific contexts, such as before, during, or after
    a parse.

    XMLReaders are not required to recognize setting
    any specific property names, though a core set is defined by
    SAX2.

    This method is also the standard mechanism for setting
    extended handlers.

    Parameters:
    :   `name` - The property name, which is a fully-qualified URI.
    :   `value` - The requested value for the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        XMLReader recognizes the property name but
        cannot set the requested value.
  + ### setEntityResolver

    void setEntityResolver([EntityResolver](EntityResolver.md "interface in org.xml.sax") resolver)

    Allow an application to register an entity resolver.

    If the application does not register an entity resolver,
    the XMLReader will perform its own default resolution.

    Applications may register a new or different resolver in the
    middle of a parse, and the SAX parser must begin using the new
    resolver immediately.

    Parameters:
    :   `resolver` - The entity resolver.

    See Also:
    :   - [`getEntityResolver()`](#getEntityResolver())
  + ### getEntityResolver

    [EntityResolver](EntityResolver.md "interface in org.xml.sax") getEntityResolver()

    Return the current entity resolver.

    Returns:
    :   The current entity resolver, or null if none
        has been registered.

    See Also:
    :   - [`setEntityResolver(org.xml.sax.EntityResolver)`](#setEntityResolver(org.xml.sax.EntityResolver))
  + ### setDTDHandler

    void setDTDHandler([DTDHandler](DTDHandler.md "interface in org.xml.sax") handler)

    Allow an application to register a DTD event handler.

    If the application does not register a DTD handler, all DTD
    events reported by the SAX parser will be silently ignored.

    Applications may register a new or different handler in the
    middle of a parse, and the SAX parser must begin using the new
    handler immediately.

    Parameters:
    :   `handler` - The DTD handler.

    See Also:
    :   - [`getDTDHandler()`](#getDTDHandler())
  + ### getDTDHandler

    [DTDHandler](DTDHandler.md "interface in org.xml.sax") getDTDHandler()

    Return the current DTD handler.

    Returns:
    :   The current DTD handler, or null if none
        has been registered.

    See Also:
    :   - [`setDTDHandler(org.xml.sax.DTDHandler)`](#setDTDHandler(org.xml.sax.DTDHandler))
  + ### setContentHandler

    void setContentHandler([ContentHandler](ContentHandler.md "interface in org.xml.sax") handler)

    Allow an application to register a content event handler.

    If the application does not register a content handler, all
    content events reported by the SAX parser will be silently
    ignored.

    Applications may register a new or different handler in the
    middle of a parse, and the SAX parser must begin using the new
    handler immediately.

    Parameters:
    :   `handler` - The content handler.

    See Also:
    :   - [`getContentHandler()`](#getContentHandler())
  + ### getContentHandler

    [ContentHandler](ContentHandler.md "interface in org.xml.sax") getContentHandler()

    Return the current content handler.

    Returns:
    :   The current content handler, or null if none
        has been registered.

    See Also:
    :   - [`setContentHandler(org.xml.sax.ContentHandler)`](#setContentHandler(org.xml.sax.ContentHandler))
  + ### setErrorHandler

    void setErrorHandler([ErrorHandler](ErrorHandler.md "interface in org.xml.sax") handler)

    Allow an application to register an error event handler.

    If the application does not register an error handler, all
    error events reported by the SAX parser will be silently
    ignored; however, normal processing may not continue. It is
    highly recommended that all SAX applications implement an
    error handler to avoid unexpected bugs.

    Applications may register a new or different handler in the
    middle of a parse, and the SAX parser must begin using the new
    handler immediately.

    Parameters:
    :   `handler` - The error handler.

    See Also:
    :   - [`getErrorHandler()`](#getErrorHandler())
  + ### getErrorHandler

    [ErrorHandler](ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Return the current error handler.

    Returns:
    :   The current error handler, or null if none
        has been registered.

    See Also:
    :   - [`setErrorHandler(org.xml.sax.ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    void parse([InputSource](InputSource.md "class in org.xml.sax") input)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [SAXException](SAXException.md "class in org.xml.sax")

    Parse an XML document.

    The application can use this method to instruct the XML
    reader to begin parsing an XML document from any valid input
    source (a character stream, a byte stream, or a URI).

    Applications may not invoke this method while a parse is in
    progress (they should create a new XMLReader instead for each
    nested XML document). Once a parse is complete, an
    application may reuse the same XMLReader object, possibly with a
    different input source.
    Configuration of the XMLReader object (such as handler bindings and
    values established for feature flags and properties) is unchanged
    by completion of a parse, unless the definition of that aspect of
    the configuration explicitly specifies other behavior.
    (For example, feature flags or properties exposing
    characteristics of the document being parsed.)

    During the parse, the XMLReader will provide information
    about the XML document through the registered event
    handlers.

    This method is synchronous: it will not return until parsing
    has ended. If a client application wants to terminate
    parsing early, it should throw an exception.

    Parameters:
    :   `input` - The input source for the top-level of the
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
        - [`setContentHandler(org.xml.sax.ContentHandler)`](#setContentHandler(org.xml.sax.ContentHandler))
        - [`setErrorHandler(org.xml.sax.ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### parse

    void parse([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [SAXException](SAXException.md "class in org.xml.sax")

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