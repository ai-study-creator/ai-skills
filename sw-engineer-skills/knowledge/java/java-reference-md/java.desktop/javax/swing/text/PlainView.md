Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class PlainView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

javax.swing.text.PlainView

All Implemented Interfaces:
:   `SwingConstants`, `TabExpander`

Direct Known Subclasses:
:   `FieldView`

---

public class PlainView
extends [View](View.md "class in javax.swing.text")
implements [TabExpander](TabExpander.md "interface in javax.swing.text")

Implements View interface for a simple multi-line text view
that has text in one font and color. The view represents each
child element as a line of text.

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected FontMetrics`

  `metrics`

  Font metrics for the current font.

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PlainView(Element elem)`

  Constructs a new PlainView wrapped on an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `changedUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `protected void`

  `damageLineRange(int line0,
  int line1,
  Shape a,
  Component host)`

  Repaint the given line range.

  `protected void`

  `drawLine(int lineIndex,
  Graphics2D g,
  float x,
  float y)`

  Renders a line of text, suppressing whitespace at the end
  and expanding any tabs.

  `protected void`

  `drawLine(int lineIndex,
  Graphics g,
  int x,
  int y)`

  Deprecated.

  replaced by
  [`drawLine(int, Graphics2D, float, float)`](#drawLine(int,java.awt.Graphics2D,float,float))

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

  `getPreferredSpan(int axis)`

  Determines the preferred span for this view along an
  axis.

  `protected int`

  `getTabSize()`

  Returns the tab size set for the document, defaulting to 8.

  `void`

  `insertUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification that something was inserted into the document
  in a location that this view is responsible for.

  `protected Rectangle`

  `lineToRect(Shape a,
  int line)`

  Determine the rectangle that represents the given line.

  `Shape`

  `modelToView(int pos,
  Shape a,
  Position.Bias b)`

  Provides a mapping from the document model coordinate space
  to the coordinate space of the view mapped to it.

  `float`

  `nextTabStop(float x,
  int tabOffset)`

  Returns the next tab stop position after a given reference position.

  `void`

  `paint(Graphics g,
  Shape a)`

  Renders using the given rendering surface and area on that surface.

  `void`

  `removeUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification that something was removed from the document
  in a location that this view is responsible for.

  `void`

  `setSize(float width,
  float height)`

  Sets the size of the view.

  `protected void`

  `updateDamage(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Repaint the region of change covered by the given document
  event.

  `protected void`

  `updateMetrics()`

  Checks to see if the font metrics and longest line
  are up-to-date.

  `int`

  `viewToModel(float x,
  float y,
  Shape a,
  Position.Bias[] bias)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdate, forwardUpdateToView, getAlignment, getAttributes, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getMaximumSpan, getMinimumSpan, getNextVisualPositionFrom, getParent, getResizeWeight, getStartOffset, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, replace, setParent, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### metrics

    protected [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics

    Font metrics for the current font.
* ## Constructor Details

  + ### PlainView

    public PlainView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a new PlainView wrapped on an element.

    Parameters:
    :   `elem` - the element
* ## Method Details

  + ### getTabSize

    protected int getTabSize()

    Returns the tab size set for the document, defaulting to 8.

    Returns:
    :   the tab size
  + ### drawLine

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected void drawLine(int lineIndex,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Deprecated.

    replaced by
    [`drawLine(int, Graphics2D, float, float)`](#drawLine(int,java.awt.Graphics2D,float,float))

    Renders a line of text, suppressing whitespace at the end
    and expanding any tabs. This is implemented to make calls
    to the methods `drawUnselectedText` and
    `drawSelectedText` so that the way selected and
    unselected text are rendered can be customized.

    Parameters:
    :   `lineIndex` - the line to draw >= 0
    :   `g` - the `Graphics` context
    :   `x` - the starting X position >= 0
    :   `y` - the starting Y position >= 0

    See Also:
    :   - [`drawUnselectedText(java.awt.Graphics, int, int, int, int)`](#drawUnselectedText(java.awt.Graphics,int,int,int,int))
        - [`drawSelectedText(java.awt.Graphics, int, int, int, int)`](#drawSelectedText(java.awt.Graphics,int,int,int,int))
  + ### drawLine

    protected void drawLine(int lineIndex,
    [Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y)

    Renders a line of text, suppressing whitespace at the end
    and expanding any tabs. This is implemented to make calls
    to the methods `drawUnselectedText` and
    `drawSelectedText` so that the way selected and
    unselected text are rendered can be customized.

    Parameters:
    :   `lineIndex` - the line to draw `>= 0`
    :   `g` - the `Graphics` context
    :   `x` - the starting X position `>= 0`
    :   `y` - the starting Y position `>= 0`

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
    text. Uses the foreground or disabled color to render the text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the beginning position in the model >= 0
    :   `p1` - the ending position in the model >= 0

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
    text. Uses the foreground or disabled color to render the text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate `>= 0`
    :   `y` - the starting Y coordinate `>= 0`
    :   `p0` - the beginning position in the model `>= 0`
    :   `p1` - the ending position in the model `>= 0`

    Returns:
    :   the X location of the end of the range `>= 0`

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
    :   `p1` - the ending position in the model >= 0

    Returns:
    :   the location of the end of the range

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
    :   `x` - the starting X coordinate `>= 0`
    :   `y` - the starting Y coordinate `>= 0`
    :   `p0` - the beginning position in the model `>= 0`
    :   `p1` - the ending position in the model `>= 0`

    Returns:
    :   the location of the end of the range

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
  + ### updateMetrics

    protected void updateMetrics()

    Checks to see if the font metrics and longest line
    are up-to-date.

    Since:
    :   1.4
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view along an
    axis.

    Specified by:
    :   `getPreferredSpan` in class `View`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into >= 0.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    Throws:
    :   `IllegalArgumentException` - for an invalid axis
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Renders using the given rendering surface and area on that surface.
    The view may need to do layout and create child views to enable
    itself to render into the given allocation.

    Specified by:
    :   `paint` in class `View`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](View.md#paint(java.awt.Graphics,java.awt.Shape))
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
    :   `b` - the bias toward the previous character or the
        next character represented by the offset, in case the
        position is a boundary of two views; `b` will have one
        of these values:
        - `Position.Bias.Forward`- `Position.Bias.Backward`

    Returns:
    :   the bounding box of the given position

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document

    See Also:
    :   - [`View.modelToView(int, java.awt.Shape, javax.swing.text.Position.Bias)`](View.md#modelToView(int,java.awt.Shape,javax.swing.text.Position.Bias))
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
    :   `x` - the X coordinate >= 0
    :   `y` - the Y coordinate >= 0
    :   `a` - the allocated region to render into
    :   `bias` - the returned bias

    Returns:
    :   the location within the model that best represents the
        given point in the view >= 0

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))
  + ### insertUpdate

    public void insertUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was inserted into the document
    in a location that this view is responsible for.

    Overrides:
    :   `insertUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### removeUpdate

    public void removeUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was removed from the document
    in a location that this view is responsible for.

    Overrides:
    :   `removeUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.

    Overrides:
    :   `changedUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### setSize

    public void setSize(float width,
    float height)

    Sets the size of the view. This should cause
    layout of the view along the given axis, if it
    has any layout duties.

    Overrides:
    :   `setSize` in class `View`

    Parameters:
    :   `width` - the width >= 0
    :   `height` - the height >= 0
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
  + ### updateDamage

    protected void updateDamage([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Repaint the region of change covered by the given document
    event. Damages the line that begins the range to cover
    the case when the insert/remove is only on one line.
    If lines are added or removed, damages the whole
    view. The longest line is checked to see if it has
    changed.

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    Since:
    :   1.4
  + ### damageLineRange

    protected void damageLineRange(int line0,
    int line1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [Component](../../../java/awt/Component.md "class in java.awt") host)

    Repaint the given line range.

    Parameters:
    :   `line0` - the starting line number to repaint. This must
        be a valid line number in the model.
    :   `line1` - the ending line number to repaint. This must
        be a valid line number in the model.
    :   `a` - the region allocated for the view to render into
    :   `host` - the component hosting the view (used to call repaint)

    Since:
    :   1.4
  + ### lineToRect

    protected [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") lineToRect([Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    int line)

    Determine the rectangle that represents the given line.

    Parameters:
    :   `a` - the region allocated for the view to render into
    :   `line` - the line number to find the region of. This must
        be a valid line number in the model.

    Returns:
    :   the rectangle that represents the given line

    Since:
    :   1.4