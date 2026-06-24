Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface MenuDragMouseListener

All Superinterfaces:
:   `EventListener`

---

public interface MenuDragMouseListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Defines a menu mouse-drag listener.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `menuDragMouseDragged(MenuDragMouseEvent e)`

  Invoked when the mouse is being dragged in a menu component's
  display area.

  `void`

  `menuDragMouseEntered(MenuDragMouseEvent e)`

  Invoked when the dragged mouse has entered a menu component's
  display area.

  `void`

  `menuDragMouseExited(MenuDragMouseEvent e)`

  Invoked when the dragged mouse has left a menu component's
  display area.

  `void`

  `menuDragMouseReleased(MenuDragMouseEvent e)`

  Invoked when a dragged mouse is release in a menu component's
  display area.

* ## Method Details

  + ### menuDragMouseEntered

    void menuDragMouseEntered([MenuDragMouseEvent](MenuDragMouseEvent.md "class in javax.swing.event") e)

    Invoked when the dragged mouse has entered a menu component's
    display area.

    Parameters:
    :   `e` - a MenuDragMouseEvent object
  + ### menuDragMouseExited

    void menuDragMouseExited([MenuDragMouseEvent](MenuDragMouseEvent.md "class in javax.swing.event") e)

    Invoked when the dragged mouse has left a menu component's
    display area.

    Parameters:
    :   `e` - a MenuDragMouseEvent object
  + ### menuDragMouseDragged

    void menuDragMouseDragged([MenuDragMouseEvent](MenuDragMouseEvent.md "class in javax.swing.event") e)

    Invoked when the mouse is being dragged in a menu component's
    display area.

    Parameters:
    :   `e` - a MenuDragMouseEvent object
  + ### menuDragMouseReleased

    void menuDragMouseReleased([MenuDragMouseEvent](MenuDragMouseEvent.md "class in javax.swing.event") e)

    Invoked when a dragged mouse is release in a menu component's
    display area.

    Parameters:
    :   `e` - a MenuDragMouseEvent object