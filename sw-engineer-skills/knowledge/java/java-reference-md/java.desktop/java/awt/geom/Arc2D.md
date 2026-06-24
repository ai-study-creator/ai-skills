Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Arc2D

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

java.awt.geom.Arc2D

All Implemented Interfaces:
:   `Shape`, `Cloneable`

Direct Known Subclasses:
:   `Arc2D.Double`, `Arc2D.Float`

---

public abstract class Arc2D
extends [RectangularShape](RectangularShape.md "class in java.awt.geom")

`Arc2D` is the abstract superclass for all objects that
store a 2D arc defined by a framing rectangle,
start angle, angular extent (length of the arc), and a closure type
(`OPEN`, `CHORD`, or `PIE`).

The arc is a partial section of a full ellipse which
inscribes the framing rectangle of its parent [`RectangularShape`](RectangularShape.md "class in java.awt.geom").
The angles are specified relative to the non-square
framing rectangle such that 45 degrees always falls on the line from
the center of the ellipse to the upper right corner of the framing
rectangle.
As a result, if the framing rectangle is noticeably longer along one
axis than the other, the angles to the start and end of the arc segment
will be skewed farther along the longer axis of the frame.

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

  `Arc2D.Double`

  This class defines an arc specified in `double` precision.

  `static class`

  `Arc2D.Float`

  This class defines an arc specified in `float` precision.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CHORD`

  The closure type for an arc closed by drawing a straight
  line segment from the start of the arc segment to the end of the
  arc segment.

  `static final int`

  `OPEN`

  The closure type for an open arc with no path segments
  connecting the two ends of the arc segment.

  `static final int`

  `PIE`

  The closure type for an arc closed by drawing straight line
  segments from the start of the arc segment to the center
  of the full ellipse and from that point to the end of the arc segment.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Arc2D()`

  This is an abstract class that cannot be instantiated directly.

  `protected`

  `Arc2D(int type)`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `contains(double x,
  double y)`

  Determines whether or not the specified point is inside the boundary
  of the arc.

  `boolean`

  `contains(double x,
  double y,
  double w,
  double h)`

  Determines whether or not the interior of the arc entirely contains
  the specified rectangle.

  `boolean`

  `contains(Rectangle2D r)`

  Determines whether or not the interior of the arc entirely contains
  the specified rectangle.

  `boolean`

  `containsAngle(double angle)`

  Determines whether or not the specified angle is within the
  angular extents of the arc.

  `boolean`

  `equals(Object obj)`

  Determines whether or not the specified `Object` is
  equal to this `Arc2D`.

  `abstract double`

  `getAngleExtent()`

  Returns the angular extent of the arc.

  `abstract double`

  `getAngleStart()`

  Returns the starting angle of the arc.

  `int`

  `getArcType()`

  Returns the arc closure type of the arc: [`OPEN`](#OPEN),
  [`CHORD`](#CHORD), or [`PIE`](#PIE).

  `Rectangle2D`

  `getBounds2D()`

  Returns the high-precision framing rectangle of the arc.

  `Point2D`

  `getEndPoint()`

  Returns the ending point of the arc.

  `PathIterator`

  `getPathIterator(AffineTransform at)`

  Returns an iteration object that defines the boundary of the
  arc.

  `Point2D`

  `getStartPoint()`

  Returns the starting point of the arc.

  `int`

  `hashCode()`

  Returns the hashcode for this `Arc2D`.

  `boolean`

  `intersects(double x,
  double y,
  double w,
  double h)`

  Determines whether or not the interior of the arc intersects
  the interior of the specified rectangle.

  `protected abstract Rectangle2D`

  `makeBounds(double x,
  double y,
  double w,
  double h)`

  Constructs a `Rectangle2D` of the appropriate precision
  to hold the parameters calculated to be the framing rectangle
  of this arc.

  `abstract void`

  `setAngleExtent(double angExt)`

  Sets the angular extent of this arc to the specified double
  value.

  `void`

  `setAngles(double x1,
  double y1,
  double x2,
  double y2)`

  Sets the starting angle and angular extent of this arc using two
  sets of coordinates.

  `void`

  `setAngles(Point2D p1,
  Point2D p2)`

  Sets the starting angle and angular extent of this arc using
  two points.

  `abstract void`

  `setAngleStart(double angSt)`

  Sets the starting angle of this arc to the specified double
  value.

  `void`

  `setAngleStart(Point2D p)`

  Sets the starting angle of this arc to the angle that the
  specified point defines relative to the center of this arc.

  `abstract void`

  `setArc(double x,
  double y,
  double w,
  double h,
  double angSt,
  double angExt,
  int closure)`

  Sets the location, size, angular extents, and closure type of
  this arc to the specified double values.

  `void`

  `setArc(Arc2D a)`

  Sets this arc to be the same as the specified arc.

  `void`

  `setArc(Point2D loc,
  Dimension2D size,
  double angSt,
  double angExt,
  int closure)`

  Sets the location, size, angular extents, and closure type of
  this arc to the specified values.

  `void`

  `setArc(Rectangle2D rect,
  double angSt,
  double angExt,
  int closure)`

  Sets the location, size, angular extents, and closure type of
  this arc to the specified values.

  `void`

  `setArcByCenter(double x,
  double y,
  double radius,
  double angSt,
  double angExt,
  int closure)`

  Sets the position, bounds, angular extents, and closure type of
  this arc to the specified values.

  `void`

  `setArcByTangent(Point2D p1,
  Point2D p2,
  Point2D p3,
  double radius)`

  Sets the position, bounds, and angular extents of this arc to the
  specified value.

  `void`

  `setArcType(int type)`

  Sets the closure type of this arc to the specified value:
  `OPEN`, `CHORD`, or `PIE`.

  `void`

  `setFrame(double x,
  double y,
  double w,
  double h)`

  Sets the location and size of the framing rectangle of this
  `Shape` to the specified rectangular values.

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, getBounds, getCenterX, getCenterY, getFrame, getHeight, getMaxX, getMaxY, getMinX, getMinY, getPathIterator, getWidth, getX, getY, intersects, isEmpty, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OPEN

    public static final int OPEN

    The closure type for an open arc with no path segments
    connecting the two ends of the arc segment.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.geom.Arc2D.OPEN)
  + ### CHORD

    public static final int CHORD

    The closure type for an arc closed by drawing a straight
    line segment from the start of the arc segment to the end of the
    arc segment.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.geom.Arc2D.CHORD)
  + ### PIE

    public static final int PIE

    The closure type for an arc closed by drawing straight line
    segments from the start of the arc segment to the center
    of the full ellipse and from that point to the end of the arc segment.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.geom.Arc2D.PIE)
