Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetContext.TransferableProxy

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DropTargetContext.TransferableProxy

All Implemented Interfaces:
:   `Transferable`

Enclosing class:
:   `DropTargetContext`

---

protected class DropTargetContext.TransferableProxy
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer")

`TransferableProxy` is a helper inner class that implements
`Transferable` interface and serves as a proxy for another
`Transferable` object which represents data transfer for
a particular drag-n-drop operation.

The proxy forwards all requests to the encapsulated transferable
and automatically performs additional conversion on the data
returned by the encapsulated transferable in case of local transfer.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `isLocal`

  A `boolean` indicating if the encapsulated
  `Transferable` object represents the result
  of local drag-n-drop operation (within the same JVM).

  `protected Transferable`

  `transferable`

  The encapsulated `Transferable` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getTransferData(DataFlavor df)`

  Returns an object which represents the data provided by
  the encapsulated transferable for the requested data flavor.

  `DataFlavor[]`

  `getTransferDataFlavors()`

  Returns an array of DataFlavor objects indicating the flavors
  the data can be provided in by the encapsulated transferable.

  `boolean`

  `isDataFlavorSupported(DataFlavor flavor)`

  Returns whether or not the specified data flavor is supported by
  the encapsulated transferable.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### transferable

    protected [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable

    The encapsulated `Transferable` object.
  + ### isLocal

    protected boolean isLocal

    A `boolean` indicating if the encapsulated
    `Transferable` object represents the result
    of local drag-n-drop operation (within the same JVM).
* ## Method Details

  + ### getTransferDataFlavors

    public [DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getTransferDataFlavors()

    Returns an array of DataFlavor objects indicating the flavors
    the data can be provided in by the encapsulated transferable.

    Specified by:
    :   `getTransferDataFlavors` in interface `Transferable`

    Returns:
    :   an array of data flavors in which the data can be
        provided by the encapsulated transferable
  + ### isDataFlavorSupported

    public boolean isDataFlavorSupported([DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") flavor)

    Returns whether or not the specified data flavor is supported by
    the encapsulated transferable.

    Specified by:
    :   `isDataFlavorSupported` in interface `Transferable`

    Parameters:
    :   `flavor` - the requested flavor for the data

    Returns:
    :   `true` if the data flavor is supported,
        `false` otherwise
  + ### getTransferData

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getTransferData([DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") df)
    throws [UnsupportedFlavorException](../../../../java.datatransfer/java/awt/datatransfer/UnsupportedFlavorException.md "class in java.awt.datatransfer"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an object which represents the data provided by
    the encapsulated transferable for the requested data flavor.

    In case of local transfer a serialized copy of the object
    returned by the encapsulated transferable is provided when
    the data is requested in application/x-java-serialized-object
    data flavor.

    Specified by:
    :   `getTransferData` in interface `Transferable`

    Parameters:
    :   `df` - the requested flavor for the data

    Returns:
    :   an object which represents the data to be transferred

    Throws:
    :   `IOException` - if the data is no longer available
        in the requested flavor.
    :   `UnsupportedFlavorException` - if the requested data flavor is
        not supported.

    See Also:
    :   - [`DataFlavor.getRepresentationClass()`](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md#getRepresentationClass())