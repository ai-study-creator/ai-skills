Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface TreeModel

All Known Implementing Classes:
:   `DefaultTreeModel`

---

public interface TreeModel

The model used by `JTree`.

`JTree` and its related classes make extensive use of
`TreePath`s for identifying nodes in the `TreeModel`.
If a `TreeModel` returns the same object, as compared by
`equals`, at two different indices under the same parent
then the resulting `TreePath` objects will be considered equal
as well. Some implementations may assume that if two
`TreePath`s are equal, they identify the same node. If this
condition is not met, painting problems and other oddities may result.
In other words, if `getChild` for a given parent returns
the same Object (as determined by `equals`) problems may
result, and it is recommended you avoid doing this.

Similarly `JTree` and its related classes place
`TreePath`s in `Map`s. As such if
a node is requested twice, the return values must be equal
(using the `equals` method) and have the same
`hashCode`.

For further information on tree models,
including an example of a custom implementation,
see [How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial.*

See Also:
:   * [`TreePath`](TreePath.md "class in javax.swing.tree")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTreeModelListener(TreeModelListener l)`

  Adds a listener for the `TreeModelEvent`
  posted after the tree changes.

  `Object`

  `getChild(Object parent,
  int index)`

  Returns the child of `parent` at index `index`
  in the parent's
  child array.

  `int`

  `getChildCount(Object parent)`

  Returns the number of children of `parent`.

  `int`

  `getIndexOfChild(Object parent,
  Object child)`

  Returns the index of child in parent.

  `Object`

  `getRoot()`

  Returns the root of the tree.

  `boolean`

  `isLeaf(Object node)`

  Returns `true` if `node` is a leaf.

  `void`

  `removeTreeModelListener(TreeModelListener l)`

  Removes a listener previously added with
  `addTreeModelListener`.

  `void`

  `valueForPathChanged(TreePath path,
  Object newValue)`

  Messaged when the user has altered the value for the item identified
  by `path` to `newValue`.

* ## Method Details

  + ### getRoot

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getRoot()

    Returns the root of the tree. Returns `null`
    only if the tree has no nodes.

    Returns:
    :   the root of the tree
  + ### getChild

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getChild([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent,
    int index)

    Returns the child of `parent` at index `index`
    in the parent's
    child array. `parent` must be a node previously obtained
    from this data source. This should not return `null`
    if `index`
    is a valid index for `parent` (that is `index >= 0 &&
    index < getChildCount(parent`)).

    Parameters:
    :   `parent` - a node in the tree, obtained from this data source
    :   `index` - index of child to be returned

    Returns:
    :   the child of `parent` at index `index`
  + ### getChildCount

    int getChildCount([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent)

    Returns the number of children of `parent`.
    Returns 0 if the node
    is a leaf or if it has no children. `parent` must be a node
    previously obtained from this data source.

    Parameters:
    :   `parent` - a node in the tree, obtained from this data source

    Returns:
    :   the number of children of the node `parent`
  + ### isLeaf

    boolean isLeaf([Object](../../../../java.base/java/lang/Object.md "class in java.lang") node)

    Returns `true` if `node` is a leaf.
    It is possible for this method to return `false`
    even if `node` has no children.
    A directory in a filesystem, for example,
    may contain no files; the node representing
    the directory is not a leaf, but it also has no children.

    Parameters:
    :   `node` - a node in the tree, obtained from this data source

    Returns:
    :   true if `node` is a leaf
  + ### valueForPathChanged

    void valueForPathChanged([TreePath](TreePath.md "class in javax.swing.tree") path,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Messaged when the user has altered the value for the item identified
    by `path` to `newValue`.
    If `newValue` signifies a truly new value
    the model should post a `treeNodesChanged` event.

    Parameters:
    :   `path` - path to the node that the user has altered
    :   `newValue` - the new value from the TreeCellEditor
  + ### getIndexOfChild

    int getIndexOfChild([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") child)

    Returns the index of child in parent. If either `parent`
    or `child` is `null`, returns -1.
    If either `parent` or `child` don't
    belong to this tree model, returns -1.

    Parameters:
    :   `parent` - a node in the tree, obtained from this data source
    :   `child` - the node we are interested in

    Returns:
    :   the index of the child in the parent, or -1 if either
        `child` or `parent` are `null`
        or don't belong to this tree model
  + ### addTreeModelListener

    void addTreeModelListener([TreeModelListener](../event/TreeModelListener.md "interface in javax.swing.event") l)

    Adds a listener for the `TreeModelEvent`
    posted after the tree changes.

    Parameters:
    :   `l` - the listener to add

    See Also:
    :   - [`removeTreeModelListener(javax.swing.event.TreeModelListener)`](#removeTreeModelListener(javax.swing.event.TreeModelListener))
  + ### removeTreeModelListener

    void removeTreeModelListener([TreeModelListener](../event/TreeModelListener.md "interface in javax.swing.event") l)

    Removes a listener previously added with
    `addTreeModelListener`.

    Parameters:
    :   `l` - the listener to remove

    See Also:
    :   - [`addTreeModelListener(javax.swing.event.TreeModelListener)`](#addTreeModelListener(javax.swing.event.TreeModelListener))