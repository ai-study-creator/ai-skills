Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class ParagraphView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

[javax.swing.text.FlowView](FlowView.md "class in javax.swing.text")

javax.swing.text.ParagraphView

All Implemented Interfaces:
:   `SwingConstants`, `TabExpander`

Direct Known Subclasses:
:   `ParagraphView`

---

public class ParagraphView
extends [FlowView](FlowView.md "class in javax.swing.text")
implements [TabExpander](TabExpander.md "interface in javax.swing.text")

View of a simple line-wrapping paragraph that supports
multiple fonts, colors, components, icons, etc. It is
basically a vertical box with a margin around it. The
contents of the box are a bunch of rows which are special
horizontal boxes. This view creates a collection of
views that represent the child elements of the paragraph
element. Each of these views are placed into a row
directly if they will fit, otherwise the `breakView`
method is called to try and carve the view into pieces
that fit.

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[FlowView](FlowView.md "class in javax.swing.text")

  `FlowView.FlowStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `firstLineIndent`

  Indentation for the first line, from the left inset.

  ### Fields inherited from class javax.swing.text.[FlowView](FlowView.md "class in javax.swing.text")

  `layoutPool, layoutSpan, strategy`

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParagraphView(Element elem)`

  Constructs a `ParagraphView` for the given element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `View`

  `breakView(int axis,
  float len,
  Shape a)`

  Breaks this view on the given axis at the given length.

  `protected SizeRequirements`

  `calculateMinorAxisRequirements(int axis,
  SizeRequirements r)`

  Calculate the needs for the paragraph along the minor axis.

  `void`

  `changedUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `protected View`

  `createRow()`

  Create a `View` that should be used to hold a
  a row's worth of children in a flow.

  `protected int`

  `findOffsetToCharactersInString(char[] string,
  int start)`

  Finds the next character in the document with a character in
  `string`, starting at offset `start`.

  `protected boolean`

  `flipEastAndWestAtEnds(int position,
  Position.Bias bias)`

  Determines in which direction the next view lays.

  `float`

  `getAlignment(int axis)`

  Determines the desired alignment for this view along an
  axis.

  `int`

  `getBreakWeight(int axis,
  float len)`

  Gets the break weight for a given location.

  `protected int`

  `getClosestPositionTo(int pos,
  Position.Bias b,
  Shape a,
  int direction,
  Position.Bias[] biasRet,
  int rowIndex,
  int x)`

  Returns the closest model position to `x`.

  `int`

  `getFlowSpan(int index)`

  Fetches the constraining span to flow against for
  the given child index.

  `int`

  `getFlowStart(int index)`

  Fetches the location along the flow axis that the
  flow span will start at.

  `protected View`

  `getLayoutView(int index)`

  Returns the view at a given `index`.

  `protected int`

  `getLayoutViewCount()`

  Returns the number of views that this view is
  responsible for.

  `protected int`

  `getNextNorthSouthVisualPositionFrom(int pos,
  Position.Bias b,
  Shape a,
  int direction,
  Position.Bias[] biasRet)`

  Returns the next visual position for the cursor, in
  either the east or west direction.

  `protected float`

  `getPartialSize(int startOffset,
  int endOffset)`

  Returns the size used by the views between
  `startOffset` and `endOffset`.

  `protected float`

  `getTabBase()`

  Returns where the tabs are calculated from.

  `protected TabSet`

  `getTabSet()`

  Gets the `Tabset` to be used in calculating tabs.

  `float`

  `nextTabStop(float x,
  int tabOffset)`

  Returns the next tab stop position given a reference position.

  `void`

  `paint(Graphics g,
  Shape a)`

  Renders using the given rendering surface and area on that
  surface.

  `protected void`

  `setFirstLineIndent(float fi)`

  Sets the indent on the first line.

  `protected void`

  `setJustification(int j)`

  Sets the type of justification.

  `protected void`

  `setLineSpacing(float ls)`

  Sets the line spacing.

  `protected void`

  `setPropertiesFromAttributes()`

  Set the cached properties from the attributes.

  ### Methods inherited from class javax.swing.text.[FlowView](FlowView.md "class in javax.swing.text")

  `getFlowAxis, getViewIndexAtPosition, insertUpdate, layout, loadChildren, removeUpdate, setParent`

  ### Methods inherited from class javax.swing.text.[BoxView](BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, childAllocation, forwardUpdate, getAxis, getChildAllocation, getHeight, getMaximumSpan, getMinimumSpan, getOffset, getPreferredSpan, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layoutChanged, layoutMajorAxis, layoutMinorAxis, modelToView, paintChild, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, modelToView, setInsets, setParagraphInsets`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, isVisible, modelToView, remove, removeAll, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### firstLineIndent

    protected int firstLineIndent

    Indentation for the first line, from the left inset.
