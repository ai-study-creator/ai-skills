Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class CubicCurve2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.CubicCurve2D](CubicCurve2D.md "class in java.awt.geom")

java.awt.geom.CubicCurve2D.Double

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `CubicCurve2D`

---

public static class CubicCurve2D.Double
extends [CubicCurve2D](CubicCurve2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A cubic parametric curve segment specified with
`double` coordinates.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.CubicCurve2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[CubicCurve2D](CubicCurve2D.md "class in java.awt.geom")

  `CubicCurve2D.Double, CubicCurve2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `double`

  `ctrlx1`

  The X coordinate of the first control point
  of the cubic curve segment.

  `double`

  `ctrlx2`

  The X coordinate of the second control point
  of the cubic curve segment.

  `double`

  `ctrly1`

  The Y coordinate of the first control point
  of the cubic curve segment.

  `double`

  `ctrly2`

  The Y coordinate of the second control point
  of the cubic curve segment.

  `double`

  `x1`

  The X coordinate of the start point
  of the cubic curve segment.

  `double`

  `x2`

  The X coordinate of the end point
  of the cubic curve segment.

  `double`

  `y1`

  The Y coordinate of the start point
  of the cubic curve segment.

  `double`

  `y2`

  The Y coordinate of the end point
  of the cubic curve segment.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs and initializes a CubicCurve with coordinates
  (0, 0, 0, 0, 0, 0, 0, 0).

  `Double(double x1,
  double y1,
  double ctrlx1,
  double ctrly1,
  double ctrlx2,
  double ctrly2,
  double x2,
  double y2)`

  Constructs and initializes a `CubicCurve2D` from
  the specified `double` coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Point2D`

  `getCtrlP1()`

  Returns the first control point.

  `Point2D`

  `getCtrlP2()`

  Returns the second control point.

  `double`

  `getCtrlX1()`

  Returns the X coordinate of the first control point in double precision.

  `double`

  `getCtrlX2()`

  Returns the X coordinate of the second control point
  in double precision.

  `double`

  `getCtrlY1()`

  Returns the Y coordinate of the first control point in double precision.

  `double`

  `getCtrlY2()`

  Returns the Y coordinate of the second control point
  in double precision.

  `Point2D`

  `getP1()`

  Returns the start point.

  `Point2D`

  `getP2()`

  Returns the end point.

  `double`

  `getX1()`

  Returns the X coordinate of the start point in double precision.

  `double`

  `getX2()`

  Returns the X coordinate of the end point in double precision.

  `double`

  `getY1()`

  Returns the Y coordinate of the start point in double precision.

  `double`

  `getY2()`

  Returns the Y coordinate of the end point in double precision.

  `void`

  `setCurve(double x1,
  double y1,
  double ctrlx1,
  double ctrly1,
  double ctrlx2,
  double ctrly2,
  double x2,
  double y2)`

  Sets the location of the end points and control points of this curve
  to the specified double coordinates.

  ### Methods inherited from class java.awt.geom.[CubicCurve2D](CubicCurve2D.md "class in java.awt.geom")

  `clone, contains, contains, contains, contains, getBounds, getBounds2D, getFlatness, getFlatness, getFlatness, getFlatnessSq, getFlatnessSq, getFlatnessSq, getPathIterator, getPathIterator, intersects, intersects, setCurve, setCurve, setCurve, setCurve, solveCubic, solveCubic, subdivide, subdivide, subdivide`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### x1

    public double x1

    The X coordinate of the start point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### y1

    public double y1

    The Y coordinate of the start point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### ctrlx1

    public double ctrlx1

    The X coordinate of the first control point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### ctrly1

    public double ctrly1

    The Y coordinate of the first control point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### ctrlx2

    public double ctrlx2

    The X coordinate of the second control point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### ctrly2

    public double ctrly2

    The Y coordinate of the second control point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### x2

    public double x2

    The X coordinate of the end point
    of the cubic curve segment.

    Since:
    :   1.2
  + ### y2

    public double y2

    The Y coordinate of the end point
    of the cubic curve segment.

    Since:
    :   1.2
* ## Constructor Details

  + ### Double

    public Double()

    Constructs and initializes a CubicCurve with coordinates
    (0, 0, 0, 0, 0, 0, 0, 0).

    Since:
    :   1.2
  + ### Double

    public Double(double x1,
    double y1,
    double ctrlx1,
    double ctrly1,
    double ctrlx2,
    double ctrly2,
    double x2,
    double y2)

    Constructs and initializes a `CubicCurve2D` from
    the specified `double` coordinates.

    Parameters:
    :   `x1` - the X coordinate for the start point
        of the resulting `CubicCurve2D`
    :   `y1` - the Y coordinate for the start point
        of the resulting `CubicCurve2D`
    :   `ctrlx1` - the X coordinate for the first control point
        of the resulting `CubicCurve2D`
    :   `ctrly1` - the Y coordinate for the first control point
        of the resulting `CubicCurve2D`
    :   `ctrlx2` - the X coordinate for the second control point
        of the resulting `CubicCurve2D`
    :   `ctrly2` - the Y coordinate for the second control point
        of the resulting `CubicCurve2D`
    :   `x2` - the X coordinate for the end point
        of the resulting `CubicCurve2D`
    :   `y2` - the Y coordinate for the end point
        of the resulting `CubicCurve2D`

    Since:
    :   1.2
* ## Method Details

  + ### getX1

    public double getX1()

    Returns the X coordinate of the start point in double precision.

    Specified by:
    :   `getX1` in class `CubicCurve2D`

    Returns:
    :   the X coordinate of the start point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getY1

    public double getY1()

    Returns the Y coordinate of the start point in double precision.

    Specified by:
    :   `getY1` in class `CubicCurve2D`

    Returns:
    :   the Y coordinate of the start point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getP1

    public [Point2D](Point2D.md "class in java.awt.geom") getP1()

    Returns the start point.

    Specified by:
    :   `getP1` in class `CubicCurve2D`

    Returns:
    :   a `Point2D` that is the start point of
        the `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlX1

    public double getCtrlX1()

    Returns the X coordinate of the first control point in double precision.

    Specified by:
    :   `getCtrlX1` in class `CubicCurve2D`

    Returns:
    :   the X coordinate of the first control point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlY1

    public double getCtrlY1()

    Returns the Y coordinate of the first control point in double precision.

    Specified by:
    :   `getCtrlY1` in class `CubicCurve2D`

    Returns:
    :   the Y coordinate of the first control point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlP1

    public [Point2D](Point2D.md "class in java.awt.geom") getCtrlP1()

    Returns the first control point.

    Specified by:
    :   `getCtrlP1` in class `CubicCurve2D`

    Returns:
    :   a `Point2D` that is the first control point of
        the `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlX2

    public double getCtrlX2()

    Returns the X coordinate of the second control point
    in double precision.

    Specified by:
    :   `getCtrlX2` in class `CubicCurve2D`

    Returns:
    :   the X coordinate of the second control point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlY2

    public double getCtrlY2()

    Returns the Y coordinate of the second control point
    in double precision.

    Specified by:
    :   `getCtrlY2` in class `CubicCurve2D`

    Returns:
    :   the Y coordinate of the second control point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getCtrlP2

    public [Point2D](Point2D.md "class in java.awt.geom") getCtrlP2()

    Returns the second control point.

    Specified by:
    :   `getCtrlP2` in class `CubicCurve2D`

    Returns:
    :   a `Point2D` that is the second control point of
        the `CubicCurve2D`.

    Since:
    :   1.2
  + ### getX2

    public double getX2()

    Returns the X coordinate of the end point in double precision.

    Specified by:
    :   `getX2` in class `CubicCurve2D`

    Returns:
    :   the X coordinate of the end point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getY2

    public double getY2()

    Returns the Y coordinate of the end point in double precision.

    Specified by:
    :   `getY2` in class `CubicCurve2D`

    Returns:
    :   the Y coordinate of the end point of the
        `CubicCurve2D`.

    Since:
    :   1.2
  + ### getP2

    public [Point2D](Point2D.md "class in java.awt.geom") getP2()

    Returns the end point.

    Specified by:
    :   `getP2` in class `CubicCurve2D`

    Returns:
    :   a `Point2D` that is the end point of
        the `CubicCurve2D`.

    Since:
    :   1.2
  + ### setCurve

    public void setCurve(double x1,
    double y1,
    double ctrlx1,
    double ctrly1,
    double ctrlx2,
    double ctrly2,
    double x2,
    double y2)

    Sets the location of the end points and control points of this curve
    to the specified double coordinates.

    Specified by:
    :   `setCurve` in class `CubicCurve2D`

    Parameters:
    :   `x1` - the X coordinate used to set the start point
        of this `CubicCurve2D`
    :   `y1` - the Y coordinate used to set the start point
        of this `CubicCurve2D`
    :   `ctrlx1` - the X coordinate used to set the first control point
        of this `CubicCurve2D`
    :   `ctrly1` - the Y coordinate used to set the first control point
        of this `CubicCurve2D`
    :   `ctrlx2` - the X coordinate used to set the second control point
        of this `CubicCurve2D`
    :   `ctrly2` - the Y coordinate used to set the second control point
        of this `CubicCurve2D`
    :   `x2` - the X coordinate used to set the end point
        of this `CubicCurve2D`
    :   `y2` - the Y coordinate used to set the end point
        of this `CubicCurve2D`

    Since:
    :   1.2