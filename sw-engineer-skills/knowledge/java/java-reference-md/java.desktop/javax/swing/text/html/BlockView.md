Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class BlockView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](../CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](../BoxView.md "class in javax.swing.text")

javax.swing.text.html.BlockView

All Implemented Interfaces:
:   `SwingConstants`

Direct Known Subclasses:
:   `ListView`

---

public class BlockView
extends [BoxView](../BoxView.md "class in javax.swing.text")

A view implementation to display a block (as a box)
with CSS specifications.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BlockView(Element elem,
  int axis)`

  Creates a new view that represents an
  html box.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected SizeRequirements`

  `calculateMajorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculate the requirements of the block along the major
  axis (i.e.

  `protected SizeRequirements`

  `calculateMinorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculate the requirements of the block along the minor
  axis (i.e.

  `void`

  `changedUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `float`

  `getAlignment(int axis)`

  Gets the alignment.

  `AttributeSet`

  `getAttributes()`

  Fetches the attributes to use when rendering.

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

  Gets the resize weight.

  `protected StyleSheet`

  `getStyleSheet()`

  Convenient method to get the StyleSheet.

  `protected void`

  `layoutMinorAxis(int targetSpan,
  int axis,
  int[] offsets,
  int[] spans)`

  Performs layout for the minor axis of the box (i.e.

  `void`

  `paint(Graphics g,
  Shape allocation)`

  Renders using the given rendering surface and area on that
  surface.

  `void`

  `setParent(View parent)`

  Establishes the parent view for this view.

  `protected void`

  `setPropertiesFromAttributes()`

  Update any cached values that come from attributes.

  ### Methods inherited from class javax.swing.text.[BoxView](../BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAxis, getChildAllocation, getHeight, getOffset, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, modelToView, paintChild, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](../CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, getViewIndexAtPosition, loadChildren, modelToView, setInsets, setParagraphInsets`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdateToView, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, remove, removeAll, removeUpdate, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BlockView

    public BlockView([Element](../Element.md "interface in javax.swing.text") elem,
    int axis)

    Creates a new view that represents an
    html box. This can be used for a number
    of elements.

    Parameters:
    :   `elem` - the element to create a view for
    :   `axis` - either View.X\_AXIS or View.Y\_AXIS
* ## Method Details

  + ### setParent

    public void setParent([View](../View.md "class in javax.swing.text") parent)

    Establishes the parent view for this view. This is
    guaranteed to be called before any other methods if the
    parent view is functioning properly.

    This is implemented
    to forward to the superclass as well as call the
    [`setPropertiesFromAttributes()`](#setPropertiesFromAttributes())
    method to set the paragraph properties from the css
    attributes. The call is made at this time to ensure
    the ability to resolve upward through the parents
    view attributes.

    Overrides:
    :   `setParent` in class `CompositeView`

    Parameters:
    :   `parent` - the new parent, or null if the view is
        being removed from a parent it was previously added
        to
  + ### calculateMajorAxisRequirements

    protected [SizeRequirements](../../SizeRequirements.md "class in javax.swing") calculateMajorAxisRequirements(int axis,
    [SizeRequirements](../../SizeRequirements.md "class in javax.swing") r)

    Calculate the requirements of the block along the major
    axis (i.e. the axis along with it tiles). This is implemented
    to provide the superclass behavior and then adjust it if the
    CSS width or height attribute is specified and applicable to
    the axis.

    Overrides:
    :   `calculateMajorAxisRequirements` in class `BoxView`

    Parameters:
    :   `axis` - the axis being studied
    :   `r` - the `SizeRequirements` object;
        if `null` one will be created

    Returns:
    :   the newly initialized `SizeRequirements` object

    See Also:
    :   - [`SizeRequirements`](../../SizeRequirements.md "class in javax.swing")
  + ### calculateMinorAxisRequirements

    protected [SizeRequirements](../../SizeRequirements.md "class in javax.swing") calculateMinorAxisRequirements(int axis,
    [SizeRequirements](../../SizeRequirements.md "class in javax.swing") r)

    Calculate the requirements of the block along the minor
    axis (i.e. the axis orthogonal to the axis along with it tiles).
    This is implemented
    to provide the superclass behavior and then adjust it if the
    CSS width or height attribute is specified and applicable to
    the axis.

    Overrides:
    :   `calculateMinorAxisRequirements` in class `BoxView`

    Parameters:
    :   `axis` - the axis being studied
    :   `r` - the `SizeRequirements` object;
        if `null` one will be created

    Returns:
    :   the newly initialized `SizeRequirements` object

    See Also:
    :   - [`SizeRequirements`](../../SizeRequirements.md "class in javax.swing")
  + ### layoutMinorAxis

    protected void layoutMinorAxis(int targetSpan,
    int axis,
    int[] offsets,
    int[] spans)

    Performs layout for the minor axis of the box (i.e. the
    axis orthogonal to the axis that it represents). The results
    of the layout (the offset and span for each children) are
    placed in the given arrays which represent the allocations to
    the children along the minor axis.

    Overrides:
    :   `layoutMinorAxis` in class `BoxView`

    Parameters:
    :   `targetSpan` - the total span given to the view, which
        would be used to layout the children.
    :   `axis` - the axis being laid out
    :   `offsets` - the offsets from the origin of the view for
        each of the child views; this is a return value and is
        filled in by the implementation of this method
    :   `spans` - the span of each child view; this is a return
        value and is filled in by the implementation of this method
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") allocation)

    Renders using the given rendering surface and area on that
    surface. This is implemented to delegate to the css box
    painter to paint the border and background prior to the
    interior.

    Overrides:
    :   `paint` in class `BoxView`

    Parameters:
    :   `g` - the rendering surface to use
    :   `allocation` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](../View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### getAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getAttributes()

    Fetches the attributes to use when rendering. This is
    implemented to multiplex the attributes specified in the
    model with a StyleSheet.

    Overrides:
    :   `getAttributes` in class `View`

    Returns:
    :   the attributes to use when rendering
  + ### getResizeWeight

    public int getResizeWeight(int axis)

    Gets the resize weight.

    Overrides:
    :   `getResizeWeight` in class `BoxView`

    Parameters:
    :   `axis` - may be either X\_AXIS or Y\_AXIS

    Returns:
    :   the weight

    Throws:
    :   `IllegalArgumentException` - for an invalid axis
  + ### getAlignment

    public float getAlignment(int axis)

    Gets the alignment.

    Overrides:
    :   `getAlignment` in class `BoxView`

    Parameters:
    :   `axis` - may be either X\_AXIS or Y\_AXIS

    Returns:
    :   the alignment
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](../ViewFactory.md "interface in javax.swing.text") f)

    Description copied from class: `View`

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.
    To reduce the burden to subclasses, this functionality is
    spread out into the following calls that subclasses can
    reimplement:
    1. [`updateChildren`](../View.md#updateChildren(javax.swing.event.DocumentEvent.ElementChange,javax.swing.event.DocumentEvent,javax.swing.text.ViewFactory)) is called
       if there were any changes to the element this view is
       responsible for. If this view has child views that are
       represent the child elements, then this method should do
       whatever is necessary to make sure the child views correctly
       represent the model.+ [`forwardUpdate`](../View.md#forwardUpdate(javax.swing.event.DocumentEvent.ElementChange,javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory)) is called
         to forward the DocumentEvent to the appropriate child views.+ [`updateLayout`](../View.md#updateLayout(javax.swing.event.DocumentEvent.ElementChange,javax.swing.event.DocumentEvent,java.awt.Shape)) is called to
           give the view a chance to either repair its layout, to reschedule
           layout, or do nothing.

    Overrides:
    :   `changedUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

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

    Throws:
    :   `IllegalArgumentException` - for an invalid axis type
  + ### getMinimumSpan

    public float getMinimumSpan(int axis)

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

    Throws:
    :   `IllegalArgumentException` - for an invalid axis type

    See Also:
    :   - [`View.getPreferredSpan(int)`](../View.md#getPreferredSpan(int))
  + ### getMaximumSpan

    public float getMaximumSpan(int axis)

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

    Throws:
    :   `IllegalArgumentException` - for an invalid axis type

    See Also:
    :   - [`View.getPreferredSpan(int)`](../View.md#getPreferredSpan(int))
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Update any cached values that come from attributes.
  + ### getStyleSheet

    protected [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Convenient method to get the StyleSheet.

    Returns:
    :   the StyleSheet