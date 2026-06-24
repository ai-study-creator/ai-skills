Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneDivider.VerticalDragController

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicSplitPaneDivider.DragController](BasicSplitPaneDivider.DragController.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicSplitPaneDivider.VerticalDragController

Enclosing class:
:   `BasicSplitPaneDivider`

---

protected class BasicSplitPaneDivider.VerticalDragController
extends [BasicSplitPaneDivider.DragController](BasicSplitPaneDivider.DragController.md "class in javax.swing.plaf.basic")

Handles the events during a dragging session for a
VERTICAL\_SPLIT oriented split pane. This continually
messages `dragDividerTo` and then when done messages
`finishDraggingTo`. When an instance is created it should be
messaged with `isValid` to insure that dragging can happen
(dragging won't be allowed if the two views can not be resized).

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `VerticalDragController(MouseEvent e)`

  Constructs a new instance of `VerticalDragController`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `getNeededLocation(int x,
  int y)`

  Returns the y argument, since this is used for vertical
  splits.

  `protected int`

  `positionForMouseEvent(MouseEvent e)`

  Returns the new position to put the divider at based on
  the passed in MouseEvent.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSplitPaneDivider.DragController](BasicSplitPaneDivider.DragController.md "class in javax.swing.plaf.basic")

  `completeDrag, completeDrag, continueDrag, continueDrag, isValid`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### VerticalDragController

    protected VerticalDragController([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Constructs a new instance of `VerticalDragController`.

    Parameters:
    :   `e` - a mouse event
* ## Method Details

  + ### getNeededLocation

    protected int getNeededLocation(int x,
    int y)

    Returns the y argument, since this is used for vertical
    splits.

    Overrides:
    :   `getNeededLocation` in class `BasicSplitPaneDivider.DragController`

    Parameters:
    :   `x` - an X coordinate
    :   `y` - an Y coordinate

    Returns:
    :   the X argument
  + ### positionForMouseEvent

    protected int positionForMouseEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Returns the new position to put the divider at based on
    the passed in MouseEvent.

    Overrides:
    :   `positionForMouseEvent` in class `BasicSplitPaneDivider.DragController`

    Parameters:
    :   `e` - a mouse event

    Returns:
    :   the new position