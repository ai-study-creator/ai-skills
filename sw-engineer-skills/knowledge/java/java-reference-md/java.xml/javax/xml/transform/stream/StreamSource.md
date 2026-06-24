Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.stream](package-summary.md)

# Class StreamSource

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.stream.StreamSource

All Implemented Interfaces:
:   `Source`

---

public class StreamSource
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Source](../Source.md "interface in javax.xml.transform")

Acts as an holder for a transformation Source in the form
of a stream of XML markup.

*Note:* Due to their internal use of either a [`Reader`](../../../../../java.base/java/io/Reader.md "class in java.io") or [`InputStream`](../../../../../java.base/java/io/InputStream.md "class in java.io") instance,
`StreamSource` instances may only be used once.

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

  `StreamSource()`

  Zero-argument default constructor.

  `StreamSource(File f)`

  Construct a StreamSource from a File.

  `StreamSource(InputStream inputStream)`

  Construct a StreamSource from a byte stream.

  `StreamSource(InputStream inputStream,
  String systemId)`

  Construct a StreamSource from a byte stream.

  `StreamSource(Reader reader)`

  Construct a StreamSource from a character reader.

  `StreamSource(Reader reader,
  String systemId)`

  Construct a StreamSource from a character reader.

  `StreamSource(String systemId)`

  Construct a StreamSource from a URL.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `InputStream`

  `getInputStream()`

  Get the byte stream that was set with setByteStream.

  `String`

  `getPublicId()`

  Get the public identifier that was set with setPublicId.

  `Reader`

  `getReader()`

  Get the character stream that was set with setReader.

  `String`

  `getSystemId()`

  Get the system identifier that was set with setSystemId.

  `boolean`

  `isEmpty()`

  Indicates whether the `StreamSource` object is empty.

  `void`

  `setInputStream(InputStream inputStream)`

  Set the byte stream to be used as input.

  `void`

  `setPublicId(String publicId)`

  Set the public identifier for this Source.

  `void`

  `setReader(Reader reader)`

  Set the input to be a character reader.

  `void`

  `setSystemId(File f)`

  Set the system ID from a File reference.

  `void`

  `setSystemId(String systemId)`

  Set the system identifier for this Source.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Source input of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.stream.StreamSource.FEATURE)
