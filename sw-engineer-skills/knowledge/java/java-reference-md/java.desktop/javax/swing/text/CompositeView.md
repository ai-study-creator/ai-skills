Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class CompositeView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

javax.swing.text.CompositeView

All Implemented Interfaces:
:   `SwingConstants`

Direct Known Subclasses:
:   `BoxView`

---

public abstract class CompositeView
extends [View](View.md "class in javax.swing.text")

`CompositeView` is an abstract `View`
implementation which manages one or more child views.
(Note that `CompositeView` is intended
for managing relatively small numbers of child views.)
`CompositeView` is intended to be used as
a starting point for `View` implementations,
such as `BoxView`, that will contain child
`View`s. Subclasses that wish to manage the
collection of child `View`s should use the
[`replace(int, int, javax.swing.text.View[])`](#replace(int,int,javax.swing.text.View%5B%5D)) method. As `View` invokes
`replace` during `DocumentListener`
notification, you normally won't need to directly
invoke `replace`.

While `CompositeView`
does not impose a layout policy on its child `View`s,
it does allow for inseting the child `View`s
it will contain. The insets can be set by either
[`setInsets(short, short, short, short)`](#setInsets(short,short,short,short)) or [`setParagraphInsets(javax.swing.text.AttributeSet)`](#setParagraphInsets(javax.swing.text.AttributeSet)).

In addition to the abstract methods of
[`View`](View.md "class in javax.swing.text"),
subclasses of `CompositeView` will need to
override:

* [`isBefore(int, int, java.awt.Rectangle)`](#isBefore(int,int,java.awt.Rectangle)) - Used to test if a given
  `View` location is before the visual space
  of the `CompositeView`.* [`isAfter(int, int, java.awt.Rectangle)`](#isAfter(int,int,java.awt.Rectangle)) - Used to test if a given
    `View` location is after the visual space
    of the `CompositeView`.* [`getViewAtPoint(int, int, java.awt.Rectangle)`](#getViewAtPoint(int,int,java.awt.Rectangle)) - Returns the view at
      a given visual location.* [`childAllocation(int, java.awt.Rectangle)`](#childAllocation(int,java.awt.Rectangle)) - Returns the bounds of
        a particular child `View`.
        `getChildAllocation` will invoke
        `childAllocation` after offsetting
        the bounds by the `Inset`s of the
        `CompositeView`.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompositeView(Element elem)`

  Constructs a `CompositeView` for the given element.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract void`

  `childAllocation(int index,
  Rectangle a)`

  Returns the allocation for a given child.

  `protected boolean`

  `flipEastAndWestAtEnds(int position,
  Position.Bias bias)`

  Determines in which direction the next view lays.

  `protected short`

  `getBottomInset()`

  Gets the bottom inset.

  `Shape`

  `getChildAllocation(int index,
  Shape a)`

  Fetches the allocation for the given child view to
  render into.

  `protected Rectangle`

  `getInsideAllocation(Shape a)`

  Translates the immutable allocation given to the view
  to a mutable allocation that represents the interior
  allocation (i.e.

  `protected short`

  `getLeftInset()`

  Gets the left inset.

  `protected int`

  `getNextEastWestVisualPositionFrom(int pos,
  Position.Bias b,
  Shape a,
  int direction,
  Position.Bias[] biasRet)`

  Returns the next visual position for the cursor, in either the
  east or west direction.

  `protected int`

  `getNextNorthSouthVisualPositionFrom(int pos,
  Position.Bias b,
  Shape a,
  int direction,
  Position.Bias[] biasRet)`

  Returns the next visual position for the cursor, in either the
  north or south direction.

  `int`

  `getNextVisualPositionFrom(int pos,
  Position.Bias b,
  Shape a,
  int direction,
  Position.Bias[] biasRet)`

  Provides a way to determine the next visually represented model
  location that one might place a caret.

  `protected short`

  `getRightInset()`

  Gets the right inset.

  `protected short`

  `getTopInset()`

  Gets the top inset.

  `View`

  `getView(int n)`

  Returns the n-th view in this container.

  `protected abstract View`

  `getViewAtPoint(int x,
  int y,
  Rectangle alloc)`

  Fetches the child view at the given coordinates.

  `protected View`

  `getViewAtPosition(int pos,
  Rectangle a)`

  Fetches the child view that represents the given position in
  the model.

  `int`

  `getViewCount()`

  Returns the number of child views of this view.

  `int`

  `getViewIndex(int pos,
  Position.Bias b)`

  Returns the child view index representing the given
  position in the model.

  `protected int`

  `getViewIndexAtPosition(int pos)`

  Fetches the child view index representing the given position in
  the model.

  `protected abstract boolean`

  `isAfter(int x,
  int y,
  Rectangle alloc)`

  Tests whether a point lies after the rectangle range.

  `protected abstract boolean`

  `isBefore(int x,
  int y,
  Rectangle alloc)`

  Tests whether a point lies before the rectangle range.

  `protected void`

  `loadChildren(ViewFactory f)`

  Loads all of the children to initialize the view.

  `Shape`

  `modelToView(int pos,
  Shape a,
  Position.Bias b)`

  Provides a mapping from the document model coordinate space
  to the coordinate space of the view mapped to it.

  `Shape`

  `modelToView(int p0,
  Position.Bias b0,
  int p1,
  Position.Bias b1,
  Shape a)`

  Provides a mapping from the document model coordinate space
  to the coordinate space of the view mapped to it.

  `void`

  `replace(int offset,
  int length,
  View[] views)`

  Replaces child views.

  `protected void`

  `setInsets(short top,
  short left,
  short bottom,
  short right)`

  Sets the insets for the view.

  `protected void`

  `setParagraphInsets(AttributeSet attr)`

  Sets the insets from the paragraph attributes specified in
  the given attributes.

  `void`

  `setParent(View parent)`

  Sets the parent of the view.

  `int`

  `viewToModel(float x,
  float y,
  Shape a,
  Position.Bias[] bias)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdate, forwardUpdateToView, getAlignment, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getMaximumSpan, getMinimumSpan, getParent, getPreferredSpan, getResizeWeight, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, paint, preferenceChanged, remove, removeAll, removeUpdate, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CompositeView

    public CompositeView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a `CompositeView` for the given element.

    Parameters:
    :   `elem` - the element this view is responsible for
* ## Method Details

  + ### loadChildren

    protected void loadChildren([ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Loads all of the children to initialize the view.
    This is called by the [`setParent(javax.swing.text.View)`](#setParent(javax.swing.text.View))
    method. Subclasses can reimplement this to initialize
    their child views in a different manner. The default
    implementation creates a child view for each
    child element.

    Parameters:
    :   `f` - the view factory

    See Also:
    :   - [`setParent(javax.swing.text.View)`](#setParent(javax.swing.text.View))
  + ### setParent

    public void setParent([View](View.md "class in javax.swing.text") parent)

    Sets the parent of the view.
    This is reimplemented to provide the superclass
    behavior as well as calling the `loadChildren`
    method if this view does not already have children.
    The children should not be loaded in the
    constructor because the act of setting the parent
    may cause them to try to search up the hierarchy
    (to get the hosting `Container` for example).
    If this view has children (the view is being moved
    from one place in the view hierarchy to another),
    the `loadChildren` method will not be called.

    Overrides:
    :   `setParent` in class `View`

    Parameters:
    :   `parent` - the parent of the view, `null` if none
  + ### getViewCount

    public int getViewCount()

    Returns the number of child views of this view.

    Overrides:
    :   `getViewCount` in class `View`

    Returns:
    :   the number of views >= 0

    See Also:
    :   - [`getView(int)`](#getView(int))
  + ### getView

    public [View](View.md "class in javax.swing.text") getView(int n)

    Returns the n-th view in this container.

    Overrides:
    :   `getView` in class `View`

    Parameters:
    :   `n` - the number of the desired view, >= 0 && < getViewCount()

    Returns:
    :   the view at index `n`
  + ### replace

    public void replace(int offset,
    int length,
    [View](View.md "class in javax.swing.text")[] views)

    Replaces child views. If there are no views to remove
    this acts as an insert. If there are no views to
    add this acts as a remove. Views being removed will
    have the parent set to `null`,
    and the internal reference to them removed so that they
    may be garbage collected.

    Overrides:
    :   `replace` in class `View`

    Parameters:
    :   `offset` - the starting index into the child views to insert
        the new views; >= 0 and <= getViewCount
    :   `length` - the number of existing child views to remove;
        this should be a value >= 0 and <= (getViewCount() - offset)
    :   `views` - the child views to add; this value can be
        `null`
        to indicate no children are being added (useful to remove)
  + ### getChildAllocation

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") getChildAllocation(int index,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Fetches the allocation for the given child view to
    render into. This enables finding out where various views
    are located.

    Overrides:
    :   `getChildAllocation` in class `View`

    Parameters:
    :   `index` - the index of the child, >= 0 && < getViewCount()
    :   `a` - the allocation to this view

    Returns:
    :   the allocation to the child
  + ### modelToView

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") modelToView(int pos,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Provides a mapping from the document model coordinate space
    to the coordinate space of the view mapped to it.

    Specified by:
    :   `modelToView` in class `View`

    Parameters:
    :   `pos` - the position to convert >= 0
    :   `a` - the allocated region to render into
    :   `b` - a bias value of either `Position.Bias.Forward`
        or `Position.Bias.Backward`

    Returns:
    :   the bounding box of the given position

    Throws:
    :   `BadLocationException` - if the given position does
        not represent a valid location in the associated document

    See Also:
    :   - [`View.modelToView(int, java.awt.Shape, javax.swing.text.Position.Bias)`](View.md#modelToView(int,java.awt.Shape,javax.swing.text.Position.Bias))
  + ### modelToView

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") modelToView(int p0,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b0,
    int p1,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Provides a mapping from the document model coordinate space
    to the coordinate space of the view mapped to it.

    Overrides:
    :   `modelToView` in class `View`

    Parameters:
    :   `p0` - the position to convert >= 0
    :   `b0` - the bias toward the previous character or the
        next character represented by p0, in case the
        position is a boundary of two views; either
        `Position.Bias.Forward` or
        `Position.Bias.Backward`
    :   `p1` - the position to convert >= 0
    :   `b1` - the bias toward the previous character or the
        next character represented by p1, in case the
        position is a boundary of two views
    :   `a` - the allocated region to render into

    Returns:
    :   the bounding box of the given position is returned

    Throws:
    :   `BadLocationException` - if the given position does
        not represent a valid location in the associated document
    :   `IllegalArgumentException` - for an invalid bias argument

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))
  + ### viewToModel

    public int viewToModel(float x,
    float y,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] bias)

    Provides a mapping from the view coordinate space to the logical
    coordinate space of the model.

    Specified by:
    :   `viewToModel` in class `View`

    Parameters:
    :   `x` - x coordinate of the view location to convert >= 0
    :   `y` - y coordinate of the view location to convert >= 0
    :   `a` - the allocated region to render into
    :   `bias` - either `Position.Bias.Forward` or
        `Position.Bias.Backward`

    Returns:
    :   the location within the model that best represents the
        given point in the view >= 0

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))
  + ### getNextVisualPositionFrom

    public int getNextVisualPositionFrom(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Provides a way to determine the next visually represented model
    location that one might place a caret. Some views may not be visible,
    they might not be in the same order found in the model, or they just
    might not allow access to some of the locations in the model.
    This is a convenience method for [`getNextNorthSouthVisualPositionFrom(int, javax.swing.text.Position.Bias, java.awt.Shape, int, javax.swing.text.Position.Bias[])`](#getNextNorthSouthVisualPositionFrom(int,javax.swing.text.Position.Bias,java.awt.Shape,int,javax.swing.text.Position.Bias%5B%5D))
    and [`getNextEastWestVisualPositionFrom(int, javax.swing.text.Position.Bias, java.awt.Shape, int, javax.swing.text.Position.Bias[])`](#getNextEastWestVisualPositionFrom(int,javax.swing.text.Position.Bias,java.awt.Shape,int,javax.swing.text.Position.Bias%5B%5D)).
    This method enables specifying a position to convert
    within the range of >=0. If the value is -1, a position
    will be calculated automatically. If the value < -1,
    the `BadLocationException` will be thrown.

    Overrides:
    :   `getNextVisualPositionFrom` in class `View`

    Parameters:
    :   `pos` - the position to convert
    :   `b` - a bias value of either `Position.Bias.Forward`
        or `Position.Bias.Backward`
    :   `a` - the allocated region to render into
    :   `direction` - the direction from the current position that can
        be thought of as the arrow keys typically found on a keyboard;
        this may be one of the following:
        - `SwingConstants.WEST`- `SwingConstants.EAST`- `SwingConstants.NORTH`- `SwingConstants.SOUTH`
    :   `biasRet` - an array containing the bias that was checked

    Returns:
    :   the location within the model that best represents the next
        location visual position

    Throws:
    :   `BadLocationException` - the given position is not a valid
        position within the document
    :   `IllegalArgumentException` - if `direction` is invalid
  + ### getViewIndex

    public int getViewIndex(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b)

    Returns the child view index representing the given
    position in the model. This is implemented to call the
    `getViewIndexByPosition`
    method for backward compatibility.

    Overrides:
    :   `getViewIndex` in class `View`

    Parameters:
    :   `pos` - the position >= 0
    :   `b` - the bias

    Returns:
    :   index of the view representing the given position, or
        -1 if no view represents that position

    Since:
    :   1.3
  + ### isBefore

    protected abstract boolean isBefore(int x,
    int y,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") alloc)

    Tests whether a point lies before the rectangle range.

    Parameters:
    :   `x` - the X coordinate >= 0
    :   `y` - the Y coordinate >= 0
    :   `alloc` - the rectangle

    Returns:
    :   true if the point is before the specified range
  + ### isAfter

    protected abstract boolean isAfter(int x,
    int y,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") alloc)

    Tests whether a point lies after the rectangle range.

    Parameters:
    :   `x` - the X coordinate >= 0
    :   `y` - the Y coordinate >= 0
    :   `alloc` - the rectangle

    Returns:
    :   true if the point is after the specified range
  + ### getViewAtPoint

    protected abstract [View](View.md "class in javax.swing.text") getViewAtPoint(int x,
    int y,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") alloc)

    Fetches the child view at the given coordinates.

    Parameters:
    :   `x` - the X coordinate >= 0
    :   `y` - the Y coordinate >= 0
    :   `alloc` - the parent's allocation on entry, which should
        be changed to the child's allocation on exit

    Returns:
    :   the child view
  + ### childAllocation

    protected abstract void childAllocation(int index,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") a)

    Returns the allocation for a given child.

    Parameters:
    :   `index` - the index of the child, >= 0 && < getViewCount()
    :   `a` - the allocation to the interior of the box on entry,
        and the allocation of the child view at the index on exit.
  + ### getViewAtPosition

    protected [View](View.md "class in javax.swing.text") getViewAtPosition(int pos,
    [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") a)

    Fetches the child view that represents the given position in
    the model. This is implemented to fetch the view in the case
    where there is a child view for each child element.

    Parameters:
    :   `pos` - the position >= 0
    :   `a` - the allocation to the interior of the box on entry,
        and the allocation of the view containing the position on exit

    Returns:
    :   the view representing the given position, or
        `null` if there isn't one
  + ### getViewIndexAtPosition

    protected int getViewIndexAtPosition(int pos)

    Fetches the child view index representing the given position in
    the model. This is implemented to fetch the view in the case
    where there is a child view for each child element.

    Parameters:
    :   `pos` - the position >= 0

    Returns:
    :   index of the view representing the given position, or
        -1 if no view represents that position
  + ### getInsideAllocation

    protected [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getInsideAllocation([Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Translates the immutable allocation given to the view
    to a mutable allocation that represents the interior
    allocation (i.e. the bounds of the given allocation
    with the top, left, bottom, and right insets removed.
    It is expected that the returned value would be further
    mutated to represent an allocation to a child view.
    This is implemented to reuse an instance variable so
    it avoids creating excessive Rectangles. Typically
    the result of calling this method would be fed to
    the `childAllocation` method.

    Parameters:
    :   `a` - the allocation given to the view

    Returns:
    :   the allocation that represents the inside of the
        view after the margins have all been removed; if the
        given allocation was `null`,
        the return value is `null`
  + ### setParagraphInsets

    protected void setParagraphInsets([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Sets the insets from the paragraph attributes specified in
    the given attributes.

    Parameters:
    :   `attr` - the attributes
  + ### setInsets

    protected void setInsets(short top,
    short left,
    short bottom,
    short right)

    Sets the insets for the view.

    Parameters:
    :   `top` - the top inset >= 0
    :   `left` - the left inset >= 0
    :   `bottom` - the bottom inset >= 0
    :   `right` - the right inset >= 0
  + ### getLeftInset

    protected short getLeftInset()

    Gets the left inset.

    Returns:
    :   the inset >= 0
  + ### getRightInset

    protected short getRightInset()

    Gets the right inset.

    Returns:
    :   the inset >= 0
  + ### getTopInset

    protected short getTopInset()

    Gets the top inset.

    Returns:
    :   the inset >= 0
  + ### getBottomInset

    protected short getBottomInset()

    Gets the bottom inset.

    Returns:
    :   the inset >= 0
  + ### getNextNorthSouthVisualPositionFrom

    protected int getNextNorthSouthVisualPositionFrom(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the next visual position for the cursor, in either the
    north or south direction.

    Parameters:
    :   `pos` - the position to convert >= 0
    :   `b` - a bias value of either `Position.Bias.Forward`
        or `Position.Bias.Backward`
    :   `a` - the allocated region to render into
    :   `direction` - the direction from the current position that can
        be thought of as the arrow keys typically found on a keyboard;
        this may be one of the following:
        - `SwingConstants.NORTH`- `SwingConstants.SOUTH`
    :   `biasRet` - an array containing the bias that was checked

    Returns:
    :   the location within the model that best represents the next
        north or south location

    Throws:
    :   `BadLocationException` - for a bad location within a document model
    :   `IllegalArgumentException` - if `direction` is invalid

    See Also:
    :   - [`getNextVisualPositionFrom(int, javax.swing.text.Position.Bias, java.awt.Shape, int, javax.swing.text.Position.Bias[])`](#getNextVisualPositionFrom(int,javax.swing.text.Position.Bias,java.awt.Shape,int,javax.swing.text.Position.Bias%5B%5D))
  + ### getNextEastWestVisualPositionFrom

    protected int getNextEastWestVisualPositionFrom(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the next visual position for the cursor, in either the
    east or west direction.

    Parameters:
    :   `pos` - the position to convert >= 0
    :   `b` - a bias value of either `Position.Bias.Forward`
        or `Position.Bias.Backward`
    :   `a` - the allocated region to render into
    :   `direction` - the direction from the current position that can
        be thought of as the arrow keys typically found on a keyboard;
        this may be one of the following:
        - `SwingConstants.WEST`- `SwingConstants.EAST`
    :   `biasRet` - an array containing the bias that was checked

    Returns:
    :   the location within the model that best represents the next
        west or east location

    Throws:
    :   `BadLocationException` - for a bad location within a document model
    :   `IllegalArgumentException` - if `direction` is invalid

    See Also:
    :   - [`getNextVisualPositionFrom(int, javax.swing.text.Position.Bias, java.awt.Shape, int, javax.swing.text.Position.Bias[])`](#getNextVisualPositionFrom(int,javax.swing.text.Position.Bias,java.awt.Shape,int,javax.swing.text.Position.Bias%5B%5D))
  + ### flipEastAndWestAtEnds

    protected boolean flipEastAndWestAtEnds(int position,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Determines in which direction the next view lays.
    Consider the `View` at index n. Typically the
    `View`s are laid out from left to right,
    so that the `View` to the EAST will be
    at index n + 1, and the `View` to the WEST
    will be at index n - 1. In certain situations,
    such as with bidirectional text, it is possible
    that the `View` to EAST is not at index n + 1,
    but rather at index n - 1, or that the `View`
    to the WEST is not at index n - 1, but index n + 1.
    In this case this method would return true, indicating the
    `View`s are laid out in descending order.

    This unconditionally returns false, subclasses should override this
    method if there is the possibility for laying `View`s in
    descending order.

    Parameters:
    :   `position` - position into the model
    :   `bias` - either `Position.Bias.Forward` or
        `Position.Bias.Backward`

    Returns:
    :   false