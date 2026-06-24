Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTree.DynamicUtilTreeNode

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.tree.DefaultMutableTreeNode](tree/DefaultMutableTreeNode.md "class in javax.swing.tree")

javax.swing.JTree.DynamicUtilTreeNode

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `MutableTreeNode`, `TreeNode`

Enclosing class:
:   `JTree`

---

public static class JTree.DynamicUtilTreeNode
extends [DefaultMutableTreeNode](tree/DefaultMutableTreeNode.md "class in javax.swing.tree")

`DynamicUtilTreeNode` can wrap
vectors/hashtables/arrays/strings and
create the appropriate children tree nodes as necessary. It is
dynamic in that it will only create the children as necessary.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Object`

  `childValue`

  Value to create children with.

  `protected boolean`

  `hasChildren`

  Does the this `JTree` have children?
  This property is currently not implemented.

  `protected boolean`

  `loadedChildren`

  Have the children been loaded yet?

  ### Fields inherited from class javax.swing.tree.[DefaultMutableTreeNode](tree/DefaultMutableTreeNode.md "class in javax.swing.tree")

  `allowsChildren, children, EMPTY_ENUMERATION, parent, userObject`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DynamicUtilTreeNode(Object value,
  Object children)`

  Creates a node with the specified object as its value and
  with the specified children.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Enumeration<TreeNode>`

  `children()`

  Subclassed to load the children, if necessary.

  `static void`

  `createChildren(DefaultMutableTreeNode parent,
  Object children)`

  Adds to parent all the children in `children`.

  `TreeNode`

  `getChildAt(int index)`

  Subclassed to load the children, if necessary.

  `int`

  `getChildCount()`

  Returns the number of child nodes.

  `boolean`

  `isLeaf()`

  Returns true if this node allows children.

  `protected void`

  `loadChildren()`

  Loads the children based on `childValue`.

  ### Methods inherited from class javax.swing.tree.[DefaultMutableTreeNode](tree/DefaultMutableTreeNode.md "class in javax.swing.tree")

  `add, breadthFirstEnumeration, clone, depthFirstEnumeration, getAllowsChildren, getChildAfter, getChildBefore, getDepth, getFirstChild, getFirstLeaf, getIndex, getLastChild, getLastLeaf, getLeafCount, getLevel, getNextLeaf, getNextNode, getNextSibling, getParent, getPath, getPathToRoot, getPreviousLeaf, getPreviousNode, getPreviousSibling, getRoot, getSharedAncestor, getSiblingCount, getUserObject, getUserObjectPath, insert, isNodeAncestor, isNodeChild, isNodeDescendant, isNodeRelated, isNodeSibling, isRoot, pathFromAncestorEnumeration, postorderEnumeration, preorderEnumeration, remove, remove, removeAllChildren, removeFromParent, setAllowsChildren, setParent, setUserObject, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### hasChildren

    protected boolean hasChildren

    Does the this `JTree` have children?
    This property is currently not implemented.
  + ### childValue

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") childValue

    Value to create children with.
  + ### loadedChildren

    protected boolean loadedChildren

    Have the children been loaded yet?
* ## Constructor Details

  + ### DynamicUtilTreeNode

    public DynamicUtilTreeNode([Object](../../../java.base/java/lang/Object.md "class in java.lang") value,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") children)

    Creates a node with the specified object as its value and
    with the specified children. For the node to allow children,
    the children-object must be an array of objects, a
    `Vector`, or a `Hashtable` -- even
    if empty. Otherwise, the node is not
    allowed to have children.

    Parameters:
    :   `value` - the `Object` that is the value for the
        new node
    :   `children` - an array of `Object`s, a
        `Vector`, or a `Hashtable`
        used to create the child nodes; if any other
        object is specified, or if the value is
        `null`,
        then the node is not allowed to have children
* ## Method Details

  + ### createChildren

    public static void createChildren([DefaultMutableTreeNode](tree/DefaultMutableTreeNode.md "class in javax.swing.tree") parent,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") children)

    Adds to parent all the children in `children`.
    If `children` is an array or vector all of its
    elements are added is children, otherwise if `children`
    is a hashtable all the key/value pairs are added in the order
    `Enumeration` returns them.

    Parameters:
    :   `parent` - the parent node
    :   `children` - the children
  + ### isLeaf

    public boolean isLeaf()

    Returns true if this node allows children. Whether the node
    allows children depends on how it was created.

    Specified by:
    :   `isLeaf` in interface `TreeNode`

    Overrides:
    :   `isLeaf` in class `DefaultMutableTreeNode`

    Returns:
    :   true if this node allows children, false otherwise

    See Also:
    :   - [`JTree.DynamicUtilTreeNode`](JTree.DynamicUtilTreeNode.md "class in javax.swing")
  + ### getChildCount

    public int getChildCount()

    Returns the number of child nodes.

    Specified by:
    :   `getChildCount` in interface `TreeNode`

    Overrides:
    :   `getChildCount` in class `DefaultMutableTreeNode`

    Returns:
    :   the number of child nodes
  + ### loadChildren

    protected void loadChildren()

    Loads the children based on `childValue`.
    If `childValue` is a `Vector`
    or array each element is added as a child,
    if `childValue` is a `Hashtable`
    each key/value pair is added in the order that
    `Enumeration` returns the keys.
  + ### getChildAt

    public [TreeNode](tree/TreeNode.md "interface in javax.swing.tree") getChildAt(int index)

    Subclassed to load the children, if necessary.

    Specified by:
    :   `getChildAt` in interface `TreeNode`

    Overrides:
    :   `getChildAt` in class `DefaultMutableTreeNode`

    Parameters:
    :   `index` - an index into this node's child array

    Returns:
    :   the TreeNode in this node's child array at the specified index
  + ### children

    public [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](tree/TreeNode.md "interface in javax.swing.tree")> children()

    Subclassed to load the children, if necessary.

    Specified by:
    :   `children` in interface `TreeNode`

    Overrides:
    :   `children` in class `DefaultMutableTreeNode`

    Returns:
    :   an Enumeration of this node's children