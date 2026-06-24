Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class DocFlavor.BYTE\_ARRAY

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.DocFlavor](DocFlavor.md "class in javax.print")

javax.print.DocFlavor.BYTE\_ARRAY

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Enclosing class:
:   `DocFlavor`

---

public static class DocFlavor.BYTE\_ARRAY
extends [DocFlavor](DocFlavor.md "class in javax.print")

Class `DocFlavor.BYTE_ARRAY` provides predefined static constant
`DocFlavor` objects for example doc flavors using a byte array
(`byte[]`) as the print data representation class.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.print.DocFlavor.BYTE_ARRAY)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `DocFlavor.BYTE_ARRAY, DocFlavor.CHAR_ARRAY, DocFlavor.INPUT_STREAM, DocFlavor.READER, DocFlavor.SERVICE_FORMATTED, DocFlavor.STRING, DocFlavor.URL`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DocFlavor.BYTE_ARRAY`

  `AUTOSENSE`

  Doc flavor with MIME type = `"application/octet-stream"`, print
  data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `GIF`

  Doc flavor with MIME type = `"image/gif"`, print data
  representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `JPEG`

  Doc flavor with MIME type = `"image/jpeg"`, print data
  representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `PCL`

  Doc flavor with MIME type = `"application/vnd.hp-PCL"`, print
  data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `PDF`

  Doc flavor with MIME type = `"application/pdf"`, print data
  representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `PNG`

  Doc flavor with MIME type = `"image/png"`, print data
  representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `POSTSCRIPT`

  Doc flavor with MIME type = `"application/postscript"`, print
  data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_HOST`

  Doc flavor with MIME type = `"text/html"`, encoded in the host
  platform encoding.

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_US_ASCII`

  Doc flavor with MIME type = `"text/html; charset=us-ascii"`,
  print data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_UTF_16`

  Doc flavor with MIME type = `"text/html; charset=utf-16"`,
  print data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_UTF_16BE`

  Doc flavor with MIME type = `"text/html; charset=utf-16be"`
  (big-endian byte ordering), print data representation class name =
  `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_UTF_16LE`

  Doc flavor with MIME type = `"text/html; charset=utf-16le"`
  (little-endian byte ordering), print data representation class name =
  `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_HTML_UTF_8`

  Doc flavor with MIME type = `"text/html; charset=utf-8"`, print
  data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_HOST`

  Doc flavor with MIME type = `"text/plain"`, encoded in the host
  platform encoding.

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_US_ASCII`

  Doc flavor with MIME type = `"text/plain; charset=us-ascii"`,
  print data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_UTF_16`

  Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
  print data representation class name = `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_UTF_16BE`

  Doc flavor with MIME type = `"text/plain; charset=utf-16be"`
  (big-endian byte ordering), print data representation class name =
  `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_UTF_16LE`

  Doc flavor with MIME type = `"text/plain; charset=utf-16le"`
  (little-endian byte ordering), print data representation class name =
  `"[B"` (byte array).

  `static final DocFlavor.BYTE_ARRAY`

  `TEXT_PLAIN_UTF_8`

  Doc flavor with MIME type = `"text/plain; charset=utf-8"`,
  print data representation class name = `"[B"` (byte array).

  ### Fields inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `hostEncoding`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BYTE_ARRAY(String mimeType)`

  Constructs a new doc flavor with the given MIME type and a print data
  representation class name of `"[B"` (byte array).
