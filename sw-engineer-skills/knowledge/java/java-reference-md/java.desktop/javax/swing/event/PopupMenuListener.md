Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface PopupMenuListener

All Superinterfaces:
:   `EventListener`

---

public interface PopupMenuListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

A popup menu listener

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `popupMenuCanceled(PopupMenuEvent e)`

  This method is called when the popup menu is canceled

  `void`

  `popupMenuWillBecomeInvisible(PopupMenuEvent e)`

  This method is called before the popup menu becomes invisible
  Note that a JPopupMenu can become invisible any time

  `void`

  `popupMenuWillBecomeVisible(PopupMenuEvent e)`

  This method is called before the popup menu becomes visible

* ## Method Details

  + ### popupMenuWillBecomeVisible

    void popupMenuWillBecomeVisible([PopupMenuEvent](PopupMenuEvent.md "class in javax.swing.event") e)

    This method is called before the popup menu becomes visible

    Parameters:
    :   `e` - a `PopupMenuEvent` containing the source of the event
  + ### popupMenuWillBecomeInvisible

    void popupMenuWillBecomeInvisible([PopupMenuEvent](PopupMenuEvent.md "class in javax.swing.event") e)

    This method is called before the popup menu becomes invisible
    Note that a JPopupMenu can become invisible any time

    Parameters:
    :   `e` - a `PopupMenuEvent` containing the source of the event
  + ### popupMenuCanceled

    void popupMenuCanceled([PopupMenuEvent](PopupMenuEvent.md "class in javax.swing.event") e)

    This method is called when the popup menu is canceled

    Parameters:
    :   `e` - a `PopupMenuEvent` containing the source of the event