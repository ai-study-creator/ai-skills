Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetDropEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.dnd.DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

java.awt.dnd.DropTargetDropEvent

All Implemented Interfaces:
:   `Serializable`

---

public class DropTargetDropEvent
extends [DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

The `DropTargetDropEvent` is delivered
via the `DropTargetListener` drop() method.

The `DropTargetDropEvent` reports the *source drop actions*
and the *user drop action* that reflect the current state of the
drag-and-drop operation.

*Source drop actions* is a bitwise mask of `DnDConstants`
that represents the set of drop actions supported by the drag source for
this drag-and-drop operation.

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
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DropTargetDropEvent)

* ## Field Summary

  ### Fields inherited from class java.awt.dnd.[DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

  `context`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DropTargetDropEvent(DropTargetContext dtc,
  Point cursorLocn,
  int dropAction,
  int srcActions)`

  Construct a `DropTargetDropEvent` given
  the `DropTargetContext` for this operation,
  the location of the drag `Cursor`'s
  hotspot in the `Component`'s coordinates,
  the currently
  selected user drop action, and the current set of
  actions supported by the source.

  `DropTargetDropEvent(DropTargetContext dtc,
  Point cursorLocn,
  int dropAction,
  int srcActions,
  boolean isLocal)`

  Construct a `DropTargetEvent` given the
  `DropTargetContext` for this operation,
  the location of the drag `Cursor`'s hotspot
  in the `Component`'s
  coordinates, the currently selected user drop action,
  the current set of actions supported by the source,
  and a `boolean` indicating if the source is in the same JVM
  as the target.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `acceptDrop(int dropAction)`

  accept the drop, using the specified action.

  `void`

  `dropComplete(boolean success)`

  This method notifies the `DragSource`
  that the drop transfer(s) are completed.

  `DataFlavor[]`

  `getCurrentDataFlavors()`

  This method returns the current DataFlavors.

  `List<DataFlavor>`

  `getCurrentDataFlavorsAsList()`

  This method returns the currently available
  `DataFlavor`s as a `java.util.List`.

  `int`

  `getDropAction()`

  This method returns the user drop action.

  `Point`

  `getLocation()`

  This method returns a `Point`
  indicating the `Cursor`'s current
  location in the `Component`'s coordinates.

  `int`

  `getSourceActions()`

  This method returns the source drop actions.

  `Transferable`

  `getTransferable()`

  This method returns the `Transferable` object
  associated with the drop.

  `boolean`

  `isDataFlavorSupported(DataFlavor df)`

  This method returns a `boolean` indicating if the
  specified `DataFlavor` is available
  from the source.

  `boolean`

  `isLocalTransfer()`

  This method returns an `int` indicating if
  the source is in the same JVM as the target.

  `void`

  `rejectDrop()`

  reject the Drop.

  ### Methods inherited from class java.awt.dnd.[DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")

  `getDropTargetContext`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DropTargetDropEvent

    public DropTargetDropEvent([DropTargetContext](DropTargetContext.md "class in java.awt.dnd") dtc,
    [Point](../Point.md "class in java.awt") cursorLocn,
    int dropAction,
    int srcActions)

    Construct a `DropTargetDropEvent` given
    the `DropTargetContext` for this operation,
    the location of the drag `Cursor`'s
    hotspot in the `Component`'s coordinates,
    the currently
    selected user drop action, and the current set of
    actions supported by the source.
    By default, this constructor
    assumes that the target is not in the same virtual machine as
    the source; that is, [`isLocalTransfer()`](#isLocalTransfer()) will
    return `false`.

    Parameters:
    :   `dtc` - The `DropTargetContext` for this operation
    :   `cursorLocn` - The location of the "Drag" Cursor's
        hotspot in `Component` coordinates
    :   `dropAction` - the user drop action.
    :   `srcActions` - the source drop actions.

    Throws:
    :   `NullPointerException` - if cursorLocn is `null`
    :   `IllegalArgumentException` - if dropAction is not one of `DnDConstants`.
    :   `IllegalArgumentException` - if srcActions is not a bitwise mask of `DnDConstants`.
    :   `IllegalArgumentException` - if dtc is `null`.
  + ### DropTargetDropEvent

    public DropTargetDropEvent([DropTargetContext](DropTargetContext.md "class in java.awt.dnd") dtc,
    [Point](../Point.md "class in java.awt") cursorLocn,
    int dropAction,
    int srcActions,
    boolean isLocal)

    Construct a `DropTargetEvent` given the
    `DropTargetContext` for this operation,
    the location of the drag `Cursor`'s hotspot
    in the `Component`'s
    coordinates, the currently selected user drop action,
    the current set of actions supported by the source,
    and a `boolean` indicating if the source is in the same JVM
    as the target.

    Parameters:
    :   `dtc` - The DropTargetContext for this operation
    :   `cursorLocn` - The location of the "Drag" Cursor's
        hotspot in Component's coordinates
    :   `dropAction` - the user drop action.
    :   `srcActions` - the source drop actions.
    :   `isLocal` - True if the source is in the same JVM as the target

    Throws:
    :   `NullPointerException` - if cursorLocn is `null`
    :   `IllegalArgumentException` - if dropAction is not one of `DnDConstants`.
    :   `IllegalArgumentException` - if srcActions is not a bitwise mask of `DnDConstants`.
    :   `IllegalArgumentException` - if dtc is `null`.
* ## Method Details

  + ### getLocation

    public [Point](../Point.md "class in java.awt") getLocation()

    This method returns a `Point`
    indicating the `Cursor`'s current
    location in the `Component`'s coordinates.

    Returns:
    :   the current `Cursor` location in Component's coords.
  + ### getCurrentDataFlavors

    public [DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")[] getCurrentDataFlavors()

    This method returns the current DataFlavors.

    Returns:
    :   current DataFlavors
  + ### getCurrentDataFlavorsAsList

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer")> getCurrentDataFlavorsAsList()

    This method returns the currently available
    `DataFlavor`s as a `java.util.List`.

    Returns:
    :   the currently available DataFlavors as a java.util.List
  + ### isDataFlavorSupported

    public boolean isDataFlavorSupported([DataFlavor](../../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md "class in java.awt.datatransfer") df)

    This method returns a `boolean` indicating if the
    specified `DataFlavor` is available
    from the source.

    Parameters:
    :   `df` - the `DataFlavor` to test

    Returns:
    :   if the DataFlavor specified is available from the source
  + ### getSourceActions

    public int getSourceActions()

    This method returns the source drop actions.

    Returns:
    :   the source drop actions.
  + ### getDropAction

    public int getDropAction()

    This method returns the user drop action.

    Returns:
    :   the user drop actions.
  + ### getTransferable

    public [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") getTransferable()

    This method returns the `Transferable` object
    associated with the drop.

    Returns:
    :   the `Transferable` associated with the drop
  + ### acceptDrop

    public void acceptDrop(int dropAction)

    accept the drop, using the specified action.

    Parameters:
    :   `dropAction` - the specified action
  + ### rejectDrop

    public void rejectDrop()

    reject the Drop.
  + ### dropComplete

    public void dropComplete(boolean success)

    This method notifies the `DragSource`
    that the drop transfer(s) are completed.

    Parameters:
    :   `success` - a `boolean` indicating that the drop transfer(s) are completed.
  + ### isLocalTransfer

    public boolean isLocalTransfer()

    This method returns an `int` indicating if
    the source is in the same JVM as the target.

    Returns:
    :   if the Source is in the same JVM