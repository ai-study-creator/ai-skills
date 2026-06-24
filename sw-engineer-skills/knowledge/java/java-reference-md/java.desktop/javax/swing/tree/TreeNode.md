Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface TreeNode

All Known Subinterfaces:
:   `MutableTreeNode`

All Known Implementing Classes:
:   `AbstractDocument.AbstractElement`, `AbstractDocument.BranchElement`, `AbstractDocument.LeafElement`, `DefaultMutableTreeNode`, `DefaultStyledDocument.SectionElement`, `HTMLDocument.BlockElement`, `HTMLDocument.RunElement`, `JTree.DynamicUtilTreeNode`

---

public interface TreeNode

Defines the requirements for an object that can be used as a
tree node in a JTree.

Implementations of `TreeNode` that override `equals`
will typically need to override `hashCode` as well. Refer
to [`TreeModel`](TreeModel.md "interface in javax.swing.tree") for more information.
For further information and examples of using tree nodes,
see [How to Use Tree Nodes](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial.*

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Enumeration<? extends TreeNode>`

  `children()`

  Returns the children of the receiver as an `Enumeration`.

  `boolean`

  `getAllowsChildren()`

  Returns true if the receiver allows children.

  `TreeNode`

  `getChildAt(int childIndex)`

  Returns the child `TreeNode` at index
  `childIndex`.

  `int`

  `getChildCount()`

  Returns the number of children `TreeNode`s the receiver
  contains.

  `int`

  `getIndex(TreeNode node)`

  Returns the index of `node` in the receivers children.

  `TreeNode`

  `getParent()`

  Returns the parent `TreeNode` of the receiver.

  `boolean`

  `isLeaf()`

  Returns true if the receiver is a leaf.

* ## Method Details

  + ### getChildAt

    [TreeNode](TreeNode.md "interface in javax.swing.tree") getChildAt(int childIndex)

    Returns the child `TreeNode` at index
    `childIndex`.

    Parameters:
    :   `childIndex` - index of child

    Returns:
    :   the child node at given index
  + ### getChildCount

    int getChildCount()

    Returns the number of children `TreeNode`s the receiver
    contains.

    Returns:
    :   the number of children the receiver contains
  + ### getParent

    [TreeNode](TreeNode.md "interface in javax.swing.tree") getParent()

    Returns the parent `TreeNode` of the receiver.

    Returns:
    :   the parent of the receiver
  + ### getIndex

    int getIndex([TreeNode](TreeNode.md "interface in javax.swing.tree") node)

    Returns the index of `node` in the receivers children.
    If the receiver does not contain `node`, -1 will be
    returned.

    Parameters:
    :   `node` - node to be loked for

    Returns:
    :   index of specified node
  + ### getAllowsChildren

    boolean getAllowsChildren()

    Returns true if the receiver allows children.

    Returns:
    :   whether the receiver allows children
  + ### isLeaf

    boolean isLeaf()

    Returns true if the receiver is a leaf.

    Returns:
    :   whether the receiver is a leaf
  + ### children

    [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<? extends [TreeNode](TreeNode.md "interface in javax.swing.tree")> children()

    Returns the children of the receiver as an `Enumeration`.

    Returns:
    :   the children of the receiver as an `Enumeration`