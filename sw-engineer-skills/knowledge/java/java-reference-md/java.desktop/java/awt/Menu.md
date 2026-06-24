Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Menu

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.MenuComponent](MenuComponent.md "class in java.awt")

[java.awt.MenuItem](MenuItem.md "class in java.awt")

java.awt.Menu

All Implemented Interfaces:
:   `MenuContainer`, `Serializable`, `Accessible`

Direct Known Subclasses:
:   `PopupMenu`

---

public class Menu
extends [MenuItem](MenuItem.md "class in java.awt")
implements [MenuContainer](MenuContainer.md "interface in java.awt"), [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility")

A `Menu` object is a pull-down menu component
that is deployed from a menu bar.

A menu can optionally be a *tear-off* menu. A tear-off menu
can be opened and dragged away from its parent menu bar or menu.
It remains on the screen after the mouse button has been released.
The mechanism for tearing off a menu is platform dependent, since
the look and feel of the tear-off menu is determined by its peer.
On platforms that do not support tear-off menus, the tear-off
property is ignored.

Each item in a menu must belong to the `MenuItem`
class. It can be an instance of `MenuItem`, a submenu
(an instance of `Menu`), or a check box (an instance of
`CheckboxMenuItem`).

Since:
:   1.0

See Also:
:   * [`MenuItem`](MenuItem.md "class in java.awt")
    * [`CheckboxMenuItem`](CheckboxMenuItem.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.Menu)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Menu.AccessibleAWTMenu`

  Inner class of Menu used to provide default support for
  accessibility.

  ## Nested classes/interfaces inherited from class java.awt.[MenuItem](MenuItem.md "class in java.awt")

  `MenuItem.AccessibleAWTMenuItem`

  ## Nested classes/interfaces inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `MenuComponent.AccessibleAWTMenuComponent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Menu()`

  Constructs a new menu with an empty label.

  `Menu(String label)`

  Constructs a new menu with the specified label.

  `Menu(String label,
  boolean tearOff)`

  Constructs a new menu with the specified label,
  indicating whether the menu can be torn off.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `MenuItem`

  `add(MenuItem mi)`

  Adds the specified menu item to this menu.

  `void`

  `add(String label)`

  Adds an item with the specified label to this menu.

  `void`

  `addNotify()`

  Creates the menu's peer.

  `void`

  `addSeparator()`

  Adds a separator line, or a hyphen, to the menu at the current position.

  `int`

  `countItems()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getItemCount()`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this Menu.

  `MenuItem`

  `getItem(int index)`

  Gets the item located at the specified index of this menu.

  `int`

  `getItemCount()`

  Get the number of items in this menu.

  `void`

  `insert(MenuItem menuitem,
  int index)`

  Inserts a menu item into this menu
  at the specified position.

  `void`

  `insert(String label,
  int index)`

  Inserts a menu item with the specified label into this menu
  at the specified position.

  `void`

  `insertSeparator(int index)`

  Inserts a separator at the specified position.

  `boolean`

  `isTearOff()`

  Indicates whether this menu is a tear-off menu.

  `String`

  `paramString()`

  Returns a string representing the state of this `Menu`.

  `void`

  `remove(int index)`

  Removes the menu item at the specified index from this menu.

  `void`

  `remove(MenuComponent item)`

  Removes the specified menu item from this menu.

  `void`

  `removeAll()`

  Removes all items from this menu.

  `void`

  `removeNotify()`

  Removes the menu's peer.

  ### Methods inherited from class java.awt.[MenuItem](MenuItem.md "class in java.awt")

  `addActionListener, deleteShortcut, disable, disableEvents, enable, enable, enableEvents, getActionCommand, getActionListeners, getLabel, getListeners, getShortcut, isEnabled, processActionEvent, processEvent, removeActionListener, setActionCommand, setEnabled, setLabel, setShortcut`

  ### Methods inherited from class java.awt.[MenuComponent](MenuComponent.md "class in java.awt")

  `dispatchEvent, getFont, getName, getParent, getTreeLock, postEvent, setFont, setName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[MenuContainer](MenuContainer.md "interface in java.awt")

  `getFont, postEvent`

* ## Constructor Details

  + ### Menu

    public Menu()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new menu with an empty label. This menu is not
    a tear-off menu.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Menu

    public Menu([String](../../../java.base/java/lang/String.md "class in java.lang") label)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new menu with the specified label. This menu is not
    a tear-off menu.

    Parameters:
    :   `label` - the menu's label in the menu bar, or in
        another menu of which this menu is a submenu.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Menu

    public Menu([String](../../../java.base/java/lang/String.md "class in java.lang") label,
    boolean tearOff)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new menu with the specified label,
    indicating whether the menu can be torn off.

    Tear-off functionality may not be supported by all
    implementations of AWT. If a particular implementation doesn't
    support tear-off menus, this value is silently ignored.

    Parameters:
    :   `label` - the menu's label in the menu bar, or in
        another menu of which this menu is a submenu.
    :   `tearOff` - if `true`, the menu
        is a tear-off menu.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Creates the menu's peer. The peer allows us to modify the
    appearance of the menu without changing its functionality.

    Overrides:
    :   `addNotify` in class `MenuItem`
  + ### removeNotify

    public void removeNotify()

    Removes the menu's peer. The peer allows us to modify the appearance
    of the menu without changing its functionality.

    Overrides:
    :   `removeNotify` in class `MenuComponent`
  + ### isTearOff

    public boolean isTearOff()

    Indicates whether this menu is a tear-off menu.

    Tear-off functionality may not be supported by all
    implementations of AWT. If a particular implementation doesn't
    support tear-off menus, this value is silently ignored.

    Returns:
    :   `true` if this is a tear-off menu;
        `false` otherwise.
  + ### getItemCount

    public int getItemCount()

    Get the number of items in this menu.

    Returns:
    :   the number of items in this menu

    Since:
    :   1.1
  + ### countItems

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public int countItems()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getItemCount()`.

    Returns the number of items in this menu.

    Returns:
    :   the number of items in this menu
  + ### getItem

    public [MenuItem](MenuItem.md "class in java.awt") getItem(int index)

    Gets the item located at the specified index of this menu.

    Parameters:
    :   `index` - the position of the item to be returned.

    Returns:
    :   the item located at the specified index.
  + ### add

    public [MenuItem](MenuItem.md "class in java.awt") add([MenuItem](MenuItem.md "class in java.awt") mi)

    Adds the specified menu item to this menu. If the
    menu item has been part of another menu, removes it
    from that menu.

    Parameters:
    :   `mi` - the menu item to be added

    Returns:
    :   the menu item added

    See Also:
    :   - [`insert(java.lang.String, int)`](#insert(java.lang.String,int))
        - [`insert(java.awt.MenuItem, int)`](#insert(java.awt.MenuItem,int))
  + ### add

    public void add([String](../../../java.base/java/lang/String.md "class in java.lang") label)

    Adds an item with the specified label to this menu.

    Parameters:
    :   `label` - the text on the item

    See Also:
    :   - [`insert(java.lang.String, int)`](#insert(java.lang.String,int))
        - [`insert(java.awt.MenuItem, int)`](#insert(java.awt.MenuItem,int))
  + ### insert

    public void insert([MenuItem](MenuItem.md "class in java.awt") menuitem,
    int index)

    Inserts a menu item into this menu
    at the specified position.

    Parameters:
    :   `menuitem` - the menu item to be inserted.
    :   `index` - the position at which the menu
        item should be inserted.

    Throws:
    :   `IllegalArgumentException` - if the value of
        `index` is less than zero

    Since:
    :   1.1

    See Also:
    :   - [`add(java.lang.String)`](#add(java.lang.String))
        - [`add(java.awt.MenuItem)`](#add(java.awt.MenuItem))
  + ### insert

    public void insert([String](../../../java.base/java/lang/String.md "class in java.lang") label,
    int index)

    Inserts a menu item with the specified label into this menu
    at the specified position. This is a convenience method for
    `insert(menuItem, index)`.

    Parameters:
    :   `label` - the text on the item
    :   `index` - the position at which the menu item
        should be inserted

    Throws:
    :   `IllegalArgumentException` - if the value of
        `index` is less than zero

    Since:
    :   1.1

    See Also:
    :   - [`add(java.lang.String)`](#add(java.lang.String))
        - [`add(java.awt.MenuItem)`](#add(java.awt.MenuItem))
  + ### addSeparator

    public void addSeparator()

    Adds a separator line, or a hyphen, to the menu at the current position.

    See Also:
    :   - [`insertSeparator(int)`](#insertSeparator(int))
  + ### insertSeparator

    public void insertSeparator(int index)

    Inserts a separator at the specified position.

    Parameters:
    :   `index` - the position at which the
        menu separator should be inserted.

    Throws:
    :   `IllegalArgumentException` - if the value of
        `index` is less than 0.

    Since:
    :   1.1

    See Also:
    :   - [`addSeparator()`](#addSeparator())
  + ### remove

    public void remove(int index)

    Removes the menu item at the specified index from this menu.

    Parameters:
    :   `index` - the position of the item to be removed.
  + ### remove

    public void remove([MenuComponent](MenuComponent.md "class in java.awt") item)

    Removes the specified menu item from this menu.

    Specified by:
    :   `remove` in interface `MenuContainer`

    Parameters:
    :   `item` - the item to be removed from the menu.
        If `item` is `null`
        or is not in this menu, this method does
        nothing.
  + ### removeAll

    public void removeAll()

    Removes all items from this menu.

    Since:
    :   1.1
  + ### paramString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this `Menu`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `MenuItem`

    Returns:
    :   the parameter string of this menu
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this Menu.
    For menus, the AccessibleContext takes the form of an
    AccessibleAWTMenu.
    A new AccessibleAWTMenu instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `MenuItem`

    Returns:
    :   an AccessibleAWTMenu that serves as the
        AccessibleContext of this Menu

    Since:
    :   1.3