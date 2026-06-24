Module [java.desktop](../../../module-summary.md)

# Package javax.imageio.metadata

---

package javax.imageio.metadata

A package of the Java Image I/O API dealing with reading and writing
metadata.

When reading an image, its per-stream and per-image metadata is made
available as an `IIOMetadata` object. The internals of this object are
specific to the plug-in that created it. Its contents may be accessed in the
form of an XML `Document`, which is implemented as a tree of
`IIOMetadataNode` objects.

When writing an image, its metadata may be set by defining or modifying an
`IIOMetadata` object. Such an object may be obtained from an
`ImageWriter` or `ImageTranscoder` (from the
`javax.imageio` package). Once such an object has been obtained, its
contents may be set of modified via a `Document` consisting of
`IIOMetadataNode`s. The document format may optionally be described
using an `IIOMetadataFormat` object.

The format of the metadata contained in the XML `Document` is
identified by a string which appears as the root node of the tree of
`IIOMetadataNode` objects. This string contains a version number, e.g.
"javax\_imageio\_jpeg\_image\_1.0". Readers and writers may support multiple
versions of the same basic format and the Image I/O API has methods that
allow specifying which version to use by passing the string to the
method/constructor used to obtain an `IIOMetadata` object. In some
cases, a more recent version may not be strictly compatible with a program
written expecting an older version (for an example, see the Native Metadata
Format section of the JPEG Metadata Usage Notes below).

Plug-ins may choose to support a
[standard (plug-in neutral) format](doc-files/standard_metadata.md). This format does not provide lossless encoding of metadata, but allows
a portion of the metadata to be accessed in a generic manner.

Each of the standard plug-ins supports a so-called "native" metadata format,
which encodes its metadata losslessly:

* [BMP metadata](doc-files/bmp_metadata.md)
* [GIF metadata](doc-files/gif_metadata.md)
* [JPEG metadata](doc-files/jpeg_metadata.md)
* [PNG metadata](doc-files/png_metadata.md)
* [TIFF metadata](doc-files/tiff_metadata.md#StreamMetadata)
* [WBMP metadata](doc-files/wbmp_metadata.md)

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.imageio](../package-summary.md)

  The main package of the Java Image I/O API.

  [javax.imageio.event](../event/package-summary.md)

  A package of the Java Image I/O API dealing with synchronous notification of
  events during the reading and writing of images.

  [javax.imageio.spi](../spi/package-summary.md)

  A package of the Java Image I/O API containing the plug-in interfaces for
  readers, writers, transcoders, and streams, and a runtime registry.

  [javax.imageio.stream](../stream/package-summary.md)

  A package of the Java Image I/O API dealing with low-level I/O from files and
  streams.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [IIOInvalidTreeException](IIOInvalidTreeException.md "class in javax.imageio.metadata")

  An `IIOInvalidTreeException` is thrown when an attempt
  by an `IIOMetadata` object to parse a tree of
  `IIOMetadataNode`s fails.

  [IIOMetadata](IIOMetadata.md "class in javax.imageio.metadata")

  An abstract class to be extended by objects that represent metadata
  (non-image data) associated with images and streams.

  [IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata")

  An interface to be implemented by objects that can determine the
  settings of an `IIOMetadata` object, either by putting
  up a GUI to obtain values from a user, or by other means.

  [IIOMetadataFormat](IIOMetadataFormat.md "interface in javax.imageio.metadata")

  An object describing the structure of metadata documents returned
  from `IIOMetadata.getAsTree` and passed to
  `IIOMetadata.setFromTree` and `mergeTree`.

  [IIOMetadataFormatImpl](IIOMetadataFormatImpl.md "class in javax.imageio.metadata")

  A concrete class providing a reusable implementation of the
  `IIOMetadataFormat` interface.

  [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata")

  A class representing a node in a meta-data tree, which implements
  the [`org.w3c.dom.Element`](../../../../java.xml/org/w3c/dom/Element.md "interface in org.w3c.dom") interface and additionally allows
  for the storage of non-textual objects via the
  `getUserObject` and `setUserObject` methods.