Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Class StringSelection

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.datatransfer.StringSelection

All Implemented Interfaces:
:   `ClipboardOwner`, `Transferable`

---

public class StringSelection
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Transferable](Transferable.md "interface in java.awt.datatransfer"), [ClipboardOwner](ClipboardOwner.md "interface in java.awt.datatransfer")

A `Transferable` which implements the capability required to transfer a
`String`.

This `Transferable` properly supports `DataFlavor.stringFlavor`
and all equivalent flavors. Support for `DataFlavor.plainTextFlavor`
and all equivalent flavors is **deprecated**. No other `DataFlavor`s
are supported.

Since:
:   1.1

See Also:
:   * [`DataFlavor.stringFlavor`](DataFlavor.md#stringFlavor)
    * [`DataFlavor.plainTextFlavor`](DataFlavor.md#plainTextFlavor)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringSelection(String data)`

  Creates a `Transferable` capable of transferring the specified
  `String`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getTransferData(DataFlavor flavor)`

  Returns the `Transferable`'s data in the requested
  `DataFlavor` if possible.

  `DataFlavor[]`

  `getTransferDataFlavors()`

  Returns an array of flavors in which this `Transferable` can
  provide the data.

  `boolean`

  `isDataFlavorSupported(DataFlavor flavor)`

  Returns whether the requested flavor is supported by this
  `Transferable`.

  `void`

  `lostOwnership(Clipboard clipboard,
  Transferable contents)`

  Notifies this object that it is no longer the clipboard owner.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StringSelection

    public StringSelection([String](../../../../java.base/java/lang/String.md "class in java.lang") data)

    Creates a `Transferable` capable of transferring the specified
    `String`.

    Parameters:
    :   `data` - the string to be transferred
* ## Method Details

  + ### getTransferDataFlavors

    public [DataFlavor](DataFlavor.md "class in java.awt.datatransfer")[] getTransferDataFlavors()

    Returns an array of flavors in which this `Transferable` can
    provide the data. `DataFlavor.stringFlavor` is properly supported.
    Support for `DataFlavor.plainTextFlavor` is **deprecated**.

    Specified by:
    :   `getTransferDataFlavors` in interface `Transferable`

    Returns:
    :   an array of length two, whose elements are
        `DataFlavor.stringFlavor` and
        `DataFlavor.plainTextFlavor`
  + ### isDataFlavorSupported

    public boolean isDataFlavorSupported([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flavor)

    Returns whether the requested flavor is supported by this
    `Transferable`.

    Specified by:
    :   `isDataFlavorSupported` in interface `Transferable`

    Parameters:
    :   `flavor` - the requested flavor for the data

    Returns:
    :   `true` if `flavor` is equal to
        `DataFlavor.stringFlavor` or
        `DataFlavor.plainTextFlavor`; `false` if
        `flavor` is not one of the above flavors

    Throws:
    :   `NullPointerException` - if `flavor` is `null`
  + ### getTransferData

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getTransferData([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flavor)
    throws [UnsupportedFlavorException](UnsupportedFlavorException.md "class in java.awt.datatransfer"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns the `Transferable`'s data in the requested
    `DataFlavor` if possible. If the desired flavor is
    `DataFlavor.stringFlavor`, or an equivalent flavor, the
    `String` representing the selection is returned. If the desired
    flavor is `DataFlavor.plainTextFlavor`, or an equivalent flavor, a
    `Reader` is returned.
      
    **Note:** The behavior of this method for
    `DataFlavor.plainTextFlavor`
    and equivalent `DataFlavor`s is inconsistent with the definition of
    `DataFlavor.plainTextFlavor`.

    Specified by:
    :   `getTransferData` in interface `Transferable`

    Parameters:
    :   `flavor` - the requested flavor for the data

    Returns:
    :   the data in the requested flavor, as outlined above

    Throws:
    :   `UnsupportedFlavorException` - if the requested data flavor is not
        equivalent to either `DataFlavor.stringFlavor` or
        `DataFlavor.plainTextFlavor`
    :   `IOException` - if an IOException occurs while retrieving the data.
        By default, StringSelection never throws this exception, but a
        subclass may.
    :   `NullPointerException` - if `flavor` is `null`

    See Also:
    :   - [`Reader`](../../../../java.base/java/io/Reader.md "class in java.io")
  + ### lostOwnership

    public void lostOwnership([Clipboard](Clipboard.md "class in java.awt.datatransfer") clipboard,
    [Transferable](Transferable.md "interface in java.awt.datatransfer") contents)

    Description copied from interface: `ClipboardOwner`

    Notifies this object that it is no longer the clipboard owner. This
    method will be called when another application or another object within
    this application asserts ownership of the clipboard.

    Specified by:
    :   `lostOwnership` in interface `ClipboardOwner`

    Parameters:
    :   `clipboard` - the clipboard that is no longer owned
    :   `contents` - the contents which this owner had placed on the
        `clipboard`