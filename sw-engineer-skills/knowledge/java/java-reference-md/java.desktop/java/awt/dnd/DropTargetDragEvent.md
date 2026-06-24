Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetDragEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.dnd.DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

java.awt.dnd.DropTargetDragEvent

All Implemented Interfaces:
:   `Serializable`

---

public class DropTargetDragEvent
extends [DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

The `DropTargetDragEvent` is delivered to a
`DropTargetListener` via its
dragEnter() and dragOver() methods.

The `DropTargetDragEvent` reports the *source drop actions*
and the *user drop action* that reflect the current state of
the drag operation.

*Source drop actions* is a bitwise mask of `DnDConstants`
that represents the set of drop actions supported by the drag source for
this drag operation.

*User drop action* depends on the drop actions supported by the drag
source and the drop action selected by the user. The user can select a drop
action by pressing modifier keys during the drag operation:

```
   Ctrl + Shift -> ACTION_LINK
   Ctrl         -> ACTION_COPY
   Shift        -> ACTION_MOVE
```

If the user selects a drop action, the *user drop action* is one of
`DnDConstants` that represents the selected drop action if this
drop action is supported by the drag source or
`DnDConstants.ACTION_NONE` if this drop action is not supported
by the drag source.

If the user doesn't select a drop action, the set of
`DnDConstants` that represents the set of drop actions supported
by the drag source is searched for `DnDConstants.ACTION_MOVE`,
then for `DnDConstants.ACTION_COPY`, then for
`DnDConstants.ACTION_LINK` and the *user drop action* is the
first constant found. If no constant is found the *user drop action*
is `DnDConstants.ACTION_NONE`.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DropTargetDragEvent)

* ## Field Summary

  ### Fields inherited from class java.awt.dnd.[DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

  `context`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DropTargetDragEvent(DropTargetContext dtc,
  Point cursorLocn,
  int dropAction,
  int srcActions)`

  Construct a `DropTargetDragEvent` given the
  `DropTargetContext` for this operation,
  the location of the "Drag" `Cursor`'s hotspot
  in the `Component`'s coordinates, the
  user drop action, and the source drop actions.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `acceptDrag(int dragOperation)`

  Accepts the drag.

  `DataFlavor[]`

  `getCurrentDataFlavors()`

  This method returns the current `DataFlavor`s from the
  `DropTargetContext`.

  `List<DataFlavor>`

  `getCurrentDataFlavorsAsList()`

  This method returns the current `DataFlavor`s
  as a `java.util.List`

  `int`

  `getDropAction()`

  This method returns the user drop action.

  `Point`

  `getLocation()`

  This method returns a `Point`
  indicating the `Cursor`'s current
  location within the `Component'`s
  coordinates.

  `int`

  `getSourceActions()`

  This method returns the source drop actions.

  `Transferable`

  `getTransferable()`

  This method returns the Transferable object that represents
  the data associated with the current drag operation.

  `boolean`

  `isDataFlavorSupported(DataFlavor df)`

  This method returns a `boolean` indicating
  if the specified `DataFlavor` is supported.

  `void`

  `rejectDrag()`

  Rejects the drag as a result of examining either the
  `dropAction` or the available `DataFlavor`
  types.

  ### Methods inherited from class java.awt.dnd.[DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

  `getDropTargetContext`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DropTargetDragEvent

    public DropTargetDragEvent([DropTargetContext](DropTargetContext.md "class in java.awt.dnd") dtc,
    [Point](../Point.md "class in java.awt") cursorLocn,
    int dropAction,
    int srcActions)

    Construct a `DropTargetDragEvent` given the
    `DropTargetContext` for this operation,
    the location of the "Drag" `Cursor`'s hotspot
    in the `Component`'s coordinates, the
    user drop action, and the source drop actions.

    Parameters:
    :   `dtc` - The DropTargetContext for this operation
    :   `cursorLocn` - The location of the "Drag" Cursor's
        hotspot in Component coordinates
    :   `dropAction` - The user drop action
    :   `srcActions` - The source drop actions

    Throws:
    :   `NullPointerException` - if cursorLocn is null
    :   `IllegalArgumentException` - if dropAction is not one of
        `DnDConstants`.
    :   `IllegalArgumentException` - if srcActions is not
        a bitwise mask of `DnDConstants`.
    :   `IllegalArgumentException` - if dtc is `null`.
* ## Method Details

  + ### getLocation

    public [Point](../Point.md "class in java.awt") getLocation()

    This method returns a `Point`
    indicating the `Cursor`'s current
    location within the `Component'`s
    coordinates.

    Returns:
    :   the current cursor location in
        `Component`'s coords.
  + ### getCurrentDataFlavors

    public [DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getCurrentDataFlavors()

    This method returns the current `DataFlavor`s from the
    `DropTargetContext`.

    Returns:
    :   current DataFlavors from the DropTargetContext
  + ### getCurrentDataFlavorsAsList

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")> getCurrentDataFlavorsAsList()

    This method returns the current `DataFlavor`s
    as a `java.util.List`

    Returns:
    :   a `java.util.List` of the Current `DataFlavor`s
  + ### isDataFlavorSupported

    public boolean isDataFlavorSupported([DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") df)

    This method returns a `boolean` indicating
    if the specified `DataFlavor` is supported.

    Parameters:
    :   `df` - the `DataFlavor` to test

    Returns:
    :   if a particular DataFlavor is supported
  + ### getSourceActions

    public int getSourceActions()

    This method returns the source drop actions.

    Returns:
    :   the source drop actions
  + ### getDropAction

    public int getDropAction()

    This method returns the user drop action.

    Returns:
    :   the user drop action
  + ### getTransferable

    public [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") getTransferable()

    This method returns the Transferable object that represents
    the data associated with the current drag operation.

    Returns:
    :   the Transferable associated with the drag operation

    Throws:
    :   `InvalidDnDOperationException` - if the data associated with the drag
        operation is not available

    Since:
    :   1.5
  + ### acceptDrag

    public void acceptDrag(int dragOperation)

    Accepts the drag.
    This method should be called from a
    `DropTargetListeners dragEnter`,
    `dragOver`, and `dropActionChanged`
    methods if the implementation wishes to accept an operation
    from the srcActions other than the one selected by
    the user as represented by the `dropAction`.

    Parameters:
    :   `dragOperation` - the operation accepted by the target
  + ### rejectDrag

    public void rejectDrag()

    Rejects the drag as a result of examining either the
    `dropAction` or the available `DataFlavor`
    types.