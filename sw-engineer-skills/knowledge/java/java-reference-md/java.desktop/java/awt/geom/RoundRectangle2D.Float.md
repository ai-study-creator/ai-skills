Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class RoundRectangle2D.Float

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

[java.awt.geom.RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom")

java.awt.geom.RoundRectangle2D.Float

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `RoundRectangle2D`

---

public static class RoundRectangle2D.Float
extends [RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `Float` class defines a rectangle with rounded
corners all specified in `float` coordinates.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.RoundRectangle2D.Float)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom")

  `RoundRectangle2D.Double, RoundRectangle2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `float`

  `archeight`

  The height of the arc that rounds off the corners.

  `float`

  `arcwidth`

  The width of the arc that rounds off the corners.

  `float`

  `height`

  The height of this `RoundRectangle2D`.

  `float`

  `width`

  The width of this `RoundRectangle2D`.

  `float`

  `x`

  The X coordinate of this `RoundRectangle2D`.

  `float`

  `y`

  The Y coordinate of this `RoundRectangle2D`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Float()`

  Constructs a new `RoundRectangle2D`, initialized to
  location (0.0, 0.0), size (0.0, 0.0), and corner arcs
  of radius 0.0.

  `Float(float x,
  float y,
  float w,
  float h,
  float arcw,
  float arch)`

  Constructs and initializes a `RoundRectangle2D`
  from the specified `float` coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `double`

  `getArcHeight()`

  Gets the height of the arc that rounds off the corners.

  `double`

  `getArcWidth()`

  Gets the width of the arc that rounds off the corners.

  `Rectangle2D`

  `getBounds2D()`

  Returns a high precision and more accurate bounding box of
  the `Shape` than the `getBounds` method.

  `double`

  `getHeight()`

  Returns the height of the framing rectangle
  in `double` precision.

  `double`

  `getWidth()`

  Returns the width of the framing rectangle in
  `double` precision.

  `double`

  `getX()`

  Returns the X coordinate of the upper-left corner of
  the framing rectangle in `double` precision.

  `double`

  `getY()`

  Returns the Y coordinate of the upper-left corner of
  the framing rectangle in `double` precision.

  `boolean`

  `isEmpty()`

  Determines whether the `RectangularShape` is empty.

  `void`

  `setRoundRect(double x,
  double y,
  double w,
  double h,
  double arcw,
  double arch)`

  Sets the location, size, and corner radii of this
  `RoundRectangle2D` to the specified
  `double` values.

  `void`

  `setRoundRect(float x,
  float y,
  float w,
  float h,
  float arcw,
  float arch)`

  Sets the location, size, and corner radii of this
  `RoundRectangle2D` to the specified
  `float` values.

  `void`

  `setRoundRect(RoundRectangle2D rr)`

  Sets this `RoundRectangle2D` to be the same as the
  specified `RoundRectangle2D`.

  ### Methods inherited from class java.awt.geom.[RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom")

  `contains, contains, equals, getPathIterator, hashCode, intersects, setFrame`

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getBounds, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, getPathIterator, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### x

    public float x

    The X coordinate of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### y

    public float y

    The Y coordinate of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### width

    public float width

    The width of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### height

    public float height

    The height of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### arcwidth

    public float arcwidth

    The width of the arc that rounds off the corners.

    Since:
    :   1.2
  + ### archeight

    public float archeight

    The height of the arc that rounds off the corners.

    Since:
    :   1.2
* ## Constructor Details

  + ### Float

    public Float()

    Constructs a new `RoundRectangle2D`, initialized to
    location (0.0, 0.0), size (0.0, 0.0), and corner arcs
    of radius 0.0.

    Since:
    :   1.2
  + ### Float

    public Float(float x,
    float y,
    float w,
    float h,
    float arcw,
    float arch)

    Constructs and initializes a `RoundRectangle2D`
    from the specified `float` coordinates.

    Parameters:
    :   `x` - the X coordinate of the newly
        constructed `RoundRectangle2D`
    :   `y` - the Y coordinate of the newly
        constructed `RoundRectangle2D`
    :   `w` - the width to which to set the newly
        constructed `RoundRectangle2D`
    :   `h` - the height to which to set the newly
        constructed `RoundRectangle2D`
    :   `arcw` - the width of the arc to use to round off the
        corners of the newly constructed
        `RoundRectangle2D`
    :   `arch` - the height of the arc to use to round off the
        corners of the newly constructed
        `RoundRectangle2D`

    Since:
    :   1.2
* ## Method Details

  + ### getX

    public double getX()

    Returns the X coordinate of the upper-left corner of
    the framing rectangle in `double` precision.

    Specified by:
    :   `getX` in class `RectangularShape`

    Returns:
    :   the X coordinate of the upper-left corner of
        the framing rectangle.

    Since:
    :   1.2
  + ### getY

    public double getY()

    Returns the Y coordinate of the upper-left corner of
    the framing rectangle in `double` precision.

    Specified by:
    :   `getY` in class `RectangularShape`

    Returns:
    :   the Y coordinate of the upper-left corner of
        the framing rectangle.

    Since:
    :   1.2
  + ### getWidth

    public double getWidth()

    Returns the width of the framing rectangle in
    `double` precision.

    Specified by:
    :   `getWidth` in class `RectangularShape`

    Returns:
    :   the width of the framing rectangle.

    Since:
    :   1.2
  + ### getHeight

    public double getHeight()

    Returns the height of the framing rectangle
    in `double` precision.

    Specified by:
    :   `getHeight` in class `RectangularShape`

    Returns:
    :   the height of the framing rectangle.

    Since:
    :   1.2
  + ### getArcWidth

    public double getArcWidth()

    Gets the width of the arc that rounds off the corners.

    Specified by:
    :   `getArcWidth` in class `RoundRectangle2D`

    Returns:
    :   the width of the arc that rounds off the corners
        of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### getArcHeight

    public double getArcHeight()

    Gets the height of the arc that rounds off the corners.

    Specified by:
    :   `getArcHeight` in class `RoundRectangle2D`

    Returns:
    :   the height of the arc that rounds off the corners
        of this `RoundRectangle2D`.

    Since:
    :   1.2
  + ### isEmpty

    public boolean isEmpty()

    Determines whether the `RectangularShape` is empty.
    When the `RectangularShape` is empty, it encloses no
    area.

    Specified by:
    :   `isEmpty` in class `RectangularShape`

    Returns:
    :   `true` if the `RectangularShape` is empty;
        `false` otherwise.

    Since:
    :   1.2
  + ### setRoundRect

    public void setRoundRect(float x,
    float y,
    float w,
    float h,
    float arcw,
    float arch)

    Sets the location, size, and corner radii of this
    `RoundRectangle2D` to the specified
    `float` values.

    Parameters:
    :   `x` - the X coordinate to which to set the
        location of this `RoundRectangle2D`
    :   `y` - the Y coordinate to which to set the
        location of this `RoundRectangle2D`
    :   `w` - the width to which to set this
        `RoundRectangle2D`
    :   `h` - the height to which to set this
        `RoundRectangle2D`
    :   `arcw` - the width to which to set the arc of this
        `RoundRectangle2D`
    :   `arch` - the height to which to set the arc of this
        `RoundRectangle2D`

    Since:
    :   1.2
  + ### setRoundRect

    public void setRoundRect(double x,
    double y,
    double w,
    double h,
    double arcw,
    double arch)

    Sets the location, size, and corner radii of this
    `RoundRectangle2D` to the specified
    `double` values.

    Specified by:
    :   `setRoundRect` in class `RoundRectangle2D`

    Parameters:
    :   `x` - the X coordinate to which to set the
        location of this `RoundRectangle2D`
    :   `y` - the Y coordinate to which to set the
        location of this `RoundRectangle2D`
    :   `w` - the width to which to set this
        `RoundRectangle2D`
    :   `h` - the height to which to set this
        `RoundRectangle2D`
    :   `arcw` - the width to which to set the arc of this
        `RoundRectangle2D`
    :   `arch` - the height to which to set the arc of this
        `RoundRectangle2D`

    Since:
    :   1.2
  + ### setRoundRect

    public void setRoundRect([RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom") rr)

    Sets this `RoundRectangle2D` to be the same as the
    specified `RoundRectangle2D`.

    Overrides:
    :   `setRoundRect` in class `RoundRectangle2D`

    Parameters:
    :   `rr` - the specified `RoundRectangle2D`

    Since:
    :   1.2
  + ### getBounds2D

    public [Rectangle2D](Rectangle2D.md "class in java.awt.geom") getBounds2D()

    Returns a high precision and more accurate bounding box of
    the `Shape` than the `getBounds` method.
    Note that there is no guarantee that the returned
    [`Rectangle2D`](Rectangle2D.md "class in java.awt.geom") is the smallest bounding box that encloses
    the `Shape`, only that the `Shape` lies
    entirely within the indicated `Rectangle2D`. The
    bounding box returned by this method is usually tighter than that
    returned by the `getBounds` method and never fails due
    to overflow problems since the return value can be an instance of
    the `Rectangle2D` that uses double precision values to
    store the dimensions.

    Note that the
    [definition of insideness](../Shape.md#def_insideness) can lead to situations where points
    on the defining outline of the `shape` may not be considered
    contained in the returned `bounds` object, but only in cases
    where those points are also not considered contained in the original
    `shape`.

    If a `point` is inside the `shape` according to the
    [`contains(point)`](../Shape.md#contains(java.awt.geom.Point2D)) method, then it must
    be inside the returned `Rectangle2D` bounds object according
    to the [`contains(point)`](../Shape.md#contains(java.awt.geom.Point2D)) method of the
    `bounds`. Specifically:

    `shape.contains(p)` requires `bounds.contains(p)`

    If a `point` is not inside the `shape`, then it might
    still be contained in the `bounds` object:

    `bounds.contains(p)` does not imply `shape.contains(p)`

    Specified by:
    :   `getBounds2D` in interface `Shape`

    Returns:
    :   an instance of `Rectangle2D` that is a
        high-precision bounding box of the `Shape`.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.getBounds()`](../Shape.md#getBounds())