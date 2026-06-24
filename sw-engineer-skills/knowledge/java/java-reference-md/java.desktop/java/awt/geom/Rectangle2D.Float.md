Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Rectangle2D.Float

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

[java.awt.geom.Rectangle2D](Rectangle2D.md "class in java.awt.geom")

java.awt.geom.Rectangle2D.Float

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `Rectangle2D`

---

public static class Rectangle2D.Float
extends [Rectangle2D](Rectangle2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `Float` class defines a rectangle specified in float
coordinates.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.Rectangle2D.Float)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Rectangle2D](Rectangle2D.md "class in java.awt.geom")

  `Rectangle2D.Double, Rectangle2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `float`

  `height`

  The height of this `Rectangle2D`.

  `float`

  `width`

  The width of this `Rectangle2D`.

  `float`

  `x`

  The X coordinate of this `Rectangle2D`.

  `float`

  `y`

  The Y coordinate of this `Rectangle2D`.

  ### Fields inherited from class java.awt.geom.[Rectangle2D](Rectangle2D.md "class in java.awt.geom")

  `OUT_BOTTOM, OUT_LEFT, OUT_RIGHT, OUT_TOP`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Float()`

  Constructs a new `Rectangle2D`, initialized to
  location (0.0, 0.0) and size (0.0, 0.0).

  `Float(float x,
  float y,
  float w,
  float h)`

  Constructs and initializes a `Rectangle2D`
  from the specified `float` coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Rectangle2D`

  `createIntersection(Rectangle2D r)`

  Returns a new `Rectangle2D` object representing the
  intersection of this `Rectangle2D` with the specified
  `Rectangle2D`.

  `Rectangle2D`

  `createUnion(Rectangle2D r)`

  Returns a new `Rectangle2D` object representing the
  union of this `Rectangle2D` with the specified
  `Rectangle2D`.

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

  `int`

  `outcode(double x,
  double y)`

  Determines where the specified coordinates lie with respect
  to this `Rectangle2D`.

  `void`

  `setRect(double x,
  double y,
  double w,
  double h)`

  Sets the location and size of this `Rectangle2D`
  to the specified `double` values.

  `void`

  `setRect(float x,
  float y,
  float w,
  float h)`

  Sets the location and size of this `Rectangle2D`
  to the specified `float` values.

  `void`

  `setRect(Rectangle2D r)`

  Sets this `Rectangle2D` to be the same as the specified
  `Rectangle2D`.

  `String`

  `toString()`

  Returns the `String` representation of this
  `Rectangle2D`.

  ### Methods inherited from class java.awt.geom.[Rectangle2D](Rectangle2D.md "class in java.awt.geom")

  `add, add, add, contains, contains, equals, getPathIterator, getPathIterator, hashCode, intersect, intersects, intersectsLine, intersectsLine, outcode, setFrame, union`

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getBounds, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### x

    public float x

    The X coordinate of this `Rectangle2D`.

    Since:
    :   1.2
  + ### y

    public float y

    The Y coordinate of this `Rectangle2D`.

    Since:
    :   1.2
  + ### width

    public float width

    The width of this `Rectangle2D`.

    Since:
    :   1.2
  + ### height

    public float height

    The height of this `Rectangle2D`.

    Since:
    :   1.2
* ## Constructor Details

  + ### Float

    public Float()

    Constructs a new `Rectangle2D`, initialized to
    location (0.0, 0.0) and size (0.0, 0.0).

    Since:
    :   1.2
  + ### Float

    public Float(float x,
    float y,
    float w,
    float h)

    Constructs and initializes a `Rectangle2D`
    from the specified `float` coordinates.

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of the newly constructed `Rectangle2D`
    :   `y` - the Y coordinate of the upper-left corner
        of the newly constructed `Rectangle2D`
    :   `w` - the width of the newly constructed
        `Rectangle2D`
    :   `h` - the height of the newly constructed
        `Rectangle2D`

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
  + ### setRect

    public void setRect(float x,
    float y,
    float w,
    float h)

    Sets the location and size of this `Rectangle2D`
    to the specified `float` values.

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of this `Rectangle2D`
    :   `y` - the Y coordinate of the upper-left corner
        of this `Rectangle2D`
    :   `w` - the width of this `Rectangle2D`
    :   `h` - the height of this `Rectangle2D`

    Since:
    :   1.2
  + ### setRect

    public void setRect(double x,
    double y,
    double w,
    double h)

    Sets the location and size of this `Rectangle2D`
    to the specified `double` values.

    Specified by:
    :   `setRect` in class `Rectangle2D`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of this `Rectangle2D`
    :   `y` - the Y coordinate of the upper-left corner
        of this `Rectangle2D`
    :   `w` - the width of this `Rectangle2D`
    :   `h` - the height of this `Rectangle2D`

    Since:
    :   1.2
  + ### setRect

    public void setRect([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Sets this `Rectangle2D` to be the same as the specified
    `Rectangle2D`.

    Overrides:
    :   `setRect` in class `Rectangle2D`

    Parameters:
    :   `r` - the specified `Rectangle2D`

    Since:
    :   1.2
  + ### outcode

    public int outcode(double x,
    double y)

    Determines where the specified coordinates lie with respect
    to this `Rectangle2D`.
    This method computes a binary OR of the appropriate mask values
    indicating, for each side of this `Rectangle2D`,
    whether or not the specified coordinates are on the same side
    of the edge as the rest of this `Rectangle2D`.

    Specified by:
    :   `outcode` in class `Rectangle2D`

    Parameters:
    :   `x` - the specified X coordinate
    :   `y` - the specified Y coordinate

    Returns:
    :   the logical OR of all appropriate out codes.

    Since:
    :   1.2

    See Also:
    :   - [`Rectangle2D.OUT_LEFT`](Rectangle2D.md#OUT_LEFT)
        - [`Rectangle2D.OUT_TOP`](Rectangle2D.md#OUT_TOP)
        - [`Rectangle2D.OUT_RIGHT`](Rectangle2D.md#OUT_RIGHT)
        - [`Rectangle2D.OUT_BOTTOM`](Rectangle2D.md#OUT_BOTTOM)
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

    Overrides:
    :   `getBounds2D` in class `Rectangle2D`

    Returns:
    :   an instance of `Rectangle2D` that is a
        high-precision bounding box of the `Shape`.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.getBounds()`](../Shape.md#getBounds())
  + ### createIntersection

    public [Rectangle2D](Rectangle2D.md "class in java.awt.geom") createIntersection([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Returns a new `Rectangle2D` object representing the
    intersection of this `Rectangle2D` with the specified
    `Rectangle2D`.

    Specified by:
    :   `createIntersection` in class `Rectangle2D`

    Parameters:
    :   `r` - the `Rectangle2D` to be intersected with
        this `Rectangle2D`

    Returns:
    :   the largest `Rectangle2D` contained in both
        the specified `Rectangle2D` and in this
        `Rectangle2D`.

    Since:
    :   1.2
  + ### createUnion

    public [Rectangle2D](Rectangle2D.md "class in java.awt.geom") createUnion([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Returns a new `Rectangle2D` object representing the
    union of this `Rectangle2D` with the specified
    `Rectangle2D`.

    Specified by:
    :   `createUnion` in class `Rectangle2D`

    Parameters:
    :   `r` - the `Rectangle2D` to be combined with
        this `Rectangle2D`

    Returns:
    :   the smallest `Rectangle2D` containing both
        the specified `Rectangle2D` and this
        `Rectangle2D`.

    Since:
    :   1.2
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the `String` representation of this
    `Rectangle2D`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representing this
        `Rectangle2D`.

    Since:
    :   1.2