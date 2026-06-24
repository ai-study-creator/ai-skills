Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Interface DragGestureListener

All Superinterfaces:
:   `EventListener`

---

public interface DragGestureListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving drag gesture events.
This interface is intended for a drag gesture recognition
implementation. See a specification for `DragGestureRecognizer`
for details on how to register the listener interface.
Upon recognition of a drag gesture the `DragGestureRecognizer` calls this interface's
[`dragGestureRecognized()`](#dragGestureRecognized(java.awt.dnd.DragGestureEvent))
method and passes a `DragGestureEvent`.

See Also:
:   * [`DragGestureRecognizer`](DragGestureRecognizer.md "class in java.awt.dnd")
    * [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")
    * [`DragSource`](DragSource.md "class in java.awt.dnd")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `dragGestureRecognized(DragGestureEvent dge)`

  This method is invoked by the `DragGestureRecognizer`
  when the `DragGestureRecognizer` detects a platform-dependent
  drag initiating gesture.

* ## Method Details

  + ### dragGestureRecognized

    void dragGestureRecognized([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") dge)

    This method is invoked by the `DragGestureRecognizer`
    when the `DragGestureRecognizer` detects a platform-dependent
    drag initiating gesture. To initiate the drag and drop operation,
    if appropriate, [`startDrag()`](DragGestureEvent.md#startDrag(java.awt.Cursor,java.awt.datatransfer.Transferable)) method on
    the `DragGestureEvent` has to be invoked.

    Parameters:
    :   `dge` - the `DragGestureEvent` describing
        the gesture that has just occurred

    See Also:
    :   - [`DragGestureRecognizer`](DragGestureRecognizer.md "class in java.awt.dnd")
        - [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")