* ## Constructor Details

  + ### ParagraphView

    public ParagraphView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a `ParagraphView` for the given element.

    Parameters:
    :   `elem` - the element that this view is responsible for
* ## Method Details

  + ### setJustification

    protected void setJustification(int j)

    Sets the type of justification.

    Parameters:
    :   `j` - one of the following values:
        - `StyleConstants.ALIGN_LEFT`- `StyleConstants.ALIGN_CENTER`- `StyleConstants.ALIGN_RIGHT`
  + ### setLineSpacing

    protected void setLineSpacing(float ls)

    Sets the line spacing.

    Parameters:
    :   `ls` - the value is a factor of the line height
  + ### setFirstLineIndent

    protected void setFirstLineIndent(float fi)

    Sets the indent on the first line.

    Parameters:
    :   `fi` - the value in points
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Set the cached properties from the attributes.
  + ### getLayoutViewCount

    protected int getLayoutViewCount()

    Returns the number of views that this view is
    responsible for.
    The child views of the paragraph are rows which
    have been used to arrange pieces of the `View`s
    that represent the child elements. This is the number
    of views that have been tiled in two dimensions,
    and should be equivalent to the number of child elements
    to the element this view is responsible for.

    Returns:
    :   the number of views that this `ParagraphView`
        is responsible for
  + ### getLayoutView

    protected [View](View.md "class in javax.swing.text") getLayoutView(int index)

    Returns the view at a given `index`.
    The child views of the paragraph are rows which
    have been used to arrange pieces of the `Views`
    that represent the child elements. This methods returns
    the view responsible for the child element index
    (prior to breaking). These are the Views that were
    produced from a factory (to represent the child
    elements) and used for layout.

    Parameters:
    :   `index` - the `index` of the desired view

    Returns:
    :   the view at `index`
  + ### getNextNorthSouthVisualPositionFrom

    protected int getNextNorthSouthVisualPositionFrom(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the next visual position for the cursor, in
    either the east or west direction.
    Overridden from `CompositeView`.

    Overrides:
    :   `getNextNorthSouthVisualPositionFrom` in class `CompositeView`

    Parameters:
    :   `pos` - position into the model
    :   `b` - either `Position.Bias.Forward` or
        `Position.Bias.Backward`
    :   `a` - the allocated region to render into
    :   `direction` - either `SwingConstants.NORTH`
        or `SwingConstants.SOUTH`
    :   `biasRet` - an array containing the bias that were checked
        in this method

    Returns:
    :   the location in the model that represents the
        next location visual position

    Throws:
    :   `BadLocationException` - for a bad location within a document model

    See Also:
    :   - [`CompositeView.getNextVisualPositionFrom(int, javax.swing.text.Position.Bias, java.awt.Shape, int, javax.swing.text.Position.Bias[])`](CompositeView.md#getNextVisualPositionFrom(int,javax.swing.text.Position.Bias,java.awt.Shape,int,javax.swing.text.Position.Bias%5B%5D))
  + ### getClosestPositionTo

    protected int getClosestPositionTo(int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet,
    int rowIndex,
    int x)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the closest model position to `x`.
    `rowIndex` gives the index of the view that corresponds
    that should be looked in.

    Parameters:
    :   `pos` - position into the model
    :   `b` - the bias
    :   `a` - the allocated region to render into
    :   `direction` - one of the following values:
        - `SwingConstants.NORTH`- `SwingConstants.SOUTH`
    :   `biasRet` - an array containing the bias that were checked
        in this method
    :   `rowIndex` - the index of the view
    :   `x` - the x coordinate of interest

    Returns:
    :   the closest model position to `x`

    Throws:
    :   `BadLocationException` - if a bad location is encountered
  + ### flipEastAndWestAtEnds

    protected boolean flipEastAndWestAtEnds(int position,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Determines in which direction the next view lays.
    Consider the `View` at index n.
    Typically the `View`s are laid out
    from left to right, so that the `View`
    to the EAST will be at index n + 1, and the
    `View` to the WEST will be at index n - 1.
    In certain situations, such as with bidirectional text,
    it is possible that the `View` to EAST is not
    at index n + 1, but rather at index n - 1,
    or that the `View` to the WEST is not at
    index n - 1, but index n + 1. In this case this method
    would return true, indicating the `View`s are
    laid out in descending order.

    This will return true if the text is laid out right
    to left at position, otherwise false.

    Overrides:
    :   `flipEastAndWestAtEnds` in class `BoxView`

    Parameters:
    :   `position` - position into the model
    :   `bias` - either `Position.Bias.Forward` or
        `Position.Bias.Backward`

    Returns:
    :   true if the text is laid out right to left at
        position, otherwise false.
  + ### getFlowSpan

    public int getFlowSpan(int index)

    Fetches the constraining span to flow against for
    the given child index.

    Overrides:
    :   `getFlowSpan` in class `FlowView`

    Parameters:
    :   `index` - the index of the view being queried

    Returns:
    :   the constraining span for the given view at
        `index`

    Since:
    :   1.3

    See Also:
    :   - [`FlowView.getFlowStart(int)`](FlowView.md#getFlowStart(int))
  + ### getFlowStart

    public int getFlowStart(int index)

    Fetches the location along the flow axis that the
    flow span will start at.

    Overrides:
    :   `getFlowStart` in class `FlowView`

    Parameters:
    :   `index` - the index of the view being queried

    Returns:
    :   the location for the given view at
        `index`

    Since:
    :   1.3

    See Also:
    :   - [`FlowView.getFlowSpan(int)`](FlowView.md#getFlowSpan(int))
  + ### createRow

    protected [View](View.md "class in javax.swing.text") createRow()

    Create a `View` that should be used to hold a
    a row's worth of children in a flow.

    Specified by:
    :   `createRow` in class `FlowView`

    Returns:
    :   the new `View`

    Since:
    :   1.3
  + ### nextTabStop

    public float nextTabStop(float x,
    int tabOffset)

    Returns the next tab stop position given a reference position.
    This view implements the tab coordinate system, and calls
    `getTabbedSpan` on the logical children in the process
    of layout to determine the desired span of the children. The
    logical children can delegate their tab expansion upward to
    the paragraph which knows how to expand tabs.
    `LabelView` is an example of a view that delegates
    its tab expansion needs upward to the paragraph.

    This is implemented to try and locate a `TabSet`
    in the paragraph element's attribute set. If one can be
    found, its settings will be used, otherwise a default expansion
    will be provided. The base location for tab expansion
    is the left inset from the paragraphs most recent allocation
    (which is what the layout of the children is based upon).

    Specified by:
    :   `nextTabStop` in interface `TabExpander`

    Parameters:
    :   `x` - the X reference position
    :   `tabOffset` - the position within the text stream
        that the tab occurred at >= 0

    Returns:
    :   the trailing end of the tab expansion >= 0

    See Also:
    :   - [`TabSet`](TabSet.md "class in javax.swing.text")
        - [`TabStop`](TabStop.md "class in javax.swing.text")
        - [`LabelView`](LabelView.md "class in javax.swing.text")
  + ### getTabSet

    protected [TabSet](TabSet.md "class in javax.swing.text") getTabSet()

    Gets the `Tabset` to be used in calculating tabs.

    Returns:
    :   the `TabSet`
  + ### getPartialSize

    protected float getPartialSize(int startOffset,
    int endOffset)

    Returns the size used by the views between
    `startOffset` and `endOffset`.
    This uses `getPartialView` to calculate the
    size if the child view implements the
    `TabableView` interface. If a
    size is needed and a `View` does not implement
    the `TabableView` interface,
    the `preferredSpan` will be used.

    Parameters:
    :   `startOffset` - the starting document offset >= 0
    :   `endOffset` - the ending document offset >= startOffset

    Returns:
    :   the size >= 0
  + ### findOffsetToCharactersInString

    protected int findOffsetToCharactersInString(char[] string,
    int start)

    Finds the next character in the document with a character in
    `string`, starting at offset `start`. If
    there are no characters found, -1 will be returned.

    Parameters:
    :   `string` - the string of characters
    :   `start` - where to start in the model >= 0

    Returns:
    :   the document offset, or -1 if no characters found
  + ### getTabBase

    protected float getTabBase()

    Returns where the tabs are calculated from.

    Returns:
    :   where tabs are calculated from
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Renders using the given rendering surface and area on that
    surface. This is implemented to delegate to the superclass
    after stashing the base coordinate for tab calculations.

    Overrides:
    :   `paint` in class `BoxView`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### getAlignment

    public float getAlignment(int axis)

    Determines the desired alignment for this view along an
    axis. This is implemented to give the alignment to the
    center of the first row along the y axis, and the default
    along the x axis.

    Overrides:
    :   `getAlignment` in class `BoxView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS` or
        `View.Y_AXIS`

    Returns:
    :   the desired alignment. This should be a value
        between 0.0 and 1.0 inclusive, where 0 indicates alignment at the
        origin and 1.0 indicates alignment to the full span
        away from the origin. An alignment of 0.5 would be the
        center of the view.
  + ### breakView

    public [View](View.md "class in javax.swing.text") breakView(int axis,
    float len,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Breaks this view on the given axis at the given length.

    `ParagraphView` instances are breakable
    along the `Y_AXIS` only, and only if
    `len` is after the first line.

    Parameters:
    :   `axis` - may be either `View.X_AXIS`
        or `View.Y_AXIS`
    :   `len` - specifies where a potential break is desired
        along the given axis >= 0
    :   `a` - the current allocation of the view

    Returns:
    :   the fragment of the view that represents the
        given span, if the view can be broken; if the view
        doesn't support breaking behavior, the view itself is
        returned

    See Also:
    :   - [`View.breakView(int, int, float, float)`](View.md#breakView(int,int,float,float))
  + ### getBreakWeight

    public int getBreakWeight(int axis,
    float len)

    Gets the break weight for a given location.

    `ParagraphView` instances are breakable
    along the `Y_AXIS` only, and only if
    `len` is after the first row. If the length
    is less than one row, a value of `BadBreakWeight`
    is returned.

    Parameters:
    :   `axis` - may be either `View.X_AXIS`
        or `View.Y_AXIS`
    :   `len` - specifies where a potential break is desired >= 0

    Returns:
    :   a value indicating the attractiveness of breaking here;
        either `GoodBreakWeight` or `BadBreakWeight`

    See Also:
    :   - [`View.getBreakWeight(int, float, float)`](View.md#getBreakWeight(int,float,float))
  + ### calculateMinorAxisRequirements

    protected [SizeRequirements](../SizeRequirements.md "class in javax.swing") calculateMinorAxisRequirements(int axis,
    [SizeRequirements](../SizeRequirements.md "class in javax.swing") r)

    Calculate the needs for the paragraph along the minor axis.

    This uses size requirements of the superclass, modified to take into
    account the non-breakable areas at the adjacent views edges. The minimal
    size requirements for such views should be no less than the sum of all
    adjacent fragments.

    If the `axis` parameter is neither `View.X_AXIS` nor
    `View.Y_AXIS`, [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") is thrown. If the
    `r` parameter is `null,` a new `SizeRequirements`
    object is created, otherwise the supplied `SizeRequirements`
    object is returned.

    Overrides:
    :   `calculateMinorAxisRequirements` in class `FlowView`

    Parameters:
    :   `axis` - the minor axis
    :   `r` - the input `SizeRequirements` object

    Returns:
    :   the new or adjusted `SizeRequirements` object

    Throws:
    :   `IllegalArgumentException` - if the `axis` parameter is invalid

    See Also:
    :   - [`SizeRequirements`](../SizeRequirements.md "class in javax.swing")
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.

    Overrides:
    :   `changedUpdate` in class `FlowView`

    Parameters:
    :   `changes` - the change information from the
        associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))