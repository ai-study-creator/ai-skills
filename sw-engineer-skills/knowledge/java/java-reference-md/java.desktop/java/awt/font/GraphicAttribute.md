Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class GraphicAttribute

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.GraphicAttribute

Direct Known Subclasses:
:   `ImageGraphicAttribute`, `ShapeGraphicAttribute`

---

public abstract class GraphicAttribute
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class is used with the CHAR\_REPLACEMENT attribute.

The `GraphicAttribute` class represents a graphic embedded
in text. Clients subclass this class to implement their own char
replacement graphics. Clients wishing to embed shapes and images in
text need not subclass this class. Instead, clients can use the
[`ShapeGraphicAttribute`](ShapeGraphicAttribute.md "class in java.awt.font") and [`ImageGraphicAttribute`](ImageGraphicAttribute.md "class in java.awt.font")
classes.

Subclasses must ensure that their objects are immutable once they
are constructed. Mutating a `GraphicAttribute` that
is used in a [`TextLayout`](TextLayout.md "class in java.awt.font") results in undefined behavior from the
`TextLayout`.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BOTTOM_ALIGNMENT`

  Aligns bottom of graphic to bottom of line.

  `static final int`

  `CENTER_BASELINE`

  Aligns origin of graphic to center baseline of line.

  `static final int`

  `HANGING_BASELINE`

  Aligns origin of graphic to hanging baseline of line.

  `static final int`

  `ROMAN_BASELINE`

  Aligns origin of graphic to roman baseline of line.

  `static final int`

  `TOP_ALIGNMENT`

  Aligns top of graphic to top of line.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `GraphicAttribute(int alignment)`

  Constructs a `GraphicAttribute`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `draw(Graphics2D graphics,
  float x,
  float y)`

  Renders this `GraphicAttribute` at the specified
  location.

  `abstract float`

  `getAdvance()`

  Returns the advance of this `GraphicAttribute`.

  `final int`

  `getAlignment()`

  Returns the alignment of this `GraphicAttribute`.

  `abstract float`

  `getAscent()`

  Returns the ascent of this `GraphicAttribute`.

  `Rectangle2D`

  `getBounds()`

  Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
  bits drawn by this `GraphicAttribute` relative to the
  rendering position.

  `abstract float`

  `getDescent()`

  Returns the descent of this `GraphicAttribute`.

  `GlyphJustificationInfo`

  `getJustificationInfo()`

  Returns the justification information for this
  `GraphicAttribute`.

  `Shape`

  `getOutline(AffineTransform tx)`

  Return a [`Shape`](../Shape.md "interface in java.awt") that represents the region that
  this `GraphicAttribute` renders.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TOP\_ALIGNMENT

    public static final int TOP\_ALIGNMENT

    Aligns top of graphic to top of line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GraphicAttribute.TOP_ALIGNMENT)
  + ### BOTTOM\_ALIGNMENT

    public static final int BOTTOM\_ALIGNMENT

    Aligns bottom of graphic to bottom of line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GraphicAttribute.BOTTOM_ALIGNMENT)
  + ### ROMAN\_BASELINE

    public static final int ROMAN\_BASELINE

    Aligns origin of graphic to roman baseline of line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GraphicAttribute.ROMAN_BASELINE)
  + ### CENTER\_BASELINE

    public static final int CENTER\_BASELINE

    Aligns origin of graphic to center baseline of line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GraphicAttribute.CENTER_BASELINE)
  + ### HANGING\_BASELINE

    public static final int HANGING\_BASELINE

    Aligns origin of graphic to hanging baseline of line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GraphicAttribute.HANGING_BASELINE)
* ## Constructor Details

  + ### GraphicAttribute

    protected GraphicAttribute(int alignment)

    Constructs a `GraphicAttribute`.
    Subclasses use this to define the alignment of the graphic.

    Parameters:
    :   `alignment` - an int representing one of the
        `GraphicAttribute` alignment fields

    Throws:
    :   `IllegalArgumentException` - if alignment is not one of the
        five defined values.
* ## Method Details

  + ### getAscent

    public abstract float getAscent()

    Returns the ascent of this `GraphicAttribute`. A
    graphic can be rendered above its ascent.

    Returns:
    :   the ascent of this `GraphicAttribute`.

    See Also:
    :   - [`getBounds()`](#getBounds())
  + ### getDescent

    public abstract float getDescent()

    Returns the descent of this `GraphicAttribute`. A
    graphic can be rendered below its descent.

    Returns:
    :   the descent of this `GraphicAttribute`.

    See Also:
    :   - [`getBounds()`](#getBounds())
  + ### getAdvance

    public abstract float getAdvance()

    Returns the advance of this `GraphicAttribute`. The
    `GraphicAttribute` object's advance is the distance
    from the point at which the graphic is rendered and the point where
    the next character or graphic is rendered. A graphic can be
    rendered beyond its advance

    Returns:
    :   the advance of this `GraphicAttribute`.

    See Also:
    :   - [`getBounds()`](#getBounds())
  + ### getBounds

    public [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds()

    Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
    bits drawn by this `GraphicAttribute` relative to the
    rendering position.
    A graphic may be rendered beyond its origin, ascent, descent,
    or advance; but if it is, this method's implementation must
    indicate where the graphic is rendered.
    Default bounds is the rectangle (0, -ascent, advance, ascent+descent).

    Returns:
    :   a `Rectangle2D` that encloses all of the bits
        rendered by this `GraphicAttribute`.
  + ### getOutline

    public [Shape](../Shape.md "interface in java.awt") getOutline([AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") tx)

    Return a [`Shape`](../Shape.md "interface in java.awt") that represents the region that
    this `GraphicAttribute` renders. This is used when a
    [`TextLayout`](TextLayout.md "class in java.awt.font") is requested to return the outline of the text.
    The (untransformed) shape must not extend outside the rectangular
    bounds returned by `getBounds`.
    The default implementation returns the rectangle returned by
    [`getBounds()`](#getBounds()), transformed by the provided [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")
    if present.

    Parameters:
    :   `tx` - an optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") to apply to the
        outline of this `GraphicAttribute`. This can be null.

    Returns:
    :   a `Shape` representing this graphic attribute,
        suitable for stroking or filling.

    Since:
    :   1.6
  + ### draw

    public abstract void draw([Graphics2D](../Graphics2D.md "class in java.awt") graphics,
    float x,
    float y)

    Renders this `GraphicAttribute` at the specified
    location.

    Parameters:
    :   `graphics` - the [`Graphics2D`](../Graphics2D.md "class in java.awt") into which to render the
        graphic
    :   `x` - the user-space X coordinate where the graphic is rendered
    :   `y` - the user-space Y coordinate where the graphic is rendered
  + ### getAlignment

    public final int getAlignment()

    Returns the alignment of this `GraphicAttribute`.
    Alignment can be to a particular baseline, or to the absolute top
    or bottom of a line.

    Returns:
    :   the alignment of this `GraphicAttribute`.
  + ### getJustificationInfo

    public [GlyphJustificationInfo](GlyphJustificationInfo.md "class in java.awt.font") getJustificationInfo()

    Returns the justification information for this
    `GraphicAttribute`. Subclasses
    can override this method to provide different justification
    information.

    Returns:
    :   a [`GlyphJustificationInfo`](GlyphJustificationInfo.md "class in java.awt.font") object that contains the
        justification information for this `GraphicAttribute`.