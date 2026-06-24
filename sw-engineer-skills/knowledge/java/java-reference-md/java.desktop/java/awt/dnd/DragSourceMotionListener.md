Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Interface DragSourceMotionListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `DragSourceAdapter`, `DragSourceContext`

---

public interface DragSourceMotionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

A listener interface for receiving mouse motion events during a drag
operation.

The class that is interested in processing mouse motion events during
a drag operation either implements this interface or extends the abstract
`DragSourceAdapter` class (overriding only the methods of
interest).

Create a listener object using that class and then register it with
a `DragSource`. Whenever the mouse moves during a drag
operation initiated with this `DragSource`, that object's
`dragMouseMoved` method is invoked, and the
`DragSourceDragEvent` is passed to it.

Since:
:   1.4

See Also:
:   * [`DragSourceDragEvent`](DragSourceDragEvent.md "class in java.awt.dnd")
    * [`DragSource`](DragSource.md "class in java.awt.dnd")
    * [`DragSourceListener`](DragSourceListener.md "interface in java.awt.dnd")
    * [`DragSourceAdapter`](DragSourceAdapter.md "class in java.awt.dnd")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `dragMouseMoved(DragSourceDragEvent dsde)`

  Called whenever the mouse is moved during a drag operation.

* ## Method Details

  + ### dragMouseMoved

    void dragMouseMoved([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Called whenever the mouse is moved during a drag operation.

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`