* ## Constructor Details

  + ### StreamSource

    public StreamSource()

    Zero-argument default constructor. If this constructor is used, and
    no Stream source is set using
    [`setInputStream(java.io.InputStream inputStream)`](#setInputStream(java.io.InputStream)) or
    [`setReader(java.io.Reader reader)`](#setReader(java.io.Reader)), then the
    `Transformer` will
    create an empty source [`InputStream`](../../../../../java.base/java/io/InputStream.md "class in java.io") using
    [`new InputStream()`](../../../../../java.base/java/io/InputStream.md#%3Cinit%3E()).

    See Also:
    :   - [`Transformer.transform(Source xmlSource, Result outputTarget)`](../Transformer.md#transform(javax.xml.transform.Source,javax.xml.transform.Result))
  + ### StreamSource

    public StreamSource([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") inputStream)

    Construct a StreamSource from a byte stream. Normally,
    a stream should be used rather than a reader, so
    the XML parser can resolve character encoding specified
    by the XML declaration.

    If this constructor is used to process a stylesheet, normally
    setSystemId should also be called, so that relative URI references
    can be resolved.

    Parameters:
    :   `inputStream` - A valid InputStream reference to an XML stream.
  + ### StreamSource

    public StreamSource([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") inputStream,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Construct a StreamSource from a byte stream. Normally,
    a stream should be used rather than a reader, so that
    the XML parser can resolve character encoding specified
    by the XML declaration.

    This constructor allows the systemID to be set in addition
    to the input stream, which allows relative URIs
    to be processed.

    Parameters:
    :   `inputStream` - A valid InputStream reference to an XML stream.
    :   `systemId` - Must be a String that conforms to the URI syntax.
  + ### StreamSource

    public StreamSource([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") reader)

    Construct a StreamSource from a character reader. Normally,
    a stream should be used rather than a reader, so that
    the XML parser can resolve character encoding specified
    by the XML declaration. However, in many cases the encoding
    of the input stream is already resolved, as in the case of
    reading XML from a StringReader.

    Parameters:
    :   `reader` - A valid Reader reference to an XML character stream.
  + ### StreamSource

    public StreamSource([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") reader,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Construct a StreamSource from a character reader. Normally,
    a stream should be used rather than a reader, so that
    the XML parser may resolve character encoding specified
    by the XML declaration. However, in many cases the encoding
    of the input stream is already resolved, as in the case of
    reading XML from a StringReader.

    Parameters:
    :   `reader` - A valid Reader reference to an XML character stream.
    :   `systemId` - Must be a String that conforms to the URI syntax.
  + ### StreamSource

    public StreamSource([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Construct a StreamSource from a URL.

    Parameters:
    :   `systemId` - Must be a String that conforms to the URI syntax.
  + ### StreamSource

    public StreamSource([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Construct a StreamSource from a File.

    Parameters:
    :   `f` - Must a non-null File reference.
* ## Method Details

  + ### setInputStream

    public void setInputStream([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") inputStream)

    Set the byte stream to be used as input. Normally,
    a stream should be used rather than a reader, so that
    the XML parser can resolve character encoding specified
    by the XML declaration.

    If this Source object is used to process a stylesheet, normally
    setSystemId should also be called, so that relative URL references
    can be resolved.

    Parameters:
    :   `inputStream` - A valid InputStream reference to an XML stream.
  + ### getInputStream

    public [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") getInputStream()

    Get the byte stream that was set with setByteStream.

    Returns:
    :   The byte stream that was set with setByteStream, or null
        if setByteStream or the ByteStream constructor was not called.
  + ### setReader

    public void setReader([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") reader)

    Set the input to be a character reader. Normally,
    a stream should be used rather than a reader, so that
    the XML parser can resolve character encoding specified
    by the XML declaration. However, in many cases the encoding
    of the input stream is already resolved, as in the case of
    reading XML from a StringReader.

    Parameters:
    :   `reader` - A valid Reader reference to an XML CharacterStream.
  + ### getReader

    public [Reader](../../../../../java.base/java/io/Reader.md "class in java.io") getReader()

    Get the character stream that was set with setReader.

    Returns:
    :   The character stream that was set with setReader, or null
        if setReader or the Reader constructor was not called.
  + ### setPublicId

    public void setPublicId([String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId)

    Set the public identifier for this Source.

    The public identifier is always optional: if the application
    writer includes one, it will be provided as part of the
    location information.

    Parameters:
    :   `publicId` - The public identifier as a string.
  + ### getPublicId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    Get the public identifier that was set with setPublicId.

    Returns:
    :   The public identifier that was set with setPublicId, or null
        if setPublicId was not called.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the system identifier for this Source.

    The system identifier is optional if there is a byte stream
    or a character stream, but it is still useful to provide one,
    since the application can use it to resolve relative URIs
    and can include it in error messages and warnings (the parser
    will attempt to open a connection to the URI only if
    there is no byte stream or character stream specified).

    Specified by:
    :   `setSystemId` in interface `Source`

    Parameters:
    :   `systemId` - The system identifier as a URL string.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier that was set with setSystemId.

    Specified by:
    :   `getSystemId` in interface `Source`

    Returns:
    :   The system identifier that was set with setSystemId, or null
        if setSystemId was not called.
  + ### setSystemId

    public void setSystemId([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Set the system ID from a File reference.

    Parameters:
    :   `f` - Must a non-null File reference.
  + ### isEmpty

    public boolean isEmpty()

    Indicates whether the `StreamSource` object is empty. Empty is
    defined as follows:
    - All of the input sources, including the public identifier, system
      identifier, byte stream, and character stream, are `null`.
    - The public identifier and system identifier are `null`, and
      byte and character stream are either `null` or contain no byte or
      character.

      Note that this method will reset the byte stream if it is provided, or
      the character stream if the byte stream is not provided.

    In case of error while checking the byte or character stream, the method
    will return false to allow the XML processor to handle the error.

    Specified by:
    :   `isEmpty` in interface `Source`

    Returns:
    :   true if the `StreamSource` object is empty, false otherwise