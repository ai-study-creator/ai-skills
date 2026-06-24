Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class ListUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.ListUI

Direct Known Subclasses:
:   `BasicListUI`, `MultiListUI`

---

public abstract class ListUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

The `JList` pluggable look and feel delegate.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ListUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Rectangle`

  `getCellBounds(JList<?> list,
  int index1,
  int index2)`

  Returns the bounding rectangle, in the given list's coordinate system,
  for the range of cells specified by the two indices.

  `abstract Point`

  `indexToLocation(JList<?> list,
  int index)`

  Returns the origin in the given `JList`, of the specified item,
  in the list's coordinate system.

  `abstract int`

  `locationToIndex(JList<?> list,
  Point location)`

  Returns the cell index in the specified `JList` closest to the
  given location in the list's coordinate system.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListUI

    protected ListUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### locationToIndex

    public abstract int locationToIndex([JList](../JList.md "class in javax.swing")<?> list,
    [Point](../../../java/awt/Point.md "class in java.awt") location)

    Returns the cell index in the specified `JList` closest to the
    given location in the list's coordinate system. To determine if the
    cell actually contains the specified location, compare the point against
    the cell's bounds, as provided by `getCellBounds`.
    This method returns `-1` if the list's model is empty.

    Parameters:
    :   `list` - the list
    :   `location` - the coordinates of the point

    Returns:
    :   the cell index closest to the given location, or `-1`

    Throws:
    :   `NullPointerException` - if `location` is null
  + ### indexToLocation

    public abstract [Point](../../../java/awt/Point.md "class in java.awt") indexToLocation([JList](../JList.md "class in javax.swing")<?> list,
    int index)

    Returns the origin in the given `JList`, of the specified item,
    in the list's coordinate system.
    Returns `null` if the index isn't valid.

    Parameters:
    :   `list` - the list
    :   `index` - the cell index

    Returns:
    :   the origin of the cell, or `null`
  + ### getCellBounds

    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getCellBounds([JList](../JList.md "class in javax.swing")<?> list,
    int index1,
    int index2)

    Returns the bounding rectangle, in the given list's coordinate system,
    for the range of cells specified by the two indices.
    The indices can be supplied in any order.

    If the smaller index is outside the list's range of cells, this method
    returns `null`. If the smaller index is valid, but the larger
    index is outside the list's range, the bounds of just the first index
    is returned. Otherwise, the bounds of the valid range is returned.

    Parameters:
    :   `list` - the list
    :   `index1` - the first index in the range
    :   `index2` - the second index in the range

    Returns:
    :   the bounding rectangle for the range of cells, or `null`