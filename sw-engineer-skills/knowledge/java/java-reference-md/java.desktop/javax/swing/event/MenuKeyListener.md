Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface MenuKeyListener

All Superinterfaces:
:   `EventListener`

---

public interface MenuKeyListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

MenuKeyListener

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `menuKeyPressed(MenuKeyEvent e)`

  Invoked when a key has been pressed.

  `void`

  `menuKeyReleased(MenuKeyEvent e)`

  Invoked when a key has been released.

  `void`

  `menuKeyTyped(MenuKeyEvent e)`

  Invoked when a key has been typed.

* ## Method Details

  + ### menuKeyTyped

    void menuKeyTyped([MenuKeyEvent](MenuKeyEvent.md "class in javax.swing.event") e)

    Invoked when a key has been typed.
    This event occurs when a key press is followed by a key release.

    Parameters:
    :   `e` - a `MenuKeyEvent`
  + ### menuKeyPressed

    void menuKeyPressed([MenuKeyEvent](MenuKeyEvent.md "class in javax.swing.event") e)

    Invoked when a key has been pressed.

    Parameters:
    :   `e` - a `MenuKeyEvent`
  + ### menuKeyReleased

    void menuKeyReleased([MenuKeyEvent](MenuKeyEvent.md "class in javax.swing.event") e)

    Invoked when a key has been released.

    Parameters:
    :   `e` - a `MenuKeyEvent`