* ## Constructor Details

  + ### Arc2D

    protected Arc2D()

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    This constructor creates an object with a default closure
    type of [`OPEN`](#OPEN). It is provided only to enable
    serialization of subclasses.

    See Also:
    :   - [`Arc2D.Float`](Arc2D.Float.md "class in java.awt.geom")
        - [`Arc2D.Double`](Arc2D.Double.md "class in java.awt.geom")
  + ### Arc2D

    protected Arc2D(int type)

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    Parameters:
    :   `type` - The closure type of this arc:
        [`OPEN`](#OPEN), [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Since:
    :   1.2

    See Also:
    :   - [`Arc2D.Float`](Arc2D.Float.md "class in java.awt.geom")
        - [`Arc2D.Double`](Arc2D.Double.md "class in java.awt.geom")
* ## Method Details

  + ### getAngleStart

    public abstract double getAngleStart()

    Returns the starting angle of the arc.

    Returns:
    :   A double value that represents the starting angle
        of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`setAngleStart(double)`](#setAngleStart(double))
  + ### getAngleExtent

    public abstract double getAngleExtent()

    Returns the angular extent of the arc.

    Returns:
    :   A double value that represents the angular extent
        of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`setAngleExtent(double)`](#setAngleExtent(double))
  + ### getArcType

    public int getArcType()

    Returns the arc closure type of the arc: [`OPEN`](#OPEN),
    [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Returns:
    :   One of the integer constant closure types defined
        in this class.

    Since:
    :   1.2

    See Also:
    :   - [`setArcType(int)`](#setArcType(int))
  + ### getStartPoint

    public [Point2D](Point2D.md "class in java.awt.geom") getStartPoint()

    Returns the starting point of the arc. This point is the
    intersection of the ray from the center defined by the
    starting angle and the elliptical boundary of the arc.

    Returns:
    :   A `Point2D` object representing the
        x,y coordinates of the starting point of the arc.

    Since:
    :   1.2
  + ### getEndPoint

    public [Point2D](Point2D.md "class in java.awt.geom") getEndPoint()

    Returns the ending point of the arc. This point is the
    intersection of the ray from the center defined by the
    starting angle plus the angular extent of the arc and the
    elliptical boundary of the arc.

    Returns:
    :   A `Point2D` object representing the
        x,y coordinates of the ending point of the arc.

    Since:
    :   1.2
  + ### setArc

    public abstract void setArc(double x,
    double y,
    double w,
    double h,
    double angSt,
    double angExt,
    int closure)

    Sets the location, size, angular extents, and closure type of
    this arc to the specified double values.

    Parameters:
    :   `x` - The X coordinate of the upper-left corner of the arc.
    :   `y` - The Y coordinate of the upper-left corner of the arc.
    :   `w` - The overall width of the full ellipse of which
        this arc is a partial section.
    :   `h` - The overall height of the full ellipse of which
        this arc is a partial section.
    :   `angSt` - The starting angle of the arc in degrees.
    :   `angExt` - The angular extent of the arc in degrees.
    :   `closure` - The closure type for the arc:
        [`OPEN`](#OPEN), [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Since:
    :   1.2
  + ### setArc

    public void setArc([Point2D](Point2D.md "class in java.awt.geom") loc,
    [Dimension2D](Dimension2D.md "class in java.awt.geom") size,
    double angSt,
    double angExt,
    int closure)

    Sets the location, size, angular extents, and closure type of
    this arc to the specified values.

    Parameters:
    :   `loc` - The `Point2D` representing the coordinates of
        the upper-left corner of the arc.
    :   `size` - The `Dimension2D` representing the width
        and height of the full ellipse of which this arc is
        a partial section.
    :   `angSt` - The starting angle of the arc in degrees.
    :   `angExt` - The angular extent of the arc in degrees.
    :   `closure` - The closure type for the arc:
        [`OPEN`](#OPEN), [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Since:
    :   1.2
  + ### setArc

    public void setArc([Rectangle2D](Rectangle2D.md "class in java.awt.geom") rect,
    double angSt,
    double angExt,
    int closure)

    Sets the location, size, angular extents, and closure type of
    this arc to the specified values.

    Parameters:
    :   `rect` - The framing rectangle that defines the
        outer boundary of the full ellipse of which this arc is a
        partial section.
    :   `angSt` - The starting angle of the arc in degrees.
    :   `angExt` - The angular extent of the arc in degrees.
    :   `closure` - The closure type for the arc:
        [`OPEN`](#OPEN), [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Since:
    :   1.2
  + ### setArc

    public void setArc([Arc2D](Arc2D.md "class in java.awt.geom") a)

    Sets this arc to be the same as the specified arc.

    Parameters:
    :   `a` - The `Arc2D` to use to set the arc's values.

    Since:
    :   1.2
  + ### setArcByCenter

    public void setArcByCenter(double x,
    double y,
    double radius,
    double angSt,
    double angExt,
    int closure)

    Sets the position, bounds, angular extents, and closure type of
    this arc to the specified values. The arc is defined by a center
    point and a radius rather than a framing rectangle for the full ellipse.

    Parameters:
    :   `x` - The X coordinate of the center of the arc.
    :   `y` - The Y coordinate of the center of the arc.
    :   `radius` - The radius of the arc.
    :   `angSt` - The starting angle of the arc in degrees.
    :   `angExt` - The angular extent of the arc in degrees.
    :   `closure` - The closure type for the arc:
        [`OPEN`](#OPEN), [`CHORD`](#CHORD), or [`PIE`](#PIE).

    Since:
    :   1.2
  + ### setArcByTangent

    public void setArcByTangent([Point2D](Point2D.md "class in java.awt.geom") p1,
    [Point2D](Point2D.md "class in java.awt.geom") p2,
    [Point2D](Point2D.md "class in java.awt.geom") p3,
    double radius)

    Sets the position, bounds, and angular extents of this arc to the
    specified value. The starting angle of the arc is tangent to the
    line specified by points (p1, p2), the ending angle is tangent to
    the line specified by points (p2, p3), and the arc has the
    specified radius.

    Parameters:
    :   `p1` - The first point that defines the arc. The starting
        angle of the arc is tangent to the line specified by points (p1, p2).
    :   `p2` - The second point that defines the arc. The starting
        angle of the arc is tangent to the line specified by points (p1, p2).
        The ending angle of the arc is tangent to the line specified by
        points (p2, p3).
    :   `p3` - The third point that defines the arc. The ending angle
        of the arc is tangent to the line specified by points (p2, p3).
    :   `radius` - The radius of the arc.

    Since:
    :   1.2
  + ### setAngleStart

    public abstract void setAngleStart(double angSt)

    Sets the starting angle of this arc to the specified double
    value.

    Parameters:
    :   `angSt` - The starting angle of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`getAngleStart()`](#getAngleStart())
  + ### setAngleExtent

    public abstract void setAngleExtent(double angExt)

    Sets the angular extent of this arc to the specified double
    value.

    Parameters:
    :   `angExt` - The angular extent of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`getAngleExtent()`](#getAngleExtent())
  + ### setAngleStart

    public void setAngleStart([Point2D](Point2D.md "class in java.awt.geom") p)

    Sets the starting angle of this arc to the angle that the
    specified point defines relative to the center of this arc.
    The angular extent of the arc will remain the same.

    Parameters:
    :   `p` - The `Point2D` that defines the starting angle.

    Since:
    :   1.2

    See Also:
    :   - [`getAngleStart()`](#getAngleStart())
  + ### setAngles

    public void setAngles(double x1,
    double y1,
    double x2,
    double y2)

    Sets the starting angle and angular extent of this arc using two
    sets of coordinates. The first set of coordinates is used to
    determine the angle of the starting point relative to the arc's
    center. The second set of coordinates is used to determine the
    angle of the end point relative to the arc's center.
    The arc will always be non-empty and extend counterclockwise
    from the first point around to the second point.

    Parameters:
    :   `x1` - The X coordinate of the arc's starting point.
    :   `y1` - The Y coordinate of the arc's starting point.
    :   `x2` - The X coordinate of the arc's ending point.
    :   `y2` - The Y coordinate of the arc's ending point.

    Since:
    :   1.2
  + ### setAngles

    public void setAngles([Point2D](Point2D.md "class in java.awt.geom") p1,
    [Point2D](Point2D.md "class in java.awt.geom") p2)

    Sets the starting angle and angular extent of this arc using
    two points. The first point is used to determine the angle of
    the starting point relative to the arc's center.
    The second point is used to determine the angle of the end point
    relative to the arc's center.
    The arc will always be non-empty and extend counterclockwise
    from the first point around to the second point.

    Parameters:
    :   `p1` - The `Point2D` that defines the arc's
        starting point.
    :   `p2` - The `Point2D` that defines the arc's
        ending point.

    Since:
    :   1.2
  + ### setArcType

    public void setArcType(int type)

    Sets the closure type of this arc to the specified value:
    `OPEN`, `CHORD`, or `PIE`.

    Parameters:
    :   `type` - The integer constant that represents the closure
        type of this arc: [`OPEN`](#OPEN), [`CHORD`](#CHORD), or
        [`PIE`](#PIE).

    Throws:
    :   `IllegalArgumentException` - if `type` is not
        0, 1, or 2.+

    Since:
    :   1.2

    See Also:
    :   - [`getArcType()`](#getArcType())
  + ### setFrame

    public void setFrame(double x,
    double y,
    double w,
    double h)

    Sets the location and size of the framing rectangle of this
    `Shape` to the specified rectangular values.
    Note that the arc
    [partially inscribes](Arc2D.md#inscribes)
    the framing rectangle of this `RectangularShape`.

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

    Returns the high-precision framing rectangle of the arc. The framing
    rectangle contains only the part of this `Arc2D` that is
    in between the starting and ending angles and contains the pie
    wedge, if this `Arc2D` has a `PIE` closure type.

    This method differs from the
    [`getBounds`](RectangularShape.md#getBounds()) in that the
    `getBounds` method only returns the bounds of the
    enclosing ellipse of this `Arc2D` without considering
    the starting and ending angles of this `Arc2D`.

    Returns:
    :   the `Rectangle2D` that represents the arc's
        framing rectangle.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.getBounds()`](../Shape.md#getBounds())
  + ### makeBounds

    protected abstract [Rectangle2D](Rectangle2D.md "class in java.awt.geom") makeBounds(double x,
    double y,
    double w,
    double h)

    Constructs a `Rectangle2D` of the appropriate precision
    to hold the parameters calculated to be the framing rectangle
    of this arc.

    Parameters:
    :   `x` - The X coordinate of the upper-left corner of the
        framing rectangle.
    :   `y` - The Y coordinate of the upper-left corner of the
        framing rectangle.
    :   `w` - The width of the framing rectangle.
    :   `h` - The height of the framing rectangle.

    Returns:
    :   a `Rectangle2D` that is the framing rectangle
        of this arc.

    Since:
    :   1.2
  + ### containsAngle

    public boolean containsAngle(double angle)

    Determines whether or not the specified angle is within the
    angular extents of the arc.

    Parameters:
    :   `angle` - The angle to test.

    Returns:
    :   `true` if the arc contains the angle,
        `false` if the arc doesn't contain the angle.

    Since:
    :   1.2
  + ### contains

    public boolean contains(double x,
    double y)

    Determines whether or not the specified point is inside the boundary
    of the arc.

    Parameters:
    :   `x` - The X coordinate of the point to test.
    :   `y` - The Y coordinate of the point to test.

    Returns:
    :   `true` if the point lies within the bound of
        the arc, `false` if the point lies outside of the
        arc's bounds.

    Since:
    :   1.2
  + ### intersects

    public boolean intersects(double x,
    double y,
    double w,
    double h)

    Determines whether or not the interior of the arc intersects
    the interior of the specified rectangle.

    Parameters:
    :   `x` - The X coordinate of the rectangle's upper-left corner.
    :   `y` - The Y coordinate of the rectangle's upper-left corner.
    :   `w` - The width of the rectangle.
    :   `h` - The height of the rectangle.

    Returns:
    :   `true` if the arc intersects the rectangle,
        `false` if the arc doesn't intersect the rectangle.

    Since:
    :   1.2

    See Also:
    :   - [`Area`](Area.md "class in java.awt.geom")
  + ### contains

    public boolean contains(double x,
    double y,
    double w,
    double h)

    Determines whether or not the interior of the arc entirely contains
    the specified rectangle.

    Parameters:
    :   `x` - The X coordinate of the rectangle's upper-left corner.
    :   `y` - The Y coordinate of the rectangle's upper-left corner.
    :   `w` - The width of the rectangle.
    :   `h` - The height of the rectangle.

    Returns:
    :   `true` if the arc contains the rectangle,
        `false` if the arc doesn't contain the rectangle.

    Since:
    :   1.2

    See Also:
    :   - [`Area`](Area.md "class in java.awt.geom")
        - [`Shape.intersects(double, double, double, double)`](../Shape.md#intersects(double,double,double,double))
  + ### contains

    public boolean contains([Rectangle2D](Rectangle2D.md "class in java.awt.geom") r)

    Determines whether or not the interior of the arc entirely contains
    the specified rectangle.

    Specified by:
    :   `contains` in interface `Shape`

    Overrides:
    :   `contains` in class `RectangularShape`

    Parameters:
    :   `r` - The `Rectangle2D` to test.

    Returns:
    :   `true` if the arc contains the rectangle,
        `false` if the arc doesn't contain the rectangle.

    Since:
    :   1.2

    See Also:
    :   - [`Shape.contains(double, double, double, double)`](../Shape.md#contains(double,double,double,double))
  + ### getPathIterator

    public [PathIterator](PathIterator.md "interface in java.awt.geom") getPathIterator([AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Returns an iteration object that defines the boundary of the
    arc.
    This iterator is multithread safe.
    `Arc2D` guarantees that
    modifications to the geometry of the arc
    do not affect any iterations of that geometry that
    are already in process.

    Parameters:
    :   `at` - an optional `AffineTransform` to be applied
        to the coordinates as they are returned in the iteration, or null
        if the untransformed coordinates are desired.

    Returns:
    :   A `PathIterator` that defines the arc's boundary.

    Since:
    :   1.2
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this `Arc2D`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode for this `Arc2D`.

    Since:
    :   1.6

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether or not the specified `Object` is
    equal to this `Arc2D`. The specified
    `Object` is equal to this `Arc2D`
    if it is an instance of `Arc2D` and if its
    location, size, arc extents and type are the same as this
    `Arc2D`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - an `Object` to be compared with this
        `Arc2D`.

    Returns:
    :   `true` if `obj` is an instance
        of `Arc2D` and has the same values;
        `false` otherwise.

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")