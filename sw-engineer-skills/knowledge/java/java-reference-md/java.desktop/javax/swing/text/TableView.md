Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TableView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

javax.swing.text.TableView

All Implemented Interfaces:
:   `SwingConstants`

---

public abstract class TableView
extends [BoxView](BoxView.md "class in javax.swing.text")

Implements View interface for a table, that is composed of an
element structure where the child elements of the element
this view is responsible for represent rows and the child
elements of the row elements are cells. The cell elements can
have an arbitrary element structure under them, which will
be built with the ViewFactory returned by the getViewFactory
method.

```
    TABLE
      ROW
        CELL
        CELL
      ROW
        CELL
        CELL
```

This is implemented as a hierarchy of boxes, the table itself
is a vertical box, the rows are horizontal boxes, and the cells
are vertical boxes. The cells are allowed to span multiple
columns and rows. By default, the table can be thought of as
being formed over a grid (i.e. somewhat like one would find in
gridbag layout), where table cells can request to span more
than one grid cell. The default horizontal span of table cells
will be based upon this grid, but can be changed by reimplementing
the requested span of the cell (i.e. table cells can have independent
spans if desired).

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `TableView.TableCell`

  Deprecated.

  A table cell can now be any View implementation.

  `class`

  `TableView.TableRow`

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

  `TableView(Element elem)`

  Constructs a TableView for the given element.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected SizeRequirements`

  `calculateMinorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculate the requirements for the minor axis.

  `protected TableView.TableCell`

  `createTableCell(Element elem)`

  Deprecated.

  Table cells can now be any arbitrary
  View implementation and should be produced by the
  ViewFactory rather than the table.

  `protected TableView.TableRow`

  `createTableRow(Element elem)`

  Creates a new table row.

  `protected void`

  `forwardUpdate(DocumentEvent.ElementChange ec,
  DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Forwards the given `DocumentEvent` to the child views
  that need to be notified of the change to the model.

  `protected View`

  `getViewAtPosition(int pos,
  Rectangle a)`

  Fetches the child view that represents the given position in
  the model.

  `protected void`

  `layoutColumns(int targetSpan,
  int[] offsets,
  int[] spans,
  SizeRequirements[] reqs)`

  Lays out the columns to fit within the given target span.

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

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, childAllocation, flipEastAndWestAtEnds, getAlignment, getAxis, getChildAllocation, getHeight, getMaximumSpan, getMinimumSpan, getOffset, getPreferredSpan, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, modelToView, paint, paintChild, preferenceChanged, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewCount, getViewIndex, getViewIndexAtPosition, loadChildren, modelToView, setInsets, setParagraphInsets, setParent`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, remove, removeAll, removeUpdate, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TableView

    public TableView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a TableView for the given element.

    Parameters:
    :   `elem` - the element that this view is responsible for
* ## Method Details

  + ### createTableRow

    protected [TableView.TableRow](TableView.TableRow.md "class in javax.swing.text") createTableRow([Element](Element.md "interface in javax.swing.text") elem)

    Creates a new table row.

    Parameters:
    :   `elem` - an element

    Returns:
    :   the row
  + ### createTableCell

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [TableView.TableCell](TableView.TableCell.md "class in javax.swing.text") createTableCell([Element](Element.md "interface in javax.swing.text") elem)

    Deprecated.

    Table cells can now be any arbitrary
    View implementation and should be produced by the
    ViewFactory rather than the table.

    Parameters:
    :   `elem` - an element

    Returns:
    :   the cell
  + ### forwardUpdate

    protected void forwardUpdate([DocumentEvent.ElementChange](../event/DocumentEvent.ElementChange.md "interface in javax.swing.event") ec,
    [DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Description copied from class: `BoxView`

    Forwards the given `DocumentEvent` to the child views
    that need to be notified of the change to the model.
    If a child changed its requirements and the allocation
    was valid prior to forwarding the portion of the box
    from the starting child to the end of the box will
    be repainted.

    Overrides:
    :   `forwardUpdate` in class `BoxView`

    Parameters:
    :   `ec` - changes to the element this view is responsible
        for (may be `null` if there were no changes)
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
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
  + ### layoutColumns

    protected void layoutColumns(int targetSpan,
    int[] offsets,
    int[] spans,
    [SizeRequirements](../SizeRequirements.md "class in javax.swing")[] reqs)

    Lays out the columns to fit within the given target span.
    Returns the results through `offsets` and `spans`.

    Parameters:
    :   `targetSpan` - the given span for total of all the table
        columns
    :   `offsets` - the return value of the offset from the
        origin for each column
    :   `spans` - the return value of how much to allocated to
        each column
    :   `reqs` - the requirements desired for each column. This
        is the column maximum of the cells minimum, preferred, and
        maximum requested span
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

    This is implemented to call the
    [`layoutColumns`](#layoutColumns(int,int%5B%5D,int%5B%5D,javax.swing.SizeRequirements%5B%5D)) method, and then
    forward to the superclass to actually carry out the layout
    of the tables rows.

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
  + ### calculateMinorAxisRequirements

    protected [SizeRequirements](../SizeRequirements.md "class in javax.swing") calculateMinorAxisRequirements(int axis,
    [SizeRequirements](../SizeRequirements.md "class in javax.swing") r)

    Calculate the requirements for the minor axis. This is called by
    the superclass whenever the requirements need to be updated (i.e.
    a preferenceChanged was messaged through this view).

    This is implemented to calculate the requirements as the sum of the
    requirements of the columns.

    Overrides:
    :   `calculateMinorAxisRequirements` in class `BoxView`

    Parameters:
    :   `axis` - the axis being studied
    :   `r` - the `SizeRequirements` object;
        if `null` one will be created

    Returns:
    :   the newly initialized `SizeRequirements` object

    See Also:
    :   - [`SizeRequirements`](../SizeRequirements.md "class in javax.swing")
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