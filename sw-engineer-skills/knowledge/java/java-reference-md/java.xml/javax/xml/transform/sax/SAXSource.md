Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.sax](package-summary.md)

# Class SAXSource

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.sax.SAXSource

All Implemented Interfaces:
:   `Source`

---

public class SAXSource
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Source](../Source.md "interface in javax.xml.transform")

Acts as an holder for SAX-style Source.

Note that XSLT requires namespace support. Attempting to transform an
input source that is not
generated with a namespace-aware parser may result in errors.
Parsers can be made namespace aware by calling the
[`SAXParserFactory.setNamespaceAware(boolean awareness)`](../../parsers/SAXParserFactory.md#setNamespaceAware(boolean)) method.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the Transformer supports Source input of this type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXSource()`

  Zero-argument default constructor.

  `SAXSource(InputSource inputSource)`

  Create a `SAXSource`, using a SAX `InputSource`.

  `SAXSource(XMLReader reader,
  InputSource inputSource)`

  Create a `SAXSource`, using an [`XMLReader`](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax")
  and a SAX InputSource.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `InputSource`

  `getInputSource()`

  Get the SAX InputSource to be used for the Source.

  `String`

  `getSystemId()`

  Get the base ID (URI or system ID) from where URIs
  will be resolved.

  `XMLReader`

  `getXMLReader()`

  Get the XMLReader to be used for the Source.

  `boolean`

  `isEmpty()`

  Indicates whether the `SAXSource` object is empty.

  `void`

  `setInputSource(InputSource inputSource)`

  Set the SAX InputSource to be used for the Source.

  `void`

  `setSystemId(String systemId)`

  Set the system identifier for this Source.

  `void`

  `setXMLReader(XMLReader reader)`

  Set the XMLReader to be used for the Source.

  `static InputSource`

  `sourceToInputSource(Source source)`

  Attempt to obtain a SAX InputSource object from a Source
  object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Source input of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.sax.SAXSource.FEATURE)
* ## Constructor Details

  + ### SAXSource

    public SAXSource()

    Zero-argument default constructor. If this constructor is used, and
    no SAX source is set using
    [`setInputSource(InputSource inputSource)`](#setInputSource(org.xml.sax.InputSource)) , then the
    `Transformer` will
    create an empty source [`InputSource`](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") using
    [`new InputSource()`](../../../../org/xml/sax/InputSource.md#%3Cinit%3E()).

    See Also:
    :   - [`Transformer.transform(Source xmlSource, Result outputTarget)`](../Transformer.md#transform(javax.xml.transform.Source,javax.xml.transform.Result))
  + ### SAXSource

    public SAXSource([XMLReader](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") reader,
    [InputSource](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") inputSource)

    Create a `SAXSource`, using an [`XMLReader`](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax")
    and a SAX InputSource. The [`Transformer`](../Transformer.md "class in javax.xml.transform")
    or [`SAXTransformerFactory`](SAXTransformerFactory.md "class in javax.xml.transform.sax") will set itself
    to be the reader's [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax"), and then will call
    reader.parse(inputSource).

    Parameters:
    :   `reader` - An XMLReader to be used for the parse.
    :   `inputSource` - A SAX input source reference that must be non-null
        and that will be passed to the reader parse method.
  + ### SAXSource

    public SAXSource([InputSource](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") inputSource)

    Create a `SAXSource`, using a SAX `InputSource`.
    The [`Transformer`](../Transformer.md "class in javax.xml.transform") or
    [`SAXTransformerFactory`](SAXTransformerFactory.md "class in javax.xml.transform.sax") creates a
    reader (if setXMLReader is not used), sets itself as
    the reader's [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax"), and calls
    reader.parse(inputSource).

    Parameters:
    :   `inputSource` - An input source reference that must be non-null
        and that will be passed to the parse method of the reader.
* ## Method Details

  + ### setXMLReader

    public void setXMLReader([XMLReader](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") reader)

    Set the XMLReader to be used for the Source.

    Parameters:
    :   `reader` - A valid XMLReader or XMLFilter reference.
  + ### getXMLReader

    public [XMLReader](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") getXMLReader()

    Get the XMLReader to be used for the Source.

    Returns:
    :   A valid XMLReader or XMLFilter reference, or null.
  + ### setInputSource

    public void setInputSource([InputSource](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") inputSource)

    Set the SAX InputSource to be used for the Source.

    Parameters:
    :   `inputSource` - A valid InputSource reference.
  + ### getInputSource

    public [InputSource](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") getInputSource()

    Get the SAX InputSource to be used for the Source.

    Returns:
    :   A valid InputSource reference, or null.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the system identifier for this Source. If an input source
    has already been set, it will set the system ID or that
    input source, otherwise it will create a new input source.

    The system identifier is optional if there is a byte stream
    or a character stream, but it is still useful to provide one,
    since the application can use it to resolve relative URIs
    and can include it in error messages and warnings (the parser
    will attempt to open a connection to the URI only if
    no byte stream or character stream is specified).

    Specified by:
    :   `setSystemId` in interface `Source`

    Parameters:
    :   `systemId` - The system identifier as a URI string.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the base ID (URI or system ID) from where URIs
    will be resolved.

    Specified by:
    :   `getSystemId` in interface `Source`

    Returns:
    :   Base URL for the `Source`, or `null`.
  + ### sourceToInputSource

    public static [InputSource](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") sourceToInputSource([Source](../Source.md "interface in javax.xml.transform") source)

    Attempt to obtain a SAX InputSource object from a Source
    object.

    Parameters:
    :   `source` - Must be a non-null Source reference.

    Returns:
    :   An InputSource, or null if Source can not be converted.
  + ### isEmpty

    public boolean isEmpty()

    Indicates whether the `SAXSource` object is empty. Empty is
    defined as follows:
    - if the system identifier and `InputSource` are `null`;
    - if the system identifier is `null`, and the `InputSource`
      is empty.

    Specified by:
    :   `isEmpty` in interface `Source`

    Returns:
    :   true if the `SAXSource` object is empty, false otherwise