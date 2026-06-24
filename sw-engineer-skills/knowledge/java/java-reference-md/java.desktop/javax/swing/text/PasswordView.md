Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class PasswordView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.PlainView](PlainView.md "class in javax.swing.text")

[javax.swing.text.FieldView](FieldView.md "class in javax.swing.text")

javax.swing.text.PasswordView

All Implemented Interfaces:
:   `SwingConstants`, `TabExpander`

---

public class PasswordView
extends [FieldView](FieldView.md "class in javax.swing.text")

Implements a View suitable for use in JPasswordField
UI implementations. This is basically a field ui that
renders its contents as the echo character specified
in the associated component (if it can narrow the
component to a JPasswordField).

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[PlainView](PlainView.md "class in javax.swing.text")

  `metrics`

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PasswordView(Element elem)`

  Constructs a new view wrapped on an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected float`

  `drawEchoCharacter(Graphics2D g,
  float x,
  float y,
  char c)`

  Renders the echo character, or whatever graphic should be used
  to display the password characters.

  `protected int`

  `drawEchoCharacter(Graphics g,
  int x,
  int y,
  char c)`

  Deprecated.

  replaced by
  [`drawEchoCharacter(Graphics2D, float, float, char)`](#drawEchoCharacter(java.awt.Graphics2D,float,float,char))

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

  `float`

  `getPreferredSpan(int axis)`

  Determines the preferred span for this view along an
  axis.

  `Shape`

  `modelToView(int pos,
  Shape a,
  Position.Bias b)`

  Provides a mapping from the document model coordinate space
  to the coordinate space of the view mapped to it.

  `int`

  `viewToModel(float fx,
  float fy,
  Shape a,
  Position.Bias[] bias)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.text.[FieldView](FieldView.md "class in javax.swing.text")

  `adjustAllocation, getFontMetrics, getResizeWeight, insertUpdate, paint, removeUpdate`

  ### Methods inherited from class javax.swing.text.[PlainView](PlainView.md "class in javax.swing.text")

  `changedUpdate, damageLineRange, drawLine, drawLine, getLineBuffer, getTabSize, lineToRect, nextTabStop, setSize, updateDamage, updateMetrics`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdate, forwardUpdateToView, getAlignment, getAttributes, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getMaximumSpan, getMinimumSpan, getNextVisualPositionFrom, getParent, getStartOffset, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, replace, setParent, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PasswordView

    public PasswordView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a new view wrapped on an element.

    Parameters:
    :   `elem` - the element
* ## Method Details

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
    text. This sets the foreground color and echos the characters
    using the value returned by getEchoChar().

    Overrides:
    :   `drawUnselectedText` in class `PlainView`

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the starting offset in the model >= 0
    :   `p1` - the ending offset in the model >= p0

    Returns:
    :   the X location of the end of the range >= 0

    Throws:
    :   `BadLocationException` - if p0 or p1 are out of range
  + ### drawUnselectedText

    protected float drawUnselectedText([Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Description copied from class: `PlainView`

    Renders the given range in the model as normal unselected
    text. Uses the foreground or disabled color to render the text.

    Overrides:
    :   `drawUnselectedText` in class `PlainView`

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
    the selected background. Uses the result of getEchoChar() to
    display the characters.

    Overrides:
    :   `drawSelectedText` in class `PlainView`

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `p0` - the starting offset in the model >= 0
    :   `p1` - the ending offset in the model >= p0

    Returns:
    :   the X location of the end of the range >= 0

    Throws:
    :   `BadLocationException` - if p0 or p1 are out of range
  + ### drawSelectedText

    protected float drawSelectedText([Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Description copied from class: `PlainView`

    Renders the given range in the model as selected text. This
    is implemented to render the text in the color specified in
    the hosting component. It assumes the highlighter will render
    the selected background.

    Overrides:
    :   `drawSelectedText` in class `PlainView`

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
  + ### drawEchoCharacter

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected int drawEchoCharacter([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    char c)

    Deprecated.

    replaced by
    [`drawEchoCharacter(Graphics2D, float, float, char)`](#drawEchoCharacter(java.awt.Graphics2D,float,float,char))

    Renders the echo character, or whatever graphic should be used
    to display the password characters. The color in the Graphics
    object is set to the appropriate foreground color for selected
    or unselected text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate >= 0
    :   `y` - the starting Y coordinate >= 0
    :   `c` - the echo character

    Returns:
    :   the updated X position >= 0
  + ### drawEchoCharacter

    protected float drawEchoCharacter([Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    float x,
    float y,
    char c)

    Renders the echo character, or whatever graphic should be used
    to display the password characters. The color in the Graphics
    object is set to the appropriate foreground color for selected
    or unselected text.

    Parameters:
    :   `g` - the graphics context
    :   `x` - the starting X coordinate `>= 0`
    :   `y` - the starting Y coordinate `>= 0`
    :   `c` - the echo character

    Returns:
    :   the updated X position `>= 0`

    Since:
    :   9
  + ### modelToView

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") modelToView(int pos,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") b)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Provides a mapping from the document model coordinate space
    to the coordinate space of the view mapped to it.

    Overrides:
    :   `modelToView` in class `FieldView`

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

    public int viewToModel(float fx,
    float fy,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] bias)

    Provides a mapping from the view coordinate space to the logical
    coordinate space of the model.

    Overrides:
    :   `viewToModel` in class `FieldView`

    Parameters:
    :   `fx` - the X coordinate >= 0.0f
    :   `fy` - the Y coordinate >= 0.0f
    :   `a` - the allocated region to render into
    :   `bias` - the returned bias

    Returns:
    :   the location within the model that best represents the
        given point in the view

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view along an
    axis.

    Overrides:
    :   `getPreferredSpan` in class `FieldView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into >= 0.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.