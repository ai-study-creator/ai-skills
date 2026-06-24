Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class FlatteningPathIterator

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.geom.FlatteningPathIterator

All Implemented Interfaces:
:   `PathIterator`

---

public class FlatteningPathIterator
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PathIterator](PathIterator.md "interface in java.awt.geom")

The `FlatteningPathIterator` class returns a flattened view of
another [`PathIterator`](PathIterator.md "interface in java.awt.geom") object. Other [`Shape`](../Shape.md "interface in java.awt")
classes can use this class to provide flattening behavior for their paths
without having to perform the interpolation calculations themselves.

* ## Field Summary

  ### Fields inherited from interface java.awt.geom.[PathIterator](PathIterator.md "interface in java.awt.geom")

  `SEG_CLOSE, SEG_CUBICTO, SEG_LINETO, SEG_MOVETO, SEG_QUADTO, WIND_EVEN_ODD, WIND_NON_ZERO`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FlatteningPathIterator(PathIterator src,
  double flatness)`

  Constructs a new `FlatteningPathIterator` object that
  flattens a path as it iterates over it.

  `FlatteningPathIterator(PathIterator src,
  double flatness,
  int limit)`

  Constructs a new `FlatteningPathIterator` object
  that flattens a path as it iterates over it.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `currentSegment(double[] coords)`

  Returns the coordinates and type of the current path segment in
  the iteration.

  `int`

  `currentSegment(float[] coords)`

  Returns the coordinates and type of the current path segment in
  the iteration.

  `double`

  `getFlatness()`

  Returns the flatness of this iterator.

  `int`

  `getRecursionLimit()`

  Returns the recursion limit of this iterator.

  `int`

  `getWindingRule()`

  Returns the winding rule for determining the interior of the
  path.

  `boolean`

  `isDone()`

  Tests if the iteration is complete.

  `void`

  `next()`

  Moves the iterator to the next segment of the path forwards
  along the primary direction of traversal as long as there are
  more points in that direction.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FlatteningPathIterator

    public FlatteningPathIterator([PathIterator](PathIterator.md "interface in java.awt.geom") src,
    double flatness)

    Constructs a new `FlatteningPathIterator` object that
    flattens a path as it iterates over it. The iterator does not
    subdivide any curve read from the source iterator to more than
    10 levels of subdivision which yields a maximum of 1024 line
    segments per curve.

    Parameters:
    :   `src` - the original unflattened path being iterated over
    :   `flatness` - the maximum allowable distance between the
        control points and the flattened curve
  + ### FlatteningPathIterator

    public FlatteningPathIterator([PathIterator](PathIterator.md "interface in java.awt.geom") src,
    double flatness,
    int limit)

    Constructs a new `FlatteningPathIterator` object
    that flattens a path as it iterates over it.
    The `limit` parameter allows you to control the
    maximum number of recursive subdivisions that the iterator
    can make before it assumes that the curve is flat enough
    without measuring against the `flatness` parameter.
    The flattened iteration therefore never generates more than
    a maximum of `(2^limit)` line segments per curve.

    Parameters:
    :   `src` - the original unflattened path being iterated over
    :   `flatness` - the maximum allowable distance between the
        control points and the flattened curve
    :   `limit` - the maximum number of recursive subdivisions
        allowed for any curved segment

    Throws:
    :   `IllegalArgumentException` - if
        `flatness` or `limit`
        is less than zero
* ## Method Details

  + ### getFlatness

    public double getFlatness()

    Returns the flatness of this iterator.

    Returns:
    :   the flatness of this `FlatteningPathIterator`.
  + ### getRecursionLimit

    public int getRecursionLimit()

    Returns the recursion limit of this iterator.

    Returns:
    :   the recursion limit of this
        `FlatteningPathIterator`.
  + ### getWindingRule

    public int getWindingRule()

    Returns the winding rule for determining the interior of the
    path.

    Specified by:
    :   `getWindingRule` in interface `PathIterator`

    Returns:
    :   the winding rule of the original unflattened path being
        iterated over.

    See Also:
    :   - [`PathIterator.WIND_EVEN_ODD`](PathIterator.md#WIND_EVEN_ODD)
        - [`PathIterator.WIND_NON_ZERO`](PathIterator.md#WIND_NON_ZERO)
  + ### isDone

    public boolean isDone()

    Tests if the iteration is complete.

    Specified by:
    :   `isDone` in interface `PathIterator`

    Returns:
    :   `true` if all the segments have
        been read; `false` otherwise.
  + ### next

    public void next()

    Moves the iterator to the next segment of the path forwards
    along the primary direction of traversal as long as there are
    more points in that direction.

    Specified by:
    :   `next` in interface `PathIterator`
  + ### currentSegment

    public int currentSegment(float[] coords)

    Returns the coordinates and type of the current path segment in
    the iteration.
    The return value is the path segment type:
    SEG\_MOVETO, SEG\_LINETO, or SEG\_CLOSE.
    A float array of length 6 must be passed in and can be used to
    store the coordinates of the point(s).
    Each point is stored as a pair of float x,y coordinates.
    SEG\_MOVETO and SEG\_LINETO types return one point,
    and SEG\_CLOSE does not return any points.

    Specified by:
    :   `currentSegment` in interface `PathIterator`

    Parameters:
    :   `coords` - an array that holds the data returned from
        this method

    Returns:
    :   the path segment type of the current path segment.

    Throws:
    :   `NoSuchElementException` - if there
        are no more elements in the flattening path to be
        returned.

    See Also:
    :   - [`PathIterator.SEG_MOVETO`](PathIterator.md#SEG_MOVETO)
        - [`PathIterator.SEG_LINETO`](PathIterator.md#SEG_LINETO)
        - [`PathIterator.SEG_CLOSE`](PathIterator.md#SEG_CLOSE)
  + ### currentSegment

    public int currentSegment(double[] coords)

    Returns the coordinates and type of the current path segment in
    the iteration.
    The return value is the path segment type:
    SEG\_MOVETO, SEG\_LINETO, or SEG\_CLOSE.
    A double array of length 6 must be passed in and can be used to
    store the coordinates of the point(s).
    Each point is stored as a pair of double x,y coordinates.
    SEG\_MOVETO and SEG\_LINETO types return one point,
    and SEG\_CLOSE does not return any points.

    Specified by:
    :   `currentSegment` in interface `PathIterator`

    Parameters:
    :   `coords` - an array that holds the data returned from
        this method

    Returns:
    :   the path segment type of the current path segment.

    Throws:
    :   `NoSuchElementException` - if there
        are no more elements in the flattening path to be
        returned.

    See Also:
    :   - [`PathIterator.SEG_MOVETO`](PathIterator.md#SEG_MOVETO)
        - [`PathIterator.SEG_LINETO`](PathIterator.md#SEG_LINETO)
        - [`PathIterator.SEG_CLOSE`](PathIterator.md#SEG_CLOSE)