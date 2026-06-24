Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class MouseDragGestureRecognizer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.dnd.DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd")

java.awt.dnd.MouseDragGestureRecognizer

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `Serializable`, `EventListener`

---

public abstract class MouseDragGestureRecognizer
extends [DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd")
implements [MouseListener](../event/MouseListener.md "interface in java.awt.event"), [MouseMotionListener](../event/MouseMotionListener.md "interface in java.awt.event")

This abstract subclass of `DragGestureRecognizer`
defines a `DragGestureRecognizer`
for mouse-based gestures.
Each platform implements its own concrete subclass of this class,
available via the Toolkit.createDragGestureRecognizer() method,
to encapsulate
the recognition of the platform dependent mouse gesture(s) that initiate
a Drag and Drop operation.

Mouse drag gesture recognizers should honor the
drag gesture motion threshold, available through
[`DragSource.getDragThreshold()`](DragSource.md#getDragThreshold()).
A drag gesture should be recognized only when the distance
in either the horizontal or vertical direction between
the location of the latest mouse dragged event and the
location of the corresponding mouse button pressed event
is greater than the drag gesture motion threshold.

Drag gesture recognizers created with
[`DragSource.createDefaultDragGestureRecognizer(java.awt.Component, int, java.awt.dnd.DragGestureListener)`](DragSource.md#createDefaultDragGestureRecognizer(java.awt.Component,int,java.awt.dnd.DragGestureListener))
follow this convention.

See Also:
:   * [`DragGestureListener`](DragGestureListener.md "interface in java.awt.dnd")
    * [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")
    * [`DragSource`](DragSource.md "class in java.awt.dnd")
    * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.MouseDragGestureRecognizer)

* ## Field Summary

  ### Fields inherited from class java.awt.dnd.[DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd")

  `component, dragGestureListener, dragSource, events, sourceActions`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseDragGestureRecognizer(DragSource ds)`

  Construct a new `MouseDragGestureRecognizer`
  given the `DragSource` for the `Component`.

  `protected`

  `MouseDragGestureRecognizer(DragSource ds,
  Component c)`

  Construct a new `MouseDragGestureRecognizer`
  given the `DragSource` for the
  `Component` c, and the
  `Component` to observe.

  `protected`

  `MouseDragGestureRecognizer(DragSource ds,
  Component c,
  int act)`

  Construct a new `MouseDragGestureRecognizer`
  given the `DragSource` for
  the `Component` c,
  the `Component` to observe, and the action(s)
  permitted for this drag operation.

  `protected`

  `MouseDragGestureRecognizer(DragSource ds,
  Component c,
  int act,
  DragGestureListener dgl)`

  Construct a new `MouseDragGestureRecognizer`
  given the `DragSource` for the
  `Component` c, the `Component`
  to observe, the action(s)
  permitted for this drag operation, and
  the `DragGestureListener` to
  notify when a drag gesture is detected.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseClicked(MouseEvent e)`

  Invoked when the mouse has been clicked on a component.

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component.

  `void`

  `mouseEntered(MouseEvent e)`

  Invoked when the mouse enters a component.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits a component.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse button has been moved on a component
  (with no buttons no down).

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been
  pressed on a `Component`.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

  `protected void`

  `registerListeners()`

  register this DragGestureRecognizer's Listeners with the Component

  `protected void`

  `unregisterListeners()`

  unregister this DragGestureRecognizer's Listeners with the Component
  subclasses must override this method

  ### Methods inherited from class java.awt.dnd.[DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd")

  `addDragGestureListener, appendEvent, fireDragGestureRecognized, getComponent, getDragSource, getSourceActions, getTriggerEvent, removeDragGestureListener, resetRecognizer, setComponent, setSourceActions`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseDragGestureRecognizer

    protected MouseDragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c,
    int act,
    [DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)

    Construct a new `MouseDragGestureRecognizer`
    given the `DragSource` for the
    `Component` c, the `Component`
    to observe, the action(s)
    permitted for this drag operation, and
    the `DragGestureListener` to
    notify when a drag gesture is detected.

    Parameters:
    :   `ds` - The DragSource for the Component c
    :   `c` - The Component to observe
    :   `act` - The actions permitted for this Drag
    :   `dgl` - The DragGestureListener to notify when a gesture is detected
  + ### MouseDragGestureRecognizer

    protected MouseDragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c,
    int act)

    Construct a new `MouseDragGestureRecognizer`
    given the `DragSource` for
    the `Component` c,
    the `Component` to observe, and the action(s)
    permitted for this drag operation.

    Parameters:
    :   `ds` - The DragSource for the Component c
    :   `c` - The Component to observe
    :   `act` - The actions permitted for this drag
  + ### MouseDragGestureRecognizer

    protected MouseDragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c)

    Construct a new `MouseDragGestureRecognizer`
    given the `DragSource` for the
    `Component` c, and the
    `Component` to observe.

    Parameters:
    :   `ds` - The DragSource for the Component c
    :   `c` - The Component to observe
  + ### MouseDragGestureRecognizer

    protected MouseDragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds)

    Construct a new `MouseDragGestureRecognizer`
    given the `DragSource` for the `Component`.

    Parameters:
    :   `ds` - The DragSource for the Component
* ## Method Details

  + ### registerListeners

    protected void registerListeners()

    register this DragGestureRecognizer's Listeners with the Component

    Specified by:
    :   `registerListeners` in class `DragGestureRecognizer`
  + ### unregisterListeners

    protected void unregisterListeners()

    unregister this DragGestureRecognizer's Listeners with the Component
    subclasses must override this method

    Specified by:
    :   `unregisterListeners` in class `DragGestureRecognizer`
  + ### mouseClicked

    public void mouseClicked([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse has been clicked on a component.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mousePressed

    public void mousePressed([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been
    pressed on a `Component`.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been released on a component.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse enters a component.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mouseExited

    public void mouseExited([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button is pressed on a component.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the `MouseEvent`
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been moved on a component
    (with no buttons no down).

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the `MouseEvent`