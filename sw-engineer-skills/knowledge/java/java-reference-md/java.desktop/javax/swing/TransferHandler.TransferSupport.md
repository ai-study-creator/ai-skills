Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class TransferHandler.TransferSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.TransferHandler.TransferSupport

Enclosing class:
:   `TransferHandler`

---

public static final class TransferHandler.TransferSupport
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class encapsulates all relevant details of a clipboard
or drag and drop transfer, and also allows for customizing
aspects of the drag and drop experience.

The main purpose of this class is to provide the information
needed by a developer to determine the suitability of a
transfer or to import the data contained within. But it also
doubles as a controller for customizing properties during drag
and drop, such as whether or not to show the drop location,
and which drop action to use.

Developers typically need not create instances of this
class. Instead, they are something provided by the DnD
implementation to certain methods in `TransferHandler`.

Since:
:   1.6

See Also:
:   * [`TransferHandler.canImport(TransferHandler.TransferSupport)`](TransferHandler.md#canImport(javax.swing.TransferHandler.TransferSupport))
    * [`TransferHandler.importData(TransferHandler.TransferSupport)`](TransferHandler.md#importData(javax.swing.TransferHandler.TransferSupport))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TransferSupport(Component component,
  Transferable transferable)`

  Create a `TransferSupport` with `isDrop()`
  `false` for the given component and
  `Transferable`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getComponent()`

  Returns the target component of this transfer.

  `DataFlavor[]`

  `getDataFlavors()`

  Returns the data flavors for this transfer.

  `int`

  `getDropAction()`

  Returns the action chosen for the drop, when this
  `TransferSupport` represents a drop.

  `TransferHandler.DropLocation`

  `getDropLocation()`

  Returns the current (non-`null`) drop location for the component,
  when this `TransferSupport` represents a drop.

  `int`

  `getSourceDropActions()`

  Returns the drag source's supported drop actions, when this
  `TransferSupport` represents a drop.

  `Transferable`

  `getTransferable()`

  Returns the `Transferable` associated with this transfer.

  `int`

  `getUserDropAction()`

  Returns the user drop action for the drop, when this
  `TransferSupport` represents a drop.

  `boolean`

  `isDataFlavorSupported(DataFlavor df)`

  Returns whether or not the given data flavor is supported.

  `boolean`

  `isDrop()`

  Returns whether or not this `TransferSupport`
  represents a drop operation.

  `void`

  `setDropAction(int dropAction)`

  Sets the drop action for the transfer - which must represent a drop
  - to the given action,
  instead of the default user drop action.

  `void`

  `setShowDropLocation(boolean showDropLocation)`

  Sets whether or not the drop location should be visually indicated
  for the transfer - which must represent a drop.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TransferSupport

    public TransferSupport([Component](../../java/awt/Component.md "class in java.awt") component,
    [Transferable](../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable)

    Create a `TransferSupport` with `isDrop()`
    `false` for the given component and
    `Transferable`.

    Parameters:
    :   `component` - the target component
    :   `transferable` - the transferable

    Throws:
    :   `NullPointerException` - if either parameter
        is `null`
* ## Method Details

  + ### isDrop

    public boolean isDrop()

    Returns whether or not this `TransferSupport`
    represents a drop operation.

    Returns:
    :   `true` if this is a drop operation,
        `false` otherwise.
  + ### getComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Returns the target component of this transfer.

    Returns:
    :   the target component
  + ### getDropLocation

    public [TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing") getDropLocation()

    Returns the current (non-`null`) drop location for the component,
    when this `TransferSupport` represents a drop.

    Note: For components with built-in drop support, this location
    will be a subclass of `DropLocation` of the same type
    returned by that component's `getDropLocation` method.

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Returns:
    :   the drop location

    Throws:
    :   `IllegalStateException` - if this is not a drop

    See Also:
    :   - [`isDrop()`](#isDrop())
  + ### setShowDropLocation

    public void setShowDropLocation(boolean showDropLocation)

    Sets whether or not the drop location should be visually indicated
    for the transfer - which must represent a drop. This is applicable to
    those components that automatically
    show the drop location when appropriate during a drag and drop
    operation. By default, the drop location is shown only when the
    `TransferHandler` has said it can accept the import represented
    by this `TransferSupport`. With this method you can force the
    drop location to always be shown, or always not be shown.

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Parameters:
    :   `showDropLocation` - whether or not to indicate the drop location

    Throws:
    :   `IllegalStateException` - if this is not a drop

    See Also:
    :   - [`isDrop()`](#isDrop())
  + ### setDropAction

    public void setDropAction(int dropAction)

    Sets the drop action for the transfer - which must represent a drop
    - to the given action,
    instead of the default user drop action. The action must be
    supported by the source's drop actions, and must be one
    of `COPY`, `MOVE` or `LINK`.

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Parameters:
    :   `dropAction` - the drop action

    Throws:
    :   `IllegalStateException` - if this is not a drop
    :   `IllegalArgumentException` - if an invalid action is specified

    See Also:
    :   - [`getDropAction()`](#getDropAction())
        - [`getUserDropAction()`](#getUserDropAction())
        - [`getSourceDropActions()`](#getSourceDropActions())
        - [`isDrop()`](#isDrop())
  + ### getDropAction

    public int getDropAction()

    Returns the action chosen for the drop, when this
    `TransferSupport` represents a drop.

    Unless explicitly chosen by way of `setDropAction`,
    this returns the user drop action provided by
    `getUserDropAction`.

    You may wish to query this in `TransferHandler`'s
    `importData` method to customize processing based
    on the action.

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Returns:
    :   the action chosen for the drop

    Throws:
    :   `IllegalStateException` - if this is not a drop

    See Also:
    :   - [`setDropAction(int)`](#setDropAction(int))
        - [`getUserDropAction()`](#getUserDropAction())
        - [`isDrop()`](#isDrop())
  + ### getUserDropAction

    public int getUserDropAction()

    Returns the user drop action for the drop, when this
    `TransferSupport` represents a drop.

    The user drop action is chosen for a drop as described in the
    documentation for [`DropTargetDragEvent`](../../java/awt/dnd/DropTargetDragEvent.md "class in java.awt.dnd") and
    [`DropTargetDropEvent`](../../java/awt/dnd/DropTargetDropEvent.md "class in java.awt.dnd"). A different action
    may be chosen as the drop action by way of the `setDropAction`
    method.

    You may wish to query this in `TransferHandler`'s
    `canImport` method when determining the suitability of a
    drop or when deciding on a drop action to explicitly choose.

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Returns:
    :   the user drop action

    Throws:
    :   `IllegalStateException` - if this is not a drop

    See Also:
    :   - [`setDropAction(int)`](#setDropAction(int))
        - [`getDropAction()`](#getDropAction())
        - [`isDrop()`](#isDrop())
  + ### getSourceDropActions

    public int getSourceDropActions()

    Returns the drag source's supported drop actions, when this
    `TransferSupport` represents a drop.

    The source actions represent the set of actions supported by the
    source of this transfer, and are represented as some bitwise-OR
    combination of `COPY`, `MOVE` and `LINK`.
    You may wish to query this in `TransferHandler`'s
    `canImport` method when determining the suitability of a drop
    or when deciding on a drop action to explicitly choose. To determine
    if a particular action is supported by the source, bitwise-AND
    the action with the source drop actions, and then compare the result
    against the original action. For example:

    ```
     boolean copySupported = (COPY & getSourceDropActions()) == COPY;
    ```

    This method is only for use with drag and drop transfers.
    Calling it when `isDrop()` is `false` results
    in an `IllegalStateException`.

    Returns:
    :   the drag source's supported drop actions

    Throws:
    :   `IllegalStateException` - if this is not a drop

    See Also:
    :   - [`isDrop()`](#isDrop())
  + ### getDataFlavors

    public [DataFlavor](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getDataFlavors()

    Returns the data flavors for this transfer.

    Returns:
    :   the data flavors for this transfer
  + ### isDataFlavorSupported

    public boolean isDataFlavorSupported([DataFlavor](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") df)

    Returns whether or not the given data flavor is supported.

    Parameters:
    :   `df` - the `DataFlavor` to test

    Returns:
    :   whether or not the given flavor is supported.
  + ### getTransferable

    public [Transferable](../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") getTransferable()

    Returns the `Transferable` associated with this transfer.

    Note: Unless it is necessary to fetch the `Transferable`
    directly, use one of the other methods on this class to inquire about
    the transfer. This may perform better than fetching the
    `Transferable` and asking it directly.

    Returns:
    :   the `Transferable` associated with this transfer