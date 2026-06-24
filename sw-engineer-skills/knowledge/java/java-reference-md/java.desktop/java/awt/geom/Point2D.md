Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Point2D

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.geom.Point2D

All Implemented Interfaces:
:   `Cloneable`

Direct Known Subclasses:
:   `Point`, `Point2D.Double`, `Point2D.Float`

---

public abstract class Point2D
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `Point2D` class defines a point representing a location
in `(x,y)` coordinate space.

This class is only the abstract superclass for all objects that
store a 2D coordinate.
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

  `Point2D.Double`

  The `Double` class defines a point specified in
  `double` precision.

  `static class`

  `Point2D.Float`

  The `Float` class defines a point specified in float
  precision.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Point2D()`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a new object of the same class and with the
  same contents as this object.

  `double`

  `distance(double px,
  double py)`

  Returns the distance from this `Point2D` to
  a specified point.

  `static double`

  `distance(double x1,
  double y1,
  double x2,
  double y2)`

  Returns the distance between two points.

  `double`

  `distance(Point2D pt)`

  Returns the distance from this `Point2D` to a
  specified `Point2D`.

  `double`

  `distanceSq(double px,
  double py)`

  Returns the square of the distance from this
  `Point2D` to a specified point.

  `static double`

  `distanceSq(double x1,
  double y1,
  double x2,
  double y2)`

  Returns the square of the distance between two points.

  `double`

  `distanceSq(Point2D pt)`

  Returns the square of the distance from this
  `Point2D` to a specified `Point2D`.

  `boolean`

  `equals(Object obj)`

  Determines whether or not two points are equal.

  `abstract double`

  `getX()`

  Returns the X coordinate of this `Point2D` in
  `double` precision.

  `abstract double`

  `getY()`

  Returns the Y coordinate of this `Point2D` in
  `double` precision.

  `int`

  `hashCode()`

  Returns the hashcode for this `Point2D`.

  `abstract void`

  `setLocation(double x,
  double y)`

  Sets the location of this `Point2D` to the
  specified `double` coordinates.

  `void`

  `setLocation(Point2D p)`

  Sets the location of this `Point2D` to the same
  coordinates as the specified `Point2D` object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Point2D

    protected Point2D()

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    Since:
    :   1.2

    See Also:
    :   - [`Point2D.Float`](Point2D.Float.md "class in java.awt.geom")
        - [`Point2D.Double`](Point2D.Double.md "class in java.awt.geom")
        - [`Point`](../Point.md "class in java.awt")
* ## Method Details

  + ### getX

    public abstract double getX()

    Returns the X coordinate of this `Point2D` in
    `double` precision.

    Returns:
    :   the X coordinate of this `Point2D`.

    Since:
    :   1.2
  + ### getY

    public abstract double getY()

    Returns the Y coordinate of this `Point2D` in
    `double` precision.

    Returns:
    :   the Y coordinate of this `Point2D`.

    Since:
    :   1.2
  + ### setLocation

    public abstract void setLocation(double x,
    double y)

    Sets the location of this `Point2D` to the
    specified `double` coordinates.

    Parameters:
    :   `x` - the new X coordinate of this `Point2D`
    :   `y` - the new Y coordinate of this `Point2D`

    Since:
    :   1.2
  + ### setLocation

    public void setLocation([Point2D](Point2D.md "class in java.awt.geom") p)

    Sets the location of this `Point2D` to the same
    coordinates as the specified `Point2D` object.

    Parameters:
    :   `p` - the specified `Point2D` to which to set
        this `Point2D`

    Since:
    :   1.2
  + ### distanceSq

    public static double distanceSq(double x1,
    double y1,
    double x2,
    double y2)

    Returns the square of the distance between two points.

    Parameters:
    :   `x1` - the X coordinate of the first specified point
    :   `y1` - the Y coordinate of the first specified point
    :   `x2` - the X coordinate of the second specified point
    :   `y2` - the Y coordinate of the second specified point

    Returns:
    :   the square of the distance between the two
        sets of specified coordinates.

    Since:
    :   1.2
  + ### distance

    public static double distance(double x1,
    double y1,
    double x2,
    double y2)

    Returns the distance between two points.

    Parameters:
    :   `x1` - the X coordinate of the first specified point
    :   `y1` - the Y coordinate of the first specified point
    :   `x2` - the X coordinate of the second specified point
    :   `y2` - the Y coordinate of the second specified point

    Returns:
    :   the distance between the two sets of specified
        coordinates.

    Since:
    :   1.2
  + ### distanceSq

    public double distanceSq(double px,
    double py)

    Returns the square of the distance from this
    `Point2D` to a specified point.

    Parameters:
    :   `px` - the X coordinate of the specified point to be measured
        against this `Point2D`
    :   `py` - the Y coordinate of the specified point to be measured
        against this `Point2D`

    Returns:
    :   the square of the distance between this
        `Point2D` and the specified point.

    Since:
    :   1.2
  + ### distanceSq

    public double distanceSq([Point2D](Point2D.md "class in java.awt.geom") pt)

    Returns the square of the distance from this
    `Point2D` to a specified `Point2D`.

    Parameters:
    :   `pt` - the specified point to be measured
        against this `Point2D`

    Returns:
    :   the square of the distance between this
        `Point2D` to a specified `Point2D`.

    Since:
    :   1.2
  + ### distance

    public double distance(double px,
    double py)

    Returns the distance from this `Point2D` to
    a specified point.

    Parameters:
    :   `px` - the X coordinate of the specified point to be measured
        against this `Point2D`
    :   `py` - the Y coordinate of the specified point to be measured
        against this `Point2D`

    Returns:
    :   the distance between this `Point2D`
        and a specified point.

    Since:
    :   1.2
  + ### distance

    public double distance([Point2D](Point2D.md "class in java.awt.geom") pt)

    Returns the distance from this `Point2D` to a
    specified `Point2D`.

    Parameters:
    :   `pt` - the specified point to be measured
        against this `Point2D`

    Returns:
    :   the distance between this `Point2D` and
        the specified `Point2D`.

    Since:
    :   1.2
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a new object of the same class and with the
    same contents as this object.

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
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this `Point2D`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `Point2D`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether or not two points are equal. Two instances of
    `Point2D` are equal if the values of their
    `x` and `y` member fields, representing
    their position in the coordinate space, are the same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - an object to be compared with this `Point2D`

    Returns:
    :   `true` if the object to be compared is
        an instance of `Point2D` and has
        the same values; `false` otherwise.

    Since:
    :   1.2

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")