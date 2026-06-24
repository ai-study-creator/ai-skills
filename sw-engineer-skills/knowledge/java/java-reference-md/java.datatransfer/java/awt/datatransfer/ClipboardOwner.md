Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Interface ClipboardOwner

All Known Implementing Classes:
:   `StringSelection`

---

public interface ClipboardOwner

Defines the interface for classes that will provide data to a clipboard. An
instance of this interface becomes the owner of the contents of a clipboard
(clipboard owner) if it is passed as an argument to
[`Clipboard.setContents(java.awt.datatransfer.Transferable, java.awt.datatransfer.ClipboardOwner)`](Clipboard.md#setContents(java.awt.datatransfer.Transferable,java.awt.datatransfer.ClipboardOwner)) method of the clipboard and this method returns
successfully. The instance remains the clipboard owner until another
application or another object within this application asserts ownership of
this clipboard.

Since:
:   1.1

See Also:
:   * [`Clipboard`](Clipboard.md "class in java.awt.datatransfer")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `lostOwnership(Clipboard clipboard,
  Transferable contents)`

  Notifies this object that it is no longer the clipboard owner.

* ## Method Details

  + ### lostOwnership

    void lostOwnership([Clipboard](Clipboard.md "class in java.awt.datatransfer") clipboard,
    [Transferable](Transferable.md "interface in java.awt.datatransfer") contents)

    Notifies this object that it is no longer the clipboard owner. This
    method will be called when another application or another object within
    this application asserts ownership of the clipboard.

    Parameters:
    :   `clipboard` - the clipboard that is no longer owned
    :   `contents` - the contents which this owner had placed on the
        `clipboard`