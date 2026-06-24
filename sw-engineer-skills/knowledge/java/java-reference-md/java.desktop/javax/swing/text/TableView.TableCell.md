Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TableView.TableCell

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

javax.swing.text.TableView.TableCell

All Implemented Interfaces:
:   `SwingConstants`

Enclosing class:
:   `TableView`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class TableView.TableCell
extends [BoxView](BoxView.md "class in javax.swing.text")

Deprecated.

A table cell can now be any View implementation.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TableCell(Element elem)`

  Deprecated.

  Constructs a TableCell for the given element.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColumnCount()`

  Deprecated.

  Gets the number of columns this cell spans (e.g.

  `int`

  `getGridColumn()`

  Deprecated.

  Gets the column of the grid location

  `int`

  `getGridRow()`

  Deprecated.

  Gets the row of the grid location

  `int`

  `getRowCount()`

  Deprecated.

  Gets the number of rows this cell spans (that is, the
  grid height).

  `void`

  `setGridLocation(int row,
  int col)`

  Deprecated.

  Sets the grid location.

  ### Methods inherited from class javax.swing.text.[BoxView](BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, calculateMinorAxisRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAlignment, getAxis, getChildAllocation, getHeight, getMaximumSpan, getMinimumSpan, getOffset, getPreferredSpan, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, layoutMinorAxis, modelToView, paint, paintChild, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, getViewIndexAtPosition, loadChildren, modelToView, setInsets, setParagraphInsets, setParent`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, remove, removeAll, removeUpdate, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TableCell

    public TableCell([Element](Element.md "interface in javax.swing.text") elem)

    Deprecated.

    Constructs a TableCell for the given element.

    Parameters:
    :   `elem` - the element that this view is responsible for

    Since:
    :   1.4
* ## Method Details

  + ### getColumnCount

    public int getColumnCount()

    Deprecated.

    Gets the number of columns this cell spans (e.g. the
    grid width).

    Returns:
    :   the number of columns
  + ### getRowCount

    public int getRowCount()

    Deprecated.

    Gets the number of rows this cell spans (that is, the
    grid height).

    Returns:
    :   the number of rows
  + ### setGridLocation

    public void setGridLocation(int row,
    int col)

    Deprecated.

    Sets the grid location.

    Parameters:
    :   `row` - the row >= 0
    :   `col` - the column >= 0
  + ### getGridRow

    public int getGridRow()

    Deprecated.

    Gets the row of the grid location
  + ### getGridColumn

    public int getGridColumn()

    Deprecated.

    Gets the column of the grid location