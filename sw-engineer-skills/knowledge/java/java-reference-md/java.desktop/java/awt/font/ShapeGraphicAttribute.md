Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class ShapeGraphicAttribute

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.font.GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

java.awt.font.ShapeGraphicAttribute

---

public final class ShapeGraphicAttribute
extends [GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

The `ShapeGraphicAttribute` class is an implementation of
[`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font") that draws shapes in a [`TextLayout`](TextLayout.md "class in java.awt.font").

See Also:
:   * [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final boolean`

  `FILL`

  A key indicating the shape should be filled.

  `static final boolean`

  `STROKE`

  A key indicating the shape should be stroked with a 1-pixel wide stroke.

  ### Fields inherited from class java.awt.font.[GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

  `BOTTOM_ALIGNMENT, CENTER_BASELINE, HANGING_BASELINE, ROMAN_BASELINE, TOP_ALIGNMENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ShapeGraphicAttribute(Shape shape,
  int alignment,
  boolean stroke)`

  Constructs a `ShapeGraphicAttribute` for the specified
  [`Shape`](../Shape.md "interface in java.awt").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `draw(Graphics2D graphics,
  float x,
  float y)`

  Renders this `GraphicAttribute` at the specified
  location.

  `boolean`

  `equals(ShapeGraphicAttribute rhs)`

  Compares this `ShapeGraphicAttribute` to the specified
  `ShapeGraphicAttribute`.

  `boolean`

  `equals(Object rhs)`

  Compares this `ShapeGraphicAttribute` to the specified
  `Object`.

  `float`

  `getAdvance()`

  Returns the advance of this `ShapeGraphicAttribute`.

  `float`

  `getAscent()`

  Returns the ascent of this `ShapeGraphicAttribute`.

  `Rectangle2D`

  `getBounds()`

  Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
  bits drawn by this `ShapeGraphicAttribute` relative to
  the rendering position.

  `float`

  `getDescent()`

  Returns the descent of this `ShapeGraphicAttribute`.

  `Shape`

  `getOutline(AffineTransform tx)`

  Return a [`Shape`](../Shape.md "interface in java.awt") that represents the region that
  this `ShapeGraphicAttribute` renders.

  `int`

  `hashCode()`

  Returns a hashcode for this `ShapeGraphicAttribute`.

  ### Methods inherited from class java.awt.font.[GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

  `getAlignment, getJustificationInfo`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### STROKE

    public static final boolean STROKE

    A key indicating the shape should be stroked with a 1-pixel wide stroke.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.ShapeGraphicAttribute.STROKE)
  + ### FILL

    public static final boolean FILL

    A key indicating the shape should be filled.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.ShapeGraphicAttribute.FILL)
* ## Constructor Details

  + ### ShapeGraphicAttribute

    public ShapeGraphicAttribute([Shape](../Shape.md "interface in java.awt") shape,
    int alignment,
    boolean stroke)

    Constructs a `ShapeGraphicAttribute` for the specified
    [`Shape`](../Shape.md "interface in java.awt").

    Parameters:
    :   `shape` - the `Shape` to render. The
        `Shape` is rendered with its origin at the origin of
        this `ShapeGraphicAttribute` in the
        host `TextLayout`. This object maintains a reference to
        `shape`.
    :   `alignment` - one of the alignments from this
        `ShapeGraphicAttribute`.
    :   `stroke` - `true` if the `Shape` should be
        stroked; `false` if the `Shape` should be
        filled.
* ## Method Details

  + ### getAscent

    public float getAscent()

    Returns the ascent of this `ShapeGraphicAttribute`. The
    ascent of a `ShapeGraphicAttribute` is the positive
    distance from the origin of its `Shape` to the top of
    bounds of its `Shape`.

    Specified by:
    :   `getAscent` in class `GraphicAttribute`

    Returns:
    :   the ascent of this `ShapeGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### getDescent

    public float getDescent()

    Returns the descent of this `ShapeGraphicAttribute`.
    The descent of a `ShapeGraphicAttribute` is the distance
    from the origin of its `Shape` to the bottom of the
    bounds of its `Shape`.

    Specified by:
    :   `getDescent` in class `GraphicAttribute`

    Returns:
    :   the descent of this `ShapeGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### getAdvance

    public float getAdvance()

    Returns the advance of this `ShapeGraphicAttribute`.
    The advance of a `ShapeGraphicAttribute` is the distance
    from the origin of its `Shape` to the right side of the
    bounds of its `Shape`.

    Specified by:
    :   `getAdvance` in class `GraphicAttribute`

    Returns:
    :   the advance of this `ShapeGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### draw

    public void draw([Graphics2D](../Graphics2D.md "class in java.awt") graphics,
    float x,
    float y)

    Renders this `GraphicAttribute` at the specified
    location.

    Specified by:
    :   `draw` in class `GraphicAttribute`

    Parameters:
    :   `graphics` - the [`Graphics2D`](../Graphics2D.md "class in java.awt") into which to render the
        graphic
    :   `x` - the user-space X coordinate where the graphic is rendered
    :   `y` - the user-space Y coordinate where the graphic is rendered
  + ### getBounds

    public [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds()

    Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
    bits drawn by this `ShapeGraphicAttribute` relative to
    the rendering position. A graphic can be rendered beyond its
    origin, ascent, descent, or advance; but if it does, this method's
    implementation should indicate where the graphic is rendered.

    Overrides:
    :   `getBounds` in class `GraphicAttribute`

    Returns:
    :   a `Rectangle2D` that encloses all of the bits
        rendered by this `ShapeGraphicAttribute`.
  + ### getOutline

    public [Shape](../Shape.md "interface in java.awt") getOutline([AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") tx)

    Return a [`Shape`](../Shape.md "interface in java.awt") that represents the region that
    this `ShapeGraphicAttribute` renders. This is used when a
    [`TextLayout`](TextLayout.md "class in java.awt.font") is requested to return the outline of the text.
    The (untransformed) shape must not extend outside the rectangular
    bounds returned by `getBounds`.

    Overrides:
    :   `getOutline` in class `GraphicAttribute`

    Parameters:
    :   `tx` - an optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") to apply to the
        this `ShapeGraphicAttribute`. This can be null.

    Returns:
    :   the `Shape` representing this graphic attribute,
        suitable for stroking or filling.

    Since:
    :   1.6
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this `ShapeGraphicAttribute`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this
        `ShapeGraphicAttribute`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") rhs)

    Compares this `ShapeGraphicAttribute` to the specified
    `Object`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `rhs` - the `Object` to compare for equality

    Returns:
    :   `true` if this
        `ShapeGraphicAttribute` equals `rhs`;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### equals

    public boolean equals([ShapeGraphicAttribute](ShapeGraphicAttribute.md "class in java.awt.font") rhs)

    Compares this `ShapeGraphicAttribute` to the specified
    `ShapeGraphicAttribute`.

    Parameters:
    :   `rhs` - the `ShapeGraphicAttribute` to compare for
        equality

    Returns:
    :   `true` if this
        `ShapeGraphicAttribute` equals `rhs`;
        `false` otherwise.