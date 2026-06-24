Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class WrappedPlainView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

javax.swing.text.WrappedPlainView

All Implemented Interfaces:
:   `SwingConstants`, `TabExpander`

---

public class WrappedPlainView
extends [BoxView](BoxView.md "class in javax.swing.text")
implements [TabExpander](TabExpander.md "interface in javax.swing.text")

View of plain text (text with only one font and color)
that does line-wrapping. This view expects that its
associated element has child elements that represent
the lines it should be wrapping. It is implemented
as a vertical box that contains logical line views.
The logical line views are nested classes that render
the logical line as multiple physical line if the logical
line is too wide to fit within the allocation. The
line views draw upon the outer class for its state
to reduce their memory requirements.

The line views do all of their rendering through the
`drawLine` method which in turn does all of
its rendering through the `drawSelectedText`
and `drawUnselectedText` methods. This
enables subclasses to easily specialize the rendering
without concern for the layout aspects.

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WrappedPlainView(Element elem)`

  Creates a new WrappedPlainView.

  `WrappedPlainView(Element elem,
  boolean wordWrap)`

  Creates a new WrappedPlainView.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `calculateBreakPosition(int p0,
  int p1)`

  This is called by the nested wrapped line
  views to determine the break location.

  `void`

  `changedUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `protected void`

  `drawLine(int p0,
  int p1,
  Graphics2D g,
  float x,
  float y)`

  Renders a line of text, suppressing whitespace at the end
  and expanding any tabs.

  `protected void`

  `drawLine(int p0,
  int p1,
  Graphics g,
  int x,
  int y)`

  Deprecated.

  replaced by
  [`drawLine(int, int, Graphics2D, float, float)`](#drawLine(int,int,java.awt.Graphics2D,float,float))

  `protected float`

  `drawSelectedText(Graphics2D g,
  float x,
  float y,
  int p0,
  int p1)`

  Renders the given range in the model as selected text.

  `protected int`

  `drawSelectedText(Graphics g,
  int x,
  int y,
  int p0,
  int p1)`

  Deprecated.

  replaced by
  [`drawSelectedText(Graphics2D, float, float, int, int)`](#drawSelectedText(java.awt.Graphics2D,float,float,int,int))

  `protected float`

  `drawUnselectedText(Graphics2D g,
  float x,
  float y,
  int p0,
  int p1)`

  Renders the given range in the model as normal unselected
  text.

  `protected int`

  `drawUnselectedText(Graphics g,
  int x,
  int y,
  int p0,
  int p1)`

  Deprecated.

  replaced by
  [`drawUnselectedText(Graphics2D, float, float, int, int)`](#drawUnselectedText(java.awt.Graphics2D,float,float,int,int))

  `protected final Segment`

  `getLineBuffer()`

  Gives access to a buffer that can be used to fetch
  text from the associated document.

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

  `protected int`

  `getTabSize()`

  Returns the tab size set for the document, defaulting to 8.

  `void`

  `insertUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification that something was inserted into the
  document in a location that this view is responsible for.

  `protected void`

  `loadChildren(ViewFactory f)`

  Loads all of the children to initialize the view.

  `float`

  `nextTabStop(float x,
  int tabOffset)`

  Returns the next tab stop position after a given reference position.

  `void`

  `paint(Graphics g,
  Shape a)`

  Renders using the given rendering surface and area
  on that surface.

  `void`

  `removeUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification that something was removed from the
  document in a location that this view is responsible for.

  `void`

  `setSize(float width,
  float height)`

  Sets the size of the view.

  ### Methods inherited from class javax.swing.text.[BoxView](BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, calculateMinorAxisRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAlignment, getAxis, getChildAllocation, getHeight, getOffset, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, layoutMinorAxis, modelToView, paintChild, preferenceChanged, replace, setAxis, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, getViewIndexAtPosition, modelToView, setInsets, setParagraphInsets, setParent`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, isVisible, modelToView, remove, removeAll, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### WrappedPlainView

    public WrappedPlainView([Element](Element.md "interface in javax.swing.text") elem)

    Creates a new WrappedPlainView. Lines will be wrapped
    on character boundaries.

    Parameters:
    :   `elem` - the element underlying the view
  + ### WrappedPlainView

    public WrappedPlainView([Element](Element.md "interface in javax.swing.text") elem,
    boolean wordWrap)

    Creates a new WrappedPlainView. Lines can be wrapped on
    either character or word boundaries depending upon the
    setting of the wordWrap parameter.

    Parameters:
    :   `elem` - the element underlying the view
    :   `wordWrap` - should lines be wrapped on word boundaries?
* ## Method Details

  + ### getTabSize

    protected int getTabSize()

    Returns the tab size set for the document, defaulting to 8.

    Returns:
    :   the tab size
  + ### drawLine

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected void drawLine(int p0,
    int p1,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Deprecated.

    replaced by
    [`drawLine(int, int, Graphics2D, float, float)`](#drawLine(int,int,java.awt.Graphics2D,float,float))

    Renders a line of text, suppressing whitespace at the end
    and expanding any tabs. This is implemented to make calls
    to the methods `drawUnselectedText` and
    `drawSelectedText` so that the way selected and
    unselected text are rendered can be customized.

    Parameters:
    :   `p0` - the starting document location to use >= 0
    :   `p1` - the ending document location to use >= p1
    :   `g` - the graphics context
    :   `x` - the starting X position >= 0
    :   `y` - the starting Y position >= 0

    See Also:
    :   - [`drawUnselectedText(java.awt.Graphics, int, int, int, int)`](#drawUnselectedText(java.awt.Graphics,int,int,int,int))
        - [`drawSelectedText(java.awt.Graphics, int, int, int, int)`](#drawSelectedText(java.awt.Graphics,int,int,int,int))
  + ### drawLine

    protected void drawLine(int p0,
    int p1,
    [Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y)

    Renders a line of text, suppressing whitespace at the end
    and expanding any tabs. This is implemented to make calls
    to the methods `drawUnselectedText` and
    `drawSelectedText` so that the way selected and
    unselected text are rendered can be customized.

    Parameters:
    :   `p0` - the starting document location to use >= 0
    :   `p1` - the ending document location to use >= p1
    :   `g` - the graphics context
    :   `x` - the starting X position >= 0
    :   `y` - the starting Y position >= 0

    Since:
    :   9

    See Also:
    :   - [`drawUnselectedText(java.awt.Graphics, int, int, int, int)`](#drawUnselectedText(java.awt.Graphics,int,int,int,int))
        - [`drawSelectedText(java.awt.Graphics, int, int, int, int)`](#drawSelectedText(java.awt.Graphics,int,int,int,int))
  + ### drawUnselectedText

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected int drawUnselectedText([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`drawUnselectedText(Graphics2D, float, float, int, int)`](#drawUnselectedText(java.awt.Graphics2D,float,float,int,int))

    Renders the given range in the model as normal unselected
    text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the beginning position in the model >= 0
    :   `p1` - the ending position in the model >= p0

    Returns:
    :   the X location of the end of the range >= 0

    Throws:
    :   `BadLocationException` - if the range is invalid
  + ### drawUnselectedText

    protected float drawUnselectedText([Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Renders the given range in the model as normal unselected
    text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the beginning position in the model >= 0
    :   `p1` - the ending position in the model >= p0

    Returns:
    :   the X location of the end of the range >= 0

    Throws:
    :   `BadLocationException` - if the range is invalid

    Since:
    :   9
  + ### drawSelectedText

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected int drawSelectedText([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`drawSelectedText(Graphics2D, float, float, int, int)`](#drawSelectedText(java.awt.Graphics2D,float,float,int,int))

    Renders the given range in the model as selected text. This
    is implemented to render the text in the color specified in
    the hosting component. It assumes the highlighter will render
    the selected background.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the beginning position in the model >= 0
    :   `p1` - the ending position in the model >= p0

    Returns:
    :   the location of the end of the range.

    Throws:
    :   `BadLocationException` - if the range is invalid
  + ### drawSelectedText

    protected float drawSelectedText([Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Renders the given range in the model as selected text. This
    is implemented to render the text in the color specified in
    the hosting component. It assumes the highlighter will render
    the selected background.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the beginning position in the model >= 0
    :   `p1` - the ending position in the model >= p0

    Returns:
    :   the location of the end of the range.

    Throws:
    :   `BadLocationException` - if the range is invalid

    Since:
    :   9
  + ### getLineBuffer

    protected final [Segment](Segment.md "class in javax.swing.text") getLineBuffer()

    Gives access to a buffer that can be used to fetch
    text from the associated document.

    Returns:
    :   the buffer
  + ### calculateBreakPosition

    protected int calculateBreakPosition(int p0,
    int p1)

    This is called by the nested wrapped line
    views to determine the break location. This can
    be reimplemented to alter the breaking behavior.
    It will either break at word or character boundaries
    depending upon the break argument given at
    construction.

    Parameters:
    :   `p0` - the starting document location
    :   `p1` - the ending document location to use

    Returns:
    :   the break position
  + ### loadChildren

    protected void loadChildren([ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Loads all of the children to initialize the view.
    This is called by the `setParent` method.
    Subclasses can reimplement this to initialize their
    child views in a different manner. The default
    implementation creates a child view for each
    child element.

    Overrides:
    :   `loadChildren` in class `CompositeView`

    Parameters:
    :   `f` - the view factory

    See Also:
    :   - [`CompositeView.setParent(javax.swing.text.View)`](CompositeView.md#setParent(javax.swing.text.View))
  + ### nextTabStop

    public float nextTabStop(float x,
    int tabOffset)

    Returns the next tab stop position after a given reference position.
    This implementation does not support things like centering so it
    ignores the tabOffset argument.

    Specified by:
    :   `nextTabStop` in interface `TabExpander`

    Parameters:
    :   `x` - the current position >= 0
    :   `tabOffset` - the position within the text stream
        that the tab occurred at >= 0.

    Returns:
    :   the tab stop, measured in points >= 0
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Renders using the given rendering surface and area
    on that surface. This is implemented to stash the
    selection positions, selection colors, and font
    metrics for the nested lines to use.

    Overrides:
    :   `paint` in class `BoxView`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### setSize

    public void setSize(float width,
    float height)

    Sets the size of the view. This should cause
    layout of the view along the given axis, if it
    has any layout duties.

    Overrides:
    :   `setSize` in class `BoxView`

    Parameters:
    :   `width` - the width >= 0
    :   `height` - the height >= 0
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view along an
    axis. This is implemented to provide the superclass
    behavior after first making sure that the current font
    metrics are cached (for the nested lines which use
    the metrics to determine the height of the potentially
    wrapped lines).

    Overrides:
    :   `getPreferredSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    See Also:
    :   - [`View.getPreferredSpan(int)`](View.md#getPreferredSpan(int))
  + ### getMinimumSpan

    public float getMinimumSpan(int axis)

    Determines the minimum span for this view along an
    axis. This is implemented to provide the superclass
    behavior after first making sure that the current font
    metrics are cached (for the nested lines which use
    the metrics to determine the height of the potentially
    wrapped lines).

    Overrides:
    :   `getMinimumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    See Also:
    :   - [`View.getMinimumSpan(int)`](View.md#getMinimumSpan(int))
  + ### getMaximumSpan

    public float getMaximumSpan(int axis)

    Determines the maximum span for this view along an
    axis. This is implemented to provide the superclass
    behavior after first making sure that the current font
    metrics are cached (for the nested lines which use
    the metrics to determine the height of the potentially
    wrapped lines).

    Overrides:
    :   `getMaximumSpan` in class `BoxView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    See Also:
    :   - [`View.getMaximumSpan(int)`](View.md#getMaximumSpan(int))
  + ### insertUpdate

    public void insertUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was inserted into the
    document in a location that this view is responsible for.
    This is implemented to simply update the children.

    Overrides:
    :   `insertUpdate` in class `View`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### removeUpdate

    public void removeUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was removed from the
    document in a location that this view is responsible for.
    This is implemented to simply update the children.

    Overrides:
    :   `removeUpdate` in class `View`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.

    Overrides:
    :   `changedUpdate` in class `View`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))