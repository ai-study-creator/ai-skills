Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTree.TreeModelHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JTree.TreeModelHandler

All Implemented Interfaces:
:   `EventListener`, `TreeModelListener`

Enclosing class:
:   `JTree`

---

protected class JTree.TreeModelHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [TreeModelListener](event/TreeModelListener.md "interface in javax.swing.event")

Listens to the model and updates the `expandedState`
accordingly when nodes are removed, or changed.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TreeModelHandler()`

  Constructs a `TreeModelHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TreeModelHandler

    protected TreeModelHandler()

    Constructs a `TreeModelHandler`.
* ## Method Details

  + ### treeNodesChanged

    public void treeNodesChanged([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Description copied from interface: `TreeModelListener`

    Invoked after a node (or a set of siblings) has changed in some
    way. The node(s) have not changed locations in the tree or
    altered their children arrays, but other attributes have
    changed and may affect presentation. Example: the name of a
    file has changed, but it is in the same location in the file
    system.

    To indicate the root has changed, childIndices and children
    will be null.

    Use `e.getPath()` to get the parent of the changed node(s).
    `e.getChildIndices()` returns the index(es) of the changed node(s).

    Specified by:
    :   `treeNodesChanged` in interface `TreeModelListener`

    Parameters:
    :   `e` - a `TreeModelEvent` describing changes to a tree model
  + ### treeNodesInserted

    public void treeNodesInserted([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Description copied from interface: `TreeModelListener`

    Invoked after nodes have been inserted into the tree.

    Use `e.getPath()` to get the parent of the new node(s).
    `e.getChildIndices()` returns the index(es) of the new node(s)
    in ascending order.

    Specified by:
    :   `treeNodesInserted` in interface `TreeModelListener`

    Parameters:
    :   `e` - a `TreeModelEvent` describing changes to a tree model
  + ### treeStructureChanged

    public void treeStructureChanged([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Description copied from interface: `TreeModelListener`

    Invoked after the tree has drastically changed structure from a
    given node down. If the path returned by e.getPath() is of length
    one and the first element does not identify the current root node
    the first element should become the new root of the tree.

    Use `e.getPath()` to get the path to the node.
    `e.getChildIndices()` returns null.

    Specified by:
    :   `treeStructureChanged` in interface `TreeModelListener`

    Parameters:
    :   `e` - a `TreeModelEvent` describing changes to a tree model
  + ### treeNodesRemoved

    public void treeNodesRemoved([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Description copied from interface: `TreeModelListener`

    Invoked after nodes have been removed from the tree. Note that
    if a subtree is removed from the tree, this method may only be
    invoked once for the root of the removed subtree, not once for
    each individual set of siblings removed.

    Use `e.getPath()` to get the former parent of the deleted
    node(s). `e.getChildIndices()` returns, in ascending order, the
    index(es) the node(s) had before being deleted.

    Specified by:
    :   `treeNodesRemoved` in interface `TreeModelListener`

    Parameters:
    :   `e` - a `TreeModelEvent` describing changes to a tree model