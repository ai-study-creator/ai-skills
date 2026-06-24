Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TableView.TableRow

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

javax.swing.text.TableView.TableRow

All Implemented Interfaces:
:   `SwingConstants`

Enclosing class:
:   `TableView`

---

public class TableView.TableRow
extends [BoxView](BoxView.md "class in javax.swing.text")

View of a row in a row-centric table.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TableRow(Element elem)`

  Constructs a TableView for the given element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected SizeRequirements`

  `calculateMajorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculates the size requirements for the major axis
  `axis`.

  `float`

  `getMaximumSpan(int axis)`

  Determines the maximum span for this view along an
  axis.

  `float`

  `getMinimumSpan(int axis)`

  Determines the minimum span for this view along an
  axis.

  `float`

  `getPreferredSpan(int axis)`

  Determines the preferred span for this view along an
  axis.

  `int`

  `getResizeWeight(int axis)`

  Determines the resizability of the view along the
  given axis.

  `protected View`

  `getViewAtPosition(int pos,
  Rectangle a)`

  Fetches the child view that represents the given position in
  the model.

  `protected void`

  `layoutMajorAxis(int targetSpan,
  int axis,
  int[] offsets,
  int[] spans)`

  Perform layout for the major axis of the box (i.e.

  `protected void`

  `layoutMinorAxis(int targetSpan,
  int axis,
  int[] offsets,
  int[] spans)`

  Perform layout for the minor axis of the box (i.e.

  `void`

  `replace(int offset,
  int length,
  View[] views)`

  Change the child views.

  ### Methods inherited from class javax.swing.text.[BoxView](BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMinorAxisRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAlignment, getAxis, getChildAllocation, getHeight, getOffset, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, modelToView, paint, paintChild, preferenceChanged, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewCount, getViewIndex, getViewIndexAtPosition, loadChildren, modelToView, setInsets, setParagraphInsets, setParent`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, remove, removeAll, removeUpdate, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TableRow

    public TableRow([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a TableView for the given element.

    Parameters:
    :   `elem` - the element that this view is responsible for

    Since:
    :   1.4
* ## Method Details

  + ### replace

    public void replace(int offset,
    int length,
    [View](View.md "class in javax.swing.text")[] views)

    Change the child views. This is implemented to
    provide the superclass behavior and invalidate the
    grid so that rows and columns will be recalculated.

    Overrides:
    :   `replace` in class `BoxView`

    Parameters:
    :   `offset` - the starting index into the child views to insert
        the new views; this should be a value >= 0 and <= getViewCount
    :   `length` - the number of existing child views to remove;
        This should be a value >= 0 and <= (getViewCount() - offset)
    :   `views` - the child views to add; this value can be
        `null`to indicate no children are being added
        (useful to remove)
  + ### calculateMajorAxisRequirements

    protected [SizeRequirements](../SizeRequirements.md "class in javax.swing") calculateMajorAxisRequirements(int axis,
    [SizeRequirements](../SizeRequirements.md "class in javax.swing") r)

    Description copied from class: `BoxView`

    Calculates the size requirements for the major axis
    `axis`.

    Overrides:
    :   `calculateMajorAxisRequirements` in class `BoxView`

    Parameters:
    :   `axis` - the axis being studied
    :   `r` - the `SizeRequirements` object;
        if `null` one will be created

    Returns:
    :   the newly initialized `SizeRequirements` object

    See Also:
    :   - [`SizeRequirements`](../SizeRequirements.md "class in javax.swing")
  + ### getMinimumSpan

    public float getMinimumSpan(int axis)

    Description copied from class: `BoxView`

    Determines the minimum span for this view along an
    axis.

    Overrides:
    :   `getMinimumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS`
        or `View.Y_AXIS`

    Returns:
    :   the span the view would like to be rendered into >= 0;
        typically the view is told to render into the span
        that is returned, although there is no guarantee;
        the parent may choose to resize or break the view

    See Also:
    :   - [`View.getPreferredSpan(int)`](View.md#getPreferredSpan(int))
  + ### getMaximumSpan

    public float getMaximumSpan(int axis)

    Description copied from class: `BoxView`

    Determines the maximum span for this view along an
    axis.

    Overrides:
    :   `getMaximumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS`
        or `View.Y_AXIS`

    Returns:
    :   the span the view would like to be rendered into >= 0;
        typically the view is told to render into the span
        that is returned, although there is no guarantee;
        the parent may choose to resize or break the view

    See Also:
    :   - [`View.getPreferredSpan(int)`](View.md#getPreferredSpan(int))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Description copied from class: `BoxView`

    Determines the preferred span for this view along an
    axis.

    Overrides:
    :   `getPreferredSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS`
        or `View.Y_AXIS`

    Returns:
    :   the span the view would like to be rendered into >= 0;
        typically the view is told to render into the span
        that is returned, although there is no guarantee;
        the parent may choose to resize or break the view
  + ### layoutMajorAxis

    protected void layoutMajorAxis(int targetSpan,
    int axis,
    int[] offsets,
    int[] spans)

    Perform layout for the major axis of the box (i.e. the
    axis that it represents). The results of the layout should
    be placed in the given arrays which represent the allocations
    to the children along the major axis.

    This is re-implemented to give each child the span of the column
    width for the table, and to give cells that span multiple columns
    the multi-column span.

    Overrides:
    :   `layoutMajorAxis` in class `BoxView`

    Parameters:
    :   `targetSpan` - the total span given to the view, which
        would be used to layout the children.
    :   `axis` - the axis being laid out.
    :   `offsets` - the offsets from the origin of the view for
        each of the child views. This is a return value and is
        filled in by the implementation of this method.
    :   `spans` - the span of each child view. This is a return
        value and is filled in by the implementation of this method.
  + ### layoutMinorAxis

    protected void layoutMinorAxis(int targetSpan,
    int axis,
    int[] offsets,
    int[] spans)

    Perform layout for the minor axis of the box (i.e. the
    axis orthogonal to the axis that it represents). The results
    of the layout should be placed in the given arrays which represent
    the allocations to the children along the minor axis. This
    is called by the superclass whenever the layout needs to be
    updated along the minor axis.

    This is implemented to delegate to the superclass, then adjust
    the span for any cell that spans multiple rows.

    Overrides:
    :   `layoutMinorAxis` in class `BoxView`

    Parameters:
    :   `targetSpan` - the total span given to the view, which
        would be used to layout the children.
    :   `axis` - the axis being laid out.
    :   `offsets` - the offsets from the origin of the view for
        each of the child views. This is a return value and is
        filled in by the implementation of this method.
    :   `spans` - the span of each child view. This is a return
        value and is filled in by the implementation of this method.
  + ### getResizeWeight

    public int getResizeWeight(int axis)

    Determines the resizability of the view along the
    given axis. A value of 0 or less is not resizable.

    Overrides:
    :   `getResizeWeight` in class `BoxView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the resize weight

    Throws:
    :   `IllegalArgumentException` - for an invalid axis
  + ### getViewAtPosition

    protected [View](View.md "class in javax.swing.text") getViewAtPosition(int pos,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") a)

    Fetches the child view that represents the given position in
    the model. This is implemented to walk through the children
    looking for a range that contains the given position. In this
    view the children do not necessarily have a one to one mapping
    with the child elements.

    Overrides:
    :   `getViewAtPosition` in class `CompositeView`

    Parameters:
    :   `pos` - the search position >= 0
    :   `a` - the allocation to the table on entry, and the
        allocation of the view containing the position on exit

    Returns:
    :   the view representing the given position, or
        `null` if there isn't one