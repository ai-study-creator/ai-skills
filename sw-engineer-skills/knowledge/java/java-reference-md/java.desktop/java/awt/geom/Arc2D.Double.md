Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Arc2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

[java.awt.geom.Arc2D](Arc2D.md "class in java.awt.geom")

java.awt.geom.Arc2D.Double

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `Arc2D`

---

public static class Arc2D.Double
extends [Arc2D](Arc2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This class defines an arc specified in `double` precision.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.Arc2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Arc2D](Arc2D.md "class in java.awt.geom")

  `Arc2D.Double, Arc2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `double`

  `extent`

  The angular extent of the arc in degrees.

  `double`

  `height`

  The overall height of the full ellipse of which this arc is
  a partial section (not considering the angular extents).

  `double`

  `start`

  The starting angle of the arc in degrees.

  `double`

  `width`

  The overall width of the full ellipse of which this arc is
  a partial section (not considering the angular extents).

  `double`

  `x`

  The X coordinate of the upper-left corner of the framing
  rectangle of the arc.

  `double`

  `y`

  The Y coordinate of the upper-left corner of the framing
  rectangle of the arc.

  ### Fields inherited from class java.awt.geom.[Arc2D](Arc2D.md "class in java.awt.geom")

  `CHORD, OPEN, PIE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs a new OPEN arc, initialized to location (0, 0),
  size (0, 0), angular extents (start = 0, extent = 0).

  `Double(double x,
  double y,
  double w,
  double h,
  double start,
  double extent,
  int type)`

  Constructs a new arc, initialized to the specified location,
  size, angular extents, and closure type.

  `Double(int type)`

  Constructs a new arc, initialized to location (0, 0),
  size (0, 0), angular extents (start = 0, extent = 0), and
  the specified closure type.

  `Double(Rectangle2D ellipseBounds,
  double start,
  double extent,
  int type)`

  Constructs a new arc, initialized to the specified location,
  size, angular extents, and closure type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `double`

  `getAngleExtent()`

  Returns the angular extent of the arc.

  `double`

  `getAngleStart()`

  Returns the starting angle of the arc.

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

  `protected Rectangle2D`

  `makeBounds(double x,
  double y,
  double w,
  double h)`

  Constructs a `Rectangle2D` of the appropriate precision
  to hold the parameters calculated to be the framing rectangle
  of this arc.

  `void`

  `setAngleExtent(double angExt)`

  Sets the angular extent of this arc to the specified double
  value.

  `void`

  `setAngleStart(double angSt)`

  Sets the starting angle of this arc to the specified double
  value.

  `void`

  `setArc(double x,
  double y,
  double w,
  double h,
  double angSt,
  double angExt,
  int closure)`

  Sets the location, size, angular extents, and closure type of
  this arc to the specified double values.

  ### Methods inherited from class java.awt.geom.[Arc2D](Arc2D.md "class in java.awt.geom")

  `contains, contains, contains, containsAngle, equals, getArcType, getBounds2D, getEndPoint, getPathIterator, getStartPoint, hashCode, intersects, setAngles, setAngles, setAngleStart, setArc, setArc, setArc, setArcByCenter, setArcByTangent, setArcType, setFrame`

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, getBounds, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, getPathIterator, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### x

    public double x

    The X coordinate of the upper-left corner of the framing
    rectangle of the arc.

    Since:
    :   1.2
  + ### y

    public double y

    The Y coordinate of the upper-left corner of the framing
    rectangle of the arc.

    Since:
    :   1.2
  + ### width

    public double width

    The overall width of the full ellipse of which this arc is
    a partial section (not considering the angular extents).

    Since:
    :   1.2
  + ### height

    public double height

    The overall height of the full ellipse of which this arc is
    a partial section (not considering the angular extents).

    Since:
    :   1.2
  + ### start

    public double start

    The starting angle of the arc in degrees.

    Since:
    :   1.2
  + ### extent

    public double extent

    The angular extent of the arc in degrees.

    Since:
    :   1.2
