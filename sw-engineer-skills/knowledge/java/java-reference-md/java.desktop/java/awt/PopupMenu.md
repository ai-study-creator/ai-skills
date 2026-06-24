Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class PopupMenu

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.MenuComponent](MenuComponent.md "class in java.awt")

[java.awt.MenuItem](MenuItem.md "class in java.awt")

[java.awt.Menu](Menu.md "class in java.awt")

java.awt.PopupMenu

All Implemented Interfaces:
:   `MenuContainer`, `Serializable`, `Accessible`

---

public class PopupMenu
extends [Menu](Menu.md "class in java.awt")

A class that implements a menu which can be dynamically popped up
at a specified position within a component.

As the inheritance hierarchy implies, a `PopupMenu`
can be used anywhere a `Menu` can be used.
However, if you use a `PopupMenu` like a `Menu`
(e.g., you add it to a `MenuBar`), then you **cannot**
call `show` on that `PopupMenu`.

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.PopupMenu)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `PopupMenu.AccessibleAWTPopupMenu`

  Inner class of PopupMenu used to provide default support for
  accessibility.

  ## Nested classes/interfaces inherited from class java.awt.[Menu](Menu.md "class in java.awt")

  `Menu.AccessibleAWTMenu`

  ## Nested classes/interfaces inherited from class java.awt.[MenuItem](MenuItem.md "class in java.awt")

  `MenuItem.AccessibleAWTMenuItem`

  ## Nested classes/interfaces inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `MenuComponent.AccessibleAWTMenuComponent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PopupMenu()`

  Creates a new popup menu with an empty name.

  `PopupMenu(String label)`

  Creates a new popup menu with the specified name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotify()`

  Creates the popup menu's peer.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `PopupMenu`.

  `MenuContainer`

  `getParent()`

  Returns the parent container for this menu component.

  `void`

  `show(Component origin,
  int x,
  int y)`

  Shows the popup menu at the x, y position relative to an origin
  component.

  ### Methods inherited from class java.awt.[Menu](Menu.md "class in java.awt")

  `add, add, addSeparator, countItems, getItem, getItemCount, insert, insert, insertSeparator, isTearOff, paramString, remove, remove, removeAll, removeNotify`

  ### Methods inherited from class java.awt.[MenuItem](MenuItem.md "class in java.awt")

  `addActionListener, deleteShortcut, disable, disableEvents, enable, enable, enableEvents, getActionCommand, getActionListeners, getLabel, getListeners, getShortcut, isEnabled, processActionEvent, processEvent, removeActionListener, setActionCommand, setEnabled, setLabel, setShortcut`

  ### Methods inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `dispatchEvent, getFont, getName, getTreeLock, postEvent, setFont, setName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[MenuContainer](MenuContainer.md "interface in java.awt")

  `getFont, postEvent`

* ## Constructor Details

  + ### PopupMenu

    public PopupMenu()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new popup menu with an empty name.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### PopupMenu

    public PopupMenu([String](../../../java.base/java/lang/String.md "class in java.lang") label)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new popup menu with the specified name.

    Parameters:
    :   `label` - a non-`null` string specifying
        the popup menu's label

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getParent

    public [MenuContainer](MenuContainer.md "interface in java.awt") getParent()

    Returns the parent container for this menu component.

    Overrides:
    :   `getParent` in class `MenuComponent`

    Returns:
    :   the menu component containing this menu component,
        or `null` if this menu component
        is the outermost component, the menu bar itself
  + ### addNotify

    public void addNotify()

    Creates the popup menu's peer.
    The peer allows us to change the appearance of the popup menu without
    changing any of the popup menu's functionality.

    Overrides:
    :   `addNotify` in class `Menu`
  + ### show

    public void show([Component](Component.md "class in java.awt") origin,
    int x,
    int y)

    Shows the popup menu at the x, y position relative to an origin
    component.
    The origin component must be contained within the component
    hierarchy of the popup menu's parent. Both the origin and the parent
    must be showing on the screen for this method to be valid.

    If this `PopupMenu` is being used as a `Menu`
    (i.e., it has a non-`Component` parent),
    then you cannot call this method on the `PopupMenu`.

    Parameters:
    :   `origin` - the component which defines the coordinate space
    :   `x` - the x coordinate position to popup the menu
    :   `y` - the y coordinate position to popup the menu

    Throws:
    :   `NullPointerException` - if the parent is `null`
    :   `IllegalArgumentException` - if this `PopupMenu`
        has a non-`Component` parent
    :   `IllegalArgumentException` - if the origin is not in the
        parent's hierarchy
    :   `RuntimeException` - if the parent is not showing on screen
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `PopupMenu`.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Menu`

    Returns:
    :   the `AccessibleContext` of this
        `PopupMenu`

    Since:
    :   1.3