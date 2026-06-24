Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class InlineView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.GlyphView](../GlyphView.md "class in javax.swing.text")

[javax.swing.text.LabelView](../LabelView.md "class in javax.swing.text")

javax.swing.text.html.InlineView

All Implemented Interfaces:
:   `Cloneable`, `SwingConstants`, `TabableView`

---

public class InlineView
extends [LabelView](../LabelView.md "class in javax.swing.text")

Displays the inline element styles
based upon css attributes.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[GlyphView](../GlyphView.md "class in javax.swing.text")

  `GlyphView.GlyphPainter`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InlineView(Element elem)`

  Constructs a new view wrapped on an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `View`

  `breakView(int axis,
  int offset,
  float pos,
  float len)`

  Tries to break this view on the given axis.

  `void`

  `changedUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification from the document that attributes were changed
  in a location that this view is responsible for.

  `AttributeSet`

  `getAttributes()`

  Fetches the attributes to use when rendering.

  `int`

  `getBreakWeight(int axis,
  float pos,
  float len)`

  Determines how attractive a break opportunity in
  this view is.

  `protected StyleSheet`

  `getStyleSheet()`

  Convenient method to get the StyleSheet.

  `void`

  `insertUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification that something was inserted into
  the document in a location that this view is responsible for.

  `void`

  `removeUpdate(DocumentEvent e,
  Shape a,
  ViewFactory f)`

  Gives notification that something was removed from the document
  in a location that this view is responsible for.

  `protected void`

  `setPropertiesFromAttributes()`

  Set the cached properties from the attributes.

  ### Methods inherited from class javax.swing.text.[LabelView](../LabelView.md "class in javax.swing.text")

  `getBackground, getFont, getFontMetrics, getForeground, isStrikeThrough, isSubscript, isSuperscript, isUnderline, setBackground, setStrikeThrough, setSubscript, setSuperscript, setUnderline`

  ### Methods inherited from class javax.swing.text.[GlyphView](../GlyphView.md "class in javax.swing.text")

  `checkPainter, clone, createFragment, getAlignment, getEndOffset, getGlyphPainter, getMinimumSpan, getNextVisualPositionFrom, getPartialSpan, getPreferredSpan, getStartOffset, getTabbedSpan, getTabExpander, getText, modelToView, paint, setGlyphPainter, viewToModel`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, forwardUpdate, forwardUpdateToView, getChildAllocation, getContainer, getDocument, getElement, getGraphics, getMaximumSpan, getParent, getResizeWeight, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, replace, setParent, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.text.[TabableView](../TabableView.md "interface in javax.swing.text")

  `getPartialSpan, getTabbedSpan`

* ## Constructor Details

  + ### InlineView

    public InlineView([Element](../Element.md "interface in javax.swing.text") elem)

    Constructs a new view wrapped on an element.

    Parameters:
    :   `elem` - the element
* ## Method Details

  + ### insertUpdate

    public void insertUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](../ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was inserted into
    the document in a location that this view is responsible for.
    If either parameter is `null`, behavior of this method is
    implementation dependent.

    Overrides:
    :   `insertUpdate` in class `GlyphView`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    Since:
    :   1.5

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### removeUpdate

    public void removeUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](../ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was removed from the document
    in a location that this view is responsible for.
    If either parameter is `null`, behavior of this method is
    implementation dependent.

    Overrides:
    :   `removeUpdate` in class `GlyphView`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    Since:
    :   1.5

    See Also:
    :   - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") e,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](../ViewFactory.md "interface in javax.swing.text") f)

    Gives notification from the document that attributes were changed
    in a location that this view is responsible for.

    Overrides:
    :   `changedUpdate` in class `LabelView`

    Parameters:
    :   `e` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](../View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### getAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getAttributes()

    Fetches the attributes to use when rendering. This is
    implemented to multiplex the attributes specified in the
    model with a StyleSheet.

    Overrides:
    :   `getAttributes` in class `View`

    Returns:
    :   the attributes to use when rendering
  + ### getBreakWeight

    public int getBreakWeight(int axis,
    float pos,
    float len)

    Determines how attractive a break opportunity in
    this view is. This can be used for determining which
    view is the most attractive to call `breakView`
    on in the process of formatting. A view that represents
    text that has whitespace in it might be more attractive
    than a view that has no whitespace, for example. The
    higher the weight, the more attractive the break. A
    value equal to or lower than `BadBreakWeight`
    should not be considered for a break. A value greater
    than or equal to `ForcedBreakWeight` should
    be broken.

    This is implemented to provide the default behavior
    of returning `BadBreakWeight` unless the length
    is greater than the length of the view in which case the
    entire view represents the fragment. Unless a view has
    been written to support breaking behavior, it is not
    attractive to try and break the view. An example of
    a view that does support breaking is `LabelView`.
    An example of a view that uses break weight is
    `ParagraphView`.

    Overrides:
    :   `getBreakWeight` in class `GlyphView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS
    :   `pos` - the potential location of the start of the
        broken view >= 0. This may be useful for calculating tab
        positions.
    :   `len` - specifies the relative length from *pos*
        where a potential break is desired >= 0.

    Returns:
    :   the weight, which should be a value between
        ForcedBreakWeight and BadBreakWeight.

    See Also:
    :   - [`LabelView`](../LabelView.md "class in javax.swing.text")
        - [`ParagraphView`](ParagraphView.md "class in javax.swing.text.html")
        - [`View.BadBreakWeight`](../View.md#BadBreakWeight)
        - [`View.GoodBreakWeight`](../View.md#GoodBreakWeight)
        - [`View.ExcellentBreakWeight`](../View.md#ExcellentBreakWeight)
        - [`View.ForcedBreakWeight`](../View.md#ForcedBreakWeight)
  + ### breakView

    public [View](../View.md "class in javax.swing.text") breakView(int axis,
    int offset,
    float pos,
    float len)

    Tries to break this view on the given axis. Refer to
    [`View.breakView(int, int, float, float)`](../View.md#breakView(int,int,float,float)) for a complete
    description of this method.

    Behavior of this method is unspecified in case `axis`
    is neither `View.X_AXIS` nor `View.Y_AXIS`, and
    in case `offset`, `pos`, or `len`
    is null.

    Overrides:
    :   `breakView` in class `GlyphView`

    Parameters:
    :   `axis` - may be either `View.X_AXIS` or
        `View.Y_AXIS`
    :   `offset` - the location in the document model
        that a broken fragment would occupy >= 0. This
        would be the starting offset of the fragment
        returned
    :   `pos` - the position along the axis that the
        broken view would occupy >= 0. This may be useful for
        things like tab calculations
    :   `len` - specifies the distance along the axis
        where a potential break is desired >= 0

    Returns:
    :   the fragment of the view that represents the
        given span.

    Since:
    :   1.5

    See Also:
    :   - [`View.breakView(int, int, float, float)`](../View.md#breakView(int,int,float,float))
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Set the cached properties from the attributes.

    Overrides:
    :   `setPropertiesFromAttributes` in class `LabelView`
  + ### getStyleSheet

    protected [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Convenient method to get the StyleSheet.

    Returns:
    :   the StyleSheet