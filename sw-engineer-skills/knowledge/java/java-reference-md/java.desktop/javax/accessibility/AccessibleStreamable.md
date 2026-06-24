Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleStreamable

---

public interface AccessibleStreamable

The `AccessibleStreamable` interface should be implemented by the
`AccessibleContext` of any component that presents the raw stream
behind a component on the display screen. Examples of such components are
HTML, bitmap images and MathML. An object that implements
`AccessibleStreamable` provides two things: a list of MIME types
supported by the object and a streaming interface for each MIME type to get
the data.

Since:
:   1.5

See Also:
:   * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DataFlavor[]`

  `getMimeTypes()`

  Returns an array of `DataFlavor` objects for the MIME types this
  object supports.

  `InputStream`

  `getStream(DataFlavor flavor)`

  Returns an `InputStream` for a `DataFlavor`.

* ## Method Details

  + ### getMimeTypes

    [DataFlavor](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getMimeTypes()

    Returns an array of `DataFlavor` objects for the MIME types this
    object supports.

    Returns:
    :   an array of `DataFlavor` objects for the MIME types this
        object supports
  + ### getStream

    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") getStream([DataFlavor](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") flavor)

    Returns an `InputStream` for a `DataFlavor`.

    Parameters:
    :   `flavor` - the `DataFlavor`

    Returns:
    :   an `ImputStream` if an input stream for this
        `DataFlavor` exists. Otherwise, `null` is returned.