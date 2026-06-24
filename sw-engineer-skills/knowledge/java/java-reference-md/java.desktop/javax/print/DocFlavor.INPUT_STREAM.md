Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class DocFlavor.INPUT\_STREAM

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.DocFlavor](DocFlavor.md "class in javax.print")

javax.print.DocFlavor.INPUT\_STREAM

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Enclosing class:
:   `DocFlavor`

---

public static class DocFlavor.INPUT\_STREAM
extends [DocFlavor](DocFlavor.md "class in javax.print")

Class `DocFlavor.INPUT_STREAM` provides predefined static constant
`DocFlavor` objects for example doc flavors using a byte stream
([`java.io.InputStream`](../../../java.base/java/io/InputStream.md "class in java.io")) as the print data
representation class.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.print.DocFlavor.INPUT_STREAM)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `DocFlavor.BYTE_ARRAY, DocFlavor.CHAR_ARRAY, DocFlavor.INPUT_STREAM, DocFlavor.READER, DocFlavor.SERVICE_FORMATTED, DocFlavor.STRING, DocFlavor.URL`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DocFlavor.INPUT_STREAM`

  `AUTOSENSE`

  Doc flavor with MIME type = `"application/octet-stream"`, print
  data representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `GIF`

  Doc flavor with MIME type = `"image/gif"`, print data
  representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `JPEG`

  Doc flavor with MIME type = `"image/jpeg"`, print data
  representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `PCL`

  Doc flavor with MIME type = `"application/vnd.hp-PCL"`, print
  data representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `PDF`

  Doc flavor with MIME type = `"application/pdf"`, print data
  representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `PNG`

  Doc flavor with MIME type = `"image/png"`, print data
  representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `POSTSCRIPT`

  Doc flavor with MIME type = `"application/postscript"`, print
  data representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_HOST`

  Doc flavor with MIME type = `"text/html"`, encoded in the host
  platform encoding.

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_US_ASCII`

  Doc flavor with MIME type = `"text/html; charset=us-ascii"`,
  print data representation class name = `"java.io.InputStream"`
  (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_UTF_16`

  Doc flavor with MIME type = `"text/html; charset=utf-16"`,
  print data representation class name = `"java.io.InputStream"`
  (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_UTF_16BE`

  Doc flavor with MIME type = `"text/html; charset=utf-16be"`
  (big-endian byte ordering), print data representation class name =
  `"java.io.InputStream"` (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_UTF_16LE`

  Doc flavor with MIME type = `"text/html; charset=utf-16le"`
  (little-endian byte ordering), print data representation class name =
  `"java.io.InputStream"` (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_HTML_UTF_8`

  Doc flavor with MIME type = `"text/html; charset=utf-8"`, print
  data representation class name = `"java.io.InputStream"` (byte
  stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_HOST`

  Doc flavor with MIME type = `"text/plain"`, encoded in the host
  platform encoding.

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_US_ASCII`

  Doc flavor with MIME type = `"text/plain; charset=us-ascii"`,
  print data representation class name = `"java.io.InputStream"`
  (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_UTF_16`

  Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
  print data representation class name = `"java.io.InputStream"`
  (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_UTF_16BE`

  Doc flavor with MIME type = `"text/plain; charset=utf-16be"`
  (big-endian byte ordering), print data representation class name =
  `"java.io.InputStream"` (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_UTF_16LE`

  Doc flavor with MIME type = `"text/plain; charset=utf-16le"`
  (little-endian byte ordering), print data representation class name =
  `"java.io.InputStream"` (byte stream).

  `static final DocFlavor.INPUT_STREAM`

  `TEXT_PLAIN_UTF_8`

  Doc flavor with MIME type = `"text/plain; charset=utf-8"`,
  print data representation class name = `"java.io.InputStream"`
  (byte stream).

  ### Fields inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `hostEncoding`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `INPUT_STREAM(String mimeType)`

  Constructs a new doc flavor with the given MIME type and a print data
  representation class name of `"java.io.InputStream"` (byte
  stream).
* ## Method Summary

  ### Methods inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `equals, getMediaSubtype, getMediaType, getMimeType, getParameter, getRepresentationClassName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TEXT\_PLAIN\_HOST

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_HOST

    Doc flavor with MIME type = `"text/plain"`, encoded in the host
    platform encoding. See [`hostEncoding`](DocFlavor.md#hostEncoding).
    Print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_PLAIN\_UTF\_8

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_UTF\_8

    Doc flavor with MIME type = `"text/plain; charset=utf-8"`,
    print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_PLAIN\_UTF\_16

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_UTF\_16

    Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
    print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_PLAIN\_UTF\_16BE

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_UTF\_16BE

    Doc flavor with MIME type = `"text/plain; charset=utf-16be"`
    (big-endian byte ordering), print data representation class name =
    `"java.io.InputStream"` (byte stream).
  + ### TEXT\_PLAIN\_UTF\_16LE

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_UTF\_16LE

    Doc flavor with MIME type = `"text/plain; charset=utf-16le"`
    (little-endian byte ordering), print data representation class name =
    `"java.io.InputStream"` (byte stream).
  + ### TEXT\_PLAIN\_US\_ASCII

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_PLAIN\_US\_ASCII

    Doc flavor with MIME type = `"text/plain; charset=us-ascii"`,
    print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_HTML\_HOST

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_HOST

    Doc flavor with MIME type = `"text/html"`, encoded in the host
    platform encoding. See [`hostEncoding`](DocFlavor.md#hostEncoding).
    Print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_HTML\_UTF\_8

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_UTF\_8

    Doc flavor with MIME type = `"text/html; charset=utf-8"`, print
    data representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### TEXT\_HTML\_UTF\_16

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_UTF\_16

    Doc flavor with MIME type = `"text/html; charset=utf-16"`,
    print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### TEXT\_HTML\_UTF\_16BE

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_UTF\_16BE

    Doc flavor with MIME type = `"text/html; charset=utf-16be"`
    (big-endian byte ordering), print data representation class name =
    `"java.io.InputStream"` (byte stream).
  + ### TEXT\_HTML\_UTF\_16LE

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_UTF\_16LE

    Doc flavor with MIME type = `"text/html; charset=utf-16le"`
    (little-endian byte ordering), print data representation class name =
    `"java.io.InputStream"` (byte stream).
  + ### TEXT\_HTML\_US\_ASCII

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") TEXT\_HTML\_US\_ASCII

    Doc flavor with MIME type = `"text/html; charset=us-ascii"`,
    print data representation class name = `"java.io.InputStream"`
    (byte stream).
  + ### PDF

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") PDF

    Doc flavor with MIME type = `"application/pdf"`, print data
    representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### POSTSCRIPT

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") POSTSCRIPT

    Doc flavor with MIME type = `"application/postscript"`, print
    data representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### PCL

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") PCL

    Doc flavor with MIME type = `"application/vnd.hp-PCL"`, print
    data representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### GIF

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") GIF

    Doc flavor with MIME type = `"image/gif"`, print data
    representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### JPEG

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") JPEG

    Doc flavor with MIME type = `"image/jpeg"`, print data
    representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### PNG

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") PNG

    Doc flavor with MIME type = `"image/png"`, print data
    representation class name = `"java.io.InputStream"` (byte
    stream).
  + ### AUTOSENSE

    public static final [DocFlavor.INPUT\_STREAM](DocFlavor.INPUT_STREAM.md "class in javax.print") AUTOSENSE

    Doc flavor with MIME type = `"application/octet-stream"`, print
    data representation class name = `"java.io.InputStream"` (byte
    stream). The client must determine that data described using this
    `DocFlavor` is valid for the printer.
* ## Constructor Details

  + ### INPUT\_STREAM

    public INPUT\_STREAM([String](../../../java.base/java/lang/String.md "class in java.lang") mimeType)

    Constructs a new doc flavor with the given MIME type and a print data
    representation class name of `"java.io.InputStream"` (byte
    stream).

    Parameters:
    :   `mimeType` - MIME media type string

    Throws:
    :   `NullPointerException` - if `mimeType` is `null`
    :   `IllegalArgumentException` - if `mimeType` does not obey
        the syntax for a MIME media type string.