Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class ImageGraphicAttribute

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.font.GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

java.awt.font.ImageGraphicAttribute

---

public final class ImageGraphicAttribute
extends [GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

The `ImageGraphicAttribute` class is an implementation of
[`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font") which draws images in
a [`TextLayout`](TextLayout.md "class in java.awt.font").

See Also:
:   * [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font")

* ## Field Summary

  ### Fields inherited from class java.awt.font.[GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

  `BOTTOM_ALIGNMENT, CENTER_BASELINE, HANGING_BASELINE, ROMAN_BASELINE, TOP_ALIGNMENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImageGraphicAttribute(Image image,
  int alignment)`

  Constructs an `ImageGraphicAttribute` from the specified
  [`Image`](../Image.md "class in java.awt").

  `ImageGraphicAttribute(Image image,
  int alignment,
  float originX,
  float originY)`

  Constructs an `ImageGraphicAttribute` from the specified
  `Image`.
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

  `equals(ImageGraphicAttribute rhs)`

  Compares this `ImageGraphicAttribute` to the specified
  `ImageGraphicAttribute`.

  `boolean`

  `equals(Object rhs)`

  Compares this `ImageGraphicAttribute` to the specified
  [`Object`](../../../../java.base/java/lang/Object.md "class in java.lang").

  `float`

  `getAdvance()`

  Returns the advance of this `ImageGraphicAttribute`.

  `float`

  `getAscent()`

  Returns the ascent of this `ImageGraphicAttribute`.

  `Rectangle2D`

  `getBounds()`

  Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
  bits rendered by this `ImageGraphicAttribute`, relative
  to the rendering position.

  `float`

  `getDescent()`

  Returns the descent of this `ImageGraphicAttribute`.

  `int`

  `hashCode()`

  Returns a hashcode for this `ImageGraphicAttribute`.

  ### Methods inherited from class java.awt.font.[GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

  `getAlignment, getJustificationInfo, getOutline`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ImageGraphicAttribute

    public ImageGraphicAttribute([Image](../Image.md "class in java.awt") image,
    int alignment)

    Constructs an `ImageGraphicAttribute` from the specified
    [`Image`](../Image.md "class in java.awt"). The origin is at (0, 0).

    Parameters:
    :   `image` - the `Image` rendered by this
        `ImageGraphicAttribute`.
        This object keeps a reference to `image`.
    :   `alignment` - one of the alignments from this
        `ImageGraphicAttribute`
  + ### ImageGraphicAttribute

    public ImageGraphicAttribute([Image](../Image.md "class in java.awt") image,
    int alignment,
    float originX,
    float originY)

    Constructs an `ImageGraphicAttribute` from the specified
    `Image`. The point
    (`originX`, `originY`) in the
    `Image` appears at the origin of the
    `ImageGraphicAttribute` within the text.

    Parameters:
    :   `image` - the `Image` rendered by this
        `ImageGraphicAttribute`.
        This object keeps a reference to `image`.
    :   `alignment` - one of the alignments from this
        `ImageGraphicAttribute`
    :   `originX` - the X coordinate of the point within
        the `Image` that appears at the origin of the
        `ImageGraphicAttribute` in the text line.
    :   `originY` - the Y coordinate of the point within
        the `Image` that appears at the origin of the
        `ImageGraphicAttribute` in the text line.
* ## Method Details

  + ### getAscent

    public float getAscent()

    Returns the ascent of this `ImageGraphicAttribute`. The
    ascent of an `ImageGraphicAttribute` is the distance
    from the top of the image to the origin.

    Specified by:
    :   `getAscent` in class `GraphicAttribute`

    Returns:
    :   the ascent of this `ImageGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### getDescent

    public float getDescent()

    Returns the descent of this `ImageGraphicAttribute`.
    The descent of an `ImageGraphicAttribute` is the
    distance from the origin to the bottom of the image.

    Specified by:
    :   `getDescent` in class `GraphicAttribute`

    Returns:
    :   the descent of this `ImageGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### getAdvance

    public float getAdvance()

    Returns the advance of this `ImageGraphicAttribute`.
    The advance of an `ImageGraphicAttribute` is the
    distance from the origin to the right edge of the image.

    Specified by:
    :   `getAdvance` in class `GraphicAttribute`

    Returns:
    :   the advance of this `ImageGraphicAttribute`.

    See Also:
    :   - [`GraphicAttribute.getBounds()`](GraphicAttribute.md#getBounds())
  + ### getBounds

    public [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds()

    Returns a [`Rectangle2D`](../geom/Rectangle2D.md "class in java.awt.geom") that encloses all of the
    bits rendered by this `ImageGraphicAttribute`, relative
    to the rendering position. A graphic can be rendered beyond its
    origin, ascent, descent, or advance; but if it is, this
    method's implementation must indicate where the graphic is rendered.

    Overrides:
    :   `getBounds` in class `GraphicAttribute`

    Returns:
    :   a `Rectangle2D` that encloses all of the bits
        rendered by this `ImageGraphicAttribute`.
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
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this `ImageGraphicAttribute`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") rhs)

    Compares this `ImageGraphicAttribute` to the specified
    [`Object`](../../../../java.base/java/lang/Object.md "class in java.lang").

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `rhs` - the `Object` to compare for equality

    Returns:
    :   `true` if this
        `ImageGraphicAttribute` equals `rhs`;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### equals

    public boolean equals([ImageGraphicAttribute](ImageGraphicAttribute.md "class in java.awt.font") rhs)

    Compares this `ImageGraphicAttribute` to the specified
    `ImageGraphicAttribute`.

    Parameters:
    :   `rhs` - the `ImageGraphicAttribute` to compare for
        equality

    Returns:
    :   `true` if this
        `ImageGraphicAttribute` equals `rhs`;
        `false` otherwise.