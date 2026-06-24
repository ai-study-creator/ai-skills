Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface MenuElement

All Known Implementing Classes:
:   `BasicComboPopup`, `BasicInternalFrameTitlePane.SystemMenuBar`, `JCheckBoxMenuItem`, `JMenu`, `JMenuBar`, `JMenuItem`, `JPopupMenu`, `JRadioButtonMenuItem`, `MetalComboBoxUI.MetalComboPopup`

---

public interface MenuElement

Any component that can be placed into a menu should implement this interface.
This interface is used by `MenuSelectionManager`
to handle selection and navigation in menu hierarchies.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getComponent()`

  This method should return the `java.awt.Component` used to paint the
  receiving element.

  `MenuElement[]`

  `getSubElements()`

  This method should return an array containing the sub-elements for the
  receiving menu element.

  `void`

  `menuSelectionChanged(boolean isIncluded)`

  Call by the `MenuSelectionManager` when the `MenuElement` is
  added or removed from the menu selection.

  `void`

  `processKeyEvent(KeyEvent event,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Process a key event.

  `void`

  `processMouseEvent(MouseEvent event,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Processes a mouse event.

* ## Method Details

  + ### processMouseEvent

    void processMouseEvent([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Processes a mouse event. `event` is a `MouseEvent` with
    source being the receiving element's component. `path` is the
    path of the receiving element in the menu hierarchy including the
    receiving element itself. `manager` is the
    `MenuSelectionManager` for the menu hierarchy. This method should
    process the `MouseEvent` and change the menu selection if necessary
    by using `MenuSelectionManager`'s API Note: you do not have to
    forward the event to sub-components. This is done automatically by the
    `MenuSelectionManager`.

    Parameters:
    :   `event` - a `MouseEvent` to be processed
    :   `path` - the path of the receiving element in the menu hierarchy
    :   `manager` - the `MenuSelectionManager` for the menu hierarchy
  + ### processKeyEvent

    void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") event,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Process a key event.

    Parameters:
    :   `event` - a `KeyEvent` to be processed
    :   `path` - the path of the receiving element in the menu hierarchy
    :   `manager` - the `MenuSelectionManager` for the menu hierarchy
  + ### menuSelectionChanged

    void menuSelectionChanged(boolean isIncluded)

    Call by the `MenuSelectionManager` when the `MenuElement` is
    added or removed from the menu selection.

    Parameters:
    :   `isIncluded` - can be used to indicate if this `MenuElement` is
        active (if it is a menu) or is on the part of the menu path that
        changed (if it is a menu item).
  + ### getSubElements

    [MenuElement](MenuElement.md "interface in javax.swing")[] getSubElements()

    This method should return an array containing the sub-elements for the
    receiving menu element.

    Returns:
    :   an array of `MenuElement`s
  + ### getComponent

    [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    This method should return the `java.awt.Component` used to paint the
    receiving element. The returned component will be used to convert events
    and detect if an event is inside a `MenuElement`'s component.

    Returns:
    :   the `Component` value