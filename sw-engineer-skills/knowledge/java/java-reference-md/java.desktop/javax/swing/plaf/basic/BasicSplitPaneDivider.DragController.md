Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneDivider.DragController

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicSplitPaneDivider.DragController

Direct Known Subclasses:
:   `BasicSplitPaneDivider.VerticalDragController`

Enclosing class:
:   `BasicSplitPaneDivider`

---

protected class BasicSplitPaneDivider.DragController
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Handles the events during a dragging session for a
HORIZONTAL\_SPLIT oriented split pane. This continually
messages `dragDividerTo` and then when done messages
`finishDraggingTo`. When an instance is created it should be
messaged with `isValid` to insure that dragging can happen
(dragging won't be allowed if the two views can not be resized).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DragController(MouseEvent e)`

  Constructs a new instance of `DragController`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `completeDrag(int x,
  int y)`

  Messages finishDraggingTo with the new location for the mouse
  event.

  `protected void`

  `completeDrag(MouseEvent e)`

  Messages finishDraggingTo with the new location for the mouse
  event.

  `protected void`

  `continueDrag(int newX,
  int newY)`

  Messages dragDividerTo with the new location for the mouse
  event.

  `protected void`

  `continueDrag(MouseEvent e)`

  Messages dragDividerTo with the new location for the mouse
  event.

  `protected int`

  `getNeededLocation(int x,
  int y)`

  Returns the x argument, since this is used for horizontal
  splits.

  `protected boolean`

  `isValid()`

  Returns `true` if the dragging session is valid.

  `protected int`

  `positionForMouseEvent(MouseEvent e)`

  Returns the new position to put the divider at based on
  the passed in MouseEvent.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DragController

    protected DragController([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Constructs a new instance of `DragController`.

    Parameters:
    :   `e` - a mouse event
* ## Method Details

  + ### isValid

    protected boolean isValid()

    Returns `true` if the dragging session is valid.

    Returns:
    :   `true` if the dragging session is valid
  + ### positionForMouseEvent

    protected int positionForMouseEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Returns the new position to put the divider at based on
    the passed in MouseEvent.

    Parameters:
    :   `e` - a mouse event

    Returns:
    :   the new position
  + ### getNeededLocation

    protected int getNeededLocation(int x,
    int y)

    Returns the x argument, since this is used for horizontal
    splits.

    Parameters:
    :   `x` - an X coordinate
    :   `y` - an Y coordinate

    Returns:
    :   the X argument
  + ### continueDrag

    protected void continueDrag(int newX,
    int newY)

    Messages dragDividerTo with the new location for the mouse
    event.

    Parameters:
    :   `newX` - an X coordinate
    :   `newY` - an Y coordinate
  + ### continueDrag

    protected void continueDrag([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Messages dragDividerTo with the new location for the mouse
    event.

    Parameters:
    :   `e` - a mouse event
  + ### completeDrag

    protected void completeDrag(int x,
    int y)

    Messages finishDraggingTo with the new location for the mouse
    event.

    Parameters:
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### completeDrag

    protected void completeDrag([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Messages finishDraggingTo with the new location for the mouse
    event.

    Parameters:
    :   `e` - a mouse event