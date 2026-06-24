Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class DocFlavor.READER

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.DocFlavor](DocFlavor.md "class in javax.print")

javax.print.DocFlavor.READER

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Enclosing class:
:   `DocFlavor`

---

public static class DocFlavor.READER
extends [DocFlavor](DocFlavor.md "class in javax.print")

Class `DocFlavor.READER` provides predefined static constant
`DocFlavor` objects for example doc flavors using a character
stream ([`java.io.Reader`](../../../java.base/java/io/Reader.md "class in java.io")) as the print data
representation class. As such, the character set is Unicode.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.print.DocFlavor.READER)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `DocFlavor.BYTE_ARRAY, DocFlavor.CHAR_ARRAY, DocFlavor.INPUT_STREAM, DocFlavor.READER, DocFlavor.SERVICE_FORMATTED, DocFlavor.STRING, DocFlavor.URL`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DocFlavor.READER`

  `TEXT_HTML`

  Doc flavor with MIME type = `"text/html; charset=utf-16"`,
  print data representation class name = `"java.io.Reader"`
  (character stream).

  `static final DocFlavor.READER`

  `TEXT_PLAIN`

  Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
  print data representation class name = `"java.io.Reader"`
  (character stream).

  ### Fields inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `hostEncoding`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `READER(String mimeType)`

  Constructs a new doc flavor with the given MIME type and a print data
  representation class name of `"java.io.Reader"` (character
  stream).
* ## Method Summary

  ### Methods inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `equals, getMediaSubtype, getMediaType, getMimeType, getParameter, getRepresentationClassName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TEXT\_PLAIN

    public static final [DocFlavor.READER](DocFlavor.READER.md "class in javax.print") TEXT\_PLAIN

    Doc flavor with MIME type = `"text/plain; charset=utf-16"`,
    print data representation class name = `"java.io.Reader"`
    (character stream).
  + ### TEXT\_HTML

    public static final [DocFlavor.READER](DocFlavor.READER.md "class in javax.print") TEXT\_HTML

    Doc flavor with MIME type = `"text/html; charset=utf-16"`,
    print data representation class name = `"java.io.Reader"`
    (character stream).
* ## Constructor Details

  + ### READER

    public READER([String](../../../java.base/java/lang/String.md "class in java.lang") mimeType)

    Constructs a new doc flavor with the given MIME type and a print data
    representation class name of `"java.io.Reader"` (character
    stream).

    Parameters:
    :   `mimeType` - MIME media type string. If it is a text media type,
        it is assumed to contain a `"charset=utf-16"`
        parameter.

    Throws:
    :   `NullPointerException` - if `mimeType` is `null`
    :   `IllegalArgumentException` - if `mimeType` does not obey
        the syntax for a MIME media type string