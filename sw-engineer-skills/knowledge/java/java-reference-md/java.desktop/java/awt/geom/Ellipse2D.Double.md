Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Ellipse2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

[java.awt.geom.Ellipse2D](Ellipse2D.md "class in java.awt.geom")

java.awt.geom.Ellipse2D.Double

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `Ellipse2D`

---

public static class Ellipse2D.Double
extends [Ellipse2D](Ellipse2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `Double` class defines an ellipse specified
in `double` precision.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.Ellipse2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Ellipse2D](Ellipse2D.md "class in java.awt.geom")

  `Ellipse2D.Double, Ellipse2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `double`

  `height`

  The overall height of the `Ellipse2D`.

  `double`

  `width`

  The overall width of this `Ellipse2D`.

  `double`

  `x`

  The X coordinate of the upper-left corner of the
  framing rectangle of this `Ellipse2D`.

  `double`

  `y`

  The Y coordinate of the upper-left corner of the
  framing rectangle of this `Ellipse2D`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs a new `Ellipse2D`, initialized to
  location (0, 0) and size (0, 0).

  `Double(double x,
  double y,
  double w,
  double h)`

  Constructs and initializes an `Ellipse2D` from the
  specified coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  `setFrame(double x,
  double y,
  double w,
  double h)`

  Sets the location and size of the framing rectangle of this
  `Shape` to the specified rectangular values.

  ### Methods inherited from class java.awt.geom.[Ellipse2D](Ellipse2D.md "class in java.awt.geom")

  `contains, contains, equals, getPathIterator, hashCode, intersects`

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getBounds, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, getPathIterator, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### x

    public double x

    The X coordinate of the upper-left corner of the
    framing rectangle of this `Ellipse2D`.

    Since:
    :   1.2
  + ### y

    public double y

    The Y coordinate of the upper-left corner of the
    framing rectangle of this `Ellipse2D`.

    Since:
    :   1.2
  + ### width

    public double width

    The overall width of this `Ellipse2D`.

    Since:
    :   1.2
  + ### height

    public double height

    The overall height of the `Ellipse2D`.

    Since:
    :   1.2
* ## Constructor Details

  + ### Double

    public Double()

    Constructs a new `Ellipse2D`, initialized to
    location (0, 0) and size (0, 0).

    Since:
    :   1.2
  + ### Double

    public Double(double x,
    double y,
    double w,
    double h)

    Constructs and initializes an `Ellipse2D` from the
    specified coordinates.

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of the framing rectangle
    :   `y` - the Y coordinate of the upper-left corner
        of the framing rectangle
    :   `w` - the width of the framing rectangle
    :   `h` - the height of the framing rectangle

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
  + ### setFrame

    public void setFrame(double x,
    double y,
    double w,
    double h)

    Sets the location and size of the framing rectangle of this
    `Shape` to the specified rectangular values.

    Specified by:
    :   `setFrame` in class `RectangularShape`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner of the
        specified rectangular shape
    :   `y` - the Y coordinate of the upper-left corner of the
        specified rectangular shape
    :   `w` - the width of the specified rectangular shape
    :   `h` - the height of the specified rectangular shape

    Since:
    :   1.2

    See Also:
    :   - [`RectangularShape.getFrame()`](RectangularShape.md#getFrame())
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