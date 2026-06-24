Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalToolBarUI.MetalDockingListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicToolBarUI.DockingListener](../basic/BasicToolBarUI.DockingListener.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalToolBarUI.MetalDockingListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `EventListener`, `MouseInputListener`

Enclosing class:
:   `MetalToolBarUI`

---

protected class MetalToolBarUI.MetalDockingListener
extends [BasicToolBarUI.DockingListener](../basic/BasicToolBarUI.DockingListener.md "class in javax.swing.plaf.basic")

`DockingListener` for `MetalToolBarUI`.

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicToolBarUI.DockingListener](../basic/BasicToolBarUI.DockingListener.md "class in javax.swing.plaf.basic")

  `isDragging, origin, toolBar`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalDockingListener(JToolBar t)`

  Constructs the `MetalDockingListener`.
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

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been pressed on a component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToolBarUI.DockingListener](../basic/BasicToolBarUI.DockingListener.md "class in javax.swing.plaf.basic")

  `mouseClicked, mouseEntered, mouseExited, mouseMoved, mouseReleased`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalDockingListener

    public MetalDockingListener([JToolBar](../../JToolBar.md "class in javax.swing") t)

    Constructs the `MetalDockingListener`.

    Parameters:
    :   `t` - an instance of `JToolBar`
* ## Method Details

  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when a mouse button has been pressed on a component.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `BasicToolBarUI.DockingListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseMotionListener`

    Invoked when a mouse button is pressed on a component and then
    dragged. `MOUSE_DRAGGED` events will continue to be
    delivered to the component where the drag originated until the
    mouse button is released (regardless of whether the mouse position
    is within the bounds of the component).

    Due to platform-dependent Drag&Drop implementations,
    `MOUSE_DRAGGED` events may not be delivered during a native
    Drag&Drop operation.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `BasicToolBarUI.DockingListener`

    Parameters:
    :   `e` - the event to be processed