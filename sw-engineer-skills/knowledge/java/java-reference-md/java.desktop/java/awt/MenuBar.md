Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MenuBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.MenuComponent](MenuComponent.md "class in java.awt")

java.awt.MenuBar

All Implemented Interfaces:
:   `MenuContainer`, `Serializable`, `Accessible`

---

public class MenuBar
extends [MenuComponent](MenuComponent.md "class in java.awt")
implements [MenuContainer](MenuContainer.md "interface in java.awt"), [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility")

The `MenuBar` class encapsulates the platform's
concept of a menu bar bound to a frame. In order to associate
the menu bar with a `Frame` object, call the
frame's `setMenuBar` method.

This is what a menu bar might look like:

![Diagram of MenuBar containing 2 menus: Examples and Options. Examples
 menu is expanded showing items: Basic, Simple, Check, and More Examples.](doc-files/MenuBar-1.gif)

A menu bar handles keyboard shortcuts for menu items, passing them
along to its child menus.
(Keyboard shortcuts, which are optional, provide the user with
an alternative to the mouse for invoking a menu item and the
action that is associated with it.)
Each menu item can maintain an instance of `MenuShortcut`.
The `MenuBar` class defines several methods,
[`shortcuts()`](#shortcuts()) and
[`getShortcutMenuItem(java.awt.MenuShortcut)`](#getShortcutMenuItem(java.awt.MenuShortcut))
that retrieve information about the shortcuts a given
menu bar is managing.

Since:
:   1.0

See Also:
:   * [`Frame`](Frame.md "class in java.awt")
    * [`Frame.setMenuBar(java.awt.MenuBar)`](Frame.md#setMenuBar(java.awt.MenuBar))
    * [`Menu`](Menu.md "class in java.awt")
    * [`MenuItem`](MenuItem.md "class in java.awt")
    * [`MenuShortcut`](MenuShortcut.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.MenuBar)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `MenuBar.AccessibleAWTMenuBar`

  Inner class of MenuBar used to provide default support for
  accessibility.

  ## Nested classes/interfaces inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `MenuComponent.AccessibleAWTMenuComponent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuBar()`

  Creates a new menu bar.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Menu`

  `add(Menu m)`

  Adds the specified menu to the menu bar.

  `void`

  `addNotify()`

  Creates the menu bar's peer.

  `int`

  `countMenus()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getMenuCount()`.

  `void`

  `deleteShortcut(MenuShortcut s)`

  Deletes the specified menu shortcut.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this MenuBar.

  `Menu`

  `getHelpMenu()`

  Gets the help menu on the menu bar.

  `Menu`

  `getMenu(int i)`

  Gets the specified menu.

  `int`

  `getMenuCount()`

  Gets the number of menus on the menu bar.

  `MenuItem`

  `getShortcutMenuItem(MenuShortcut s)`

  Gets the instance of `MenuItem` associated
  with the specified `MenuShortcut` object,
  or `null` if none of the menu items being managed
  by this menu bar is associated with the specified menu
  shortcut.

  `void`

  `remove(int index)`

  Removes the menu located at the specified
  index from this menu bar.

  `void`

  `remove(MenuComponent m)`

  Removes the specified menu component from this menu bar.

  `void`

  `removeNotify()`

  Removes the menu bar's peer.

  `void`

  `setHelpMenu(Menu m)`

  Sets the specified menu to be this menu bar's help menu.

  `Enumeration<MenuShortcut>`

  `shortcuts()`

  Gets an enumeration of all menu shortcuts this menu bar
  is managing.

  ### Methods inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `dispatchEvent, getFont, getName, getParent, getTreeLock, paramString, postEvent, processEvent, setFont, setName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[MenuContainer](MenuContainer.md "interface in java.awt")

  `getFont, postEvent`

* ## Constructor Details

  + ### MenuBar

    public MenuBar()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new menu bar.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Creates the menu bar's peer. The peer allows us to change the
    appearance of the menu bar without changing any of the menu bar's
    functionality.
  + ### removeNotify

    public void removeNotify()

    Removes the menu bar's peer. The peer allows us to change the
    appearance of the menu bar without changing any of the menu bar's
    functionality.

    Overrides:
    :   `removeNotify` in class `MenuComponent`
  + ### getHelpMenu

    public [Menu](Menu.md "class in java.awt") getHelpMenu()

    Gets the help menu on the menu bar.

    Returns:
    :   the help menu on this menu bar.
  + ### setHelpMenu

    public void setHelpMenu([Menu](Menu.md "class in java.awt") m)

    Sets the specified menu to be this menu bar's help menu.
    If this menu bar has an existing help menu, the old help menu is
    removed from the menu bar, and replaced with the specified menu.

    Parameters:
    :   `m` - the menu to be set as the help menu
  + ### add

    public [Menu](Menu.md "class in java.awt") add([Menu](Menu.md "class in java.awt") m)

    Adds the specified menu to the menu bar.
    If the menu has been part of another menu bar,
    removes it from that menu bar.

    Parameters:
    :   `m` - the menu to be added

    Returns:
    :   the menu added

    See Also:
    :   - [`remove(int)`](#remove(int))
        - [`remove(java.awt.MenuComponent)`](#remove(java.awt.MenuComponent))
  + ### remove

    public void remove(int index)

    Removes the menu located at the specified
    index from this menu bar.

    Parameters:
    :   `index` - the position of the menu to be removed.

    See Also:
    :   - [`add(java.awt.Menu)`](#add(java.awt.Menu))
  + ### remove

    public void remove([MenuComponent](MenuComponent.md "class in java.awt") m)

    Removes the specified menu component from this menu bar.

    Specified by:
    :   `remove` in interface `MenuContainer`

    Parameters:
    :   `m` - the menu component to be removed.

    See Also:
    :   - [`add(java.awt.Menu)`](#add(java.awt.Menu))
  + ### getMenuCount

    public int getMenuCount()

    Gets the number of menus on the menu bar.

    Returns:
    :   the number of menus on the menu bar.

    Since:
    :   1.1
  + ### countMenus

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public int countMenus()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getMenuCount()`.

    Gets the number of menus on the menu bar.

    Returns:
    :   the number of menus on the menu bar.
  + ### getMenu

    public [Menu](Menu.md "class in java.awt") getMenu(int i)

    Gets the specified menu.

    Parameters:
    :   `i` - the index position of the menu to be returned.

    Returns:
    :   the menu at the specified index of this menu bar.
  + ### shortcuts

    public [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[MenuShortcut](MenuShortcut.md "class in java.awt")> shortcuts()

    Gets an enumeration of all menu shortcuts this menu bar
    is managing.

    Returns:
    :   an enumeration of menu shortcuts that this
        menu bar is managing.

    Since:
    :   1.1

    See Also:
    :   - [`MenuShortcut`](MenuShortcut.md "class in java.awt")
  + ### getShortcutMenuItem

    public [MenuItem](MenuItem.md "class in java.awt") getShortcutMenuItem([MenuShortcut](MenuShortcut.md "class in java.awt") s)

    Gets the instance of `MenuItem` associated
    with the specified `MenuShortcut` object,
    or `null` if none of the menu items being managed
    by this menu bar is associated with the specified menu
    shortcut.

    Parameters:
    :   `s` - the specified menu shortcut.

    Returns:
    :   the menu item for the specified shortcut.

    Since:
    :   1.1

    See Also:
    :   - [`MenuItem`](MenuItem.md "class in java.awt")
        - [`MenuShortcut`](MenuShortcut.md "class in java.awt")
  + ### deleteShortcut

    public void deleteShortcut([MenuShortcut](MenuShortcut.md "class in java.awt") s)

    Deletes the specified menu shortcut.

    Parameters:
    :   `s` - the menu shortcut to delete.

    Since:
    :   1.1
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this MenuBar.
    For menu bars, the AccessibleContext takes the form of an
    AccessibleAWTMenuBar.
    A new AccessibleAWTMenuBar instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `MenuComponent`

    Returns:
    :   an AccessibleAWTMenuBar that serves as the
        AccessibleContext of this MenuBar

    Since:
    :   1.3