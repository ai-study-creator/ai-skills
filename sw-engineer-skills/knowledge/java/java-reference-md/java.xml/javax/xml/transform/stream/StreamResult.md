Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.stream](package-summary.md)

# Class StreamResult

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.stream.StreamResult

All Implemented Interfaces:
:   `Result`

---

public class StreamResult
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Result](../Result.md "interface in javax.xml.transform")

Acts as an holder for a transformation result,
which may be XML, plain Text, HTML, or some other form of markup.

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
  the Transformer supports Result output of this type.

  ### Fields inherited from interface javax.xml.transform.[Result](../Result.md "interface in javax.xml.transform")

  `PI_DISABLE_OUTPUT_ESCAPING, PI_ENABLE_OUTPUT_ESCAPING`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StreamResult()`

  Zero-argument default constructor.

  `StreamResult(File f)`

  Construct a StreamResult from a File.

  `StreamResult(OutputStream outputStream)`

  Construct a StreamResult from a byte stream.

  `StreamResult(Writer writer)`

  Construct a StreamResult from a character stream.

  `StreamResult(String systemId)`

  Construct a StreamResult from a URL.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `OutputStream`

  `getOutputStream()`

  Get the byte stream that was set with setOutputStream.

  `String`

  `getSystemId()`

  Get the system identifier that was set with setSystemId.

  `Writer`

  `getWriter()`

  Get the character stream that was set with setWriter.

  `void`

  `setOutputStream(OutputStream outputStream)`

  Set the ByteStream that is to be written to.

  `void`

  `setSystemId(File f)`

  Set the system ID from a `File` reference.

  `void`

  `setSystemId(String systemId)`

  Set the systemID that may be used in association
  with the byte or character stream, or, if neither is set, use
  this value as a writeable URI (probably a file name).

  `void`

  `setWriter(Writer writer)`

  Set the writer that is to receive the result.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Result output of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.stream.StreamResult.FEATURE)
* ## Constructor Details

  + ### StreamResult

    public StreamResult()

    Zero-argument default constructor.
  + ### StreamResult

    public StreamResult([OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") outputStream)

    Construct a StreamResult from a byte stream. Normally,
    a stream should be used rather than a reader, so that
    the transformer may use instructions contained in the
    transformation instructions to control the encoding.

    Parameters:
    :   `outputStream` - A valid OutputStream reference.
  + ### StreamResult

    public StreamResult([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") writer)

    Construct a StreamResult from a character stream. Normally,
    a stream should be used rather than a reader, so that
    the transformer may use instructions contained in the
    transformation instructions to control the encoding. However,
    there are times when it is useful to write to a character
    stream, such as when using a StringWriter.

    Parameters:
    :   `writer` - A valid Writer reference.
  + ### StreamResult

    public StreamResult([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Construct a StreamResult from a URL.

    Parameters:
    :   `systemId` - Must be a String that conforms to the URI syntax.
  + ### StreamResult

    public StreamResult([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Construct a StreamResult from a File.

    Parameters:
    :   `f` - Must a non-null File reference.
* ## Method Details

  + ### setOutputStream

    public void setOutputStream([OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") outputStream)

    Set the ByteStream that is to be written to. Normally,
    a stream should be used rather than a reader, so that
    the transformer may use instructions contained in the
    transformation instructions to control the encoding.

    Parameters:
    :   `outputStream` - A valid OutputStream reference.
  + ### getOutputStream

    public [OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") getOutputStream()

    Get the byte stream that was set with setOutputStream.

    Returns:
    :   The byte stream that was set with setOutputStream, or null
        if setOutputStream or the ByteStream constructor was not called.
  + ### setWriter

    public void setWriter([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") writer)

    Set the writer that is to receive the result. Normally,
    a stream should be used rather than a writer, so that
    the transformer may use instructions contained in the
    transformation instructions to control the encoding. However,
    there are times when it is useful to write to a writer,
    such as when using a StringWriter.

    Parameters:
    :   `writer` - A valid Writer reference.
  + ### getWriter

    public [Writer](../../../../../java.base/java/io/Writer.md "class in java.io") getWriter()

    Get the character stream that was set with setWriter.

    Returns:
    :   The character stream that was set with setWriter, or null
        if setWriter or the Writer constructor was not called.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the systemID that may be used in association
    with the byte or character stream, or, if neither is set, use
    this value as a writeable URI (probably a file name).

    Specified by:
    :   `setSystemId` in interface `Result`

    Parameters:
    :   `systemId` - The system identifier as a URI string.
  + ### setSystemId

    public void setSystemId([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Set the system ID from a `File` reference.

    Parameters:
    :   `f` - Must a non-null File reference.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier that was set with setSystemId.

    Specified by:
    :   `getSystemId` in interface `Result`

    Returns:
    :   The system identifier that was set with setSystemId, or null
        if setSystemId was not called.