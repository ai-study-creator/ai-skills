Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Interface Transferable

All Known Implementing Classes:
:   `DropTargetContext.TransferableProxy`, `StringSelection`

---

public interface Transferable

Defines the interface for classes that can be used to provide data for a
transfer operation.

For information on using data transfer with Swing, see
[How to Use Drag and Drop and Data Transfer](http://docs.oracle.com/javase/tutorial/uiswing/dnd/index.html), a section in
*The Java Tutorial*, for more information.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getTransferData(DataFlavor flavor)`

  Returns an object which represents the data to be transferred.

  `DataFlavor[]`

  `getTransferDataFlavors()`

  Returns an array of DataFlavor objects indicating the flavors the data
  can be provided in.

  `boolean`

  `isDataFlavorSupported(DataFlavor flavor)`

  Returns whether or not the specified data flavor is supported for this
  object.

* ## Method Details

  + ### getTransferDataFlavors

    [DataFlavor](DataFlavor.md "class in java.awt.datatransfer")[] getTransferDataFlavors()

    Returns an array of DataFlavor objects indicating the flavors the data
    can be provided in. The array should be ordered according to preference
    for providing the data (from most richly descriptive to least
    descriptive).

    Returns:
    :   an array of data flavors in which this data can be transferred
  + ### isDataFlavorSupported

    boolean isDataFlavorSupported([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flavor)

    Returns whether or not the specified data flavor is supported for this
    object.

    Parameters:
    :   `flavor` - the requested flavor for the data

    Returns:
    :   boolean indicating whether or not the data flavor is supported
  + ### getTransferData

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getTransferData([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flavor)
    throws [UnsupportedFlavorException](UnsupportedFlavorException.md "class in java.awt.datatransfer"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an object which represents the data to be transferred. The class
    of the object returned is defined by the representation class of the
    flavor.

    Parameters:
    :   `flavor` - the requested flavor for the data

    Returns:
    :   an object which represents the data to be transferred

    Throws:
    :   `IOException` - if the data is no longer available in the requested
        flavor
    :   `UnsupportedFlavorException` - if the requested data flavor is not
        supported

    See Also:
    :   - [`DataFlavor.getRepresentationClass()`](DataFlavor.md#getRepresentationClass())