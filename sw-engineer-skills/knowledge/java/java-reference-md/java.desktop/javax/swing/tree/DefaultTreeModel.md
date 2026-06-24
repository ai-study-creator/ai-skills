Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class DefaultTreeModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.tree.DefaultTreeModel

All Implemented Interfaces:
:   `Serializable`, `TreeModel`

---

public class DefaultTreeModel
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [TreeModel](TreeModel.md "interface in javax.swing.tree")

A simple tree data model that uses TreeNodes.
For further information and examples that use DefaultTreeModel,
see [How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial.*

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `asksAllowsChildren`

  Determines how the `isLeaf` method figures
  out if a node is a leaf node.

  `protected EventListenerList`

  `listenerList`

  Listeners.

  `protected TreeNode`

  `root`

  Root of the tree.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultTreeModel(TreeNode root)`

  Creates a tree in which any node can have children.

  `DefaultTreeModel(TreeNode root,
  boolean asksAllowsChildren)`

  Creates a tree specifying whether any node can have children,
  or whether only certain nodes can have children.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTreeModelListener(TreeModelListener l)`

  Adds a listener for the TreeModelEvent posted after the tree changes.

  `boolean`

  `asksAllowsChildren()`

  Tells how leaf nodes are determined.

  `protected void`

  `fireTreeNodesChanged(Object source,
  Object[] path,
  int[] childIndices,
  Object[] children)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireTreeNodesInserted(Object source,
  Object[] path,
  int[] childIndices,
  Object[] children)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireTreeNodesRemoved(Object source,
  Object[] path,
  int[] childIndices,
  Object[] children)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireTreeStructureChanged(Object source,
  Object[] path,
  int[] childIndices,
  Object[] children)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `Object`

  `getChild(Object parent,
  int index)`

  Returns the child of *parent* at index *index* in the parent's
  child array.

  `int`

  `getChildCount(Object parent)`

  Returns the number of children of *parent*.

  `int`

  `getIndexOfChild(Object parent,
  Object child)`

  Returns the index of child in parent.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered
  as `FooListener`s
  upon this model.

  `TreeNode[]`

  `getPathToRoot(TreeNode aNode)`

  Builds the parents of node up to and including the root node,
  where the original node is the last element in the returned array.

  `protected TreeNode[]`

  `getPathToRoot(TreeNode aNode,
  int depth)`

  Builds the parents of node up to and including the root node,
  where the original node is the last element in the returned array.

  `Object`

  `getRoot()`

  Returns the root of the tree.

  `TreeModelListener[]`

  `getTreeModelListeners()`

  Returns an array of all the tree model listeners
  registered on this model.

  `void`

  `insertNodeInto(MutableTreeNode newChild,
  MutableTreeNode parent,
  int index)`

  Invoked this to insert newChild at location index in parents children.

  `boolean`

  `isLeaf(Object node)`

  Returns whether the specified node is a leaf node.

  `void`

  `nodeChanged(TreeNode node)`

  Invoke this method after you've changed how node is to be
  represented in the tree.

  `void`

  `nodesChanged(TreeNode node,
  int[] childIndices)`

  Invoke this method after you've changed how the children identified by
  childIndicies are to be represented in the tree.

  `void`

  `nodeStructureChanged(TreeNode node)`

  Invoke this method if you've totally changed the children of
  node and its children's children...

  `void`

  `nodesWereInserted(TreeNode node,
  int[] childIndices)`

  Invoke this method after you've inserted some TreeNodes into
  node.

  `void`

  `nodesWereRemoved(TreeNode node,
  int[] childIndices,
  Object[] removedChildren)`

  Invoke this method after you've removed some TreeNodes from
  node.

  `void`

  `reload()`

  Invoke this method if you've modified the `TreeNode`s upon which
  this model depends.

  `void`

  `reload(TreeNode node)`

  Invoke this method if you've modified the `TreeNode`s upon which
  this model depends.

  `void`

  `removeNodeFromParent(MutableTreeNode node)`

  Message this to remove node from its parent.

  `void`

  `removeTreeModelListener(TreeModelListener l)`

  Removes a listener previously added with **addTreeModelListener()**.

  `void`

  `setAsksAllowsChildren(boolean newValue)`

  Sets whether or not to test leafness by asking getAllowsChildren()
  or isLeaf() to the TreeNodes.

  `void`

  `setRoot(TreeNode root)`

  Sets the root to `root`.

  `void`

  `valueForPathChanged(TreePath path,
  Object newValue)`

  This sets the user object of the TreeNode identified by path
  and posts a node changed.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### root

    protected [TreeNode](TreeNode.md "interface in javax.swing.tree") root

    Root of the tree.
  + ### listenerList

    protected [EventListenerList](../event/EventListenerList.md "class in javax.swing.event") listenerList

    Listeners.
  + ### asksAllowsChildren

    protected boolean asksAllowsChildren

    Determines how the `isLeaf` method figures
    out if a node is a leaf node. If true, a node is a leaf
    node if it does not allow children. (If it allows
    children, it is not a leaf node, even if no children
    are present.) That lets you distinguish between *folder*
    nodes and *file* nodes in a file system, for example.

    If this value is false, then any node which has no
    children is a leaf node, and any node may acquire
    children.

    See Also:
    :   - [`TreeNode.getAllowsChildren()`](TreeNode.md#getAllowsChildren())
        - [`TreeModel.isLeaf(java.lang.Object)`](TreeModel.md#isLeaf(java.lang.Object))
        - [`setAsksAllowsChildren(boolean)`](#setAsksAllowsChildren(boolean))
* ## Constructor Details

  + ### DefaultTreeModel

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("root")
    public DefaultTreeModel([TreeNode](TreeNode.md "interface in javax.swing.tree") root)

    Creates a tree in which any node can have children.

    Parameters:
    :   `root` - a TreeNode object that is the root of the tree

    See Also:
    :   - [`DefaultTreeModel(TreeNode, boolean)`](#%3Cinit%3E(javax.swing.tree.TreeNode,boolean))
  + ### DefaultTreeModel

    public DefaultTreeModel([TreeNode](TreeNode.md "interface in javax.swing.tree") root,
    boolean asksAllowsChildren)

    Creates a tree specifying whether any node can have children,
    or whether only certain nodes can have children.

    Parameters:
    :   `root` - a TreeNode object that is the root of the tree
    :   `asksAllowsChildren` - a boolean, false if any node can
        have children, true if each node is asked to see if
        it can have children

    See Also:
    :   - [`asksAllowsChildren`](#asksAllowsChildren)
* ## Method Details

  + ### setAsksAllowsChildren

    public void setAsksAllowsChildren(boolean newValue)

    Sets whether or not to test leafness by asking getAllowsChildren()
    or isLeaf() to the TreeNodes. If newvalue is true, getAllowsChildren()
    is messaged, otherwise isLeaf() is messaged.

    Parameters:
    :   `newValue` - if true, getAllowsChildren() is messaged, otherwise
        isLeaf() is messaged
  + ### asksAllowsChildren

    public boolean asksAllowsChildren()

    Tells how leaf nodes are determined.

    Returns:
    :   true if only nodes which do not allow children are
        leaf nodes, false if nodes which have no children
        (even if allowed) are leaf nodes

    See Also:
    :   - [`asksAllowsChildren`](#asksAllowsChildren)
  + ### setRoot

    public void setRoot([TreeNode](TreeNode.md "interface in javax.swing.tree") root)

    Sets the root to `root`. A null `root` implies
    the tree is to display nothing, and is legal.

    Parameters:
    :   `root` - new value of tree root
  + ### getRoot

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getRoot()

    Returns the root of the tree. Returns null only if the tree has
    no nodes.

    Specified by:
    :   `getRoot` in interface `TreeModel`

    Returns:
    :   the root of the tree
  + ### getIndexOfChild

    public int getIndexOfChild([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") child)

    Returns the index of child in parent.
    If either the parent or child is `null`, returns -1.

    Specified by:
    :   `getIndexOfChild` in interface `TreeModel`

    Parameters:
    :   `parent` - a note in the tree, obtained from this data source
    :   `child` - the node we are interested in

    Returns:
    :   the index of the child in the parent, or -1
        if either the parent or the child is `null`
  + ### getChild

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getChild([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent,
    int index)

    Returns the child of *parent* at index *index* in the parent's
    child array. *parent* must be a node previously obtained from
    this data source. This should not return null if *index*
    is a valid index for *parent* (that is *index* >= 0 &&
    *index* < getChildCount(*parent*)).

    Specified by:
    :   `getChild` in interface `TreeModel`

    Parameters:
    :   `parent` - a node in the tree, obtained from this data source
    :   `index` - index of child to be returned

    Returns:
    :   the child of *parent* at index *index*
  + ### getChildCount

    public int getChildCount([Object](../../../../java.base/java/lang/Object.md "class in java.lang") parent)

    Returns the number of children of *parent*. Returns 0 if the node
    is a leaf or if it has no children. *parent* must be a node
    previously obtained from this data source.

    Specified by:
    :   `getChildCount` in interface `TreeModel`

    Parameters:
    :   `parent` - a node in the tree, obtained from this data source

    Returns:
    :   the number of children of the node *parent*
  + ### isLeaf

    public boolean isLeaf([Object](../../../../java.base/java/lang/Object.md "class in java.lang") node)

    Returns whether the specified node is a leaf node.
    The way the test is performed depends on the
    `asksAllowsChildren` setting.

    Specified by:
    :   `isLeaf` in interface `TreeModel`

    Parameters:
    :   `node` - the node to check

    Returns:
    :   true if the node is a leaf node

    See Also:
    :   - [`asksAllowsChildren`](#asksAllowsChildren)
        - [`TreeModel.isLeaf(java.lang.Object)`](TreeModel.md#isLeaf(java.lang.Object))
  + ### reload

    public void reload()

    Invoke this method if you've modified the `TreeNode`s upon which
    this model depends. The model will notify all of its listeners that the
    model has changed.
  + ### valueForPathChanged

    public void valueForPathChanged([TreePath](TreePath.md "class in javax.swing.tree") path,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    This sets the user object of the TreeNode identified by path
    and posts a node changed. If you use custom user objects in
    the TreeModel you're going to need to subclass this and
    set the user object of the changed node to something meaningful.

    Specified by:
    :   `valueForPathChanged` in interface `TreeModel`

    Parameters:
    :   `path` - path to the node that the user has altered
    :   `newValue` - the new value from the TreeCellEditor
  + ### insertNodeInto

    public void insertNodeInto([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") newChild,
    [MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") parent,
    int index)

    Invoked this to insert newChild at location index in parents children.
    This will then message nodesWereInserted to create the appropriate
    event. This is the preferred way to add children as it will create
    the appropriate event.

    Parameters:
    :   `newChild` - child node to be inserted
    :   `parent` - node to which children new node will be added
    :   `index` - index of parent's children
  + ### removeNodeFromParent

    public void removeNodeFromParent([MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree") node)

    Message this to remove node from its parent. This will message
    nodesWereRemoved to create the appropriate event. This is the
    preferred way to remove a node as it handles the event creation
    for you.

    Parameters:
    :   `node` - the node to be removed from its parent
  + ### nodeChanged

    public void nodeChanged([TreeNode](TreeNode.md "interface in javax.swing.tree") node)

    Invoke this method after you've changed how node is to be
    represented in the tree.

    Parameters:
    :   `node` - the changed node
  + ### reload

    public void reload([TreeNode](TreeNode.md "interface in javax.swing.tree") node)

    Invoke this method if you've modified the `TreeNode`s upon which
    this model depends. The model will notify all of its listeners that the
    model has changed below the given node.

    Parameters:
    :   `node` - the node below which the model has changed
  + ### nodesWereInserted

    public void nodesWereInserted([TreeNode](TreeNode.md "interface in javax.swing.tree") node,
    int[] childIndices)

    Invoke this method after you've inserted some TreeNodes into
    node. childIndices should be the index of the new elements and
    must be sorted in ascending order.

    Parameters:
    :   `node` - parent node which children count been incremented
    :   `childIndices` - indexes of inserted children
  + ### nodesWereRemoved

    public void nodesWereRemoved([TreeNode](TreeNode.md "interface in javax.swing.tree") node,
    int[] childIndices,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] removedChildren)

    Invoke this method after you've removed some TreeNodes from
    node. childIndices should be the index of the removed elements and
    must be sorted in ascending order. And removedChildren should be
    the array of the children objects that were removed.

    Parameters:
    :   `node` - parent node which childred were removed
    :   `childIndices` - indexes of removed children
    :   `removedChildren` - array of the children objects that were removed
  + ### nodesChanged

    public void nodesChanged([TreeNode](TreeNode.md "interface in javax.swing.tree") node,
    int[] childIndices)

    Invoke this method after you've changed how the children identified by
    childIndicies are to be represented in the tree.

    Parameters:
    :   `node` - changed node
    :   `childIndices` - indexes of changed children
  + ### nodeStructureChanged

    public void nodeStructureChanged([TreeNode](TreeNode.md "interface in javax.swing.tree") node)

    Invoke this method if you've totally changed the children of
    node and its children's children... This will post a
    treeStructureChanged event.

    Parameters:
    :   `node` - changed node
  + ### getPathToRoot

    public [TreeNode](TreeNode.md "interface in javax.swing.tree")[] getPathToRoot([TreeNode](TreeNode.md "interface in javax.swing.tree") aNode)

    Builds the parents of node up to and including the root node,
    where the original node is the last element in the returned array.
    The length of the returned array gives the node's depth in the
    tree.

    Parameters:
    :   `aNode` - the TreeNode to get the path for

    Returns:
    :   an array of TreeNodes giving the path from the root
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
  + ### addTreeModelListener

    public void addTreeModelListener([TreeModelListener](../event/TreeModelListener.md "interface in javax.swing.event") l)

    Adds a listener for the TreeModelEvent posted after the tree changes.

    Specified by:
    :   `addTreeModelListener` in interface `TreeModel`

    Parameters:
    :   `l` - the listener to add

    See Also:
    :   - [`removeTreeModelListener(javax.swing.event.TreeModelListener)`](#removeTreeModelListener(javax.swing.event.TreeModelListener))
  + ### removeTreeModelListener

    public void removeTreeModelListener([TreeModelListener](../event/TreeModelListener.md "interface in javax.swing.event") l)

    Removes a listener previously added with **addTreeModelListener()**.

    Specified by:
    :   `removeTreeModelListener` in interface `TreeModel`

    Parameters:
    :   `l` - the listener to remove

    See Also:
    :   - [`addTreeModelListener(javax.swing.event.TreeModelListener)`](#addTreeModelListener(javax.swing.event.TreeModelListener))
  + ### getTreeModelListeners

    public [TreeModelListener](../event/TreeModelListener.md "interface in javax.swing.event")[] getTreeModelListeners()

    Returns an array of all the tree model listeners
    registered on this model.

    Returns:
    :   all of this model's `TreeModelListener`s
        or an empty
        array if no tree model listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addTreeModelListener(javax.swing.event.TreeModelListener)`](#addTreeModelListener(javax.swing.event.TreeModelListener))
        - [`removeTreeModelListener(javax.swing.event.TreeModelListener)`](#removeTreeModelListener(javax.swing.event.TreeModelListener))
  + ### fireTreeNodesChanged

    protected void fireTreeNodesChanged([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path,
    int[] childIndices,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] children)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Parameters:
    :   `source` - the source of the `TreeModelEvent`;
        typically `this`
    :   `path` - the path to the parent of the nodes that changed; use
        `null` to identify the root has changed
    :   `childIndices` - the indices of the changed elements
    :   `children` - the changed elements
  + ### fireTreeNodesInserted

    protected void fireTreeNodesInserted([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path,
    int[] childIndices,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] children)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Parameters:
    :   `source` - the source of the `TreeModelEvent`;
        typically `this`
    :   `path` - the path to the parent the nodes were added to
    :   `childIndices` - the indices of the new elements
    :   `children` - the new elements
  + ### fireTreeNodesRemoved

    protected void fireTreeNodesRemoved([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path,
    int[] childIndices,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] children)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Parameters:
    :   `source` - the source of the `TreeModelEvent`;
        typically `this`
    :   `path` - the path to the parent the nodes were removed from
    :   `childIndices` - the indices of the removed elements
    :   `children` - the removed elements
  + ### fireTreeStructureChanged

    protected void fireTreeStructureChanged([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path,
    int[] childIndices,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] children)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Parameters:
    :   `source` - the source of the `TreeModelEvent`;
        typically `this`
    :   `path` - the path to the parent of the structure that has changed;
        use `null` to identify the root has changed
    :   `childIndices` - the indices of the affected elements
    :   `children` - the affected elements
  + ### getListeners

    public <T extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered
    as `FooListener`s
    upon this model.
    `FooListener`s are registered using the
    `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal,
    such as
    `FooListener.class`.
    For example, you can query a
    `DefaultTreeModel` `m`
    for its tree model listeners with the following code:

    ```
    TreeModelListener[] tmls = (TreeModelListener[])(m.getListeners(TreeModelListener.class));
    ```

    If no such listeners exist, this method returns an empty array.

    Type Parameters:
    :   `T` - the listener type

    Parameters:
    :   `listenerType` - the type of listeners requested

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this component,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getTreeModelListeners()`](#getTreeModelListeners())