* ## Constructor Details

  + ### Double

    public Double()

    Constructs a new OPEN arc, initialized to location (0, 0),
    size (0, 0), angular extents (start = 0, extent = 0).

    Since:
    :   1.2
  + ### Double

    public Double(int type)

    Constructs a new arc, initialized to location (0, 0),
    size (0, 0), angular extents (start = 0, extent = 0), and
    the specified closure type.

    Parameters:
    :   `type` - The closure type for the arc:
        [`Arc2D.OPEN`](Arc2D.md#OPEN), [`Arc2D.CHORD`](Arc2D.md#CHORD), or [`Arc2D.PIE`](Arc2D.md#PIE).

    Since:
    :   1.2
  + ### Double

    public Double(double x,
    double y,
    double w,
    double h,
    double start,
    double extent,
    int type)

    Constructs a new arc, initialized to the specified location,
    size, angular extents, and closure type.

    Parameters:
    :   `x` - The X coordinate of the upper-left corner
        of the arc's framing rectangle.
    :   `y` - The Y coordinate of the upper-left corner
        of the arc's framing rectangle.
    :   `w` - The overall width of the full ellipse of which this
        arc is a partial section.
    :   `h` - The overall height of the full ellipse of which this
        arc is a partial section.
    :   `start` - The starting angle of the arc in degrees.
    :   `extent` - The angular extent of the arc in degrees.
    :   `type` - The closure type for the arc:
        [`Arc2D.OPEN`](Arc2D.md#OPEN), [`Arc2D.CHORD`](Arc2D.md#CHORD), or [`Arc2D.PIE`](Arc2D.md#PIE).

    Since:
    :   1.2
  + ### Double

    public Double([Rectangle2D](Rectangle2D.md "class in java.awt.geom") ellipseBounds,
    double start,
    double extent,
    int type)

    Constructs a new arc, initialized to the specified location,
    size, angular extents, and closure type.

    Parameters:
    :   `ellipseBounds` - The framing rectangle that defines the
        outer boundary of the full ellipse of which this arc is a
        partial section.
    :   `start` - The starting angle of the arc in degrees.
    :   `extent` - The angular extent of the arc in degrees.
    :   `type` - The closure type for the arc:
        [`Arc2D.OPEN`](Arc2D.md#OPEN), [`Arc2D.CHORD`](Arc2D.md#CHORD), or [`Arc2D.PIE`](Arc2D.md#PIE).

    Since:
    :   1.2
* ## Method Details

  + ### getX

    public double getX()

    Returns the X coordinate of the upper-left corner of
    the framing rectangle in `double` precision.
    Note that the arc
    [partially inscribes](Arc2D.md#inscribes)
    the framing rectangle of this `RectangularShape`.

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
    Note that the arc
    [partially inscribes](Arc2D.md#inscribes)
    the framing rectangle of this `RectangularShape`.

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
    Note that the arc
    [partially inscribes](Arc2D.md#inscribes)
    the framing rectangle of this `RectangularShape`.

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
    Note that the arc
    [partially inscribes](Arc2D.md#inscribes)
    the framing rectangle of this `RectangularShape`.

    Specified by:
    :   `getHeight` in class `RectangularShape`

    Returns:
    :   the height of the framing rectangle.

    Since:
    :   1.2
  + ### getAngleStart

    public double getAngleStart()

    Returns the starting angle of the arc.

    Specified by:
    :   `getAngleStart` in class `Arc2D`

    Returns:
    :   A double value that represents the starting angle
        of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`Arc2D.setAngleStart(double)`](Arc2D.md#setAngleStart(double))
  + ### getAngleExtent

    public double getAngleExtent()

    Returns the angular extent of the arc.

    Specified by:
    :   `getAngleExtent` in class `Arc2D`

    Returns:
    :   A double value that represents the angular extent
        of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`Arc2D.setAngleExtent(double)`](Arc2D.md#setAngleExtent(double))
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
  + ### setArc

    public void setArc(double x,
    double y,
    double w,
    double h,
    double angSt,
    double angExt,
    int closure)

    Sets the location, size, angular extents, and closure type of
    this arc to the specified double values.

    Specified by:
    :   `setArc` in class `Arc2D`

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
        [`Arc2D.OPEN`](Arc2D.md#OPEN), [`Arc2D.CHORD`](Arc2D.md#CHORD), or [`Arc2D.PIE`](Arc2D.md#PIE).

    Since:
    :   1.2
  + ### setAngleStart

    public void setAngleStart(double angSt)

    Sets the starting angle of this arc to the specified double
    value.

    Specified by:
    :   `setAngleStart` in class `Arc2D`

    Parameters:
    :   `angSt` - The starting angle of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`Arc2D.getAngleStart()`](Arc2D.md#getAngleStart())
  + ### setAngleExtent

    public void setAngleExtent(double angExt)

    Sets the angular extent of this arc to the specified double
    value.

    Specified by:
    :   `setAngleExtent` in class `Arc2D`

    Parameters:
    :   `angExt` - The angular extent of the arc in degrees.

    Since:
    :   1.2

    See Also:
    :   - [`Arc2D.getAngleExtent()`](Arc2D.md#getAngleExtent())
  + ### makeBounds

    protected [Rectangle2D](Rectangle2D.md "class in java.awt.geom") makeBounds(double x,
    double y,
    double w,
    double h)

    Constructs a `Rectangle2D` of the appropriate precision
    to hold the parameters calculated to be the framing rectangle
    of this arc.

    Specified by:
    :   `makeBounds` in class `Arc2D`

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