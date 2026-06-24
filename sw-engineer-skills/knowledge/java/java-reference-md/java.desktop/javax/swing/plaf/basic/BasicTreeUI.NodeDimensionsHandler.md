Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.NodeDimensionsHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.tree.AbstractLayoutCache.NodeDimensions](../../tree/AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree")

javax.swing.plaf.basic.BasicTreeUI.NodeDimensionsHandler

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.NodeDimensionsHandler
extends [AbstractLayoutCache.NodeDimensions](../../tree/AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree")

Class responsible for getting size of node, method is forwarded
to BasicTreeUI method. X location does not include insets, that is
handled in getPathBounds.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NodeDimensionsHandler()`

  Constructs a `NodeDimensionsHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Rectangle`

  `getNodeDimensions(Object value,
  int row,
  int depth,
  boolean expanded,
  Rectangle size)`

  Responsible for getting the size of a particular node.

  `protected int`

  `getRowX(int row,
  int depth)`

  Returns amount to indent the given row.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NodeDimensionsHandler

    public NodeDimensionsHandler()

    Constructs a `NodeDimensionsHandler`.
* ## Method Details

  + ### getNodeDimensions

    public [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getNodeDimensions([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value,
    int row,
    int depth,
    boolean expanded,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") size)

    Responsible for getting the size of a particular node.

    Specified by:
    :   `getNodeDimensions` in class `AbstractLayoutCache.NodeDimensions`

    Parameters:
    :   `value` - the `value` to be represented
    :   `row` - row being queried
    :   `depth` - the depth of the row
    :   `expanded` - true if row is expanded, false otherwise
    :   `size` - a `Rectangle` containing the size needed
        to represent `value`

    Returns:
    :   a `Rectangle` containing the node dimensions,
        or `null` if node has no dimension
  + ### getRowX

    protected int getRowX(int row,
    int depth)

    Returns amount to indent the given row.

    Parameters:
    :   `row` - a row
    :   `depth` - a depth

    Returns:
    :   amount to indent the given row