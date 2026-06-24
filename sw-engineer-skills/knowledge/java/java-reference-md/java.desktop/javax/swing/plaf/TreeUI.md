Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class TreeUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.TreeUI

Direct Known Subclasses:
:   `BasicTreeUI`, `MultiTreeUI`

---

public abstract class TreeUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JTree.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TreeUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `cancelEditing(JTree tree)`

  Cancels the current editing session.

  `abstract TreePath`

  `getClosestPathForLocation(JTree tree,
  int x,
  int y)`

  Returns the path to the node that is closest to x,y.

  `abstract TreePath`

  `getEditingPath(JTree tree)`

  Returns the path to the element that is being edited.

  `abstract Rectangle`

  `getPathBounds(JTree tree,
  TreePath path)`

  Returns the Rectangle enclosing the label portion that the
  last item in path will be drawn into.

  `abstract TreePath`

  `getPathForRow(JTree tree,
  int row)`

  Returns the path for passed in row.

  `abstract int`

  `getRowCount(JTree tree)`

  Returns the number of rows that are being displayed.

  `abstract int`

  `getRowForPath(JTree tree,
  TreePath path)`

  Returns the row that the last item identified in path is visible
  at.

  `abstract boolean`

  `isEditing(JTree tree)`

  Returns true if the tree is being edited.

  `abstract void`

  `startEditingAtPath(JTree tree,
  TreePath path)`

  Selects the last item in path and tries to edit it.

  `abstract boolean`

  `stopEditing(JTree tree)`

  Stops the current editing session.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TreeUI

    protected TreeUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### getPathBounds

    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getPathBounds([JTree](../JTree.md "class in javax.swing") tree,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") path)

    Returns the Rectangle enclosing the label portion that the
    last item in path will be drawn into. Will return null if
    any component in path is currently invalid.

    Parameters:
    :   `tree` - the `JTree` for `path`
    :   `path` - the `TreePath` identifying the node

    Returns:
    :   the `Rectangle` enclosing the label portion that the
        last item in path will be drawn into, `null` if any
        component in path is currently valid.
  + ### getPathForRow

    public abstract [TreePath](../tree/TreePath.md "class in javax.swing.tree") getPathForRow([JTree](../JTree.md "class in javax.swing") tree,
    int row)

    Returns the path for passed in row. If row is not visible
    null is returned.

    Parameters:
    :   `tree` - a `JTree` object
    :   `row` - an integer specifying a row

    Returns:
    :   the `path` for `row` or `null` if `row`
        is not visible
  + ### getRowForPath

    public abstract int getRowForPath([JTree](../JTree.md "class in javax.swing") tree,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") path)

    Returns the row that the last item identified in path is visible
    at. Will return -1 if any of the elements in path are not
    currently visible.

    Parameters:
    :   `tree` - the `JTree` for `path`
    :   `path` - the `TreePath` object to look in

    Returns:
    :   an integer specifying the row at which the last item
        identified is visible, -1 if any of the elements in
        `path` are not currently visible
  + ### getRowCount

    public abstract int getRowCount([JTree](../JTree.md "class in javax.swing") tree)

    Returns the number of rows that are being displayed.

    Parameters:
    :   `tree` - the `JTree` for which to count rows

    Returns:
    :   an integer specifying the number of row being displayed
  + ### getClosestPathForLocation

    public abstract [TreePath](../tree/TreePath.md "class in javax.swing.tree") getClosestPathForLocation([JTree](../JTree.md "class in javax.swing") tree,
    int x,
    int y)

    Returns the path to the node that is closest to x,y. If
    there is nothing currently visible this will return null, otherwise
    it'll always return a valid path. If you need to test if the
    returned object is exactly at x, y you should get the bounds for
    the returned path and test x, y against that.

    Parameters:
    :   `tree` - a `JTree` object
    :   `x` - an integer giving the number of pixels horizontally from the
        left edge of the display area
    :   `y` - an integer giving the number of pixels vertically from the top
        of the display area, minus any top margin

    Returns:
    :   the `TreePath` node closest to `x,y` or `null`
        if there is nothing currently visible
  + ### isEditing

    public abstract boolean isEditing([JTree](../JTree.md "class in javax.swing") tree)

    Returns true if the tree is being edited. The item that is being
    edited can be returned by getEditingPath().

    Parameters:
    :   `tree` - a `JTree` object

    Returns:
    :   true if `tree` is being edited
  + ### stopEditing

    public abstract boolean stopEditing([JTree](../JTree.md "class in javax.swing") tree)

    Stops the current editing session. This has no effect if the
    tree isn't being edited. Returns true if the editor allows the
    editing session to stop.

    Parameters:
    :   `tree` - a `JTree` object

    Returns:
    :   true if the editor allows the editing session to stop
  + ### cancelEditing

    public abstract void cancelEditing([JTree](../JTree.md "class in javax.swing") tree)

    Cancels the current editing session. This has no effect if the
    tree isn't being edited.

    Parameters:
    :   `tree` - a `JTree` object
  + ### startEditingAtPath

    public abstract void startEditingAtPath([JTree](../JTree.md "class in javax.swing") tree,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") path)

    Selects the last item in path and tries to edit it. Editing will
    fail if the CellEditor won't allow it for the selected item.

    Parameters:
    :   `tree` - the `JTree` being edited
    :   `path` - the `TreePath` to be edited
  + ### getEditingPath

    public abstract [TreePath](../tree/TreePath.md "class in javax.swing.tree") getEditingPath([JTree](../JTree.md "class in javax.swing") tree)

    Returns the path to the element that is being edited.

    Parameters:
    :   `tree` - the `JTree` for which to return a path

    Returns:
    :   a `TreePath` containing the path to `tree`