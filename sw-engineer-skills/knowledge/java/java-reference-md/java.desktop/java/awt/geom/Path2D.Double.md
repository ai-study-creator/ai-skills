Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Path2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Path2D](Path2D.md "class in java.awt.geom")

java.awt.geom.Path2D.Double

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `Path2D`

---

public static non-sealed class Path2D.Double
extends [Path2D](Path2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `Double` class defines a geometric path with
coordinates stored in double precision floating point.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.Path2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Path2D](Path2D.md "class in java.awt.geom")

  `Path2D.Double, Path2D.Float`
* ## Field Summary

  ### Fields inherited from class java.awt.geom.[Path2D](Path2D.md "class in java.awt.geom")

  `WIND_EVEN_ODD, WIND_NON_ZERO`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs a new empty double precision `Path2D` object
  with a default winding rule of [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO).

  `Double(int rule)`

  Constructs a new empty double precision `Path2D` object
  with the specified winding rule to control operations that
  require the interior of the path to be defined.

  `Double(int rule,
  int initialCapacity)`

  Constructs a new empty double precision `Path2D` object
  with the specified winding rule and the specified initial
  capacity to store path segments.

  `Double(Shape s)`

  Constructs a new double precision `Path2D` object
  from an arbitrary [`Shape`](../Shape.md "interface in java.awt") object.

  `Double(Shape s,
  AffineTransform at)`

  Constructs a new double precision `Path2D` object
  from an arbitrary [`Shape`](../Shape.md "interface in java.awt") object, transformed by an
  [`AffineTransform`](AffineTransform.md "class in java.awt.geom") object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final void`

  `append(PathIterator pi,
  boolean connect)`

  Appends the geometry of the specified
  [`PathIterator`](PathIterator.md "interface in java.awt.geom") object
  to the path, possibly connecting the new geometry to the existing
  path segments with a line segment.

  `final Object`

  `clone()`

  Creates a new object of the same class as this object.

  `final void`

  `curveTo(double x1,
  double y1,
  double x2,
  double y2,
  double x3,
  double y3)`

  Adds a curved segment, defined by three new points, to the path by
  drawing a Bézier curve that intersects both the current
  coordinates and the specified coordinates `(x3,y3)`,
  using the specified points `(x1,y1)` and `(x2,y2)` as
  Bézier control points.

  `final Rectangle2D`

  `getBounds2D()`

  Returns a high precision and more accurate bounding box of
  the `Shape` than the `getBounds` method.

  `final PathIterator`

  `getPathIterator(AffineTransform at)`

  Returns an iterator object that iterates along the
  `Shape` boundary and provides access to the geometry of the
  `Shape` outline.

  `final void`

  `lineTo(double x,
  double y)`

  Adds a point to the path by drawing a straight line from the
  current coordinates to the new specified coordinates
  specified in double precision.

  `final void`

  `moveTo(double x,
  double y)`

  Adds a point to the path by moving to the specified
  coordinates specified in double precision.

  `final void`

  `quadTo(double x1,
  double y1,
  double x2,
  double y2)`

  Adds a curved segment, defined by two new points, to the path by
  drawing a Quadratic curve that intersects both the current
  coordinates and the specified coordinates `(x2,y2)`,
  using the specified point `(x1,y1)` as a quadratic
  parametric control point.

  `final void`

  `transform(AffineTransform at)`

  Transforms the geometry of this path using the specified
  [`AffineTransform`](AffineTransform.md "class in java.awt.geom").

  `final void`

  `trimToSize()`

  Trims the capacity of this Path2D instance to its current
  size.

  ### Methods inherited from class java.awt.geom.[Path2D](Path2D.md "class in java.awt.geom")

  `append, closePath, contains, contains, contains, contains, contains, contains, contains, contains, createTransformedShape, getBounds, getCurrentPoint, getPathIterator, getWindingRule, intersects, intersects, intersects, intersects, reset, setWindingRule`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Double

    public Double()

    Constructs a new empty double precision `Path2D` object
    with a default winding rule of [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO).

    Since:
    :   1.6
  + ### Double

    public Double(int rule)

    Constructs a new empty double precision `Path2D` object
    with the specified winding rule to control operations that
    require the interior of the path to be defined.

    Parameters:
    :   `rule` - the winding rule

    Throws:
    :   `IllegalArgumentException` - if `rule` is not either
        [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD) or [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)

    Since:
    :   1.6

    See Also:
    :   - [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD)
        - [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)
  + ### Double

    public Double(int rule,
    int initialCapacity)

    Constructs a new empty double precision `Path2D` object
    with the specified winding rule and the specified initial
    capacity to store path segments.
    This number is an initial guess as to how many path segments
    are in the path, but the storage is expanded as needed to store
    whatever path segments are added to this path.

    Parameters:
    :   `rule` - the winding rule
    :   `initialCapacity` - the estimate for the number of path segments
        in the path

    Throws:
    :   `IllegalArgumentException` - if `rule` is not either
        [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD) or [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)
    :   `NegativeArraySizeException` - if `initialCapacity` is
        negative

    Since:
    :   1.6

    See Also:
    :   - [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD)
        - [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)
  + ### Double

    public Double([Shape](../Shape.md "interface in java.awt") s)

    Constructs a new double precision `Path2D` object
    from an arbitrary [`Shape`](../Shape.md "interface in java.awt") object.
    All of the initial geometry and the winding rule for this path are
    taken from the specified `Shape` object.

    Parameters:
    :   `s` - the specified `Shape` object

    Throws:
    :   `NullPointerException` - if `s` is `null`

    Since:
    :   1.6
  + ### Double

    public Double([Shape](../Shape.md "interface in java.awt") s,
    [AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Constructs a new double precision `Path2D` object
    from an arbitrary [`Shape`](../Shape.md "interface in java.awt") object, transformed by an
    [`AffineTransform`](AffineTransform.md "class in java.awt.geom") object.
    All of the initial geometry and the winding rule for this path are
    taken from the specified `Shape` object and transformed
    by the specified `AffineTransform` object.

    Parameters:
    :   `s` - the specified `Shape` object
    :   `at` - the specified `AffineTransform` object

    Throws:
    :   `NullPointerException` - if `s` is `null`

    Since:
    :   1.6
* ## Method Details

  + ### trimToSize

    public final void trimToSize()

    Description copied from class: `Path2D`

    Trims the capacity of this Path2D instance to its current
    size. An application can use this operation to minimize the
    storage of a path.

    Specified by:
    :   `trimToSize` in class `Path2D`
  + ### moveTo

    public final void moveTo(double x,
    double y)

    Adds a point to the path by moving to the specified
    coordinates specified in double precision.

    Specified by:
    :   `moveTo` in class `Path2D`

    Parameters:
    :   `x` - the specified X coordinate
    :   `y` - the specified Y coordinate

    Since:
    :   1.6
  + ### lineTo

    public final void lineTo(double x,
    double y)

    Adds a point to the path by drawing a straight line from the
    current coordinates to the new specified coordinates
    specified in double precision.

    Specified by:
    :   `lineTo` in class `Path2D`

    Parameters:
    :   `x` - the specified X coordinate
    :   `y` - the specified Y coordinate

    Since:
    :   1.6
  + ### quadTo

    public final void quadTo(double x1,
    double y1,
    double x2,
    double y2)

    Adds a curved segment, defined by two new points, to the path by
    drawing a Quadratic curve that intersects both the current
    coordinates and the specified coordinates `(x2,y2)`,
    using the specified point `(x1,y1)` as a quadratic
    parametric control point.
    All coordinates are specified in double precision.

    Specified by:
    :   `quadTo` in class `Path2D`

    Parameters:
    :   `x1` - the X coordinate of the quadratic control point
    :   `y1` - the Y coordinate of the quadratic control point
    :   `x2` - the X coordinate of the final end point
    :   `y2` - the Y coordinate of the final end point

    Since:
    :   1.6
  + ### curveTo

    public final void curveTo(double x1,
    double y1,
    double x2,
    double y2,
    double x3,
    double y3)

    Adds a curved segment, defined by three new points, to the path by
    drawing a Bézier curve that intersects both the current
    coordinates and the specified coordinates `(x3,y3)`,
    using the specified points `(x1,y1)` and `(x2,y2)` as
    Bézier control points.
    All coordinates are specified in double precision.

    Specified by:
    :   `curveTo` in class `Path2D`

    Parameters:
    :   `x1` - the X coordinate of the first Bézier control point
    :   `y1` - the Y coordinate of the first Bézier control point
    :   `x2` - the X coordinate of the second Bézier control point
    :   `y2` - the Y coordinate of the second Bézier control point
    :   `x3` - the X coordinate of the final end point
    :   `y3` - the Y coordinate of the final end point

    Since:
    :   1.6
  + ### append

    public final void append([PathIterator](PathIterator.md "interface in java.awt.geom") pi,
    boolean connect)

    Appends the geometry of the specified
    [`PathIterator`](PathIterator.md "interface in java.awt.geom") object
    to the path, possibly connecting the new geometry to the existing
    path segments with a line segment.
    If the `connect` parameter is `true` and the
    path is not empty then any initial `moveTo` in the
    geometry of the appended `Shape` is turned into a
    `lineTo` segment.
    If the destination coordinates of such a connecting `lineTo`
    segment match the ending coordinates of a currently open
    subpath then the segment is omitted as superfluous.
    The winding rule of the specified `Shape` is ignored
    and the appended geometry is governed by the winding
    rule specified for this path.

    Specified by:
    :   `append` in class `Path2D`

    Parameters:
    :   `pi` - the `PathIterator` whose geometry is appended to
        this path
    :   `connect` - a boolean to control whether or not to turn an initial
        `moveTo` segment into a `lineTo` segment
        to connect the new geometry to the existing path

    Since:
    :   1.6
  + ### transform

    public final void transform([AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Transforms the geometry of this path using the specified
    [`AffineTransform`](AffineTransform.md "class in java.awt.geom").
    The geometry is transformed in place, which permanently changes the
    boundary defined by this object.

    Specified by:
    :   `transform` in class `Path2D`

    Parameters:
    :   `at` - the `AffineTransform` used to transform the area

    Since:
    :   1.6
  + ### getBounds2D

    public final [Rectangle2D](Rectangle2D.md "class in java.awt.geom") getBounds2D()

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
    :   1.6

    See Also:
    :   - [`Shape.getBounds()`](../Shape.md#getBounds())
  + ### getPathIterator

    public final [PathIterator](PathIterator.md "interface in java.awt.geom") getPathIterator([AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Returns an iterator object that iterates along the
    `Shape` boundary and provides access to the geometry of the
    `Shape` outline. If an optional [`AffineTransform`](AffineTransform.md "class in java.awt.geom")
    is specified, the coordinates returned in the iteration are
    transformed accordingly.

    Each call to this method returns a fresh `PathIterator`
    object that traverses the geometry of the `Shape` object
    independently from any other `PathIterator` objects in use
    at the same time.

    It is recommended, but not guaranteed, that objects
    implementing the `Shape` interface isolate iterations
    that are in process from any changes that might occur to the original
    object's geometry during such iterations.

    The iterator for this class is not multi-threaded safe,
    which means that the `Path2D` class does not
    guarantee that modifications to the geometry of this
    `Path2D` object do not affect any iterations of
    that geometry that are already in process.

    Specified by:
    :   `getPathIterator` in interface `Shape`

    Parameters:
    :   `at` - an `AffineTransform`

    Returns:
    :   a new `PathIterator` that iterates along the boundary
        of this `Shape` and provides access to the geometry
        of this `Shape`'s outline

    Since:
    :   1.6
  + ### clone

    public final [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a new object of the same class as this object.

    Specified by:
    :   `clone` in class `Path2D`

    Returns:
    :   a clone of this instance.

    Throws:
    :   `OutOfMemoryError` - if there is not enough memory.

    Since:
    :   1.6

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")