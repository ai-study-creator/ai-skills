Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class DocFlavor.SERVICE\_FORMATTED

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.DocFlavor](DocFlavor.md "class in javax.print")

javax.print.DocFlavor.SERVICE\_FORMATTED

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Enclosing class:
:   `DocFlavor`

---

public static class DocFlavor.SERVICE\_FORMATTED
extends [DocFlavor](DocFlavor.md "class in javax.print")

Class `DocFlavor.SERVICE_FORMATTED` provides predefined static
constant `DocFlavor` objects for example doc flavors for service
formatted print data.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.print.DocFlavor.SERVICE_FORMATTED)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `DocFlavor.BYTE_ARRAY, DocFlavor.CHAR_ARRAY, DocFlavor.INPUT_STREAM, DocFlavor.READER, DocFlavor.SERVICE_FORMATTED, DocFlavor.STRING, DocFlavor.URL`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DocFlavor.SERVICE_FORMATTED`

  `PAGEABLE`

  Service formatted print data doc flavor with print data
  representation class name = `"java.awt.print.Pageable"`
  (pageable object).

  `static final DocFlavor.SERVICE_FORMATTED`

  `PRINTABLE`

  Service formatted print data doc flavor with print data
  representation class name = `"java.awt.print.Printable"`
  (printable object).

  `static final DocFlavor.SERVICE_FORMATTED`

  `RENDERABLE_IMAGE`

  Service formatted print data doc flavor with print data
  representation class name =
  `"java.awt.image.renderable.RenderableImage"` (renderable image
  object).

  ### Fields inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `hostEncoding`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SERVICE_FORMATTED(String className)`

  Constructs a new doc flavor with a MIME type of
  `"application/x-java-jvm-local-objectref"` indicating service
  formatted print data and the given print data representation class
  name.
* ## Method Summary

  ### Methods inherited from class javax.print.[DocFlavor](DocFlavor.md "class in javax.print")

  `equals, getMediaSubtype, getMediaType, getMimeType, getParameter, getRepresentationClassName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### RENDERABLE\_IMAGE

    public static final [DocFlavor.SERVICE\_FORMATTED](DocFlavor.SERVICE_FORMATTED.md "class in javax.print") RENDERABLE\_IMAGE

    Service formatted print data doc flavor with print data
    representation class name =
    `"java.awt.image.renderable.RenderableImage"` (renderable image
    object).
  + ### PRINTABLE

    public static final [DocFlavor.SERVICE\_FORMATTED](DocFlavor.SERVICE_FORMATTED.md "class in javax.print") PRINTABLE

    Service formatted print data doc flavor with print data
    representation class name = `"java.awt.print.Printable"`
    (printable object).
  + ### PAGEABLE

    public static final [DocFlavor.SERVICE\_FORMATTED](DocFlavor.SERVICE_FORMATTED.md "class in javax.print") PAGEABLE

    Service formatted print data doc flavor with print data
    representation class name = `"java.awt.print.Pageable"`
    (pageable object).
* ## Constructor Details

  + ### SERVICE\_FORMATTED

    public SERVICE\_FORMATTED([String](../../../java.base/java/lang/String.md "class in java.lang") className)

    Constructs a new doc flavor with a MIME type of
    `"application/x-java-jvm-local-objectref"` indicating service
    formatted print data and the given print data representation class
    name.

    Parameters:
    :   `className` - fully-qualified representation class name

    Throws:
    :   `NullPointerException` - if `className` is `null`