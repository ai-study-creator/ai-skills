Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class LabelView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.GlyphView](GlyphView.md "class in javax.swing.text")

javax.swing.text.LabelView

All Implemented Interfaces:
:   `Cloneable`, `SwingConstants`, `TabableView`

Direct Known Subclasses:
:   `InlineView`

---

public class LabelView
extends [GlyphView](GlyphView.md "class in javax.swing.text")
implements [TabableView](TabableView.md "interface in javax.swing.text")

A `LabelView` is a styled chunk of text
that represents a view mapped over an element in the
text model. It caches the character level attributes
used for rendering.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[GlyphView](GlyphView.md "class in javax.swing.text")

  `GlyphView.GlyphPainter`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LabelView(Element elem)`

  Constructs a new view wrapped on an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `changedUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `Color`

  `getBackground()`

  Fetches the background color to use to render the glyphs.

  `Font`

  `getFont()`

  Fetches the font that the glyphs should be based upon.

  `protected FontMetrics`

  `getFontMetrics()`

  Deprecated.

  FontMetrics are not used for glyph rendering
  when running in the JDK.

  `Color`

  `getForeground()`

  Fetches the foreground color to use to render the glyphs.

  `boolean`

  `isStrikeThrough()`

  Determines if the glyphs should have a strikethrough
  line.

  `boolean`

  `isSubscript()`

  Determines if the glyphs should be rendered as superscript.

  `boolean`

  `isSuperscript()`

  Determines if the glyphs should be rendered as subscript.

  `boolean`

  `isUnderline()`

  Determines if the glyphs should be underlined.

  `protected void`

  `setBackground(Color bg)`

  Sets the background color for the view.

  `protected void`

  `setPropertiesFromAttributes()`

  Sets the cached properties from the attributes.

  `protected void`

  `setStrikeThrough(boolean s)`

  Sets whether or not the view has a strike/line
  through it.

  `protected void`

  `setSubscript(boolean s)`

  Sets whether or not the view represents a
  subscript.

  `protected void`

  `setSuperscript(boolean s)`

  Sets whether or not the view represents a
  superscript.

  `protected void`

  `setUnderline(boolean u)`

  Sets whether or not the view is underlined.

  ### Methods inherited from class javax.swing.text.[GlyphView](GlyphView.md "class in javax.swing.text")

  `breakView, checkPainter, clone, createFragment, getAlignment, getBreakWeight, getEndOffset, getGlyphPainter, getMinimumSpan, getNextVisualPositionFrom, getPartialSpan, getPreferredSpan, getStartOffset, getTabbedSpan, getTabExpander, getText, insertUpdate, modelToView, paint, removeUpdate, setGlyphPainter, viewToModel`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, forwardUpdate, forwardUpdateToView, getAttributes, getChildAllocation, getContainer, getDocument, getElement, getGraphics, getMaximumSpan, getParent, getResizeWeight, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, replace, setParent, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.text.[TabableView](TabableView.md "interface in javax.swing.text")

  `getPartialSpan, getTabbedSpan`

* ## Constructor Details

  + ### LabelView

    public LabelView([Element](Element.md "interface in javax.swing.text") elem)

    Constructs a new view wrapped on an element.

    Parameters:
    :   `elem` - the element