* ## Method Summary

  ### Methods inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `equals, getMediaSubtype, getMediaType, getMimeType, getParameter, getRepresentationClassName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TEXT\_PLAIN\_HOST

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_HOST

    Doc flavor with MIME type = `"text/plain"`, encoded in the host
    platform encoding. See [`hostEncoding`](DocFlavor.md#hostEncoding).
    Print data representation class name = `"[B"` (byte array).
  + ### TEXT\_PLAIN\_UTF\_8

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_UTF\_8

    Doc flavor with MIME type = `"text/plain; charset=utf-8"`,
    print data representation class name = `"[B"` (byte array).
  + ### TEXT\_PLAIN\_UTF\_16

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_UTF\_16

    Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
    print data representation class name = `"[B"` (byte array).
  + ### TEXT\_PLAIN\_UTF\_16BE

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_UTF\_16BE

    Doc flavor with MIME type = `"text/plain; charset=utf-16be"`
    (big-endian byte ordering), print data representation class name =
    `"[B"` (byte array).
  + ### TEXT\_PLAIN\_UTF\_16LE

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_UTF\_16LE

    Doc flavor with MIME type = `"text/plain; charset=utf-16le"`
    (little-endian byte ordering), print data representation class name =
    `"[B"` (byte array).
  + ### TEXT\_PLAIN\_US\_ASCII

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_PLAIN\_US\_ASCII

    Doc flavor with MIME type = `"text/plain; charset=us-ascii"`,
    print data representation class name = `"[B"` (byte array).
  + ### TEXT\_HTML\_HOST

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_HOST

    Doc flavor with MIME type = `"text/html"`, encoded in the host
    platform encoding. See [`hostEncoding`](DocFlavor.md#hostEncoding).
    Print data representation class name = `"[B"` (byte array).
  + ### TEXT\_HTML\_UTF\_8

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_UTF\_8

    Doc flavor with MIME type = `"text/html; charset=utf-8"`, print
    data representation class name = `"[B"` (byte array).
  + ### TEXT\_HTML\_UTF\_16

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_UTF\_16

    Doc flavor with MIME type = `"text/html; charset=utf-16"`,
    print data representation class name = `"[B"` (byte array).
  + ### TEXT\_HTML\_UTF\_16BE

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_UTF\_16BE

    Doc flavor with MIME type = `"text/html; charset=utf-16be"`
    (big-endian byte ordering), print data representation class name =
    `"[B"` (byte array).
  + ### TEXT\_HTML\_UTF\_16LE

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_UTF\_16LE

    Doc flavor with MIME type = `"text/html; charset=utf-16le"`
    (little-endian byte ordering), print data representation class name =
    `"[B"` (byte array).
  + ### TEXT\_HTML\_US\_ASCII

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") TEXT\_HTML\_US\_ASCII

    Doc flavor with MIME type = `"text/html; charset=us-ascii"`,
    print data representation class name = `"[B"` (byte array).
  + ### PDF

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") PDF

    Doc flavor with MIME type = `"application/pdf"`, print data
    representation class name = `"[B"` (byte array).
  + ### POSTSCRIPT

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") POSTSCRIPT

    Doc flavor with MIME type = `"application/postscript"`, print
    data representation class name = `"[B"` (byte array).
  + ### PCL

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") PCL

    Doc flavor with MIME type = `"application/vnd.hp-PCL"`, print
    data representation class name = `"[B"` (byte array).
  + ### GIF

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") GIF

    Doc flavor with MIME type = `"image/gif"`, print data
    representation class name = `"[B"` (byte array).
  + ### JPEG

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") JPEG

    Doc flavor with MIME type = `"image/jpeg"`, print data
    representation class name = `"[B"` (byte array).
  + ### PNG

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") PNG

    Doc flavor with MIME type = `"image/png"`, print data
    representation class name = `"[B"` (byte array).
  + ### AUTOSENSE

    public static final [DocFlavor.BYTE\_ARRAY](DocFlavor.BYTE_ARRAY.md "class in javax.print") AUTOSENSE

    Doc flavor with MIME type = `"application/octet-stream"`, print
    data representation class name = `"[B"` (byte array). The
    client must determine that data described using this
    `DocFlavor` is valid for the printer.
* ## Constructor Details

  + ### BYTE\_ARRAY

    public BYTE\_ARRAY([String](../../../java.base/java/lang/String.md "class in java.lang") mimeType)

    Constructs a new doc flavor with the given MIME type and a print data
    representation class name of `"[B"` (byte array).

    Parameters:
    :   `mimeType` - MIME media type string

    Throws:
    :   `NullPointerException` - if `mimeType` is `null`
    :   `IllegalArgumentException` - if `mimeType` does not obey
        the syntax for a MIME media type string