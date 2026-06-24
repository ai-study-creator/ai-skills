Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class VariableHeightLayoutCache

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.tree.AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

javax.swing.tree.VariableHeightLayoutCache

All Implemented Interfaces:
:   `RowMapper`

---

public class VariableHeightLayoutCache
extends [AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

NOTE: This will become more open in a future release.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.tree.[AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

  `AbstractLayoutCache.NodeDimensions`
* ## Field Summary

  ### Fields inherited from class javax.swing.tree.[AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

  `nodeDimensions, rootVisible, rowHeight, treeModel, treeSelectionModel`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VariableHeightLayoutCache()`

  Constructs a `VariableHeightLayoutCache`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Rectangle`

  `getBounds(TreePath path,
  Rectangle placeIn)`

  Returns the `Rectangle` enclosing the label portion
  into which the item identified by `path` will be drawn.

  `boolean`

  `getExpandedState(TreePath path)`

  Returns true if the path is expanded, and visible.

  `TreePath`

  `getPathClosestTo(int x,
  int y)`

  Returns the path to the node that is closest to x,y.

  `TreePath`

  `getPathForRow(int row)`

  Returns the path for `row`.

  `int`

  `getPreferredHeight()`

  Returns the preferred height.

  `int`

  `getPreferredWidth(Rectangle bounds)`

  Returns the preferred width and height for the region in
  `visibleRegion`.

  `int`

  `getRowCount()`

  Returns the number of visible rows.

  `int`

  `getRowForPath(TreePath path)`

  Returns the row where the last item identified in path is visible.

  `int`

  `getVisibleChildCount(TreePath path)`

  Returns the number of visible children for `path`.

  `Enumeration<TreePath>`

  `getVisiblePathsFrom(TreePath path)`

  Returns an `Enumerator` that increments over the visible paths
  starting at the passed in location.

  `void`

  `invalidatePathBounds(TreePath path)`

  Instructs the `LayoutCache` that the bounds for
  `path` are invalid, and need to be updated.

  `void`

  `invalidateSizes()`

  Informs the `TreeState` that it needs to recalculate
  all the sizes it is referencing.

  `boolean`

  `isExpanded(TreePath path)`

  Returns true if the value identified by `path` is
  currently expanded.

  `void`

  `setExpandedState(TreePath path,
  boolean isExpanded)`

  Marks the path `path` expanded state to
  `isExpanded`.

  `void`

  `setModel(TreeModel newModel)`

  Sets the `TreeModel` that will provide the data.

  `void`

  `setNodeDimensions(AbstractLayoutCache.NodeDimensions nd)`

  Sets the renderer that is responsible for drawing nodes in the tree.

  `void`

  `setRootVisible(boolean rootVisible)`

  Determines whether or not the root node from
  the `TreeModel` is visible.

  `void`

  `setRowHeight(int rowHeight)`

  Sets the height of each cell.

  `void`

  `treeNodesChanged(TreeModelEvent e)`

  Invoked after a node (or a set of siblings) has changed in some
  way.

  `void`

  `treeNodesInserted(TreeModelEvent e)`

  Invoked after nodes have been inserted into the tree.

  `void`

  `treeNodesRemoved(TreeModelEvent e)`

  Invoked after nodes have been removed from the tree.

  `void`

  `treeStructureChanged(TreeModelEvent e)`

  Invoked after the tree has drastically changed structure from a
  given node down.

  ### Methods inherited from class javax.swing.tree.[AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

  `getModel, getNodeDimensions, getNodeDimensions, getRowHeight, getRowsForPaths, getSelectionModel, isFixedRowHeight, isRootVisible, setSelectionModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### VariableHeightLayoutCache

    public VariableHeightLayoutCache()

    Constructs a `VariableHeightLayoutCache`.
* ## Method Details

  + ### setModel

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="The TreeModel that will provide the data.")
    public void setModel([TreeModel](TreeModel.md "interface in javax.swing.tree") newModel)

    Sets the `TreeModel` that will provide the data.

    Overrides:
    :   `setModel` in class `AbstractLayoutCache`

    Parameters:
    :   `newModel` - the `TreeModel` that is to provide the data
  + ### setRootVisible

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="Whether or not the root node from the TreeModel is visible.")
    public void setRootVisible(boolean rootVisible)

    Determines whether or not the root node from
    the `TreeModel` is visible.

    Overrides:
    :   `setRootVisible` in class `AbstractLayoutCache`

    Parameters:
    :   `rootVisible` - true if the root node of the tree is to be displayed

    See Also:
    :   - [`AbstractLayoutCache.rootVisible`](AbstractLayoutCache.md#rootVisible)
  + ### setRowHeight

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="The height of each cell.")
    public void setRowHeight(int rowHeight)

    Sets the height of each cell. If the specified value
    is less than or equal to zero the current cell renderer is
    queried for each row's height.

    Overrides:
    :   `setRowHeight` in class `AbstractLayoutCache`

    Parameters:
    :   `rowHeight` - the height of each cell, in pixels
  + ### setNodeDimensions

    public void setNodeDimensions([AbstractLayoutCache.NodeDimensions](AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree") nd)

    Sets the renderer that is responsible for drawing nodes in the tree.

    Overrides:
    :   `setNodeDimensions` in class `AbstractLayoutCache`

    Parameters:
    :   `nd` - the renderer
  + ### setExpandedState

    public void setExpandedState([TreePath](TreePath.md "class in javax.swing.tree") path,
    boolean isExpanded)

    Marks the path `path` expanded state to
    `isExpanded`.

    Specified by:
    :   `setExpandedState` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the `TreePath` of interest
    :   `isExpanded` - true if the path should be expanded, otherwise false
  + ### getExpandedState

    public boolean getExpandedState([TreePath](TreePath.md "class in javax.swing.tree") path)

    Returns true if the path is expanded, and visible.

    Specified by:
    :   `getExpandedState` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the path being queried

    Returns:
    :   true if the path is expanded and visible, otherwise false
  + ### getBounds

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getBounds([TreePath](TreePath.md "class in javax.swing.tree") path,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") placeIn)

    Returns the `Rectangle` enclosing the label portion
    into which the item identified by `path` will be drawn.

    Specified by:
    :   `getBounds` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the path to be drawn
    :   `placeIn` - the bounds of the enclosing rectangle

    Returns:
    :   the bounds of the enclosing rectangle or `null`
        if the node could not be ascertained
  + ### getPathForRow

    public [TreePath](TreePath.md "class in javax.swing.tree") getPathForRow(int row)

    Returns the path for `row`. If `row`
    is not visible, `null` is returned.

    Specified by:
    :   `getPathForRow` in class `AbstractLayoutCache`

    Parameters:
    :   `row` - the location of interest

    Returns:
    :   the path for `row`, or `null`
        if `row` is not visible
  + ### getRowForPath

    public int getRowForPath([TreePath](TreePath.md "class in javax.swing.tree") path)

    Returns the row where the last item identified in path is visible.
    Will return -1 if any of the elements in path are not
    currently visible.

    Specified by:
    :   `getRowForPath` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the `TreePath` of interest

    Returns:
    :   the row where the last item in path is visible
  + ### getRowCount

    public int getRowCount()

    Returns the number of visible rows.

    Specified by:
    :   `getRowCount` in class `AbstractLayoutCache`

    Returns:
    :   the number of visible rows
  + ### invalidatePathBounds

    public void invalidatePathBounds([TreePath](TreePath.md "class in javax.swing.tree") path)

    Instructs the `LayoutCache` that the bounds for
    `path` are invalid, and need to be updated.

    Specified by:
    :   `invalidatePathBounds` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the `TreePath` which is now invalid
  + ### getPreferredHeight

    public int getPreferredHeight()

    Returns the preferred height.

    Overrides:
    :   `getPreferredHeight` in class `AbstractLayoutCache`

    Returns:
    :   the preferred height
  + ### getPreferredWidth

    public int getPreferredWidth([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") bounds)

    Returns the preferred width and height for the region in
    `visibleRegion`.

    Overrides:
    :   `getPreferredWidth` in class `AbstractLayoutCache`

    Parameters:
    :   `bounds` - the region being queried

    Returns:
    :   the preferred width for the passed in region
  + ### getPathClosestTo

    public [TreePath](TreePath.md "class in javax.swing.tree") getPathClosestTo(int x,
    int y)

    Returns the path to the node that is closest to x,y. If
    there is nothing currently visible this will return `null`,
    otherwise it will always return a valid path.
    If you need to test if the
    returned object is exactly at x, y you should get the bounds for
    the returned path and test x, y against that.

    Specified by:
    :   `getPathClosestTo` in class `AbstractLayoutCache`

    Parameters:
    :   `x` - the x-coordinate
    :   `y` - the y-coordinate

    Returns:
    :   the path to the node that is closest to x, y
  + ### getVisiblePathsFrom

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreePath](TreePath.md "class in javax.swing.tree")> getVisiblePathsFrom([TreePath](TreePath.md "class in javax.swing.tree") path)

    Returns an `Enumerator` that increments over the visible paths
    starting at the passed in location. The ordering of the enumeration
    is based on how the paths are displayed.

    Specified by:
    :   `getVisiblePathsFrom` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the location in the `TreePath` to start

    Returns:
    :   an `Enumerator` that increments over the visible
        paths
  + ### getVisibleChildCount

    public int getVisibleChildCount([TreePath](TreePath.md "class in javax.swing.tree") path)

    Returns the number of visible children for `path`.

    Specified by:
    :   `getVisibleChildCount` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - the path being queried

    Returns:
    :   the number of visible children for `path`
  + ### invalidateSizes

    public void invalidateSizes()

    Informs the `TreeState` that it needs to recalculate
    all the sizes it is referencing.

    Specified by:
    :   `invalidateSizes` in class `AbstractLayoutCache`
  + ### isExpanded

    public boolean isExpanded([TreePath](TreePath.md "class in javax.swing.tree") path)

    Returns true if the value identified by `path` is
    currently expanded.

    Specified by:
    :   `isExpanded` in class `AbstractLayoutCache`

    Parameters:
    :   `path` - TreePath to check

    Returns:
    :   true if the value identified by `path` is
        currently expanded
  + ### treeNodesChanged

    public void treeNodesChanged([TreeModelEvent](../event/TreeModelEvent.md "class in javax.swing.event") e)

    Invoked after a node (or a set of siblings) has changed in some
    way. The node(s) have not changed locations in the tree or
    altered their children arrays, but other attributes have
    changed and may affect presentation. Example: the name of a
    file has changed, but it is in the same location in the file
    system.

    `e.path` returns the path the parent of the
    changed node(s).

    `e.childIndices` returns the index(es) of the
    changed node(s).

    Specified by:
    :   `treeNodesChanged` in class `AbstractLayoutCache`

    Parameters:
    :   `e` - the `TreeModelEvent` of interest
  + ### treeNodesInserted

    public void treeNodesInserted([TreeModelEvent](../event/TreeModelEvent.md "class in javax.swing.event") e)

    Invoked after nodes have been inserted into the tree.

    `e.path` returns the parent of the new nodes.

    `e.childIndices` returns the indices of the new nodes in
    ascending order.

    Specified by:
    :   `treeNodesInserted` in class `AbstractLayoutCache`

    Parameters:
    :   `e` - the `TreeModelEvent` of interest
  + ### treeNodesRemoved

    public void treeNodesRemoved([TreeModelEvent](../event/TreeModelEvent.md "class in javax.swing.event") e)

    Invoked after nodes have been removed from the tree. Note that
    if a subtree is removed from the tree, this method may only be
    invoked once for the root of the removed subtree, not once for
    each individual set of siblings removed.

    `e.path` returns the former parent of the deleted nodes.

    `e.childIndices` returns the indices the nodes had
    before they were deleted in ascending order.

    Specified by:
    :   `treeNodesRemoved` in class `AbstractLayoutCache`

    Parameters:
    :   `e` - the `TreeModelEvent` of interest
  + ### treeStructureChanged

    public void treeStructureChanged([TreeModelEvent](../event/TreeModelEvent.md "class in javax.swing.event") e)

    Invoked after the tree has drastically changed structure from a
    given node down. If the path returned by `e.getPath`
    is of length one and the first element does not identify the
    current root node the first element should become the new root
    of the tree.

    `e.path` holds the path to the node.

    `e.childIndices` returns `null`.

    Specified by:
    :   `treeStructureChanged` in class `AbstractLayoutCache`

    Parameters:
    :   `e` - the `TreeModelEvent` of interest