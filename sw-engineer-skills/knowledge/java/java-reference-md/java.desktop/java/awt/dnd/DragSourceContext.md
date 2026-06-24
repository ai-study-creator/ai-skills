Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSourceContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DragSourceContext

All Implemented Interfaces:
:   `DragSourceListener`, `DragSourceMotionListener`, `Serializable`, `EventListener`

---

public class DragSourceContext
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd"), [DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `DragSourceContext` class is responsible for managing the
initiator side of the Drag and Drop protocol. In particular, it is responsible
for managing drag event notifications to the
[DragSourceListeners](DragSourceListener.md "interface in java.awt.dnd")
and [DragSourceMotionListeners](DragSourceMotionListener.md "interface in java.awt.dnd"), and providing the
[`Transferable`](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") representing the source data for the drag operation.

Note that the `DragSourceContext` itself
implements the `DragSourceListener` and
`DragSourceMotionListener` interfaces.
This is to allow the platform peer
(the `DragSourceContextPeer` instance)
created by the [`DragSource`](DragSource.md "class in java.awt.dnd") to notify
the `DragSourceContext` of
state changes in the ongoing operation. This allows the
`DragSourceContext` object to interpose
itself between the platform and the
listeners provided by the initiator of the drag operation.

By default, `DragSourceContext` sets the cursor as appropriate
for the current state of the drag and drop operation. For example, if
the user has chosen [the move action](DnDConstants.md#ACTION_MOVE),
and the pointer is over a target that accepts
the move action, the default move cursor is shown. When
the pointer is over an area that does not accept the transfer,
the default "no drop" cursor is shown.

This default handling mechanism is disabled when a custom cursor is set
by the [`setCursor(java.awt.Cursor)`](#setCursor(java.awt.Cursor)) method. When the default handling is disabled,
it becomes the responsibility
of the developer to keep the cursor up to date, by listening
to the `DragSource` events and calling the `setCursor()` method.
Alternatively, you can provide custom cursor behavior by providing
custom implementations of the `DragSource`
and the `DragSourceContext` classes.

Since:
:   1.2

See Also:
:   * [`DragSourceListener`](DragSourceListener.md "interface in java.awt.dnd")
    * [`DragSourceMotionListener`](DragSourceMotionListener.md "interface in java.awt.dnd")
    * [`DnDConstants`](DnDConstants.md "class in java.awt.dnd")
    * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragSourceContext)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static final int`

  `CHANGED`

  An `int` used by updateCurrentCursor()
  indicating that the user operation has changed.

  `protected static final int`

  `DEFAULT`

  An `int` used by updateCurrentCursor()
  indicating that the `Cursor` should change
  to the default (no drop) `Cursor`.

  `protected static final int`

  `ENTER`

  An `int` used by updateCurrentCursor()
  indicating that the `Cursor`
  has entered a `DropTarget`.

  `protected static final int`

  `OVER`

  An `int` used by updateCurrentCursor()
  indicating that the `Cursor` is
  over a `DropTarget`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragSourceContext(DragGestureEvent trigger,
  Cursor dragCursor,
  Image dragImage,
  Point offset,
  Transferable t,
  DragSourceListener dsl)`

  Called from `DragSource`, this constructor creates a new
  `DragSourceContext` given the
  `DragSourceContextPeer` for this Drag, the
  `DragGestureEvent` that triggered the Drag, the initial
  `Cursor` to use for the Drag, an (optional)
  `Image` to display while the Drag is taking place, the offset
  of the `Image` origin from the hotspot at the instant of the
  triggering event, the `Transferable` subject data, and the
  `DragSourceListener` to use during the Drag and Drop
  operation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addDragSourceListener(DragSourceListener dsl)`

  Add a `DragSourceListener` to this
  `DragSourceContext` if one has not already been added.

  `void`

  `dragDropEnd(DragSourceDropEvent dsde)`

  Calls `dragDropEnd` on the
  `DragSourceListener`s registered with this
  `DragSourceContext` and with the associated
  `DragSource`, and passes them the specified
  `DragSourceDropEvent`.

  `void`

  `dragEnter(DragSourceDragEvent dsde)`

  Calls `dragEnter` on the
  `DragSourceListener`s registered with this
  `DragSourceContext` and with the associated
  `DragSource`, and passes them the specified
  `DragSourceDragEvent`.

  `void`

  `dragExit(DragSourceEvent dse)`

  Calls `dragExit` on the
  `DragSourceListener`s registered with this
  `DragSourceContext` and with the associated
  `DragSource`, and passes them the specified
  `DragSourceEvent`.

  `void`

  `dragMouseMoved(DragSourceDragEvent dsde)`

  Calls `dragMouseMoved` on the
  `DragSourceMotionListener`s registered with the
  `DragSource` associated with this
  `DragSourceContext`, and them passes the specified
  `DragSourceDragEvent`.

  `void`

  `dragOver(DragSourceDragEvent dsde)`

  Calls `dragOver` on the
  `DragSourceListener`s registered with this
  `DragSourceContext` and with the associated
  `DragSource`, and passes them the specified
  `DragSourceDragEvent`.

  `void`

  `dropActionChanged(DragSourceDragEvent dsde)`

  Calls `dropActionChanged` on the
  `DragSourceListener`s registered with this
  `DragSourceContext` and with the associated
  `DragSource`, and passes them the specified
  `DragSourceDragEvent`.

  `Component`

  `getComponent()`

  Returns the `Component` associated with this
  `DragSourceContext`.

  `Cursor`

  `getCursor()`

  Returns the current custom drag `Cursor`.

  `DragSource`

  `getDragSource()`

  Returns the `DragSource`
  that instantiated this `DragSourceContext`.

  `int`

  `getSourceActions()`

  Returns a bitwise mask of `DnDConstants` that
  represent the set of drop actions supported by the drag source for the
  drag operation associated with this `DragSourceContext`.

  `Transferable`

  `getTransferable()`

  Returns the `Transferable` associated with
  this `DragSourceContext`.

  `DragGestureEvent`

  `getTrigger()`

  Returns the `DragGestureEvent`
  that initially triggered the drag.

  `void`

  `removeDragSourceListener(DragSourceListener dsl)`

  Removes the specified `DragSourceListener`
  from this `DragSourceContext`.

  `void`

  `setCursor(Cursor c)`

  Sets the custom cursor for this drag operation to the specified
  `Cursor`.

  `void`

  `transferablesFlavorsChanged()`

  Notifies the peer that the `Transferable`'s
  `DataFlavor`s have changed.

  `protected void`

  `updateCurrentCursor(int sourceAct,
  int targetAct,
  int status)`

  If the default drag cursor behavior is active, this method
  sets the default drag cursor for the specified actions
  supported by the drag source, the drop target action,
  and status, otherwise this method does nothing.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT

    protected static final int DEFAULT

    An `int` used by updateCurrentCursor()
    indicating that the `Cursor` should change
    to the default (no drop) `Cursor`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DragSourceContext.DEFAULT)
  + ### ENTER

    protected static final int ENTER

    An `int` used by updateCurrentCursor()
    indicating that the `Cursor`
    has entered a `DropTarget`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DragSourceContext.ENTER)
  + ### OVER

    protected static final int OVER

    An `int` used by updateCurrentCursor()
    indicating that the `Cursor` is
    over a `DropTarget`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DragSourceContext.OVER)
  + ### CHANGED

    protected static final int CHANGED

    An `int` used by updateCurrentCursor()
    indicating that the user operation has changed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DragSourceContext.CHANGED)
* ## Constructor Details

  + ### DragSourceContext

    public DragSourceContext([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") trigger,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Image](../Image.md "class in java.awt") dragImage,
    [Point](../Point.md "class in java.awt") offset,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") t,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)

    Called from `DragSource`, this constructor creates a new
    `DragSourceContext` given the
    `DragSourceContextPeer` for this Drag, the
    `DragGestureEvent` that triggered the Drag, the initial
    `Cursor` to use for the Drag, an (optional)
    `Image` to display while the Drag is taking place, the offset
    of the `Image` origin from the hotspot at the instant of the
    triggering event, the `Transferable` subject data, and the
    `DragSourceListener` to use during the Drag and Drop
    operation.
      
    If `DragSourceContextPeer` is `null`
    `NullPointerException` is thrown.
      
    If `DragGestureEvent` is `null`
    `NullPointerException` is thrown.
      
    If `Cursor` is `null` no exception is thrown and
    the default drag cursor behavior is activated for this drag operation.
      
    If `Image` is `null` no exception is thrown.
      
    If `Image` is not `null` and the offset is
    `null NullPointerException` is thrown.
      
    If `Transferable` is `null`
    `NullPointerException` is thrown.
      
    If `DragSourceListener` is `null` no exception
    is thrown.

    Parameters:
    :   `trigger` - the triggering event
    :   `dragCursor` - the initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [class level documentation](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism during drag and drop
    :   `dragImage` - the `Image` to drag (or `null`)
    :   `offset` - the offset of the image origin from the hotspot at the
        instant of the triggering event
    :   `t` - the `Transferable`
    :   `dsl` - the `DragSourceListener`

    Throws:
    :   `IllegalArgumentException` - if the `Component` associated
        with the trigger event is `null`.
    :   `IllegalArgumentException` - if the `DragSource` for the
        trigger event is `null`.
    :   `IllegalArgumentException` - if the drag action for the
        trigger event is `DnDConstants.ACTION_NONE`.
    :   `IllegalArgumentException` - if the source actions for the
        `DragGestureRecognizer` associated with the trigger
        event are equal to `DnDConstants.ACTION_NONE`.
    :   `NullPointerException` - if dscp, trigger, or t are null, or
        if dragImage is non-null and offset is null
* ## Method Details

  + ### getDragSource

    public [DragSource](DragSource.md "class in java.awt.dnd") getDragSource()

    Returns the `DragSource`
    that instantiated this `DragSourceContext`.

    Returns:
    :   the `DragSource` that
        instantiated this `DragSourceContext`
  + ### getComponent

    public [Component](../Component.md "class in java.awt") getComponent()

    Returns the `Component` associated with this
    `DragSourceContext`.

    Returns:
    :   the `Component` that started the drag
  + ### getTrigger

    public [DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") getTrigger()

    Returns the `DragGestureEvent`
    that initially triggered the drag.

    Returns:
    :   the Event that triggered the drag
  + ### getSourceActions

    public int getSourceActions()

    Returns a bitwise mask of `DnDConstants` that
    represent the set of drop actions supported by the drag source for the
    drag operation associated with this `DragSourceContext`.

    Returns:
    :   the drop actions supported by the drag source
  + ### setCursor

    public void setCursor([Cursor](../Cursor.md "class in java.awt") c)

    Sets the custom cursor for this drag operation to the specified
    `Cursor`. If the specified `Cursor`
    is `null`, the default drag cursor behavior is
    activated for this drag operation, otherwise it is deactivated.

    Parameters:
    :   `c` - the initial `Cursor` for this drag operation,
        or `null` for the default cursor handling;
        see [class
        level documentation](../Cursor.md "class in java.awt") for more details
        on the cursor handling during drag and drop
  + ### getCursor

    public [Cursor](../Cursor.md "class in java.awt") getCursor()

    Returns the current custom drag `Cursor`.

    Returns:
    :   the current custom drag `Cursor`, if it was set
        otherwise returns `null`.

    See Also:
    :   - [`setCursor(java.awt.Cursor)`](#setCursor(java.awt.Cursor))
  + ### addDragSourceListener

    public void addDragSourceListener([DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)
    throws [TooManyListenersException](../../../../java.base/java/util/TooManyListenersException.md "class in java.util")

    Add a `DragSourceListener` to this
    `DragSourceContext` if one has not already been added.
    If a `DragSourceListener` already exists,
    this method throws a `TooManyListenersException`.

    Parameters:
    :   `dsl` - the `DragSourceListener` to add.
        Note that while `null` is not prohibited,
        it is not acceptable as a parameter.

    Throws:
    :   `TooManyListenersException` - if
        a `DragSourceListener` has already been added
  + ### removeDragSourceListener

    public void removeDragSourceListener([DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)

    Removes the specified `DragSourceListener`
    from this `DragSourceContext`.

    Parameters:
    :   `dsl` - the `DragSourceListener` to remove;
        note that while `null` is not prohibited,
        it is not acceptable as a parameter
  + ### transferablesFlavorsChanged

    public void transferablesFlavorsChanged()

    Notifies the peer that the `Transferable`'s
    `DataFlavor`s have changed.
  + ### dragEnter

    public void dragEnter([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Calls `dragEnter` on the
    `DragSourceListener`s registered with this
    `DragSourceContext` and with the associated
    `DragSource`, and passes them the specified
    `DragSourceDragEvent`.

    Specified by:
    :   `dragEnter` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragOver

    public void dragOver([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Calls `dragOver` on the
    `DragSourceListener`s registered with this
    `DragSourceContext` and with the associated
    `DragSource`, and passes them the specified
    `DragSourceDragEvent`.

    Specified by:
    :   `dragOver` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragExit

    public void dragExit([DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd") dse)

    Calls `dragExit` on the
    `DragSourceListener`s registered with this
    `DragSourceContext` and with the associated
    `DragSource`, and passes them the specified
    `DragSourceEvent`.

    Specified by:
    :   `dragExit` in interface `DragSourceListener`

    Parameters:
    :   `dse` - the `DragSourceEvent`
  + ### dropActionChanged

    public void dropActionChanged([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Calls `dropActionChanged` on the
    `DragSourceListener`s registered with this
    `DragSourceContext` and with the associated
    `DragSource`, and passes them the specified
    `DragSourceDragEvent`.

    Specified by:
    :   `dropActionChanged` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragDropEnd

    public void dragDropEnd([DragSourceDropEvent](DragSourceDropEvent.md "class in java.awt.dnd") dsde)

    Calls `dragDropEnd` on the
    `DragSourceListener`s registered with this
    `DragSourceContext` and with the associated
    `DragSource`, and passes them the specified
    `DragSourceDropEvent`.

    Specified by:
    :   `dragDropEnd` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDropEvent`
  + ### dragMouseMoved

    public void dragMouseMoved([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Calls `dragMouseMoved` on the
    `DragSourceMotionListener`s registered with the
    `DragSource` associated with this
    `DragSourceContext`, and them passes the specified
    `DragSourceDragEvent`.

    Specified by:
    :   `dragMouseMoved` in interface `DragSourceMotionListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`

    Since:
    :   1.4
  + ### getTransferable

    public [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") getTransferable()

    Returns the `Transferable` associated with
    this `DragSourceContext`.

    Returns:
    :   the `Transferable`
  + ### updateCurrentCursor

    protected void updateCurrentCursor(int sourceAct,
    int targetAct,
    int status)

    If the default drag cursor behavior is active, this method
    sets the default drag cursor for the specified actions
    supported by the drag source, the drop target action,
    and status, otherwise this method does nothing.

    Parameters:
    :   `sourceAct` - the actions supported by the drag source
    :   `targetAct` - the drop target action
    :   `status` - one of the fields `DEFAULT`,
        `ENTER`, `OVER`,
        `CHANGED`