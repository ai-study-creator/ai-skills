Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class TreePath

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.tree.TreePath

All Implemented Interfaces:
:   `Serializable`

---

public class TreePath
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

`TreePath` represents an array of objects that uniquely
identify the path to a node in a tree. The elements of the array
are ordered with the root as the first element of the array. For
example, a file on the file system is uniquely identified based on
the array of parent directories and the name of the file. The path
`/tmp/foo/bar` could be represented by a `TreePath` as
`new TreePath(new Object[] {"tmp", "foo", "bar"})`.

`TreePath` is used extensively by `JTree` and related classes.
For example, `JTree` represents the selection as an array of
`TreePath`s. When used with `JTree`, the elements of the
path are the objects returned from the `TreeModel`. When `JTree`
is paired with `DefaultTreeModel`, the elements of the
path are `TreeNode`s. The following example illustrates extracting
the user object from the selection of a `JTree`:

```
   DefaultMutableTreeNode root = ...;
   DefaultTreeModel model = new DefaultTreeModel(root);
   JTree tree = new JTree(model);
   ...
   TreePath selectedPath = tree.getSelectionPath();
   DefaultMutableTreeNode selectedNode =
       ((DefaultMutableTreeNode)selectedPath.getLastPathComponent());
   Object myObject= selectedNode.getUserObject();
```

Subclasses typically need override only `getLastPathComponent`, and `getParentPath`. As `JTree`
internally creates `TreePath`s at various points, it's
generally not useful to subclass `TreePath` and use with
`JTree`.

While `TreePath` is serializable, a `NotSerializableException` is thrown if any elements of the path are
not serializable.

