Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class QuadCurve2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.QuadCurve2D](QuadCurve2D.md "class in java.awt.geom")

java.awt.geom.QuadCurve2D.Double

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

Enclosing class:
:   `QuadCurve2D`

---

public static class QuadCurve2D.Double
extends [QuadCurve2D](QuadCurve2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A quadratic parametric curve segment specified with
`double` coordinates.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.QuadCurve2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[QuadCurve2D](QuadCurve2D.md "class in java.awt.geom")

  `QuadCurve2D.Double, QuadCurve2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `double`

  `ctrlx`

  The X coordinate of the control point of the quadratic curve
  segment.

  `double`

  `ctrly`

  The Y coordinate of the control point of the quadratic curve
  segment.

  `double`

  `x1`

  The X coordinate of the start point of the quadratic curve
  segment.

  `double`

  `x2`

  The X coordinate of the end point of the quadratic curve
  segment.

  `double`

  `y1`

  The Y coordinate of the start point of the quadratic curve
  segment.

  `double`

  `y2`

  The Y coordinate of the end point of the quadratic curve
  segment.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs and initializes a `QuadCurve2D` with
  coordinates (0, 0, 0, 0, 0, 0).

  `Double(double x1,
  double y1,
  double ctrlx,
  double ctrly,
  double x2,
  double y2)`

  Constructs and initializes a `QuadCurve2D` from the
  specified `double` coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Point2D`

  `getCtrlPt()`

  Returns the control point.

  `double`

  `getCtrlX()`

  Returns the X coordinate of the control point in
  `double` precision.

  `double`

  `getCtrlY()`

  Returns the Y coordinate of the control point in
  `double` precision.

  `Point2D`

  `getP1()`

  Returns the start point.

  `Point2D`

  `getP2()`

  Returns the end point.

  `double`

  `getX1()`

  Returns the X coordinate of the start point in
  `double` in precision.

  `double`

  `getX2()`

  Returns the X coordinate of the end point in
  `double` precision.

  `double`

  `getY1()`

  Returns the Y coordinate of the start point in
  `double` precision.

  `double`

  `getY2()`

  Returns the Y coordinate of the end point in
  `double` precision.

  `void`

  `setCurve(double x1,
  double y1,
  double ctrlx,
  double ctrly,
  double x2,
  double y2)`

  Sets the location of the end points and control point of this curve
  to the specified `double` coordinates.

  ### Methods inherited from class java.awt.geom.[QuadCurve2D](QuadCurve2D.md "class in java.awt.geom")

  `clone, contains, contains, contains, contains, getBounds, getBounds2D, getFlatness, getFlatness, getFlatness, getFlatnessSq, getFlatnessSq, getFlatnessSq, getPathIterator, getPathIterator, intersects, intersects, setCurve, setCurve, setCurve, setCurve, solveQuadratic, solveQuadratic, subdivide, subdivide, subdivide`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### x1

    public double x1

    The X coordinate of the start point of the quadratic curve
    segment.

    Since:
    :   1.2
  + ### y1

    public double y1

    The Y coordinate of the start point of the quadratic curve
    segment.

    Since:
    :   1.2
  + ### ctrlx

    public double ctrlx

    The X coordinate of the control point of the quadratic curve
    segment.

    Since:
    :   1.2
  + ### ctrly

    public double ctrly

    The Y coordinate of the control point of the quadratic curve
    segment.

    Since:
    :   1.2
  + ### x2

    public double x2

    The X coordinate of the end point of the quadratic curve
    segment.

    Since:
    :   1.2
  + ### y2

    public double y2

    The Y coordinate of the end point of the quadratic curve
    segment.

    Since:
    :   1.2
* ## Constructor Details

  + ### Double

    public Double()

    Constructs and initializes a `QuadCurve2D` with
    coordinates (0, 0, 0, 0, 0, 0).

    Since:
    :   1.2
  + ### Double

    public Double(double x1,
    double y1,
    double ctrlx,
    double ctrly,
    double x2,
    double y2)

    Constructs and initializes a `QuadCurve2D` from the
    specified `double` coordinates.

    Parameters:
    :   `x1` - the X coordinate of the start point
    :   `y1` - the Y coordinate of the start point
    :   `ctrlx` - the X coordinate of the control point
    :   `ctrly` - the Y coordinate of the control point
    :   `x2` - the X coordinate of the end point
    :   `y2` - the Y coordinate of the end point

    Since:
    :   1.2
* ## Method Details

  + ### getX1

    public double getX1()

    Returns the X coordinate of the start point in
    `double` in precision.

    Specified by:
    :   `getX1` in class `QuadCurve2D`

    Returns:
    :   the X coordinate of the start point.

    Since:
    :   1.2
  + ### getY1

    public double getY1()

    Returns the Y coordinate of the start point in
    `double` precision.

    Specified by:
    :   `getY1` in class `QuadCurve2D`

    Returns:
    :   the Y coordinate of the start point.

    Since:
    :   1.2
  + ### getP1

    public [Point2D](Point2D.md "class in java.awt.geom") getP1()

    Returns the start point.

    Specified by:
    :   `getP1` in class `QuadCurve2D`

    Returns:
    :   a `Point2D` that is the start point of this
        `QuadCurve2D`.

    Since:
    :   1.2
  + ### getCtrlX

    public double getCtrlX()

    Returns the X coordinate of the control point in
    `double` precision.

    Specified by:
    :   `getCtrlX` in class `QuadCurve2D`

    Returns:
    :   X coordinate the control point

    Since:
    :   1.2
  + ### getCtrlY

    public double getCtrlY()

    Returns the Y coordinate of the control point in
    `double` precision.

    Specified by:
    :   `getCtrlY` in class `QuadCurve2D`

    Returns:
    :   the Y coordinate of the control point.

    Since:
    :   1.2
  + ### getCtrlPt

    public [Point2D](Point2D.md "class in java.awt.geom") getCtrlPt()

    Returns the control point.

    Specified by:
    :   `getCtrlPt` in class `QuadCurve2D`

    Returns:
    :   a `Point2D` that is the control point of this
        `Point2D`.

    Since:
    :   1.2
  + ### getX2

    public double getX2()

    Returns the X coordinate of the end point in
    `double` precision.

    Specified by:
    :   `getX2` in class `QuadCurve2D`

    Returns:
    :   the x coordinate of the end point.

    Since:
    :   1.2
  + ### getY2

    public double getY2()

    Returns the Y coordinate of the end point in
    `double` precision.

    Specified by:
    :   `getY2` in class `QuadCurve2D`

    Returns:
    :   the Y coordinate of the end point.

    Since:
    :   1.2
  + ### getP2

    public [Point2D](Point2D.md "class in java.awt.geom") getP2()

    Returns the end point.

    Specified by:
    :   `getP2` in class `QuadCurve2D`

    Returns:
    :   a `Point` object that is the end point
        of this `Point2D`.

    Since:
    :   1.2
  + ### setCurve

    public void setCurve(double x1,
    double y1,
    double ctrlx,
    double ctrly,
    double x2,
    double y2)

    Sets the location of the end points and control point of this curve
    to the specified `double` coordinates.

    Specified by:
    :   `setCurve` in class `QuadCurve2D`

    Parameters:
    :   `x1` - the X coordinate of the start point
    :   `y1` - the Y coordinate of the start point
    :   `ctrlx` - the X coordinate of the control point
    :   `ctrly` - the Y coordinate of the control point
    :   `x2` - the X coordinate of the end point
    :   `y2` - the Y coordinate of the end point

    Since:
    :   1.2