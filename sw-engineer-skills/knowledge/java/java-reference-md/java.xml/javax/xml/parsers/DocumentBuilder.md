Module [java.xml](../../../module-summary.md)

Package [javax.xml.parsers](package-summary.md)

# Class DocumentBuilder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.parsers.DocumentBuilder

---

public abstract class DocumentBuilder
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines the API to obtain DOM Document instances from an XML
document. Using this class, an application programmer can obtain a
[`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") from XML.

An instance of this class can be obtained from the
[`DocumentBuilderFactory.newDocumentBuilder()`](DocumentBuilderFactory.md#newDocumentBuilder()) method. Once
an instance of this class is obtained, XML can be parsed from a
variety of input sources. These input sources are InputStreams,
Files, URLs, and SAX InputSources.

Note that this class reuses several classes from the SAX API. This
does not require that the implementor of the underlying DOM
implementation use a SAX parser to parse XML document into a
`Document`. It merely requires that the implementation
communicate with the application using these existing APIs.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DocumentBuilder()`

  Protected constructor
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract DOMImplementation`

  `getDOMImplementation()`

  Obtain an instance of a [`DOMImplementation`](../../../org/w3c/dom/DOMImplementation.md "interface in org.w3c.dom") object.

  `Schema`

  `getSchema()`

  Get a reference to the [`Schema`](../validation/Schema.md "class in javax.xml.validation") being used by
  the XML processor.

  `abstract boolean`

  `isNamespaceAware()`

  Indicates whether or not this parser is configured to
  understand namespaces.

  `abstract boolean`

  `isValidating()`

  Indicates whether or not this parser is configured to
  validate XML documents.

  `boolean`

  `isXIncludeAware()`

  Get the XInclude processing mode for this parser.

  `abstract Document`

  `newDocument()`

  Obtain a new instance of a DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object
  to build a DOM tree with.

  `Document`

  `parse(File f)`

  Parse the content of the given file as an XML document
  and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.

  `Document`

  `parse(InputStream is)`

  Parse the content of the given `InputStream` as an XML
  document and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.

  `Document`

  `parse(InputStream is,
  String systemId)`

  Parse the content of the given `InputStream` as an
  XML document and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.

  `Document`

  `parse(String uri)`

  Parse the content of the given URI as an XML document
  and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.

  `abstract Document`

  `parse(InputSource is)`

  Parse the content of the given input source as an XML document
  and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.

  `void`

  `reset()`

  Reset this `DocumentBuilder` to its original configuration.

  `abstract void`

  `setEntityResolver(EntityResolver er)`

  Specify the [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax") to be used to resolve
  entities present in the XML document to be parsed.

  `abstract void`

  `setErrorHandler(ErrorHandler eh)`

  Specify the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to be used by the parser.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DocumentBuilder

    protected DocumentBuilder()

    Protected constructor
* ## Method Details

  + ### reset

    public void reset()

    Reset this `DocumentBuilder` to its original configuration.

    `DocumentBuilder` is reset to the same state as when it was created with
    [`DocumentBuilderFactory.newDocumentBuilder()`](DocumentBuilderFactory.md#newDocumentBuilder()).
    `reset()` is designed to allow the reuse of existing `DocumentBuilder`s
    thus saving resources associated with the creation of new `DocumentBuilder`s.

    The reset `DocumentBuilder` is not guaranteed to have the same [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax") or [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    `Object`s, e.g. [`Object.equals(Object obj)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)). It is guaranteed to have a functionally equal
    `EntityResolver` and `ErrorHandler`.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method.

    Since:
    :   1.5
  + ### parse

    public [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") parse([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") is)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the content of the given `InputStream` as an XML
    document and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.
    An `IllegalArgumentException` is thrown if the
    `InputStream` is null.

    Parameters:
    :   `is` - InputStream containing the content to be parsed.

    Returns:
    :   `Document` result of parsing the
        `InputStream`

    Throws:
    :   `IOException` - If any IO errors occur.
    :   `SAXException` - If any parse errors occur.
    :   `IllegalArgumentException` - When `is` is `null`

    See Also:
    :   - [`DocumentHandler`](../../../org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  + ### parse

    public [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") parse([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") is,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the content of the given `InputStream` as an
    XML document and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.
    An `IllegalArgumentException` is thrown if the
    `InputStream` is null.

    Parameters:
    :   `is` - InputStream containing the content to be parsed.
    :   `systemId` - Provide a base for resolving relative URIs.

    Returns:
    :   A new DOM Document object.

    Throws:
    :   `IOException` - If any IO errors occur.
    :   `SAXException` - If any parse errors occur.
    :   `IllegalArgumentException` - When `is` is `null`

    See Also:
    :   - [`DocumentHandler`](../../../org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  + ### parse

    public [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") parse([String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the content of the given URI as an XML document
    and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.
    An `IllegalArgumentException` is thrown if the
    URI is `null`.

    Parameters:
    :   `uri` - The location of the content to be parsed.

    Returns:
    :   A new DOM Document object.

    Throws:
    :   `IOException` - If any IO errors occur.
    :   `SAXException` - If any parse errors occur.
    :   `IllegalArgumentException` - When `uri` is `null`

    See Also:
    :   - [`DocumentHandler`](../../../org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  + ### parse

    public [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") parse([File](../../../../java.base/java/io/File.md "class in java.io") f)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the content of the given file as an XML document
    and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.
    An `IllegalArgumentException` is thrown if the
    `File` is `null`.

    Parameters:
    :   `f` - The file containing the XML to parse.

    Returns:
    :   A new DOM Document object.

    Throws:
    :   `IOException` - If any IO errors occur.
    :   `SAXException` - If any parse errors occur.
    :   `IllegalArgumentException` - When `f` is `null`

    See Also:
    :   - [`DocumentHandler`](../../../org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  + ### parse

    public abstract [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") parse([InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") is)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the content of the given input source as an XML document
    and return a new DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object.
    An `IllegalArgumentException` is thrown if the
    `InputSource` is `null`.

    Parameters:
    :   `is` - InputSource containing the content to be parsed.

    Returns:
    :   A new DOM Document object.

    Throws:
    :   `IOException` - If any IO errors occur.
    :   `SAXException` - If any parse errors occur.
    :   `IllegalArgumentException` - When `is` is `null`

    See Also:
    :   - [`DocumentHandler`](../../../org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  + ### isNamespaceAware

    public abstract boolean isNamespaceAware()

    Indicates whether or not this parser is configured to
    understand namespaces.

    Returns:
    :   true if this parser is configured to understand
        namespaces; false otherwise.
  + ### isValidating

    public abstract boolean isValidating()

    Indicates whether or not this parser is configured to
    validate XML documents.

    Returns:
    :   true if this parser is configured to validate
        XML documents; false otherwise.
  + ### setEntityResolver

    public abstract void setEntityResolver([EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax") er)

    Specify the [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax") to be used to resolve
    entities present in the XML document to be parsed. Setting
    this to `null` will result in the underlying
    implementation using it's own default implementation and
    behavior.

    Parameters:
    :   `er` - The `EntityResolver` to be used to resolve entities
        present in the XML document to be parsed.
  + ### setErrorHandler

    public abstract void setErrorHandler([ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") eh)

    Specify the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to be used by the parser.
    Setting this to `null` will result in the underlying
    implementation using it's own default implementation and
    behavior.

    Parameters:
    :   `eh` - The `ErrorHandler` to be used by the parser.
  + ### newDocument

    public abstract [Document](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") newDocument()

    Obtain a new instance of a DOM [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom") object
    to build a DOM tree with.

    Returns:
    :   A new instance of a DOM Document object.
  + ### getDOMImplementation

    public abstract [DOMImplementation](../../../org/w3c/dom/DOMImplementation.md "interface in org.w3c.dom") getDOMImplementation()

    Obtain an instance of a [`DOMImplementation`](../../../org/w3c/dom/DOMImplementation.md "interface in org.w3c.dom") object.

    Returns:
    :   A new instance of a `DOMImplementation`.
  + ### getSchema

    public [Schema](../validation/Schema.md "class in javax.xml.validation") getSchema()

    Get a reference to the [`Schema`](../validation/Schema.md "class in javax.xml.validation") being used by
    the XML processor.

    If no schema is being used, `null` is returned.

    Returns:
    :   [`Schema`](../validation/Schema.md "class in javax.xml.validation") being used or `null`
        if none in use

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5
  + ### isXIncludeAware

    public boolean isXIncludeAware()

    Get the XInclude processing mode for this parser.

    Returns:
    :   the return value of
        the [`DocumentBuilderFactory.isXIncludeAware()`](DocumentBuilderFactory.md#isXIncludeAware())
        when this parser was created from factory.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5

    See Also:
    :   - [`DocumentBuilderFactory.setXIncludeAware(boolean)`](DocumentBuilderFactory.md#setXIncludeAware(boolean))