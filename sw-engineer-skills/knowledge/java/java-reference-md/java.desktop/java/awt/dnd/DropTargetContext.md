Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DropTargetContext

All Implemented Interfaces:
:   `Serializable`

---

public final class DropTargetContext
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A `DropTargetContext` is created
whenever the logical cursor associated
with a Drag and Drop operation coincides with the visible geometry of
a `Component` associated with a `DropTarget`.
The `DropTargetContext` provides
the mechanism for a potential receiver
of a drop operation to both provide the end user with the appropriate
drag under feedback, but also to effect the subsequent data transfer
if appropriate.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DropTargetContext)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `DropTargetContext.TransferableProxy`

  `TransferableProxy` is a helper inner class that implements
  `Transferable` interface and serves as a proxy for another
  `Transferable` object which represents data transfer for
  a particular drag-n-drop operation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `acceptDrag(int dragOperation)`

  accept the Drag.

  `protected void`

  `acceptDrop(int dropOperation)`

  called to signal that the drop is acceptable
  using the specified operation.

  `protected Transferable`

  `createTransferableProxy(Transferable t,
  boolean local)`

  Creates a TransferableProxy to proxy for the specified
  Transferable.

  `void`

  `dropComplete(boolean success)`

  This method signals that the drop is completed and
  if it was successful or not.

  `Component`

  `getComponent()`

  This method returns the `Component` associated with
  this `DropTargetContext`.

  `protected DataFlavor[]`

  `getCurrentDataFlavors()`

  get the available DataFlavors of the
  `Transferable` operand of this operation.

  `protected List<DataFlavor>`

  `getCurrentDataFlavorsAsList()`

  This method returns the currently available DataFlavors
  of the `Transferable` operand
  as a `java.util.List`.

  `DropTarget`

  `getDropTarget()`

  This method returns the `DropTarget` associated with this
  `DropTargetContext`.

  `protected int`

  `getTargetActions()`

  This method returns an `int` representing the
  current actions this `DropTarget` will accept.

  `protected Transferable`

  `getTransferable()`

  get the Transferable (proxy) operand of this operation

  `protected boolean`

  `isDataFlavorSupported(DataFlavor df)`

  This method returns a `boolean`
  indicating if the given `DataFlavor` is
  supported by this `DropTargetContext`.

  `protected void`

  `rejectDrag()`

  reject the Drag.

  `protected void`

  `rejectDrop()`

  called to signal that the drop is unacceptable.

  `protected void`

  `setTargetActions(int actions)`

  This method sets the current actions acceptable to
  this `DropTarget`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getDropTarget

    public [DropTarget](DropTarget.md "class in java.awt.dnd") getDropTarget()

    This method returns the `DropTarget` associated with this
    `DropTargetContext`.

    Returns:
    :   the `DropTarget` associated with this `DropTargetContext`
  + ### getComponent

    public [Component](../Component.md "class in java.awt") getComponent()

    This method returns the `Component` associated with
    this `DropTargetContext`.

    Returns:
    :   the Component associated with this Context
  + ### setTargetActions

    protected void setTargetActions(int actions)

    This method sets the current actions acceptable to
    this `DropTarget`.

    Parameters:
    :   `actions` - an `int` representing the supported action(s)
  + ### getTargetActions

    protected int getTargetActions()

    This method returns an `int` representing the
    current actions this `DropTarget` will accept.

    Returns:
    :   the current actions acceptable to this `DropTarget`
  + ### dropComplete

    public void dropComplete(boolean success)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    This method signals that the drop is completed and
    if it was successful or not.

    Parameters:
    :   `success` - true for success, false if not

    Throws:
    :   `InvalidDnDOperationException` - if a drop is not outstanding/extant
  + ### acceptDrag

    protected void acceptDrag(int dragOperation)

    accept the Drag.

    Parameters:
    :   `dragOperation` - the supported action(s)
  + ### rejectDrag

    protected void rejectDrag()

    reject the Drag.
  + ### acceptDrop

    protected void acceptDrop(int dropOperation)

    called to signal that the drop is acceptable
    using the specified operation.
    must be called during DropTargetListener.drop method invocation.

    Parameters:
    :   `dropOperation` - the supported action(s)
  + ### rejectDrop

    protected void rejectDrop()

    called to signal that the drop is unacceptable.
    must be called during DropTargetListener.drop method invocation.
  + ### getCurrentDataFlavors

    protected [DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getCurrentDataFlavors()

    get the available DataFlavors of the
    `Transferable` operand of this operation.

    Returns:
    :   a `DataFlavor[]` containing the
        supported `DataFlavor`s of the
        `Transferable` operand.
  + ### getCurrentDataFlavorsAsList

    protected [List](../../../../java.base/java/util/List.md "interface in java.util")<[DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")> getCurrentDataFlavorsAsList()

    This method returns the currently available DataFlavors
    of the `Transferable` operand
    as a `java.util.List`.

    Returns:
    :   the currently available
        DataFlavors as a `java.util.List`
  + ### isDataFlavorSupported

    protected boolean isDataFlavorSupported([DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") df)

    This method returns a `boolean`
    indicating if the given `DataFlavor` is
    supported by this `DropTargetContext`.

    Parameters:
    :   `df` - the `DataFlavor`

    Returns:
    :   if the `DataFlavor` specified is supported
  + ### getTransferable

    protected [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") getTransferable()
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    get the Transferable (proxy) operand of this operation

    Returns:
    :   the `Transferable`

    Throws:
    :   `InvalidDnDOperationException` - if a drag is not outstanding/extant
  + ### createTransferableProxy

    protected [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") createTransferableProxy([Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") t,
    boolean local)

    Creates a TransferableProxy to proxy for the specified
    Transferable.

    Parameters:
    :   `t` - the `Transferable` to be proxied
    :   `local` - `true` if `t` represents
        the result of a local drag-n-drop operation.

    Returns:
    :   the new `TransferableProxy` instance.