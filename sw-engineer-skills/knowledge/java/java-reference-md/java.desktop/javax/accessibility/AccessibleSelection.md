Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleSelection

All Known Implementing Classes:
:   `CheckboxMenuItem.AccessibleAWTCheckboxMenuItem`, `JComboBox.AccessibleJComboBox`, `JList.AccessibleJList`, `JMenu.AccessibleJMenu`, `JMenuBar.AccessibleJMenuBar`, `JTabbedPane.AccessibleJTabbedPane`, `JTable.AccessibleJTable`, `JTree.AccessibleJTree`, `JTree.AccessibleJTree.AccessibleJTreeNode`, `List.AccessibleAWTList`, `Menu.AccessibleAWTMenu`, `MenuBar.AccessibleAWTMenuBar`, `MenuComponent.AccessibleAWTMenuComponent`, `MenuItem.AccessibleAWTMenuItem`, `PopupMenu.AccessibleAWTPopupMenu`

---

public interface AccessibleSelection

This `AccessibleSelection` interface provides the standard mechanism
for an assistive technology to determine what the current selected children
are, as well as modify the selection set. Any object that has children that
can be selected should support the `AccessibleSelection` interface.
Applications can determine if an object supports the
`AccessibleSelection` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleSelection()`](AccessibleContext.md#getAccessibleSelection()) method. If the return value
is not `null`, the object supports this interface.

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleSelection()`](AccessibleContext.md#getAccessibleSelection())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified `Accessible` child of the object to the object's
  selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that no children in the object are
  selected.

  `Accessible`

  `getAccessibleSelection(int i)`

  Returns an `Accessible` representing the specified selected child
  of the object.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of `Accessible` children currently selected.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Determines if the current child of this object is selected.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified child of the object from the object's selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every child of the object to be selected if the object supports
  multiple selections.

* ## Method Details

  + ### getAccessibleSelectionCount

    int getAccessibleSelectionCount()

    Returns the number of `Accessible` children currently selected. If
    no children are selected, the return value will be 0.

    Returns:
    :   the number of items currently selected
  + ### getAccessibleSelection

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Returns an `Accessible` representing the specified selected child
    of the object. If there isn't a selection, or there are fewer children
    selected than the integer passed in, the return value will be
    `null`.

    Note that the index represents the i-th selected child, which is
    different from the i-th child.

    Parameters:
    :   `i` - the zero-based index of selected children

    Returns:
    :   the i-th selected child

    See Also:
    :   - [`getAccessibleSelectionCount()`](#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    boolean isAccessibleChildSelected(int i)

    Determines if the current child of this object is selected.

    Parameters:
    :   `i` - the zero-based index of the child in this `Accessible`
        object

    Returns:
    :   `true` if the current child of this object is selected;
        else `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    void addAccessibleSelection(int i)

    Adds the specified `Accessible` child of the object to the object's
    selection. If the object supports multiple selections, the specified
    child is added to any existing selection, otherwise it replaces any
    existing selection in the object. If the specified child is already
    selected, this method has no effect.

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](AccessibleContext.md#getAccessibleChild(int))
  + ### removeAccessibleSelection

    void removeAccessibleSelection(int i)

    Removes the specified child of the object from the object's selection. If
    the specified item isn't currently selected, this method has no effect.

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    void clearAccessibleSelection()

    Clears the selection in the object, so that no children in the object are
    selected.
  + ### selectAllAccessibleSelection

    void selectAllAccessibleSelection()

    Causes every child of the object to be selected if the object supports
    multiple selections.