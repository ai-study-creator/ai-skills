# Hierarchy For Package java.awt.datatransfer

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.awt.datatransfer.[Clipboard](Clipboard.md "class in java.awt.datatransfer")
  + java.awt.datatransfer.[DataFlavor](DataFlavor.md "class in java.awt.datatransfer") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.io.[Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io"))
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.datatransfer.[FlavorEvent](FlavorEvent.md "class in java.awt.datatransfer")
  + java.awt.datatransfer.[StringSelection](StringSelection.md "class in java.awt.datatransfer") (implements java.awt.datatransfer.[ClipboardOwner](ClipboardOwner.md "interface in java.awt.datatransfer"), java.awt.datatransfer.[Transferable](Transferable.md "interface in java.awt.datatransfer"))
  + java.awt.datatransfer.[SystemFlavorMap](SystemFlavorMap.md "class in java.awt.datatransfer") (implements java.awt.datatransfer.[FlavorMap](FlavorMap.md "interface in java.awt.datatransfer"), java.awt.datatransfer.[FlavorTable](FlavorTable.md "interface in java.awt.datatransfer"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.awt.datatransfer.[MimeTypeParseException](MimeTypeParseException.md "class in java.awt.datatransfer")
      * java.awt.datatransfer.[UnsupportedFlavorException](UnsupportedFlavorException.md "class in java.awt.datatransfer")

## Interface Hierarchy

* java.awt.datatransfer.[ClipboardOwner](ClipboardOwner.md "interface in java.awt.datatransfer")
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + java.awt.datatransfer.[FlavorListener](FlavorListener.md "interface in java.awt.datatransfer")
* java.awt.datatransfer.[FlavorMap](FlavorMap.md "interface in java.awt.datatransfer")
  + java.awt.datatransfer.[FlavorTable](FlavorTable.md "interface in java.awt.datatransfer")
* java.awt.datatransfer.[Transferable](Transferable.md "interface in java.awt.datatransfer")