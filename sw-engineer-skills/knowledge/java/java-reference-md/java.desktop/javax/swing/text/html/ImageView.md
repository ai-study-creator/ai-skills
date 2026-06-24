Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class ImageView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

javax.swing.text.html.ImageView

All Implemented Interfaces:
:   `SwingConstants`

---

public class ImageView
extends [View](../View.md "class in javax.swing.text")

View of an Image, intended to support the HTML <IMG> tag.
Supports scaling via the HEIGHT and WIDTH attributes of the tag.
If the image is unable to be loaded any text specified via the
`ALT` attribute will be rendered.

While this class has been part of swing for a while now, it is public
as of 1.4.

Since:
:   1.4

See Also:
:   * [`IconView`](../IconView.md "class in javax.swing.text")

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImageView(Element elem)`

  Creates a new view that represents an IMG element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `changedUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Invoked when the Elements attributes have changed.

  `float`

  `getAlignment(int axis)`

  Determines the desired alignment for this view along an
  axis.

  `String`

  `getAltText()`

  Returns the text to display if the image cannot be loaded.

  `AttributeSet`

  `getAttributes()`

  Fetches the attributes to use when rendering.

  `Image`

  `getImage()`

  Returns the image to render.

  `URL`

  `getImageURL()`

  Return a URL for the image source,
  or null if it could not be determined.

  `Icon`

  `getLoadingImageIcon()`

  Returns the icon to use while in the process of loading the image.

  `boolean`

  `getLoadsSynchronously()`

  Returns `true` if the image should be loaded when first asked for.

  `Icon`

  `getNoImageIcon()`

  Returns the icon to use if the image could not be found.

  `float`

  `getPreferredSpan(int axis)`

  Determines the preferred span for this view along an
  axis.

  `protected StyleSheet`

  `getStyleSheet()`

  Convenient method to get the StyleSheet.

  `String`

  `getToolTipText(float x,
  float y,
  Shape allocation)`

  For images the tooltip text comes from text specified with the
  `ALT` attribute.

  `Shape`

  `modelToView(int pos,
  Shape a,
  Position.Bias b)`

  Provides a mapping from the document model coordinate space
  to the coordinate space of the view mapped to it.

  `void`

  `paint(Graphics g,
  Shape a)`

  Paints the View.

  `void`

  `setLoadsSynchronously(boolean newValue)`

  Sets how the image is loaded.

  `void`

  `setParent(View parent)`

  Establishes the parent view for this view.

  `protected void`

  `setPropertiesFromAttributes()`

  Update any cached values that come from attributes.

  `void`

  `setSize(float width,
  float height)`

  Sets the size of the view.

  `int`

  `viewToModel(float x,
  float y,
  Shape a,
  Position.Bias[] bias)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdate, forwardUpdateToView, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getMaximumSpan, getMinimumSpan, getNextVisualPositionFrom, getParent, getResizeWeight, getStartOffset, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, insertUpdate, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, removeUpdate, replace, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ImageView

    public ImageView([Element](../Element.md "interface in javax.swing.text") elem)

    Creates a new view that represents an IMG element.

    Parameters:
    :   `elem` - the element to create a view for
* ## Method Details

  + ### getAltText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAltText()

    Returns the text to display if the image cannot be loaded. This is
    obtained from the Elements attribute set with the attribute name
    `HTML.Attribute.ALT`.

    Returns:
    :   the test to display if the image cannot be loaded.
  + ### getImageURL

    public [URL](../../../../../java.base/java/net/URL.md "class in java.net") getImageURL()

    Return a URL for the image source,
    or null if it could not be determined.

    Returns:
    :   the URL for the image source, or null if it could not be determined.
  + ### getNoImageIcon

    public [Icon](../../Icon.md "interface in javax.swing") getNoImageIcon()

    Returns the icon to use if the image could not be found.

    Returns:
    :   the icon to use if the image could not be found.
  + ### getLoadingImageIcon

    public [Icon](../../Icon.md "interface in javax.swing") getLoadingImageIcon()

    Returns the icon to use while in the process of loading the image.

    Returns:
    :   the icon to use while in the process of loading the image.
  + ### getImage

    public [Image](../../../../java/awt/Image.md "class in java.awt") getImage()

    Returns the image to render.

    Returns:
    :   the image to render.
  + ### setLoadsSynchronously

    public void setLoadsSynchronously(boolean newValue)

    Sets how the image is loaded. If `newValue` is true,
    the image will be loaded when first asked for, otherwise it will
    be loaded asynchronously. The default is to not load synchronously,
    that is to load the image asynchronously.

    Parameters:
    :   `newValue` - if `true` the image will be loaded when first asked for,
        otherwise it will be asynchronously.
  + ### getLoadsSynchronously

    public boolean getLoadsSynchronously()

    Returns `true` if the image should be loaded when first asked for.

    Returns:
    :   `true` if the image should be loaded when first asked for.
  + ### getStyleSheet

    protected [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Convenient method to get the StyleSheet.

    Returns:
    :   the StyleSheet
  + ### getAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getAttributes()

    Fetches the attributes to use when rendering. This is
    implemented to multiplex the attributes specified in the
    model with a StyleSheet.

    Overrides:
    :   `getAttributes` in class `View`

    Returns:
    :   the attributes to use when rendering
  + ### getToolTipText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getToolTipText(float x,
    float y,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") allocation)

    For images the tooltip text comes from text specified with the
    `ALT` attribute. This is overridden to return
    `getAltText`.

    Overrides:
    :   `getToolTipText` in class `View`

    Parameters:
    :   `x` - the x coordinate
    :   `y` - the y coordinate
    :   `allocation` - current allocation of the View.

    Returns:
    :   the tooltip text at the specified location

    See Also:
    :   - [`JTextComponent.getToolTipText(java.awt.event.MouseEvent)`](../JTextComponent.md#getToolTipText(java.awt.event.MouseEvent))
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Update any cached values that come from attributes.
  + ### setParent

    public void setParent([View](../View.md "class in javax.swing.text") parent)

    Establishes the parent view for this view.
    Seize this moment to cache the AWT Container I'm in.

    Overrides:
    :   `setParent` in class `View`

    Parameters:
    :   `parent` - the new parent, or `null` if the view is
        being removed from a parent
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](../ViewFactory.md "interface in javax.swing.text") f)

    Invoked when the Elements attributes have changed. Recreates the image.

    Overrides:
    :   `changedUpdate` in class `View`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a)

    Paints the View.

    Specified by:
    :   `paint` in class `View`

    Parameters:
    :   `g` - the rendering surface to use
    :   `a` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](../View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### getPreferredSpan

    public float getPreferredSpan(int axis)

    Determines the preferred span for this view along an
    axis.

    Specified by:
    :   `getPreferredSpan` in class `View`

    Parameters:
    :   `axis` - may be either X\_AXIS or Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into;
        typically the view is told to render into the span
        that is returned, although there is no guarantee;
        the parent may choose to resize or break the view
  + ### getAlignment

    public float getAlignment(int axis)

    Determines the desired alignment for this view along an
    axis. This is implemented to give the alignment to the
    bottom of the icon along the y axis, and the default
    along the x axis.

    Overrides:
    :   `getAlignment` in class `View`

    Parameters:
    :   `axis` - may be either X\_AXIS or Y\_AXIS

    Returns:
    :   the desired alignment; this should be a value
        between 0.0 and 1.0 where 0 indicates alignment at the
        origin and 1.0 indicates alignment to the full span
        away from the origin; an alignment of 0.5 would be the
        center of the view
  + ### modelToView

    public [Shape](../../../../java/awt/Shape.md "interface in java.awt") modelToView(int pos,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](../Position.Bias.md "class in javax.swing.text") b)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Provides a mapping from the document model coordinate space
    to the coordinate space of the view mapped to it.

    Specified by:
    :   `modelToView` in class `View`

    Parameters:
    :   `pos` - the position to convert
    :   `a` - the allocated region to render into
    :   `b` - the bias toward the previous character or the
        next character represented by the offset, in case the
        position is a boundary of two views; `b` will have one
        of these values:
        - `Position.Bias.Forward`- `Position.Bias.Backward`

    Returns:
    :   the bounding box of the given position

    Throws:
    :   `BadLocationException` - if the given position does not represent a
        valid location in the associated document

    See Also:
    :   - [`View.modelToView(int, java.awt.Shape, javax.swing.text.Position.Bias)`](../View.md#modelToView(int,java.awt.Shape,javax.swing.text.Position.Bias))
  + ### viewToModel

    public int viewToModel(float x,
    float y,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [Position.Bias](../Position.Bias.md "class in javax.swing.text")[] bias)

    Provides a mapping from the view coordinate space to the logical
    coordinate space of the model.

    Specified by:
    :   `viewToModel` in class `View`

    Parameters:
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `a` - the allocated region to render into
    :   `bias` - the returned bias

    Returns:
    :   the location within the model that best represents the
        given point of view

    See Also:
    :   - [`View.viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])`](../View.md#viewToModel(float,float,java.awt.Shape,javax.swing.text.Position.Bias%5B%5D))
  + ### setSize

    public void setSize(float width,
    float height)

    Sets the size of the view. This should cause
    layout of the view if it has any layout duties.

    Overrides:
    :   `setSize` in class `View`

    Parameters:
    :   `width` - the width >= 0
    :   `height` - the height >= 0