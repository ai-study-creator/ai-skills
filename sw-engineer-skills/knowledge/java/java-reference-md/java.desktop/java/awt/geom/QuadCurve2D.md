Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class QuadCurve2D

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.geom.QuadCurve2D

All Implemented Interfaces:
:   `Shape`, `Cloneable`

Direct Known Subclasses:
:   `QuadCurve2D.Double`, `QuadCurve2D.Float`

---

public abstract class QuadCurve2D
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Shape](../Shape.md "interface in java.awt"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `QuadCurve2D` class defines a quadratic parametric curve
segment in `(x,y)` coordinate space.

This class is only the abstract superclass for all objects that
store a 2D quadratic curve segment.
The actual storage representation of the coordinates is left to
the subclass.

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `QuadCurve2D.Double`

  A quadratic parametric curve segment specified with
  `double` coordinates.

  `static class`

  `QuadCurve2D.Float`

  A quadratic parametric curve segment specified with
  `float` coordinates.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `QuadCurve2D()`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a new object of the same class and with the same contents
  as this object.

  `boolean`

  `contains(double x,
  double y)`

  Tests if the specified coordinates are inside the boundary of the
  `Shape`, as described by the
  [definition of insideness](../Shape.md#def_insideness).

  `boolean`

  `contains(double x,
  double y,
  double w,
  double h)`

  Tests if the interior of the `Shape` entirely contains
  the specified rectangular area.

  `boolean`

  `contains(Point2D p)`

  Tests if a specified [`Point2D`](Point2D.md "class in java.awt.geom") is inside the boundary
  of the `Shape`, as described by the
  [definition of insideness](../../../../java.desktop/java/awt/Shape.md#def_insideness).

  `boolean`

  `contains(Rectangle2D r)`

  Tests if the interior of the `Shape` entirely contains the
  specified `Rectangle2D`.

  `Rectangle`

  `getBounds()`

  Returns an integer [`Rectangle`](../Rectangle.md "class in java.awt") that completely encloses the
  `Shape`.

  `Rectangle2D`

  `getBounds2D()`

  Returns a high precision and more accurate bounding box of
  the `Shape` than the `getBounds` method.

  `abstract Point2D`

  `getCtrlPt()`

  Returns the control point.

  `abstract double`

  `getCtrlX()`

  Returns the X coordinate of the control point in
  `double` precision.

  `abstract double`

  `getCtrlY()`

  Returns the Y coordinate of the control point in
  `double` precision.

  `double`

  `getFlatness()`

  Returns the flatness, or maximum distance of a
  control point from the line connecting the end points, of this
  `QuadCurve2D`.

  `static double`

  `getFlatness(double[] coords,
  int offset)`

  Returns the flatness, or maximum distance of a
  control point from the line connecting the end points, of the
  quadratic curve specified by the control points stored in the
  indicated array at the indicated index.

  `static double`

  `getFlatness(double x1,
  double y1,
  double ctrlx,
  double ctrly,
  double x2,
  double y2)`

  Returns the flatness, or maximum distance of a
  control point from the line connecting the end points, of the
  quadratic curve specified by the indicated control points.

  `double`

  `getFlatnessSq()`

  Returns the square of the flatness, or maximum distance of a
  control point from the line connecting the end points, of this
  `QuadCurve2D`.

  `static double`

  `getFlatnessSq(double[] coords,
  int offset)`

  Returns the square of the flatness, or maximum distance of a
  control point from the line connecting the end points, of the
  quadratic curve specified by the control points stored in the
  indicated array at the indicated index.

  `static double`

  `getFlatnessSq(double x1,
  double y1,
  double ctrlx,
  double ctrly,
  double x2,
  double y2)`

  Returns the square of the flatness, or maximum distance of a
  control point from the line connecting the end points, of the
  quadratic curve specified by the indicated control points.

  `abstract Point2D`

  `getP1()`

  Returns the start point.

  `abstract Point2D`

  `getP2()`

  Returns the end point.

  `PathIterator`

  `getPathIterator(AffineTransform at)`

  Returns an iteration object that defines the boundary of the
  shape of this `QuadCurve2D`.

  `PathIterator`

  `getPathIterator(AffineTransform at,
  double flatness)`

  Returns an iteration object that defines the boundary of the
  flattened shape of this `QuadCurve2D`.

  `abstract double`

  `getX1()`

  Returns the X coordinate of the start point in
  `double` in precision.

  `abstract double`

  `getX2()`

  Returns the X coordinate of the end point in
  `double` precision.

  `abstract double`

  `getY1()`

  Returns the Y coordinate of the start point in
  `double` precision.

  `abstract double`

  `getY2()`

  Returns the Y coordinate of the end point in
  `double` precision.

  `boolean`

  `intersects(double x,
  double y,
  double w,
  double h)`

  Tests if the interior of the `Shape` intersects the
  interior of a specified rectangular area.

  `boolean`

  `intersects(Rectangle2D r)`

  Tests if the interior of the `Shape` intersects the
  interior of a specified `Rectangle2D`.

  `void`

  `setCurve(double[] coords,
  int offset)`

  Sets the location of the end points and control points of this
  `QuadCurve2D` to the `double` coordinates at
  the specified offset in the specified array.

  `abstract void`

  `setCurve(double x1,
  double y1,
  double ctrlx,
  double ctrly,
  double x2,
  double y2)`

  Sets the location of the end points and control point of this curve
  to the specified `double` coordinates.

  `void`

  `setCurve(Point2D[] pts,
  int offset)`

  Sets the location of the end points and control points of this
  `QuadCurve2D` to the coordinates of the
  `Point2D` objects at the specified offset in
  the specified array.

  `void`

  `setCurve(Point2D p1,
  Point2D cp,
  Point2D p2)`

  Sets the location of the end points and control point of this
  `QuadCurve2D` to the specified `Point2D`
  coordinates.

  `void`

  `setCurve(QuadCurve2D c)`

  Sets the location of the end points and control point of this
  `QuadCurve2D` to the same as those in the specified
  `QuadCurve2D`.

  `static int`

  `solveQuadratic(double[] eqn)`

  Solves the quadratic whose coefficients are in the `eqn`
  array and places the non-complex roots back into the same array,
  returning the number of roots.

  `static int`

  `solveQuadratic(double[] eqn,
  double[] res)`

  Solves the quadratic whose coefficients are in the `eqn`
  array and places the non-complex roots into the `res`
  array, returning the number of roots.

  `static void`

  `subdivide(double[] src,
  int srcoff,
  double[] left,
  int leftoff,
  double[] right,
  int rightoff)`

  Subdivides the quadratic curve specified by the coordinates
  stored in the `src` array at indices
  `srcoff` through `srcoff` + 5
  and stores the resulting two subdivided curves into the two
  result arrays at the corresponding indices.

  `void`

  `subdivide(QuadCurve2D left,
  QuadCurve2D right)`

  Subdivides this `QuadCurve2D` and stores the resulting
  two subdivided curves into the `left` and
  `right` curve parameters.

  `static void`

  `subdivide(QuadCurve2D src,
  QuadCurve2D left,
  QuadCurve2D right)`

  Subdivides the quadratic curve specified by the `src`
  parameter and stores the resulting two subdivided curves into the
  `left` and `right` curve parameters.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### QuadCurve2D

    protected QuadCurve2D()

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    Since:
    :   1.2

    See Also:
    :   - [`QuadCurve2D.Float`](QuadCurve2D.Float.md "class in java.awt.geom")
        - [`QuadCurve2D.Double`](QuadCurve2D.Double.md "class in java.awt.geom")
* ## Method Details

  + ### getX1

    public abstract double getX1()

    Returns the X coordinate of the start point in
    `double` in precision.

    Returns:
    :   the X coordinate of the start point.

    Since:
    :   1.2
  + ### getY1

    public abstract double getY1()

    Returns the Y coordinate of the start point in
    `double` precision.

    Returns:
    :   the Y coordinate of the start point.

    Since:
    :   1.2
  + ### getP1

    public abstract [Point2D](Point2D.md "class in java.awt.geom") getP1()

    Returns the start point.

    Returns:
    :   a `Point2D` that is the start point of this
        `QuadCurve2D`.

    Since:
    :   1.2
  + ### getCtrlX

    public abstract double getCtrlX()

    Returns the X coordinate of the control point in
    `double` precision.

    Returns:
    :   X coordinate the control point

    Since:
    :   1.2
  + ### getCtrlY

    public abstract double getCtrlY()

    Returns the Y coordinate of the control point in
    `double` precision.

    Returns:
    :   the Y coordinate of the control point.

    Since:
    :   1.2
  + ### getCtrlPt

    public abstract [Point2D](Point2D.md "class in java.awt.geom") getCtrlPt()

    Returns the control point.

    Returns:
    :   a `Point2D` that is the control point of this
        `Point2D`.

    Since:
    :   1.2
  + ### getX2

    public abstract double getX2()

    Returns the X coordinate of the end point in
    `double` precision.

    Returns:
    :   the x coordinate of the end point.

    Since:
    :   1.2
  + ### getY2

    public abstract double getY2()

    Returns the Y coordinate of the end point in
    `double` precision.

    Returns:
    :   the Y coordinate of the end point.

    Since:
    :   1.2
  + ### getP2

    public abstract [Point2D](Point2D.md "class in java.awt.geom") getP2()

    Returns the end point.

    Returns:
    :   a `Point` object that is the end point
        of this `Point2D`.

    Since:
    :   1.2
  + ### setCurve

    public abstract void setCurve(double x1,
    double y1,
    double ctrlx,
    double ctrly,
    double x2,
    double y2)

    Sets the location of the end points and control point of this curve
    to the specified `double` coordinates.

    Parameters:
    :   `x1` - the X coordinate of the start point
    :   `y1` - the Y coordinate of the start point
    :   `ctrlx` - the X coordinate of the control point
    :   `ctrly` - the Y coordinate of the control point
    :   `x2` - the X coordinate of the end point
    :   `y2` - the Y coordinate of the end point

    Since:
    :   1.2
  + ### setCurve

    public void setCurve(double[] coords,
    int offset)

    Sets the location of the end points and control points of this
    `QuadCurve2D` to the `double` coordinates at
    the specified offset in the specified array.

    Parameters:
    :   `coords` - the array containing coordinate values
    :   `offset` - the index into the array from which to start
        getting the coordinate values and assigning them to this
        `QuadCurve2D`

    Since:
    :   1.2
  + ### setCurve

    public void setCurve([Point2D](Point2D.md "class in java.awt.geom") p1,
    [Point2D](Point2D.md "class in java.awt.geom") cp,
    [Point2D](Point2D.md "class in java.awt.geom") p2)

    Sets the location of the end points and control point of this
    `QuadCurve2D` to the specified `Point2D`
    coordinates.

    Parameters:
    :   `p1` - the start point
    :   `cp` - the control point
    :   `p2` - the end point

    Since:
    :   1.2
  + ### setCurve

    public void setCurve([Point2D](Point2D.md "class in java.awt.geom")[] pts,
    int offset)

    Sets the location of the end points and control points of this
    `QuadCurve2D` to the coordinates of the
    `Point2D` objects at the specified offset in
    the specified array.

    Parameters:
    :   `pts` - an array containing `Point2D` that define
        coordinate values
    :   `offset` - the index into `pts` from which to start
        getting the coordinate values and assigning them to this
        `QuadCurve2D`

    Since:
    :   1.2
  + ### setCurve

    public void setCurve([QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") c)

    Sets the location of the end points and control point of this
    `QuadCurve2D` to the same as those in the specified
    `QuadCurve2D`.

    Parameters:
    :   `c` - the specified `QuadCurve2D`

    Since:
    :   1.2
  + ### getFlatnessSq

    public static double getFlatnessSq(double x1,
    double y1,
    double ctrlx,
    double ctrly,
    double x2,
    double y2)

    Returns the square of the flatness, or maximum distance of a
    control point from the line connecting the end points, of the
    quadratic curve specified by the indicated control points.

    Parameters:
    :   `x1` - the X coordinate of the start point
    :   `y1` - the Y coordinate of the start point
    :   `ctrlx` - the X coordinate of the control point
    :   `ctrly` - the Y coordinate of the control point
    :   `x2` - the X coordinate of the end point
    :   `y2` - the Y coordinate of the end point

    Returns:
    :   the square of the flatness of the quadratic curve
        defined by the specified coordinates.

    Since:
    :   1.2
  + ### getFlatness

    public static double getFlatness(double x1,
    double y1,
    double ctrlx,
    double ctrly,
    double x2,
    double y2)

    Returns the flatness, or maximum distance of a
    control point from the line connecting the end points, of the
    quadratic curve specified by the indicated control points.

    Parameters:
    :   `x1` - the X coordinate of the start point
    :   `y1` - the Y coordinate of the start point
    :   `ctrlx` - the X coordinate of the control point
    :   `ctrly` - the Y coordinate of the control point
    :   `x2` - the X coordinate of the end point
    :   `y2` - the Y coordinate of the end point

    Returns:
    :   the flatness of the quadratic curve defined by the
        specified coordinates.

    Since:
    :   1.2
  + ### getFlatnessSq

    public static double getFlatnessSq(double[] coords,
    int offset)

    Returns the square of the flatness, or maximum distance of a
    control point from the line connecting the end points, of the
    quadratic curve specified by the control points stored in the
    indicated array at the indicated index.

    Parameters:
    :   `coords` - an array containing coordinate values
    :   `offset` - the index into `coords` from which to
        to start getting the values from the array

    Returns:
    :   the flatness of the quadratic curve that is defined by the
        values in the specified array at the specified index.

    Since:
    :   1.2
  + ### getFlatness

    public static double getFlatness(double[] coords,
    int offset)

    Returns the flatness, or maximum distance of a
    control point from the line connecting the end points, of the
    quadratic curve specified by the control points stored in the
    indicated array at the indicated index.

    Parameters:
    :   `coords` - an array containing coordinate values
    :   `offset` - the index into `coords` from which to
        start getting the coordinate values

    Returns:
    :   the flatness of a quadratic curve defined by the
        specified array at the specified offset.

    Since:
    :   1.2
  + ### getFlatnessSq

    public double getFlatnessSq()

    Returns the square of the flatness, or maximum distance of a
    control point from the line connecting the end points, of this
    `QuadCurve2D`.

    Returns:
    :   the square of the flatness of this
        `QuadCurve2D`.

    Since:
    :   1.2
  + ### getFlatness

    public double getFlatness()

    Returns the flatness, or maximum distance of a
    control point from the line connecting the end points, of this
    `QuadCurve2D`.

    Returns:
    :   the flatness of this `QuadCurve2D`.

    Since:
    :   1.2
  + ### subdivide

    public void subdivide([QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") left,
    [QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") right)

    Subdivides this `QuadCurve2D` and stores the resulting
    two subdivided curves into the `left` and
    `right` curve parameters.
    Either or both of the `left` and `right`
    objects can be the same as this `QuadCurve2D` or
    `null`.

    Parameters:
    :   `left` - the `QuadCurve2D` object for storing the
        left or first half of the subdivided curve
    :   `right` - the `QuadCurve2D` object for storing the
        right or second half of the subdivided curve

    Since:
    :   1.2
  + ### subdivide

    public static void subdivide([QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") src,
    [QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") left,
    [QuadCurve2D](QuadCurve2D.md "class in java.awt.geom") right)

    Subdivides the quadratic curve specified by the `src`
    parameter and stores the resulting two subdivided curves into the
    `left` and `right` curve parameters.
    Either or both of the `left` and `right`
    objects can be the same as the `src` object or
    `null`.

    Parameters:
    :   `src` - the quadratic curve to be subdivided
    :   `left` - the `QuadCurve2D` object for storing the
        left or first half of the subdivided curve
    :   `right` - the `QuadCurve2D` object for storing the
        right or second half of the subdivided curve

    Since:
    :   1.2
  + ### subdivide

    public static void subdivide(double[] src,
    int srcoff,
    double[] left,
    int leftoff,
    double[] right,
    int rightoff)

    Subdivides the quadratic curve specified by the coordinates
    stored in the `src` array at indices
    `srcoff` through `srcoff` + 5
    and stores the resulting two subdivided curves into the two
    result arrays at the corresponding indices.
    Either or both of the `left` and `right`
    arrays can be `null` or a reference to the same array
    and offset as the `src` array.
    Note that the last point in the first subdivided curve is the
    same as the first point in the second subdivided curve. Thus,
    it is possible to pass the same array for `left` and
    `right` and to use offsets such that
    `rightoff` equals `leftoff` + 4 in order
    to avoid allocating extra storage for this common point.

    Parameters:
    :   `src` - the array holding the coordinates for the source curve
    :   `srcoff` - the offset into the array of the beginning of the
        the 6 source coordinates
    :   `left` - the array for storing the coordinates for the first
        half of the subdivided curve
    :   `leftoff` - the offset into the array of the beginning of the
        the 6 left coordinates
    :   `right` - the array for storing the coordinates for the second
        half of the subdivided curve
    :   `rightoff` - the offset into the array of the beginning of the
        the 6 right coordinates

    Since:
    :   1.2
  + ### solveQuadratic

    public static int solveQuadratic(double[] eqn)

    Solves the quadratic whose coefficients are in the `eqn`
    array and places the non-complex roots back into the same array,
    returning the number of roots. The quadratic solved is represented
    by the equation:

    ```
         eqn = {C, B, A};
         ax^2 + bx + c = 0
    ```

    A return value of `-1` is used to distinguish a constant
    equation, which might be always 0 or never 0, from an equation that
    has no zeroes.

    Parameters:
    :   `eqn` - the array that contains the quadratic coefficients

    Returns:
    :   the number of roots, or `-1` if the equation is
        a constant

    Since:
    :   1.2
  + ### solveQuadratic

    public static int solveQuadratic(double[] eqn,
    double[] res)

    Solves the quadratic whose coefficients are in the `eqn`
    array and places the non-complex roots into the `res`
    array, returning the number of roots.
    The quadratic solved is represented by the equation:

    ```
         eqn = {C, B, A};
         ax^2 + bx + c = 0
    ```

    A return value of `-1` is used to distinguish a constant
    equation, which might be always 0 or never 0, from an equation that
    has no zeroes.

    Parameters:
    :   `eqn` - the specified array of coefficients to use to solve
        the quadratic equation
    :   `res` - the array that contains the non-complex roots
        resulting from the solution of the quadratic equation

    Returns:
    :   the number of roots, or `-1` if the equation is
        a constant.

    Since:
    :   1.3
  + ### contains

    public boolean contains(double x,
    double y)

    Tests if the specified coordinates are inside the boundary of the
    `Shape`, as described by the
    [definition of insideness](../Shape.md#def_insideness).

    Specified by:
    :   `contains` in interface `Shape`

    Parameters:
    :   `x` - the specified X coordinate to be tested
    :   `y` - the specified Y coordinate to be tested

    Returns:
    :   `true` if the specified coordinates are inside
        the `Shape` boundary; `false`
        otherwise.

    Since:
    :   1.2
  + ### contains

    public boolean contains([Point2D](Point2D.md "class in java.awt.geom") p)

    Tests if a specified [`Point2D`](Point2D.md "class in java.awt.geom") is inside the boundary
    of the `Shape`, as described by the
    [definition of insideness](../../../../java.desktop/java/awt/Shape.md#def_insideness).

    Specified by:
    :   `contains` in interface `Shape`

    Parameters:
    :   `p` - the specified `Point2D` to be tested

    Returns:
    :   `true` if the specified `Point2D` is
        inside the boundary of the `Shape`;
        `false` otherwise.

    Since:
    :   1.2
  + ### intersects

    public boolean intersects(double x,
    double y,
    double w,
    double h)

    Tests if the interior of the `Shape` intersects the
    interior of a specified rectangular area.
    The rectangular area is considered to intersect the `Shape`
    if any point is contained in both the interior of the
    `Shape` and the specified rectangular area.

    The `Shape.intersects()` method allows a `Shape`
    implementation to conservatively return `true` when:
    - there is a high probability that the rectangular area and the
      `Shape` intersect, but- the calculations to accurately determine this intersection
        are prohibitively expensive.This means that for some `Shapes` this method might
    return `true` even though the rectangular area does not
    intersect the `Shape`.
    The [`Area`](Area.md "class in java.awt.geom") class performs
    more accurate computations of geometric intersection than most
    `Shape` objects and therefore can be used if a more precise
    answer is required.

    Specified by:
    :   `intersects` in interface `Shape`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of the specified rectangular area
    :   `y` - the Y coordinate of the upper-left corner
        of the specified rectangular area
    :   `w` - the width of the specified rectangular area
    :   `h` - the height of the specified rectangular area

    Returns:
    :   `true` if the interior of the `Shape` and
        the interior of the rectangular area intersect, or are
        both highly likely to intersect and intersection calculations
        would be too expensive to perform; `false` otherwise.

    Since:
    :   1.2

    See Also:
    :   - [`Area`](Area.md "class in java.awt.geom")
  + ### intersects

    public boolean intersects([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Tests if the interior of the `Shape` intersects the
    interior of a specified `Rectangle2D`.
    The `Shape.intersects()` method allows a `Shape`
    implementation to conservatively return `true` when:
    - there is a high probability that the `Rectangle2D` and the
      `Shape` intersect, but- the calculations to accurately determine this intersection
        are prohibitively expensive.This means that for some `Shapes` this method might
    return `true` even though the `Rectangle2D` does not
    intersect the `Shape`.
    The [`Area`](Area.md "class in java.awt.geom") class performs
    more accurate computations of geometric intersection than most
    `Shape` objects and therefore can be used if a more precise
    answer is required.

    Specified by:
    :   `intersects` in interface `Shape`

    Parameters:
    :   `r` - the specified `Rectangle2D`

    Returns:
    :   `true` if the interior of the `Shape` and
        the interior of the specified `Rectangle2D`
        intersect, or are both highly likely to intersect and intersection
        calculations would be too expensive to perform; `false`
        otherwise.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.intersects(double, double, double, double)`](../Shape.md#intersects(double,double,double,double))
  + ### contains

    public boolean contains(double x,
    double y,
    double w,
    double h)

    Tests if the interior of the `Shape` entirely contains
    the specified rectangular area. All coordinates that lie inside
    the rectangular area must lie within the `Shape` for the
    entire rectangular area to be considered contained within the
    `Shape`.

    The `Shape.contains()` method allows a `Shape`
    implementation to conservatively return `false` when:
    - the `intersect` method returns `true` and- the calculations to determine whether or not the
        `Shape` entirely contains the rectangular area are
        prohibitively expensive.This means that for some `Shapes` this method might
    return `false` even though the `Shape` contains
    the rectangular area.
    The [`Area`](Area.md "class in java.awt.geom") class performs
    more accurate geometric computations than most
    `Shape` objects and therefore can be used if a more precise
    answer is required.

    Specified by:
    :   `contains` in interface `Shape`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner
        of the specified rectangular area
    :   `y` - the Y coordinate of the upper-left corner
        of the specified rectangular area
    :   `w` - the width of the specified rectangular area
    :   `h` - the height of the specified rectangular area

    Returns:
    :   `true` if the interior of the `Shape`
        entirely contains the specified rectangular area;
        `false` otherwise or, if the `Shape`
        contains the rectangular area and the
        `intersects` method returns `true`
        and the containment calculations would be too expensive to
        perform.

    Since:
    :   1.2

    See Also:
    :   - [`Area`](Area.md "class in java.awt.geom")
        - [`Shape.intersects(double, double, double, double)`](../Shape.md#intersects(double,double,double,double))
  + ### contains

    public boolean contains([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Tests if the interior of the `Shape` entirely contains the
    specified `Rectangle2D`.
    The `Shape.contains()` method allows a `Shape`
    implementation to conservatively return `false` when:
    - the `intersect` method returns `true` and- the calculations to determine whether or not the
        `Shape` entirely contains the `Rectangle2D`
        are prohibitively expensive.This means that for some `Shapes` this method might
    return `false` even though the `Shape` contains
    the `Rectangle2D`.
    The [`Area`](Area.md "class in java.awt.geom") class performs
    more accurate geometric computations than most
    `Shape` objects and therefore can be used if a more precise
    answer is required.

    Specified by:
    :   `contains` in interface `Shape`

    Parameters:
    :   `r` - The specified `Rectangle2D`

    Returns:
    :   `true` if the interior of the `Shape`
        entirely contains the `Rectangle2D`;
        `false` otherwise or, if the `Shape`
        contains the `Rectangle2D` and the
        `intersects` method returns `true`
        and the containment calculations would be too expensive to
        perform.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.contains(double, double, double, double)`](../Shape.md#contains(double,double,double,double))
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
  + ### getBounds

    public [Rectangle](../Rectangle.md "class in java.awt") getBounds()

    Returns an integer [`Rectangle`](../Rectangle.md "class in java.awt") that completely encloses the
    `Shape`. Note that there is no guarantee that the
    returned `Rectangle` is the smallest bounding box that
    encloses the `Shape`, only that the `Shape`
    lies entirely within the indicated `Rectangle`. The
    returned `Rectangle` might also fail to completely
    enclose the `Shape` if the `Shape` overflows
    the limited range of the integer data type. The
    `getBounds2D` method generally returns a
    tighter bounding box due to its greater flexibility in
    representation.

    Note that the
    [definition of insideness](../Shape.md#def_insideness) can lead to situations where points
    on the defining outline of the `shape` may not be considered
    contained in the returned `bounds` object, but only in cases
    where those points are also not considered contained in the original
    `shape`.

    If a `point` is inside the `shape` according to the
    [`contains(point)`](../Shape.md#contains(double,double)) method, then
    it must be inside the returned `Rectangle` bounds object
    according to the [`contains(point)`](../Shape.md#contains(double,double))
    method of the `bounds`. Specifically:

    `shape.contains(x,y)` requires `bounds.contains(x,y)`

    If a `point` is not inside the `shape`, then it might
    still be contained in the `bounds` object:

    `bounds.contains(x,y)` does not imply `shape.contains(x,y)`

    Specified by:
    :   `getBounds` in interface `Shape`

    Returns:
    :   an integer `Rectangle` that completely encloses
        the `Shape`.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.getBounds2D()`](../Shape.md#getBounds2D())
  + ### getPathIterator

    public [PathIterator](PathIterator.md "interface in java.awt.geom") getPathIterator([AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Returns an iteration object that defines the boundary of the
    shape of this `QuadCurve2D`.
    The iterator for this class is not multi-threaded safe,
    which means that this `QuadCurve2D` class does not
    guarantee that modifications to the geometry of this
    `QuadCurve2D` object do not affect any iterations of
    that geometry that are already in process.

    Specified by:
    :   `getPathIterator` in interface `Shape`

    Parameters:
    :   `at` - an optional [`AffineTransform`](AffineTransform.md "class in java.awt.geom") to apply to the
        shape boundary

    Returns:
    :   a [`PathIterator`](PathIterator.md "interface in java.awt.geom") object that defines the boundary
        of the shape.

    Since:
    :   1.2
  + ### getPathIterator

    public [PathIterator](PathIterator.md "interface in java.awt.geom") getPathIterator([AffineTransform](AffineTransform.md "class in java.awt.geom") at,
    double flatness)

    Returns an iteration object that defines the boundary of the
    flattened shape of this `QuadCurve2D`.
    The iterator for this class is not multi-threaded safe,
    which means that this `QuadCurve2D` class does not
    guarantee that modifications to the geometry of this
    `QuadCurve2D` object do not affect any iterations of
    that geometry that are already in process.

    Specified by:
    :   `getPathIterator` in interface `Shape`

    Parameters:
    :   `at` - an optional `AffineTransform` to apply
        to the boundary of the shape
    :   `flatness` - the maximum distance that the control points for a
        subdivided curve can be with respect to a line connecting
        the end points of this curve before this curve is
        replaced by a straight line connecting the end points.

    Returns:
    :   a `PathIterator` object that defines the
        flattened boundary of the shape.

    Since:
    :   1.2
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a new object of the same class and with the same contents
    as this object.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    Throws:
    :   `OutOfMemoryError` - if there is not enough memory.

    Since:
    :   1.2

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")