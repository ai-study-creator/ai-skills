Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class MouseMotionAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.MouseMotionAdapter

All Implemented Interfaces:
:   `MouseMotionListener`, `EventListener`

Direct Known Subclasses:
:   `BasicComboPopup.InvocationMouseMotionHandler`, `BasicComboPopup.ListMouseMotionHandler`

---

public abstract class MouseMotionAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MouseMotionListener](MouseMotionListener.md "interface in java.awt.event")

An abstract adapter class for receiving mouse motion events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Mouse motion events occur when a mouse is moved or dragged.
(Many such events will be generated in a normal program.
To track clicks and other mouse events, use the MouseAdapter.)

Extend this class to create a `MouseEvent` listener
and override the methods for the events of interest. (If you implement the
`MouseMotionListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a component using the component's `addMouseMotionListener`
method. When the mouse is moved or dragged, the relevant method in the
listener object is invoked and the `MouseEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`MouseEvent`](MouseEvent.md "class in java.awt.event")
    * [`MouseMotionListener`](MouseMotionListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Mouse Motion Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/mousemotionlistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseMotionAdapter()`

  Constructs a `MouseMotionAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse button has been moved on a component
  (with no buttons no down).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseMotionAdapter

    protected MouseMotionAdapter()

    Constructs a `MouseMotionAdapter`.
* ## Method Details

  + ### mouseDragged

    public void mouseDragged([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button is pressed on a component and then
    dragged. Mouse drag events will continue to be delivered to
    the component where the first originated until the mouse button is
    released (regardless of whether the mouse position is within the
    bounds of the component).

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseMoved

    public void mouseMoved([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been moved on a component
    (with no buttons no down).

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the event to be processed