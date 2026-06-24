Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface MutableTreeNode

All Superinterfaces:
:   `TreeNode`

All Known Implementing Classes:
:   `DefaultMutableTreeNode`, `JTree.DynamicUtilTreeNode`

---

public interface MutableTreeNode
extends [TreeNode](TreeNode.md "interface in javax.swing.tree")

Defines the requirements for a tree node object that can change --
by adding or removing child nodes, or by changing the contents
of a user object stored in the node.

See Also:
:   * [`DefaultMutableTreeNode`](DefaultMutableTreeNode.md "class in javax.swing.tree")
    * [`JTree`](../JTree.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `insert(MutableTreeNode child,
  int index)`

  Adds `child` to the receiver at `index`.

  `void`

  `remove(int index)`

  Removes the child at `index` from the receiver.

  `void`

  `remove(MutableTreeNode node)`

  Removes `node` from the receiver.

  `void`

  `removeFromParent()`

  Removes the receiver from its parent.

  `void`

  `setParent(MutableTreeNode newParent)`

  Sets the parent of the receiver to `newParent`.

  `void`

  `setUserObject(Object object)`

  Resets the user object of the receiver to `object`.

  ### Methods inherited from interface javax.swing.tree.[TreeNode](TreeNode.md "interface in javax.swing.tree")

  `children, getAllowsChildren, getChildAt, getChildCount, getIndex, getParent, isLeaf`

* ## Method Details

  + ### insert

    void insert([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") child,
    int index)

    Adds `child` to the receiver at `index`.
    `child` will be messaged with `setParent`.

    Parameters:
    :   `child` - node to be added
    :   `index` - index of the receiver
  + ### remove

    void remove(int index)

    Removes the child at `index` from the receiver.

    Parameters:
    :   `index` - index of child to be removed
  + ### remove

    void remove([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") node)

    Removes `node` from the receiver. `setParent`
    will be messaged on `node`.

    Parameters:
    :   `node` - node to be removed from the receiver
  + ### setUserObject

    void setUserObject([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Resets the user object of the receiver to `object`.

    Parameters:
    :   `object` - object to be set as a receiver
  + ### removeFromParent

    void removeFromParent()

    Removes the receiver from its parent.
  + ### setParent

    void setParent([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") newParent)

    Sets the parent of the receiver to `newParent`.

    Parameters:
    :   `newParent` - node to be set as parent of the receiver