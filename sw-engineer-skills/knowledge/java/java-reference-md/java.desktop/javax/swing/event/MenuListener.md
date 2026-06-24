Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface MenuListener

All Superinterfaces:
:   `EventListener`

---

public interface MenuListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Defines a listener for menu events.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `menuCanceled(MenuEvent e)`

  Invoked when the menu is canceled.

  `void`

  `menuDeselected(MenuEvent e)`

  Invoked when the menu is deselected.

  `void`

  `menuSelected(MenuEvent e)`

  Invoked when a menu is selected.

* ## Method Details

  + ### menuSelected

    void menuSelected([MenuEvent](MenuEvent.md "class in javax.swing.event") e)

    Invoked when a menu is selected.

    Parameters:
    :   `e` - a MenuEvent object
  + ### menuDeselected

    void menuDeselected([MenuEvent](MenuEvent.md "class in javax.swing.event") e)

    Invoked when the menu is deselected.

    Parameters:
    :   `e` - a MenuEvent object
  + ### menuCanceled

    void menuCanceled([MenuEvent](MenuEvent.md "class in javax.swing.event") e)

    Invoked when the menu is canceled.

    Parameters:
    :   `e` - a MenuEvent object