Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class DefaultMutableTreeNode

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.tree.DefaultMutableTreeNode

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `MutableTreeNode`, `TreeNode`

Direct Known Subclasses:
:   `JTree.DynamicUtilTreeNode`

---

public class DefaultMutableTreeNode
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A `DefaultMutableTreeNode` is a general-purpose node in a tree data
structure.
For examples of using default mutable tree nodes, see
[How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial.*

A tree node may have at most one parent and 0 or more children.
`DefaultMutableTreeNode` provides operations for examining and modifying a
node's parent and children and also operations for examining the tree that
the node is a part of. A node's tree is the set of all nodes that can be
reached by starting at the node and following all the possible links to
parents and children. A node with no parent is the root of its tree; a
node with no children is a leaf. A tree may consist of many subtrees,
each node acting as the root for its own subtree.

This class provides enumerations for efficiently traversing a tree or
subtree in various orders or for following the path between two nodes.
A `DefaultMutableTreeNode` may also hold a reference to a user object, the
use of which is left to the user. Asking a `DefaultMutableTreeNode` for its
string representation with `toString()` returns the string
representation of its user object.

**This is not a thread safe class.**If you intend to use
a DefaultMutableTreeNode (or a tree of TreeNodes) in more than one thread, you
need to do your own synchronizing. A good convention to adopt is
synchronizing on the root node of a tree.

While DefaultMutableTreeNode implements the MutableTreeNode interface and
will allow you to add in any implementation of MutableTreeNode not all
of the methods in DefaultMutableTreeNode will be applicable to all
MutableTreeNodes implementations. Especially with some of the enumerations
that are provided, using some of these methods assumes the
DefaultMutableTreeNode contains only DefaultMutableNode instances. All
of the TreeNode/MutableTreeNode methods will behave as defined no
matter what implementations are added.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`MutableTreeNode`](MutableTreeNode.md "interface in javax.swing.tree")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `allowsChildren`

  true if the node is able to have children

  `protected Vector<TreeNode>`

  `children`

  array of children, may be null if this node has no children

  `static final Enumeration<TreeNode>`

  `EMPTY_ENUMERATION`

  An enumeration that is always empty.

  `protected MutableTreeNode`

  `parent`

  this node's parent, or null if this node has no parent

  `protected Object`

  `userObject`

  optional user object
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultMutableTreeNode()`

  Creates a tree node that has no parent and no children, but which
  allows children.

  `DefaultMutableTreeNode(Object userObject)`

  Creates a tree node with no parent, no children, but which allows
  children, and initializes it with the specified user object.

  `DefaultMutableTreeNode(Object userObject,
  boolean allowsChildren)`

  Creates a tree node with no parent, no children, initialized with
  the specified user object, and that allows children only if
  specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(MutableTreeNode newChild)`

  Removes `newChild` from its parent and makes it a child of
  this node by adding it to the end of this node's child array.

  `Enumeration<TreeNode>`

  `breadthFirstEnumeration()`

  Creates and returns an enumeration that traverses the subtree rooted at
  this node in breadth-first order.

  `Enumeration<TreeNode>`

  `children()`

  Creates and returns a forward-order enumeration of this node's
  children.

  `Object`

  `clone()`

  Overridden to make clone public.

  `Enumeration<TreeNode>`

  `depthFirstEnumeration()`

  Creates and returns an enumeration that traverses the subtree rooted at
  this node in depth-first order.

  `boolean`

  `getAllowsChildren()`

  Returns true if this node is allowed to have children.

  `TreeNode`

  `getChildAfter(TreeNode aChild)`

  Returns the child in this node's child array that immediately
  follows `aChild`, which must be a child of this node.

  `TreeNode`

  `getChildAt(int index)`

  Returns the child at the specified index in this node's child array.

  `TreeNode`

  `getChildBefore(TreeNode aChild)`

  Returns the child in this node's child array that immediately
  precedes `aChild`, which must be a child of this node.

  `int`

  `getChildCount()`

  Returns the number of children of this node.

  `int`

  `getDepth()`

  Returns the depth of the tree rooted at this node -- the longest
  distance from this node to a leaf.

  `TreeNode`

  `getFirstChild()`

  Returns this node's first child.

  `DefaultMutableTreeNode`

  `getFirstLeaf()`

  Finds and returns the first leaf that is a descendant of this node --
  either this node or its first child's first leaf.

  `int`

  `getIndex(TreeNode aChild)`

  Returns the index of the specified child in this node's child array.

  `TreeNode`

  `getLastChild()`

  Returns this node's last child.

  `DefaultMutableTreeNode`

  `getLastLeaf()`

  Finds and returns the last leaf that is a descendant of this node --
  either this node or its last child's last leaf.

  `int`

  `getLeafCount()`

  Returns the total number of leaves that are descendants of this node.

  `int`

  `getLevel()`

  Returns the number of levels above this node -- the distance from
  the root to this node.

  `DefaultMutableTreeNode`

  `getNextLeaf()`

  Returns the leaf after this node or null if this node is the
  last leaf in the tree.

  `DefaultMutableTreeNode`

  `getNextNode()`

  Returns the node that follows this node in a preorder traversal of this
  node's tree.

  `DefaultMutableTreeNode`

  `getNextSibling()`

  Returns the next sibling of this node in the parent's children array.

  `TreeNode`

  `getParent()`

  Returns this node's parent or null if this node has no parent.

  `TreeNode[]`

  `getPath()`

  Returns the path from the root, to get to this node.

  `protected TreeNode[]`

  `getPathToRoot(TreeNode aNode,
  int depth)`

  Builds the parents of node up to and including the root node,
  where the original node is the last element in the returned array.

  `DefaultMutableTreeNode`

  `getPreviousLeaf()`

  Returns the leaf before this node or null if this node is the
  first leaf in the tree.

  `DefaultMutableTreeNode`

  `getPreviousNode()`

  Returns the node that precedes this node in a preorder traversal of
  this node's tree.

  `DefaultMutableTreeNode`

  `getPreviousSibling()`

  Returns the previous sibling of this node in the parent's children
  array.

  `TreeNode`

  `getRoot()`

  Returns the root of the tree that contains this node.

  `TreeNode`

  `getSharedAncestor(DefaultMutableTreeNode aNode)`

  Returns the nearest common ancestor to this node and `aNode`.

  `int`

  `getSiblingCount()`

  Returns the number of siblings of this node.

  `Object`

  `getUserObject()`

  Returns this node's user object.

  `Object[]`

  `getUserObjectPath()`

  Returns the user object path, from the root, to get to this node.

  `void`

  `insert(MutableTreeNode newChild,
  int childIndex)`

  Removes `newChild` from its present parent (if it has a
  parent), sets the child's parent to this node, and then adds the child
  to this node's child array at index `childIndex`.

  `boolean`

  `isLeaf()`

  Returns true if this node has no children.

  `boolean`

  `isNodeAncestor(TreeNode anotherNode)`

  Returns true if `anotherNode` is an ancestor of this node
  -- if it is this node, this node's parent, or an ancestor of this
  node's parent.

  `boolean`

  `isNodeChild(TreeNode aNode)`

  Returns true if `aNode` is a child of this node.

  `boolean`

  `isNodeDescendant(DefaultMutableTreeNode anotherNode)`

  Returns true if `anotherNode` is a descendant of this node
  -- if it is this node, one of this node's children, or a descendant of
  one of this node's children.

  `boolean`

  `isNodeRelated(DefaultMutableTreeNode aNode)`

  Returns true if and only if `aNode` is in the same tree
  as this node.

  `boolean`

  `isNodeSibling(TreeNode anotherNode)`

  Returns true if `anotherNode` is a sibling of (has the
  same parent as) this node.

  `boolean`

  `isRoot()`

  Returns true if this node is the root of the tree.

  `Enumeration<TreeNode>`

  `pathFromAncestorEnumeration(TreeNode ancestor)`

  Creates and returns an enumeration that follows the path from
  `ancestor` to this node.

  `Enumeration<TreeNode>`

  `postorderEnumeration()`

  Creates and returns an enumeration that traverses the subtree rooted at
  this node in postorder.

  `Enumeration<TreeNode>`

  `preorderEnumeration()`

  Creates and returns an enumeration that traverses the subtree rooted at
  this node in preorder.

  `void`

  `remove(int childIndex)`

  Removes the child at the specified index from this node's children
  and sets that node's parent to null.

  `void`

  `remove(MutableTreeNode aChild)`

  Removes `aChild` from this node's child array, giving it a
  null parent.

  `void`

  `removeAllChildren()`

  Removes all of this node's children, setting their parents to null.

  `void`

  `removeFromParent()`

  Removes the subtree rooted at this node from the tree, giving this
  node a null parent.

  `void`

  `setAllowsChildren(boolean allows)`

  Determines whether or not this node is allowed to have children.

  `void`

  `setParent(MutableTreeNode newParent)`

  Sets this node's parent to `newParent` but does not
  change the parent's child array.

  `void`

  `setUserObject(Object userObject)`

  Sets the user object for this node to `userObject`.

  `String`

  `toString()`

  Returns the result of sending `toString()` to this node's
  user object, or the empty string if the node has no user object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### EMPTY\_ENUMERATION

    public static final [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> EMPTY\_ENUMERATION

    An enumeration that is always empty. This is used when an enumeration
    of a leaf node's children is requested.
  + ### parent

    protected [MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") parent

    this node's parent, or null if this node has no parent
  + ### children

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> children

    array of children, may be null if this node has no children
  + ### userObject

    protected transient [Object](../../../../java.base/java/lang/Object.md "class in java.lang") userObject

    optional user object
  + ### allowsChildren

    protected boolean allowsChildren

    true if the node is able to have children
* ## Constructor Details

  + ### DefaultMutableTreeNode

    public DefaultMutableTreeNode()

    Creates a tree node that has no parent and no children, but which
    allows children.
  + ### DefaultMutableTreeNode

    public DefaultMutableTreeNode([Object](../../../../java.base/java/lang/Object.md "class in java.lang") userObject)

    Creates a tree node with no parent, no children, but which allows
    children, and initializes it with the specified user object.

    Parameters:
    :   `userObject` - an Object provided by the user that constitutes
        the node's data
  + ### DefaultMutableTreeNode

    public DefaultMutableTreeNode([Object](../../../../java.base/java/lang/Object.md "class in java.lang") userObject,
    boolean allowsChildren)

    Creates a tree node with no parent, no children, initialized with
    the specified user object, and that allows children only if
    specified.

    Parameters:
    :   `userObject` - an Object provided by the user that constitutes
        the node's data
    :   `allowsChildren` - if true, the node is allowed to have child
        nodes -- otherwise, it is always a leaf node
* ## Method Details

  + ### insert

    public void insert([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") newChild,
    int childIndex)

    Removes `newChild` from its present parent (if it has a
    parent), sets the child's parent to this node, and then adds the child
    to this node's child array at index `childIndex`.
    `newChild` must not be null and must not be an ancestor of
    this node.

    Specified by:
    :   `insert` in interface `MutableTreeNode`

    Parameters:
    :   `newChild` - the MutableTreeNode to insert under this node
    :   `childIndex` - the index in this node's child array
        where this node is to be inserted

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if
        `childIndex` is out of bounds
    :   `IllegalArgumentException` - if
        `newChild` is null or is an
        ancestor of this node
    :   `IllegalStateException` - if this node does not allow
        children

    See Also:
    :   - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
  + ### remove

    public void remove(int childIndex)

    Removes the child at the specified index from this node's children
    and sets that node's parent to null. The child node to remove
    must be a `MutableTreeNode`.

    Specified by:
    :   `remove` in interface `MutableTreeNode`

    Parameters:
    :   `childIndex` - the index in this node's child array
        of the child to remove

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if
        `childIndex` is out of bounds
  + ### setParent

    public void setParent([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") newParent)

    Sets this node's parent to `newParent` but does not
    change the parent's child array. This method is called from
    `insert()` and `remove()` to
    reassign a child's parent, it should not be messaged from anywhere
    else.

    Specified by:
    :   `setParent` in interface `MutableTreeNode`

    Parameters:
    :   `newParent` - this node's new parent
  + ### getParent

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getParent()

    Returns this node's parent or null if this node has no parent.

    Specified by:
    :   `getParent` in interface `TreeNode`

    Returns:
    :   this node's parent TreeNode, or null if this node has no parent
  + ### getChildAt

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getChildAt(int index)

    Returns the child at the specified index in this node's child array.

    Specified by:
    :   `getChildAt` in interface `TreeNode`

    Parameters:
    :   `index` - an index into this node's child array

    Returns:
    :   the TreeNode in this node's child array at the specified index

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is out of bounds
  + ### getChildCount

    public int getChildCount()

    Returns the number of children of this node.

    Specified by:
    :   `getChildCount` in interface `TreeNode`

    Returns:
    :   an int giving the number of children of this node
  + ### getIndex

    public int getIndex([TreeNode](TreeNode.md "interface in javax.swing.tree") aChild)

    Returns the index of the specified child in this node's child array.
    If the specified node is not a child of this node, returns
    `-1`. This method performs a linear search and is O(n)
    where n is the number of children.

    Specified by:
    :   `getIndex` in interface `TreeNode`

    Parameters:
    :   `aChild` - the TreeNode to search for among this node's children

    Returns:
    :   an int giving the index of the node in this node's child
        array, or `-1` if the specified node is a not
        a child of this node

    Throws:
    :   `IllegalArgumentException` - if `aChild`
        is null
  + ### children

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> children()

    Creates and returns a forward-order enumeration of this node's
    children. Modifying this node's child array invalidates any child
    enumerations created before the modification.

    Specified by:
    :   `children` in interface `TreeNode`

    Returns:
    :   an Enumeration of this node's children
  + ### setAllowsChildren

    public void setAllowsChildren(boolean allows)

    Determines whether or not this node is allowed to have children.
    If `allows` is false, all of this node's children are
    removed.

    Note: By default, a node allows children.

    Parameters:
    :   `allows` - true if this node is allowed to have children
  + ### getAllowsChildren

    public boolean getAllowsChildren()

    Returns true if this node is allowed to have children.

    Specified by:
    :   `getAllowsChildren` in interface `TreeNode`

    Returns:
    :   true if this node allows children, else false
  + ### setUserObject

    public void setUserObject([Object](../../../../java.base/java/lang/Object.md "class in java.lang") userObject)

    Sets the user object for this node to `userObject`.

    Specified by:
    :   `setUserObject` in interface `MutableTreeNode`

    Parameters:
    :   `userObject` - the Object that constitutes this node's
        user-specified data

    See Also:
    :   - [`getUserObject()`](#getUserObject())
        - [`toString()`](#toString())
  + ### getUserObject

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getUserObject()

    Returns this node's user object.

    Returns:
    :   the Object stored at this node by the user

    See Also:
    :   - [`setUserObject(java.lang.Object)`](#setUserObject(java.lang.Object))
        - [`toString()`](#toString())
  + ### removeFromParent

    public void removeFromParent()

    Removes the subtree rooted at this node from the tree, giving this
    node a null parent. Does nothing if this node is the root of its
    tree.

    Specified by:
    :   `removeFromParent` in interface `MutableTreeNode`
  + ### remove

    public void remove([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") aChild)

    Removes `aChild` from this node's child array, giving it a
    null parent.

    Specified by:
    :   `remove` in interface `MutableTreeNode`

    Parameters:
    :   `aChild` - a child of this node to remove

    Throws:
    :   `IllegalArgumentException` - if `aChild`
        is null or is not a child of this node
  + ### removeAllChildren

    public void removeAllChildren()

    Removes all of this node's children, setting their parents to null.
    If this node has no children, this method does nothing.
  + ### add

    public void add([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") newChild)

    Removes `newChild` from its parent and makes it a child of
    this node by adding it to the end of this node's child array.

    Parameters:
    :   `newChild` - node to add as a child of this node

    Throws:
    :   `IllegalArgumentException` - if `newChild`
        is null
    :   `IllegalStateException` - if this node does not allow
        children

    See Also:
    :   - [`insert(javax.swing.tree.MutableTreeNode, int)`](#insert(javax.swing.tree.MutableTreeNode,int))
  + ### isNodeAncestor

    public boolean isNodeAncestor([TreeNode](TreeNode.md "interface in javax.swing.tree") anotherNode)

    Returns true if `anotherNode` is an ancestor of this node
    -- if it is this node, this node's parent, or an ancestor of this
    node's parent. (Note that a node is considered an ancestor of itself.)
    If `anotherNode` is null, this method returns false. This
    operation is at worst O(h) where h is the distance from the root to
    this node.

    Parameters:
    :   `anotherNode` - node to test as an ancestor of this node

    Returns:
    :   true if this node is a descendant of `anotherNode`

    See Also:
    :   - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
        - [`getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode)`](#getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode))
  + ### isNodeDescendant

    public boolean isNodeDescendant([DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") anotherNode)

    Returns true if `anotherNode` is a descendant of this node
    -- if it is this node, one of this node's children, or a descendant of
    one of this node's children. Note that a node is considered a
    descendant of itself. If `anotherNode` is null, returns
    false. This operation is at worst O(h) where h is the distance from the
    root to `anotherNode`.

    Parameters:
    :   `anotherNode` - node to test as descendant of this node

    Returns:
    :   true if this node is an ancestor of `anotherNode`

    See Also:
    :   - [`isNodeAncestor(javax.swing.tree.TreeNode)`](#isNodeAncestor(javax.swing.tree.TreeNode))
        - [`getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode)`](#getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode))
  + ### getSharedAncestor

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getSharedAncestor([DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") aNode)

    Returns the nearest common ancestor to this node and `aNode`.
    Returns null, if no such ancestor exists -- if this node and
    `aNode` are in different trees or if `aNode` is
    null. A node is considered an ancestor of itself.

    Parameters:
    :   `aNode` - node to find common ancestor with

    Returns:
    :   nearest ancestor common to this node and `aNode`,
        or null if none

    See Also:
    :   - [`isNodeAncestor(javax.swing.tree.TreeNode)`](#isNodeAncestor(javax.swing.tree.TreeNode))
        - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
  + ### isNodeRelated

    public boolean isNodeRelated([DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") aNode)

    Returns true if and only if `aNode` is in the same tree
    as this node. Returns false if `aNode` is null.

    Parameters:
    :   `aNode` - node to find common ancestor with

    Returns:
    :   true if `aNode` is in the same tree as this node;
        false if `aNode` is null

    See Also:
    :   - [`getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode)`](#getSharedAncestor(javax.swing.tree.DefaultMutableTreeNode))
        - [`getRoot()`](#getRoot())
  + ### getDepth

    public int getDepth()

    Returns the depth of the tree rooted at this node -- the longest
    distance from this node to a leaf. If this node has no children,
    returns 0. This operation is much more expensive than
    `getLevel()` because it must effectively traverse the entire
    tree rooted at this node.

    Returns:
    :   the depth of the tree whose root is this node

    See Also:
    :   - [`getLevel()`](#getLevel())
  + ### getLevel

    public int getLevel()

    Returns the number of levels above this node -- the distance from
    the root to this node. If this node is the root, returns 0.

    Returns:
    :   the number of levels above this node

    See Also:
    :   - [`getDepth()`](#getDepth())
  + ### getPath

    public [TreeNode](TreeNode.md "interface in javax.swing.tree")[] getPath()

    Returns the path from the root, to get to this node. The last
    element in the path is this node.

    Returns:
    :   an array of TreeNode objects giving the path, where the
        first element in the path is the root and the last
        element is this node.
  + ### getPathToRoot

    protected [TreeNode](TreeNode.md "interface in javax.swing.tree")[] getPathToRoot([TreeNode](TreeNode.md "interface in javax.swing.tree") aNode,
    int depth)

    Builds the parents of node up to and including the root node,
    where the original node is the last element in the returned array.
    The length of the returned array gives the node's depth in the
    tree.

    Parameters:
    :   `aNode` - the TreeNode to get the path for
    :   `depth` - an int giving the number of steps already taken towards
        the root (on recursive calls), used to size the returned array

    Returns:
    :   an array of TreeNodes giving the path from the root to the
        specified node
  + ### getUserObjectPath

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] getUserObjectPath()

    Returns the user object path, from the root, to get to this node.
    If some of the TreeNodes in the path have null user objects, the
    returned path will contain nulls.

    Returns:
    :   the user object path, from the root, to get to this node
  + ### getRoot

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getRoot()

    Returns the root of the tree that contains this node. The root is
    the ancestor with a null parent.

    Returns:
    :   the root of the tree that contains this node

    See Also:
    :   - [`isNodeAncestor(javax.swing.tree.TreeNode)`](#isNodeAncestor(javax.swing.tree.TreeNode))
  + ### isRoot

    public boolean isRoot()

    Returns true if this node is the root of the tree. The root is
    the only node in the tree with a null parent; every tree has exactly
    one root.

    Returns:
    :   true if this node is the root of its tree
  + ### getNextNode

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getNextNode()

    Returns the node that follows this node in a preorder traversal of this
    node's tree. Returns null if this node is the last node of the
    traversal. This is an inefficient way to traverse the entire tree; use
    an enumeration, instead.

    Returns:
    :   the node that follows this node in a preorder traversal, or
        null if this node is last

    See Also:
    :   - [`preorderEnumeration()`](#preorderEnumeration())
  + ### getPreviousNode

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getPreviousNode()

    Returns the node that precedes this node in a preorder traversal of
    this node's tree. Returns `null` if this node is the
    first node of the traversal -- the root of the tree.
    This is an inefficient way to
    traverse the entire tree; use an enumeration, instead.

    Returns:
    :   the node that precedes this node in a preorder traversal, or
        null if this node is the first

    See Also:
    :   - [`preorderEnumeration()`](#preorderEnumeration())
  + ### preorderEnumeration

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> preorderEnumeration()

    Creates and returns an enumeration that traverses the subtree rooted at
    this node in preorder. The first node returned by the enumeration's
    `nextElement()` method is this node.

    Modifying the tree by inserting, removing, or moving a node invalidates
    any enumerations created before the modification.

    Returns:
    :   an enumeration for traversing the tree in preorder

    See Also:
    :   - [`postorderEnumeration()`](#postorderEnumeration())
  + ### postorderEnumeration

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> postorderEnumeration()

    Creates and returns an enumeration that traverses the subtree rooted at
    this node in postorder. The first node returned by the enumeration's
    `nextElement()` method is the leftmost leaf. This is the
    same as a depth-first traversal.

    Modifying the tree by inserting, removing, or moving a node invalidates
    any enumerations created before the modification.

    Returns:
    :   an enumeration for traversing the tree in postorder

    See Also:
    :   - [`depthFirstEnumeration()`](#depthFirstEnumeration())
        - [`preorderEnumeration()`](#preorderEnumeration())
  + ### breadthFirstEnumeration

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> breadthFirstEnumeration()

    Creates and returns an enumeration that traverses the subtree rooted at
    this node in breadth-first order. The first node returned by the
    enumeration's `nextElement()` method is this node.

    Modifying the tree by inserting, removing, or moving a node invalidates
    any enumerations created before the modification.

    Returns:
    :   an enumeration for traversing the tree in breadth-first order

    See Also:
    :   - [`depthFirstEnumeration()`](#depthFirstEnumeration())
  + ### depthFirstEnumeration

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> depthFirstEnumeration()

    Creates and returns an enumeration that traverses the subtree rooted at
    this node in depth-first order. The first node returned by the
    enumeration's `nextElement()` method is the leftmost leaf.
    This is the same as a postorder traversal.

    Modifying the tree by inserting, removing, or moving a node invalidates
    any enumerations created before the modification.

    Returns:
    :   an enumeration for traversing the tree in depth-first order

    See Also:
    :   - [`breadthFirstEnumeration()`](#breadthFirstEnumeration())
        - [`postorderEnumeration()`](#postorderEnumeration())
  + ### pathFromAncestorEnumeration

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](TreeNode.md "interface in javax.swing.tree")> pathFromAncestorEnumeration([TreeNode](TreeNode.md "interface in javax.swing.tree") ancestor)

    Creates and returns an enumeration that follows the path from
    `ancestor` to this node. The enumeration's
    `nextElement()` method first returns `ancestor`,
    then the child of `ancestor` that is an ancestor of this
    node, and so on, and finally returns this node. Creation of the
    enumeration is O(m) where m is the number of nodes between this node
    and `ancestor`, inclusive. Each `nextElement()`
    message is O(1).

    Modifying the tree by inserting, removing, or moving a node invalidates
    any enumerations created before the modification.

    Parameters:
    :   `ancestor` - the node to start enumeration from

    Returns:
    :   an enumeration for following the path from an ancestor of
        this node to this one

    Throws:
    :   `IllegalArgumentException` - if `ancestor` is
        not an ancestor of this node

    See Also:
    :   - [`isNodeAncestor(javax.swing.tree.TreeNode)`](#isNodeAncestor(javax.swing.tree.TreeNode))
        - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
  + ### isNodeChild

    public boolean isNodeChild([TreeNode](TreeNode.md "interface in javax.swing.tree") aNode)

    Returns true if `aNode` is a child of this node. If
    `aNode` is null, this method returns false.

    Parameters:
    :   `aNode` - the node to determinate whether it is a child

    Returns:
    :   true if `aNode` is a child of this node; false if
        `aNode` is null
  + ### getFirstChild

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getFirstChild()

    Returns this node's first child. If this node has no children,
    throws NoSuchElementException.

    Returns:
    :   the first child of this node

    Throws:
    :   `NoSuchElementException` - if this node has no children
  + ### getLastChild

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getLastChild()

    Returns this node's last child. If this node has no children,
    throws NoSuchElementException.

    Returns:
    :   the last child of this node

    Throws:
    :   `NoSuchElementException` - if this node has no children
  + ### getChildAfter

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getChildAfter([TreeNode](TreeNode.md "interface in javax.swing.tree") aChild)

    Returns the child in this node's child array that immediately
    follows `aChild`, which must be a child of this node. If
    `aChild` is the last child, returns null. This method
    performs a linear search of this node's children for
    `aChild` and is O(n) where n is the number of children; to
    traverse the entire array of children, use an enumeration instead.

    Parameters:
    :   `aChild` - the child node to look for next child after it

    Returns:
    :   the child of this node that immediately follows
        `aChild`

    Throws:
    :   `IllegalArgumentException` - if `aChild` is
        null or is not a child of this node

    See Also:
    :   - [`children`](#children)
  + ### getChildBefore

    public [TreeNode](TreeNode.md "interface in javax.swing.tree") getChildBefore([TreeNode](TreeNode.md "interface in javax.swing.tree") aChild)

    Returns the child in this node's child array that immediately
    precedes `aChild`, which must be a child of this node. If
    `aChild` is the first child, returns null. This method
    performs a linear search of this node's children for `aChild`
    and is O(n) where n is the number of children.

    Parameters:
    :   `aChild` - the child node to look for previous child before it

    Returns:
    :   the child of this node that immediately precedes
        `aChild`

    Throws:
    :   `IllegalArgumentException` - if `aChild` is null
        or is not a child of this node
  + ### isNodeSibling

    public boolean isNodeSibling([TreeNode](TreeNode.md "interface in javax.swing.tree") anotherNode)

    Returns true if `anotherNode` is a sibling of (has the
    same parent as) this node. A node is its own sibling. If
    `anotherNode` is null, returns false.

    Parameters:
    :   `anotherNode` - node to test as sibling of this node

    Returns:
    :   true if `anotherNode` is a sibling of this node
  + ### getSiblingCount

    public int getSiblingCount()

    Returns the number of siblings of this node. A node is its own sibling
    (if it has no parent or no siblings, this method returns
    `1`).

    Returns:
    :   the number of siblings of this node
  + ### getNextSibling

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getNextSibling()

    Returns the next sibling of this node in the parent's children array.
    Returns null if this node has no parent or is the parent's last child.
    This method performs a linear search that is O(n) where n is the number
    of children; to traverse the entire array, use the parent's child
    enumeration instead.

    Returns:
    :   the sibling of this node that immediately follows this node

    See Also:
    :   - [`children`](#children)
  + ### getPreviousSibling

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getPreviousSibling()

    Returns the previous sibling of this node in the parent's children
    array. Returns null if this node has no parent or is the parent's
    first child. This method performs a linear search that is O(n) where n
    is the number of children.

    Returns:
    :   the sibling of this node that immediately precedes this node
  + ### isLeaf

    public boolean isLeaf()

    Returns true if this node has no children. To distinguish between
    nodes that have no children and nodes that *cannot* have
    children (e.g. to distinguish files from empty directories), use this
    method in conjunction with `getAllowsChildren`

    Specified by:
    :   `isLeaf` in interface `TreeNode`

    Returns:
    :   true if this node has no children

    See Also:
    :   - [`getAllowsChildren()`](#getAllowsChildren())
  + ### getFirstLeaf

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getFirstLeaf()

    Finds and returns the first leaf that is a descendant of this node --
    either this node or its first child's first leaf.
    Returns this node if it is a leaf.

    Returns:
    :   the first leaf in the subtree rooted at this node

    See Also:
    :   - [`isLeaf()`](#isLeaf())
        - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
  + ### getLastLeaf

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getLastLeaf()

    Finds and returns the last leaf that is a descendant of this node --
    either this node or its last child's last leaf.
    Returns this node if it is a leaf.

    Returns:
    :   the last leaf in the subtree rooted at this node

    See Also:
    :   - [`isLeaf()`](#isLeaf())
        - [`isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode)`](#isNodeDescendant(javax.swing.tree.DefaultMutableTreeNode))
  + ### getNextLeaf

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getNextLeaf()

    Returns the leaf after this node or null if this node is the
    last leaf in the tree.

    In this implementation of the `MutableNode` interface,
    this operation is very inefficient. In order to determine the
    next node, this method first performs a linear search in the
    parent's child-list in order to find the current node.

    That implementation makes the operation suitable for short
    traversals from a known position. But to traverse all of the
    leaves in the tree, you should use `depthFirstEnumeration`
    to enumerate the nodes in the tree and use `isLeaf`
    on each node to determine which are leaves.

    Returns:
    :   returns the next leaf past this node

    See Also:
    :   - [`depthFirstEnumeration()`](#depthFirstEnumeration())
        - [`isLeaf()`](#isLeaf())
  + ### getPreviousLeaf

    public [DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") getPreviousLeaf()

    Returns the leaf before this node or null if this node is the
    first leaf in the tree.

    In this implementation of the `MutableNode` interface,
    this operation is very inefficient. In order to determine the
    previous node, this method first performs a linear search in the
    parent's child-list in order to find the current node.

    That implementation makes the operation suitable for short
    traversals from a known position. But to traverse all of the
    leaves in the tree, you should use `depthFirstEnumeration`
    to enumerate the nodes in the tree and use `isLeaf`
    on each node to determine which are leaves.

    Returns:
    :   returns the leaf before this node

    See Also:
    :   - [`depthFirstEnumeration()`](#depthFirstEnumeration())
        - [`isLeaf()`](#isLeaf())
  + ### getLeafCount

    public int getLeafCount()

    Returns the total number of leaves that are descendants of this node.
    If this node is a leaf, returns `1`. This method is O(n)
    where n is the number of descendants of this node.

    Returns:
    :   the number of leaves beneath this node

    See Also:
    :   - [`isNodeAncestor(javax.swing.tree.TreeNode)`](#isNodeAncestor(javax.swing.tree.TreeNode))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the result of sending `toString()` to this node's
    user object, or the empty string if the node has no user object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.

    See Also:
    :   - [`getUserObject()`](#getUserObject())
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Overridden to make clone public. Returns a shallow copy of this node;
    the new node has no parent or children and has a reference to the same
    user object, if any.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this node

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")