Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Ellipse2D

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](RectangularShape.md "class in java.awt.geom")

java.awt.geom.Ellipse2D

All Implemented Interfaces:
:   `Shape`, `Cloneable`

Direct Known Subclasses:
:   `Ellipse2D.Double`, `Ellipse2D.Float`

---

public abstract class Ellipse2D
extends [RectangularShape](RectangularShape.md "class in java.awt.geom")

The `Ellipse2D` class describes an ellipse that is defined
by a framing rectangle.

This class is only the abstract superclass for all objects which
store a 2D ellipse.
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

  `Ellipse2D.Double`

  The `Double` class defines an ellipse specified
  in `double` precision.

  `static class`

  `Ellipse2D.Float`

  The `Float` class defines an ellipse specified
  in `float` precision.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Ellipse2D()`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  `equals(Object obj)`

  Determines whether or not the specified `Object` is
  equal to this `Ellipse2D`.

  `PathIterator`

  `getPathIterator(AffineTransform at)`

  Returns an iteration object that defines the boundary of this
  `Ellipse2D`.

  `int`

  `hashCode()`

  Returns the hashcode for this `Ellipse2D`.

  `boolean`

  `intersects(double x,
  double y,
  double w,
  double h)`

  Tests if the interior of the `Shape` intersects the
  interior of a specified rectangular area.

  ### Methods inherited from class java.awt.geom.[RectangularShape](RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getBounds, getCenterX, getCenterY, getFrame, getHeight, getMaxX, getMaxY, getMinX, getMinY, getPathIterator, getWidth, getX, getY, intersects, isEmpty, setFrame, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.[Shape](../Shape.md "interface in java.awt")

  `getBounds2D`

* ## Constructor Details

  + ### Ellipse2D

    protected Ellipse2D()

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    Since:
    :   1.2

    See Also:
    :   - [`Ellipse2D.Float`](Ellipse2D.Float.md "class in java.awt.geom")
        - [`Ellipse2D.Double`](Ellipse2D.Double.md "class in java.awt.geom")
* ## Method Details

  + ### contains

    public boolean contains(double x,
    double y)

    Tests if the specified coordinates are inside the boundary of the
    `Shape`, as described by the
    [definition of insideness](../Shape.md#def_insideness).

    Parameters:
    :   `x` - the specified X coordinate to be tested
    :   `y` - the specified Y coordinate to be tested

    Returns:
    :   `true` if the specified coordinates are inside
        the `Shape` boundary; `false`
        otherwise.

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
  + ### getPathIterator

    public [PathIterator](PathIterator.md "interface in java.awt.geom") getPathIterator([AffineTransform](AffineTransform.md "class in java.awt.geom") at)

    Returns an iteration object that defines the boundary of this
    `Ellipse2D`.
    The iterator for this class is multi-threaded safe, which means
    that this `Ellipse2D` class guarantees that
    modifications to the geometry of this `Ellipse2D`
    object do not affect any iterations of that geometry that
    are already in process.

    Parameters:
    :   `at` - an optional `AffineTransform` to be applied to
        the coordinates as they are returned in the iteration, or
        `null` if untransformed coordinates are desired

    Returns:
    :   the `PathIterator` object that returns the
        geometry of the outline of this `Ellipse2D`,
        one segment at a time.

    Since:
    :   1.2
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this `Ellipse2D`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode for this `Ellipse2D`.

    Since:
    :   1.6

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether or not the specified `Object` is
    equal to this `Ellipse2D`. The specified
    `Object` is equal to this `Ellipse2D`
    if it is an instance of `Ellipse2D` and if its
    location and size are the same as this `Ellipse2D`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - an `Object` to be compared with this
        `Ellipse2D`.

    Returns:
    :   `true` if `obj` is an instance
        of `Ellipse2D` and has the same values;
        `false` otherwise.

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")