For further information and examples of using tree paths,
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

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TreePath()`

  Creates an empty `TreePath`.

  `TreePath(Object lastPathComponent)`

  Creates a `TreePath` containing a single element.

  `TreePath(Object[] path)`

  Creates a `TreePath` from an array.

  `protected`

  `TreePath(Object[] path,
  int length)`

  Creates a `TreePath` from an array.

  `protected`

  `TreePath(TreePath parent,
  Object lastPathComponent)`

  Creates a `TreePath` with the specified parent and element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compares this `TreePath` to the specified object.

  `Object`

  `getLastPathComponent()`

  Returns the last element of this path.

  `TreePath`

  `getParentPath()`

  Returns the `TreePath` of the parent.

  `Object[]`

  `getPath()`

  Returns an ordered array of the elements of this `TreePath`.

  `Object`

  `getPathComponent(int index)`

  Returns the path element at the specified index.

  `int`

  `getPathCount()`

  Returns the number of elements in the path.

  `int`

  `hashCode()`

  Returns the hash code of this `TreePath`.

  `boolean`

  `isDescendant(TreePath aTreePath)`

  Returns true if `aTreePath` is a
  descendant of this
  `TreePath`.

  `TreePath`

  `pathByAddingChild(Object child)`

  Returns a new path containing all the elements of this path
  plus `child`.

  `String`

  `toString()`

  Returns a string that displays and identifies this
  object's properties.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TreePath

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("path")
    public TreePath([Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path)

    Creates a `TreePath` from an array. The array uniquely
    identifies the path to a node.

    Parameters:
    :   `path` - an array of objects representing the path to a node

    Throws:
    :   `IllegalArgumentException` - if `path` is `null`,
        empty, or contains a `null` value
  + ### TreePath

    public TreePath([Object](../../../../java.base/java/lang/Object.md "class in java.lang") lastPathComponent)

    Creates a `TreePath` containing a single element. This is
    used to construct a `TreePath` identifying the root.

    Parameters:
    :   `lastPathComponent` - the root

    Throws:
    :   `IllegalArgumentException` - if `lastPathComponent` is
        `null`

    See Also:
    :   - [`TreePath(Object[])`](#%3Cinit%3E(java.lang.Object%5B%5D))
  + ### TreePath

    protected TreePath([TreePath](TreePath.md "class in javax.swing.tree") parent,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") lastPathComponent)

    Creates a `TreePath` with the specified parent and element.

    Parameters:
    :   `parent` - the path to the parent, or `null` to indicate
        the root
    :   `lastPathComponent` - the last path element

    Throws:
    :   `IllegalArgumentException` - if `lastPathComponent` is
        `null`
  + ### TreePath

    protected TreePath([Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] path,
    int length)

    Creates a `TreePath` from an array. The returned
    `TreePath` represents the elements of the array from
    `0` to `length - 1`.

    This constructor is used internally, and generally not useful outside
    of subclasses.

    Parameters:
    :   `path` - the array to create the `TreePath` from
    :   `length` - identifies the number of elements in `path` to
        create the `TreePath` from

    Throws:
    :   `NullPointerException` - if `path` is `null`
    :   `ArrayIndexOutOfBoundsException` - if `length - 1` is
        outside the range of the array
    :   `IllegalArgumentException` - if any of the elements from
        `0` to `length - 1` are `null`
  + ### TreePath

    protected TreePath()

    Creates an empty `TreePath`. This is provided for
    subclasses that represent paths in a different
    manner. Subclasses that use this constructor must override
    `getLastPathComponent`, and `getParentPath`.
* ## Method Details

  + ### getPath

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] getPath()

    Returns an ordered array of the elements of this `TreePath`.
    The first element is the root.

    Returns:
    :   an array of the elements in this `TreePath`
  + ### getLastPathComponent

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getLastPathComponent()

    Returns the last element of this path.

    Returns:
    :   the last element in the path
  + ### getPathCount

    public int getPathCount()

    Returns the number of elements in the path.

    Returns:
    :   the number of elements in the path
  + ### getPathComponent

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getPathComponent(int index)

    Returns the path element at the specified index.

    Parameters:
    :   `index` - the index of the element requested

    Returns:
    :   the element at the specified index

    Throws:
    :   `IllegalArgumentException` - if the index is outside the
        range of this path
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compares this `TreePath` to the specified object. This returns
    `true` if `o` is a `TreePath` with the exact
    same elements (as determined by using `equals` on each
    element of the path).

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code of this `TreePath`. The hash code of a
    `TreePath` is the hash code of the last element in the path.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashCode for the object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### isDescendant

    public boolean isDescendant([TreePath](TreePath.md "class in javax.swing.tree") aTreePath)

    Returns true if `aTreePath` is a
    descendant of this
    `TreePath`. A `TreePath` `P1` is a descendant of a
    `TreePath` `P2`
    if `P1` contains all of the elements that make up
    `P2's` path.
    For example, if this object has the path `[a, b]`,
    and `aTreePath` has the path `[a, b, c]`,
    then `aTreePath` is a descendant of this object.
    However, if `aTreePath` has the path `[a]`,
    then it is not a descendant of this object. By this definition
    a `TreePath` is always considered a descendant of itself.
    That is, `aTreePath.isDescendant(aTreePath)` returns
    `true`.

    Parameters:
    :   `aTreePath` - the `TreePath` to check

    Returns:
    :   true if `aTreePath` is a descendant of this path
  + ### pathByAddingChild

    public [TreePath](TreePath.md "class in javax.swing.tree") pathByAddingChild([Object](../../../../java.base/java/lang/Object.md "class in java.lang") child)

    Returns a new path containing all the elements of this path
    plus `child`. `child` is the last element
    of the newly created `TreePath`.

    Parameters:
    :   `child` - the path element to add

    Returns:
    :   a new path containing all the elements of this path
        plus `child`

    Throws:
    :   `NullPointerException` - if `child` is `null`
  + ### getParentPath

    public [TreePath](TreePath.md "class in javax.swing.tree") getParentPath()

    Returns the `TreePath` of the parent. A return value of
    `null` indicates this is the root node.

    Returns:
    :   the parent path
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this object