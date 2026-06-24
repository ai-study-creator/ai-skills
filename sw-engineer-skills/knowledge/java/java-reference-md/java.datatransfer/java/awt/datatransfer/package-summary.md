Module [java.datatransfer](../../../module-summary.md)

# Package java.awt.datatransfer

---

package java.awt.datatransfer

Provides interfaces and classes for transferring data between and within
applications. It defines the notion of a "transferable" object, which is an
object capable of being transferred between or within applications. An object
identifies itself as being transferable by implementing the Transferable
interface.

It also provides a clipboard mechanism, which is an object that temporarily
holds a transferable object that can be transferred between or within an
application. The clipboard is typically used for copy and paste operations.
Although it is possible to create a clipboard to use within an application,
most applications will use the system clipboard to ensure the data can be
transferred across applications running on the platform.

Since:
:   1.1

* Related Packages

  Module

  Package

  Description

  [java.desktop](../../../../java.desktop/module-summary.md)

  [java.awt](../../../../java.desktop/java/awt/package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Clipboard](Clipboard.md "class in java.awt.datatransfer")

  A class that implements a mechanism to transfer data using cut/copy/paste
  operations.

  [ClipboardOwner](ClipboardOwner.md "interface in java.awt.datatransfer")

  Defines the interface for classes that will provide data to a clipboard.

  [DataFlavor](DataFlavor.md "class in java.awt.datatransfer")

  A `DataFlavor` provides meta information about data.

  [FlavorEvent](FlavorEvent.md "class in java.awt.datatransfer")

  `FlavorEvent` is used to notify interested parties that available
  [`DataFlavor`](DataFlavor.md "class in java.awt.datatransfer")s have changed in the [`Clipboard`](Clipboard.md "class in java.awt.datatransfer") (the event source).

  [FlavorListener](FlavorListener.md "interface in java.awt.datatransfer")

  Defines an object which listens for [`FlavorEvent`](FlavorEvent.md "class in java.awt.datatransfer")s.

  [FlavorMap](FlavorMap.md "interface in java.awt.datatransfer")

  A two-way Map between "natives" (Strings), which correspond to
  platform-specific data formats, and "flavors" (DataFlavors), which correspond
  to platform-independent MIME types.

  [FlavorTable](FlavorTable.md "interface in java.awt.datatransfer")

  A FlavorMap which relaxes the traditional 1-to-1 restriction of a Map.

  [MimeTypeParseException](MimeTypeParseException.md "class in java.awt.datatransfer")

  A class to encapsulate MimeType parsing related exceptions.

  [StringSelection](StringSelection.md "class in java.awt.datatransfer")

  A `Transferable` which implements the capability required to transfer a
  `String`.

  [SystemFlavorMap](SystemFlavorMap.md "class in java.awt.datatransfer")

  The SystemFlavorMap is a configurable map between "natives" (Strings), which
  correspond to platform-specific data formats, and "flavors" (DataFlavors),
  which correspond to platform-independent MIME types.

  [Transferable](Transferable.md "interface in java.awt.datatransfer")

  Defines the interface for classes that can be used to provide data for a
  transfer operation.

  [UnsupportedFlavorException](UnsupportedFlavorException.md "class in java.awt.datatransfer")

  Signals that the requested data is not supported in this flavor.