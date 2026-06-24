Module [java.desktop](../../../module-summary.md)

# Package javax.swing.tree

---

package javax.swing.tree

Provides classes and interfaces for dealing with `javax.swing.JTree`.
You use these classes and interfaces if you want control over how trees are
constructed, updated, and rendered, as well as how data associated with the
tree nodes are viewed and managed.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

For overviews, tutorials, examples, guides, and tool documentation,
please see:

* [How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree")

  **Warning:**
  Serialized objects of this class will not be compatible with
  future Swing releases.

  [AbstractLayoutCache.NodeDimensions](AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree")

  Used by `AbstractLayoutCache` to determine the size
  and x origin of a particular node.

  [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree")

  A `DefaultMutableTreeNode` is a general-purpose node in a tree data
  structure.

  [DefaultTreeCellEditor](DefaultTreeCellEditor.md "class in javax.swing.tree")

  A `TreeCellEditor`.

  [DefaultTreeCellRenderer](DefaultTreeCellRenderer.md "class in javax.swing.tree")

  Displays an entry in a tree.

  [DefaultTreeModel](DefaultTreeModel.md "class in javax.swing.tree")

  A simple tree data model that uses TreeNodes.

  [DefaultTreeSelectionModel](DefaultTreeSelectionModel.md "class in javax.swing.tree")

  Default implementation of TreeSelectionModel.

  [ExpandVetoException](ExpandVetoException.md "class in javax.swing.tree")

  Exception used to stop an expand/collapse from happening.

  [FixedHeightLayoutCache](FixedHeightLayoutCache.md "class in javax.swing.tree")

  NOTE: This will become more open in a future release.

  [MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree")

  Defines the requirements for a tree node object that can change --
  by adding or removing child nodes, or by changing the contents
  of a user object stored in the node.

  [RowMapper](RowMapper.md "interface in javax.swing.tree")

  Defines the requirements for an object that translates paths in
  the tree into display rows.

  [TreeCellEditor](TreeCellEditor.md "interface in javax.swing.tree")

  Adds to CellEditor the extensions necessary to configure an editor
  in a tree.

  [TreeCellRenderer](TreeCellRenderer.md "interface in javax.swing.tree")

  Defines the requirements for an object that displays a tree node.

  [TreeModel](TreeModel.md "interface in javax.swing.tree")

  The model used by `JTree`.

  [TreeNode](TreeNode.md "interface in javax.swing.tree")

  Defines the requirements for an object that can be used as a
  tree node in a JTree.

  [TreePath](TreePath.md "class in javax.swing.tree")

  `TreePath` represents an array of objects that uniquely
  identify the path to a node in a tree.

  [TreeSelectionModel](TreeSelectionModel.md "interface in javax.swing.tree")

  This interface represents the current state of the selection for
  the tree component.

  [VariableHeightLayoutCache](VariableHeightLayoutCache.md "class in javax.swing.tree")

  NOTE: This will become more open in a future release.