* ## Method Details

  + ### setUnderline

    protected void setUnderline(boolean u)

    Sets whether or not the view is underlined.
    Note that this setter is protected and is really
    only meant if you need to update some additional
    state when set.

    Parameters:
    :   `u` - true if the view is underlined, otherwise
        false

    See Also:
    :   - [`isUnderline()`](#isUnderline())
  + ### setStrikeThrough

    protected void setStrikeThrough(boolean s)

    Sets whether or not the view has a strike/line
    through it.
    Note that this setter is protected and is really
    only meant if you need to update some additional
    state when set.

    Parameters:
    :   `s` - true if the view has a strike/line
        through it, otherwise false

    See Also:
    :   - [`isStrikeThrough()`](#isStrikeThrough())
  + ### setSuperscript

    protected void setSuperscript(boolean s)

    Sets whether or not the view represents a
    superscript.
    Note that this setter is protected and is really
    only meant if you need to update some additional
    state when set.

    Parameters:
    :   `s` - true if the view represents a
        superscript, otherwise false

    See Also:
    :   - [`isSuperscript()`](#isSuperscript())
  + ### setSubscript

    protected void setSubscript(boolean s)

    Sets whether or not the view represents a
    subscript.
    Note that this setter is protected and is really
    only meant if you need to update some additional
    state when set.

    Parameters:
    :   `s` - true if the view represents a
        subscript, otherwise false

    See Also:
    :   - [`isSubscript()`](#isSubscript())
  + ### setBackground

    protected void setBackground([Color](../../../java/awt/Color.md "class in java.awt") bg)

    Sets the background color for the view. This method is typically
    invoked as part of configuring this `View`. If you need
    to customize the background color you should override
    `setPropertiesFromAttributes` and invoke this method. A
    value of null indicates no background should be rendered, so that the
    background of the parent `View` will show through.

    Parameters:
    :   `bg` - background color, or null

    Since:
    :   1.5

    See Also:
    :   - [`setPropertiesFromAttributes()`](#setPropertiesFromAttributes())
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Sets the cached properties from the attributes.
  + ### getFontMetrics

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics()

    Deprecated.

    FontMetrics are not used for glyph rendering
    when running in the JDK.

    Fetches the `FontMetrics` used for this view.

    Returns:
    :   the `FontMetrics` used for this view
  + ### getBackground

    public [Color](../../../java/awt/Color.md "class in java.awt") getBackground()

    Fetches the background color to use to render the glyphs.
    This is implemented to return a cached background color,
    which defaults to `null`.

    Overrides:
    :   `getBackground` in class `GlyphView`

    Returns:
    :   the cached background color

    Since:
    :   1.3
  + ### getForeground

    public [Color](../../../java/awt/Color.md "class in java.awt") getForeground()

    Fetches the foreground color to use to render the glyphs.
    This is implemented to return a cached foreground color,
    which defaults to `null`.

    Overrides:
    :   `getForeground` in class `GlyphView`

    Returns:
    :   the cached foreground color

    Since:
    :   1.3
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont()

    Fetches the font that the glyphs should be based upon.
    This is implemented to return a cached font.

    Overrides:
    :   `getFont` in class `GlyphView`

    Returns:
    :   the cached font
  + ### isUnderline

    public boolean isUnderline()

    Determines if the glyphs should be underlined. If true,
    an underline should be drawn through the baseline. This
    is implemented to return the cached underline property.

    When you request this property, `LabelView`
    re-syncs its state with the properties of the
    `Element`'s `AttributeSet`.
    If `Element`'s `AttributeSet`
    does not have this property set, it will revert to false.

    Overrides:
    :   `isUnderline` in class `GlyphView`

    Returns:
    :   the value of the cached
        `underline` property

    Since:
    :   1.3
  + ### isStrikeThrough

    public boolean isStrikeThrough()

    Determines if the glyphs should have a strikethrough
    line. If true, a line should be drawn through the center
    of the glyphs. This is implemented to return the
    cached `strikeThrough` property.

    When you request this property, `LabelView`
    re-syncs its state with the properties of the
    `Element`'s `AttributeSet`.
    If `Element`'s `AttributeSet`
    does not have this property set, it will revert to false.

    Overrides:
    :   `isStrikeThrough` in class `GlyphView`

    Returns:
    :   the value of the cached
        `strikeThrough` property

    Since:
    :   1.3
  + ### isSubscript

    public boolean isSubscript()

    Determines if the glyphs should be rendered as superscript.

    When you request this property, `LabelView`
    re-syncs its state with the properties of the
    `Element`'s `AttributeSet`.
    If `Element`'s `AttributeSet`
    does not have this property set, it will revert to false.

    Overrides:
    :   `isSubscript` in class `GlyphView`

    Returns:
    :   the value of the cached
        `subscript` property

    Since:
    :   1.3
  + ### isSuperscript

    public boolean isSuperscript()

    Determines if the glyphs should be rendered as subscript.

    When you request this property, `LabelView`
    re-syncs its state with the properties of the
    `Element`'s `AttributeSet`.
    If `Element`'s `AttributeSet`
    does not have this property set, it will revert to false.

    Overrides:
    :   `isSuperscript` in class `GlyphView`

    Returns:
    :   the value of the cached
        `superscript` property

    Since:
    :   1.3
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.

    Overrides:
    :   `changedUpdate` in class `GlyphView`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))