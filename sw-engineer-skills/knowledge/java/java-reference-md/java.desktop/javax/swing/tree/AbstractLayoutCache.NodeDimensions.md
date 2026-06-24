Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class AbstractLayoutCache.NodeDimensions

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.tree.AbstractLayoutCache.NodeDimensions

Direct Known Subclasses:
:   `BasicTreeUI.NodeDimensionsHandler`

Enclosing class:
:   `AbstractLayoutCache`

---

public abstract static class AbstractLayoutCache.NodeDimensions
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Used by `AbstractLayoutCache` to determine the size
and x origin of a particular node.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `NodeDimensions()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Rectangle`

  `getNodeDimensions(Object value,
  int row,
  int depth,
  boolean expanded,
  Rectangle bounds)`

  Returns, by reference in bounds, the size and x origin to
  place value at.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NodeDimensions

    protected NodeDimensions()

    Constructor for subclasses to call.
* ## Method Details

  + ### getNodeDimensions

    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getNodeDimensions([Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    int row,
    int depth,
    boolean expanded,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") bounds)

    Returns, by reference in bounds, the size and x origin to
    place value at. The calling method is responsible for determining
    the Y location. If bounds is `null`, a newly created
    `Rectangle` should be returned,
    otherwise the value should be placed in bounds and returned.

    Parameters:
    :   `value` - the `value` to be represented
    :   `row` - row being queried
    :   `depth` - the depth of the row
    :   `expanded` - true if row is expanded, false otherwise
    :   `bounds` - a `Rectangle` containing the size needed
        to represent `value`

    Returns:
    :   a `Rectangle` containing the node dimensions,
        or `null` if node has no dimension