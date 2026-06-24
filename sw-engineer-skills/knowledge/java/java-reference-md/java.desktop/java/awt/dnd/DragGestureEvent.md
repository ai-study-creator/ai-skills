Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragGestureEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.dnd.DragGestureEvent

All Implemented Interfaces:
:   `Serializable`

---

public class DragGestureEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

A `DragGestureEvent` is passed
to `DragGestureListener`'s
dragGestureRecognized() method
when a particular `DragGestureRecognizer` detects that a
platform dependent drag initiating gesture has occurred
on the `Component` that it is tracking.
The `action` field of any `DragGestureEvent` instance should take one of the following
values:

* `DnDConstants.ACTION_COPY`* `DnDConstants.ACTION_MOVE`* `DnDConstants.ACTION_LINK`

Assigning the value different from listed above will cause an unspecified behavior.

See Also:
:   * [`DragGestureRecognizer`](DragGestureRecognizer.md "class in java.awt.dnd")
    * [`DragGestureListener`](DragGestureListener.md "interface in java.awt.dnd")
    * [`DragSource`](DragSource.md "class in java.awt.dnd")
    * [`DnDConstants`](DnDConstants.md "class in java.awt.dnd")
    * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragGestureEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragGestureEvent(DragGestureRecognizer dgr,
  int act,
  Point ori,
  List<? extends InputEvent> evs)`

  Constructs a `DragGestureEvent` object given by the
  `DragGestureRecognizer` instance firing this event,
  an `act` parameter representing
  the user's preferred action, an `ori` parameter
  indicating the origin of the drag, and a `List` of
  events that comprise the gesture(`evs` parameter).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getComponent()`

  Returns the `Component` associated
  with this `DragGestureEvent`.

  `int`

  `getDragAction()`

  Returns an `int` representing the
  action selected by the user.

  `Point`

  `getDragOrigin()`

  Returns a `Point` in the coordinates
  of the `Component` over which the drag originated.

  `DragSource`

  `getDragSource()`

  Returns the `DragSource`.

  `DragGestureRecognizer`

  `getSourceAsDragGestureRecognizer()`

  Returns the source as a `DragGestureRecognizer`.

  `InputEvent`

  `getTriggerEvent()`

  Returns the initial event that triggered the gesture.

  `Iterator<InputEvent>`

  `iterator()`

  Returns an `Iterator` for the events
  comprising the gesture.

  `void`

  `startDrag(Cursor dragCursor,
  Transferable transferable)`

  Starts the drag operation given the `Cursor` for this drag
  operation and the `Transferable` representing the source data
  for this drag operation.

  `void`

  `startDrag(Cursor dragCursor,
  Transferable transferable,
  DragSourceListener dsl)`

  Starts the drag given the initial `Cursor` to display,
  the `Transferable` object,
  and the `DragSourceListener` to use.

  `void`

  `startDrag(Cursor dragCursor,
  Image dragImage,
  Point imageOffset,
  Transferable transferable,
  DragSourceListener dsl)`

  Start the drag given the initial `Cursor` to display,
  a drag `Image`, the offset of
  the `Image`,
  the `Transferable` object, and
  the `DragSourceListener` to use.

  `Object[]`

  `toArray()`

  Returns an `Object` array of the
  events comprising the drag gesture.

  `Object[]`

  `toArray(Object[] array)`

  Returns an array of the events comprising the drag gesture.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DragGestureEvent

    public DragGestureEvent([DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd") dgr,
    int act,
    [Point](../Point.md "class in java.awt") ori,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<? extends [InputEvent](../event/InputEvent.md "class in java.awt.event")> evs)

    Constructs a `DragGestureEvent` object given by the
    `DragGestureRecognizer` instance firing this event,
    an `act` parameter representing
    the user's preferred action, an `ori` parameter
    indicating the origin of the drag, and a `List` of
    events that comprise the gesture(`evs` parameter).

    Parameters:
    :   `dgr` - The `DragGestureRecognizer` firing this event
    :   `act` - The user's preferred action.
        For information on allowable values, see
        the class description for [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")
    :   `ori` - The origin of the drag
    :   `evs` - The `List` of events that comprise the gesture

    Throws:
    :   `IllegalArgumentException` - if any parameter equals `null`
    :   `IllegalArgumentException` - if the act parameter does not comply with
        the values given in the class
        description for [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")

    See Also:
    :   - [`DnDConstants`](DnDConstants.md "class in java.awt.dnd")
* ## Method Details

  + ### getSourceAsDragGestureRecognizer

    public [DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd") getSourceAsDragGestureRecognizer()

    Returns the source as a `DragGestureRecognizer`.

    Returns:
    :   the source as a `DragGestureRecognizer`
  + ### getComponent

    public [Component](../Component.md "class in java.awt") getComponent()

    Returns the `Component` associated
    with this `DragGestureEvent`.

    Returns:
    :   the Component
  + ### getDragSource

    public [DragSource](DragSource.md "class in java.awt.dnd") getDragSource()

    Returns the `DragSource`.

    Returns:
    :   the `DragSource`
  + ### getDragOrigin

    public [Point](../Point.md "class in java.awt") getDragOrigin()

    Returns a `Point` in the coordinates
    of the `Component` over which the drag originated.

    Returns:
    :   the Point where the drag originated in Component coords.
  + ### iterator

    public [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[InputEvent](../event/InputEvent.md "class in java.awt.event")> iterator()

    Returns an `Iterator` for the events
    comprising the gesture.

    Returns:
    :   an Iterator for the events comprising the gesture
  + ### toArray

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] toArray()

    Returns an `Object` array of the
    events comprising the drag gesture.

    Returns:
    :   an array of the events comprising the gesture
  + ### toArray

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] toArray([Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] array)

    Returns an array of the events comprising the drag gesture.

    Parameters:
    :   `array` - the array of `EventObject` sub(types)

    Returns:
    :   an array of the events comprising the gesture
  + ### getDragAction

    public int getDragAction()

    Returns an `int` representing the
    action selected by the user.

    Returns:
    :   the action selected by the user
  + ### getTriggerEvent

    public [InputEvent](../event/InputEvent.md "class in java.awt.event") getTriggerEvent()

    Returns the initial event that triggered the gesture.

    Returns:
    :   the first "triggering" event in the sequence of the gesture
  + ### startDrag

    public void startDrag([Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Starts the drag operation given the `Cursor` for this drag
    operation and the `Transferable` representing the source data
    for this drag operation.
      
    If a `null Cursor` is specified no exception will
    be thrown and default drag cursors will be used instead.
      
    If a `null Transferable` is specified
    `NullPointerException` will be thrown.

    Parameters:
    :   `dragCursor` - The initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see
        [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism
        during drag and drop
    :   `transferable` - The `Transferable` representing the source
        data for this drag operation.

    Throws:
    :   `InvalidDnDOperationException` - if the Drag and Drop
        system is unable to initiate a drag operation, or if the user
        attempts to start a drag while an existing drag operation is
        still executing.
    :   `NullPointerException` - if the `Transferable` is `null`

    Since:
    :   1.4
  + ### startDrag

    public void startDrag([Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Starts the drag given the initial `Cursor` to display,
    the `Transferable` object,
    and the `DragSourceListener` to use.

    Parameters:
    :   `dragCursor` - The initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see
        [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism
        during drag and drop
    :   `transferable` - The source's Transferable
    :   `dsl` - The source's DragSourceListener

    Throws:
    :   `InvalidDnDOperationException` - if
        the Drag and Drop system is unable to
        initiate a drag operation, or if the user
        attempts to start a drag while an existing
        drag operation is still executing.
  + ### startDrag

    public void startDrag([Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Image](../Image.md "class in java.awt") dragImage,
    [Point](../Point.md "class in java.awt") imageOffset,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Start the drag given the initial `Cursor` to display,
    a drag `Image`, the offset of
    the `Image`,
    the `Transferable` object, and
    the `DragSourceListener` to use.

    Parameters:
    :   `dragCursor` - The initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see
        [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism
        during drag and drop
    :   `dragImage` - The source's dragImage
    :   `imageOffset` - The dragImage's offset
    :   `transferable` - The source's Transferable
    :   `dsl` - The source's DragSourceListener

    Throws:
    :   `InvalidDnDOperationException` - if
        the Drag and Drop system is unable to
        initiate a drag operation, or if the user
        attempts to start a drag while an existing
        drag operation is still executing.