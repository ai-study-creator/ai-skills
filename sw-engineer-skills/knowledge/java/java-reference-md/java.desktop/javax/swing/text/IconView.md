Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class IconView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

javax.swing.text.IconView

All Implemented Interfaces:
:   `SwingConstants`

---

public class IconView
extends [View](View.md "class in javax.swing.text")

Icon decorator that implements the view interface. The
entire element is used to represent the icon. This acts
as a gateway from the display-only View implementations to
interactive lightweight icons (that is, it allows icons
to be embedded into the View hierarchy. The parent of the icon
is the container that is handed out by the associated view
factory.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IconView(Element elem)`

  Creates a new icon view that represents an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `float`

  `getAlignment(int axis)`

  Determines the desired alignment for this view along an
  axis.

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

  `void`

  `paint(Graphics g,
  Shape a)`

  Paints the icon.

  `int`

  `viewToModel(float x,
  float y,
  Shape a,
  Position.Bias[] bias)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdate, forwardUpdateToView, getAttributes, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getMaximumSpan, getMinimumSpan, getNextVisualPositionFrom, getParent, getResizeWeight, getStartOffset, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, insertUpdate, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, removeUpdate, replace, setParent, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### IconView

    public IconView([Element](Element.md "interface in javax.swing.text") elem)

    Creates a new icon view that represents an element.

    Parameters:
    :   `elem` - the element to create a view for
* ## Method Details

  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Paints the icon.
    The real paint behavior occurs naturally from the association
    that the icon has with its parent container (the same
    container hosting this view), so this simply allows us to
    position the icon properly relative to the view. Since
    the coordinate system for the view is simply the parent
    containers, positioning the child icon is easy.

    Specified by:
    :   `paint` in class `View`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view along an
    axis.

    Specified by:
    :   `getPreferredSpan` in class `View`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    Throws:
    :   `IllegalArgumentException` - for an invalid axis
  + ### getAlignment

    public float getAlignment(int axis)

    Determines the desired alignment for this view along an
    axis. This is implemented to give the alignment to the
    bottom of the icon along the y axis, and the default
    along the x axis.

    Overrides:
    :   `getAlignment` in class `View`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the desired alignment >= 0.0f && <= 1.0f. This should be
        a value between 0.0 and 1.0 where 0 indicates alignment at the
        origin and 1.0 indicates alignment to the full span
        away from the origin. An alignment of 0.5 would be the
        center of the view.
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
        given point of view >= 0

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))