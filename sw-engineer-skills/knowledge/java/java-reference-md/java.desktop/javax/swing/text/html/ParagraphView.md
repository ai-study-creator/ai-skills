Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class ParagraphView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](../CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](../BoxView.md "class in javax.swing.text")

[javax.swing.text.FlowView](../FlowView.md "class in javax.swing.text")

[javax.swing.text.ParagraphView](../ParagraphView.md "class in javax.swing.text")

javax.swing.text.html.ParagraphView

All Implemented Interfaces:
:   `SwingConstants`, `TabExpander`

---

public class ParagraphView
extends [ParagraphView](../ParagraphView.md "class in javax.swing.text")

Displays the paragraph and uses CSS attributes for its
configuration.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[FlowView](../FlowView.md "class in javax.swing.text")

  `FlowView.FlowStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[ParagraphView](../ParagraphView.md "class in javax.swing.text")

  `firstLineIndent`

  ### Fields inherited from class javax.swing.text.[FlowView](../FlowView.md "class in javax.swing.text")

  `layoutPool, layoutSpan, strategy`

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParagraphView(Element elem)`

  Constructs a ParagraphView for the given element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected SizeRequirements`

  `calculateMinorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculate the needs for the paragraph along the minor axis.

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

  Determines the preferred span for this view.

  `protected StyleSheet`

  `getStyleSheet()`

  Convenient method to get the StyleSheet.

  `boolean`

  `isVisible()`

  Indicates whether or not this view should be
  displayed.

  `void`

  `paint(Graphics g,
  Shape a)`

  Renders using the given rendering surface and area on that
  surface.

  `void`

  `setParent(View parent)`

  Establishes the parent view for this view.

  `protected void`

  `setPropertiesFromAttributes()`

  Sets up the paragraph from css attributes instead of
  the values found in StyleConstants (i.e.

  ### Methods inherited from class javax.swing.text.[ParagraphView](../ParagraphView.md "class in javax.swing.text")

  `breakView, changedUpdate, createRow, findOffsetToCharactersInString, flipEastAndWestAtEnds, getAlignment, getBreakWeight, getClosestPositionTo, getFlowSpan, getFlowStart, getLayoutView, getLayoutViewCount, getNextNorthSouthVisualPositionFrom, getPartialSize, getTabBase, getTabSet, nextTabStop, setFirstLineIndent, setJustification, setLineSpacing`

  ### Methods inherited from class javax.swing.text.[FlowView](../FlowView.md "class in javax.swing.text")

  `getFlowAxis, getViewIndexAtPosition, insertUpdate, layout, loadChildren, removeUpdate`

  ### Methods inherited from class javax.swing.text.[BoxView](../BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, childAllocation, forwardUpdate, getAxis, getChildAllocation, getHeight, getOffset, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layoutChanged, layoutMajorAxis, layoutMinorAxis, modelToView, paintChild, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](../CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, modelToView, setInsets, setParagraphInsets`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdateToView, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, modelToView, remove, removeAll, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ParagraphView

    public ParagraphView([Element](../Element.md "interface in javax.swing.text") elem)

    Constructs a ParagraphView for the given element.

    Parameters:
    :   `elem` - the element that this view is responsible for
* ## Method Details

  + ### setParent

    public void setParent([View](../View.md "class in javax.swing.text") parent)

    Establishes the parent view for this view. This is
    guaranteed to be called before any other methods if the
    parent view is functioning properly.

    This is implemented
    to forward to the superclass as well as call the
    [`setPropertiesFromAttributes`](#setPropertiesFromAttributes())
    method to set the paragraph properties from the css
    attributes. The call is made at this time to ensure
    the ability to resolve upward through the parents
    view attributes.

    Overrides:
    :   `setParent` in class `FlowView`

    Parameters:
    :   `parent` - the new parent, or null if the view is
        being removed from a parent it was previously added
        to
  + ### getAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getAttributes()

    Fetches the attributes to use when rendering. This is
    implemented to multiplex the attributes specified in the
    model with a StyleSheet.

    Overrides:
    :   `getAttributes` in class `View`

    Returns:
    :   the attributes to use when rendering
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Sets up the paragraph from css attributes instead of
    the values found in StyleConstants (i.e. which are used
    by the superclass). Since

    Overrides:
    :   `setPropertiesFromAttributes` in class `ParagraphView`
  + ### getStyleSheet

    protected [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Convenient method to get the StyleSheet.

    Returns:
    :   the StyleSheet
  + ### calculateMinorAxisRequirements

    protected [SizeRequirements](../../SizeRequirements.md "class in javax.swing") calculateMinorAxisRequirements(int axis,
    [SizeRequirements](../../SizeRequirements.md "class in javax.swing") r)

    Calculate the needs for the paragraph along the minor axis.

    If size requirements are explicitly specified for the paragraph,
    use that requirements. Otherwise, use the requirements of the
    superclass [`ParagraphView`](../ParagraphView.md "class in javax.swing.text").

    If the `axis` parameter is neither `View.X_AXIS` nor
    `View.Y_AXIS`, [`IllegalArgumentException`](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") is thrown. If the
    `r` parameter is `null,` a new `SizeRequirements`
    object is created, otherwise the supplied `SizeRequirements`
    object is returned.

    Overrides:
    :   `calculateMinorAxisRequirements` in class `ParagraphView`

    Parameters:
    :   `axis` - the minor axis
    :   `r` - the input `SizeRequirements` object

    Returns:
    :   the new or adjusted `SizeRequirements` object

    Throws:
    :   `IllegalArgumentException` - if the `axis` parameter is invalid

    See Also:
    :   - [`SizeRequirements`](../../SizeRequirements.md "class in javax.swing")
  + ### isVisible

    public boolean isVisible()

    Indicates whether or not this view should be
    displayed. If none of the children wish to be
    displayed and the only visible child is the
    break that ends the paragraph, the paragraph
    will not be considered visible. Otherwise,
    it will be considered visible and return true.

    Overrides:
    :   `isVisible` in class `View`

    Returns:
    :   true if the paragraph should be displayed
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a)

    Renders using the given rendering surface and area on that
    surface. This is implemented to delegate to the superclass
    after stashing the base coordinate for tab calculations.

    Overrides:
    :   `paint` in class `ParagraphView`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](../View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view. Returns
    0 if the view is not visible, otherwise it calls the
    superclass method to get the preferred span.
    axis.

    Overrides:
    :   `getPreferredSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into;
        typically the view is told to render into the span
        that is returned, although there is no guarantee;
        the parent may choose to resize or break the view

    See Also:
    :   - [`BoxView.getPreferredSpan(int)`](../BoxView.md#getPreferredSpan(int))
  + ### getMinimumSpan

    public float getMinimumSpan(int axis)

    Determines the minimum span for this view along an
    axis. Returns 0 if the view is not visible, otherwise
    it calls the superclass method to get the minimum span.

    Overrides:
    :   `getMinimumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS` or
        `View.Y_AXIS`

    Returns:
    :   the minimum span the view can be rendered into

    See Also:
    :   - [`BoxView.getMinimumSpan(int)`](../BoxView.md#getMinimumSpan(int))
  + ### getMaximumSpan

    public float getMaximumSpan(int axis)

    Determines the maximum span for this view along an
    axis. Returns 0 if the view is not visible, otherwise
    it calls the superclass method ot get the maximum span.

    Overrides:
    :   `getMaximumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS` or
        `View.Y_AXIS`

    Returns:
    :   the maximum span the view can be rendered into

    See Also:
    :   - [`BoxView.getMaximumSpan(int)`](../BoxView.md#getMaximumSpan(int))