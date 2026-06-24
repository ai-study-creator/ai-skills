Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class GeneralPath

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Path2D](Path2D.md "class in java.awt.geom")

[java.awt.geom.Path2D.Float](Path2D.Float.md "class in java.awt.geom")

java.awt.geom.GeneralPath

All Implemented Interfaces:
:   `Shape`, `Serializable`, `Cloneable`

---

public final class GeneralPath
extends [Path2D.Float](Path2D.Float.md "class in java.awt.geom")

The `GeneralPath` class represents a geometric path
constructed from straight lines, and quadratic and cubic
(Bézier) curves. It can contain multiple subpaths.

`GeneralPath` is a legacy final class which exactly
implements the behavior of its superclass [`Path2D.Float`](Path2D.Float.md "class in java.awt.geom").
Together with [`Path2D.Double`](Path2D.Double.md "class in java.awt.geom"), the [`Path2D`](Path2D.md "class in java.awt.geom") classes
provide full implementations of a general geometric path that
support all of the functionality of the [`Shape`](../Shape.md "interface in java.awt") and
[`PathIterator`](PathIterator.md "interface in java.awt.geom") interfaces with the ability to explicitly
select different levels of internal coordinate precision.

Use `Path2D.Float` (or this legacy `GeneralPath`
subclass) when dealing with data that can be represented
and used with floating point precision. Use `Path2D.Double`
for data that requires the accuracy or range of double precision.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.GeneralPath)

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

  `GeneralPath()`

  Constructs a new empty single precision `GeneralPath` object
  with a default winding rule of [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO).

  `GeneralPath(int rule)`

  Constructs a new `GeneralPath` object with the specified
  winding rule to control operations that require the interior of the
  path to be defined.

  `GeneralPath(int rule,
  int initialCapacity)`

  Constructs a new `GeneralPath` object with the specified
  winding rule and the specified initial capacity to store path
  coordinates.

  `GeneralPath(Shape s)`

  Constructs a new `GeneralPath` object from an arbitrary
  [`Shape`](../Shape.md "interface in java.awt") object.
* ## Method Summary

  ### Methods inherited from class java.awt.geom.[Path2D.Float](Path2D.Float.md "class in java.awt.geom")

  `append, clone, curveTo, curveTo, getBounds2D, getPathIterator, lineTo, lineTo, moveTo, moveTo, quadTo, quadTo, transform, trimToSize`

  ### Methods inherited from class java.awt.geom.[Path2D](Path2D.md "class in java.awt.geom")

  `append, closePath, contains, contains, contains, contains, contains, contains, contains, contains, createTransformedShape, getBounds, getCurrentPoint, getPathIterator, getWindingRule, intersects, intersects, intersects, intersects, reset, setWindingRule`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GeneralPath

    public GeneralPath()

    Constructs a new empty single precision `GeneralPath` object
    with a default winding rule of [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO).

    Since:
    :   1.2
  + ### GeneralPath

    public GeneralPath(int rule)

    Constructs a new `GeneralPath` object with the specified
    winding rule to control operations that require the interior of the
    path to be defined.

    Parameters:
    :   `rule` - the winding rule

    Throws:
    :   `IllegalArgumentException` - if `rule` is not either
        [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD) or [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)

    Since:
    :   1.2

    See Also:
    :   - [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD)
        - [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)
  + ### GeneralPath

    public GeneralPath(int rule,
    int initialCapacity)

    Constructs a new `GeneralPath` object with the specified
    winding rule and the specified initial capacity to store path
    coordinates.
    This number is an initial guess as to how many path segments
    will be added to the path, but the storage is expanded as
    needed to store whatever path segments are added.

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
    :   1.2

    See Also:
    :   - [`Path2D.WIND_EVEN_ODD`](Path2D.md#WIND_EVEN_ODD)
        - [`Path2D.WIND_NON_ZERO`](Path2D.md#WIND_NON_ZERO)
  + ### GeneralPath

    public GeneralPath([Shape](../Shape.md "interface in java.awt") s)

    Constructs a new `GeneralPath` object from an arbitrary
    [`Shape`](../Shape.md "interface in java.awt") object.
    All of the initial geometry and the winding rule for this path are
    taken from the specified `Shape` object.

    Parameters:
    :   `s` - the specified `Shape` object

    Throws:
    :   `NullPointerException` - if `s` is `null`

    Since:
    :   1.2