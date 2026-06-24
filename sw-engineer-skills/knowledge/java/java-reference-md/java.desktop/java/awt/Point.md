Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Point

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Point2D](geom/Point2D.md "class in java.awt.geom")

java.awt.Point

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class Point
extends [Point2D](geom/Point2D.md "class in java.awt.geom")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A point representing a location in `(x,y)` coordinate space,
specified in integer precision.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Point)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Point2D](geom/Point2D.md "class in java.awt.geom")

  `Point2D.Double, Point2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `x`

  The X coordinate of this `Point`.

  `int`

  `y`

  The Y coordinate of this `Point`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Point()`

  Constructs and initializes a point at the origin
  (0, 0) of the coordinate space.

  `Point(int x,
  int y)`

  Constructs and initializes a point at the specified
  `(x,y)` location in the coordinate space.

  `Point(Point p)`

  Constructs and initializes a point with the same location as
  the specified `Point` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Determines whether or not two points are equal.

  `Point`

  `getLocation()`

  Returns the location of this point.

  `double`

  `getX()`

  Returns the X coordinate of this `Point2D` in
  `double` precision.

  `double`

  `getY()`

  Returns the Y coordinate of this `Point2D` in
  `double` precision.

  `void`

  `move(int x,
  int y)`

  Moves this point to the specified location in the
  `(x,y)` coordinate plane.

  `void`

  `setLocation(double x,
  double y)`

  Sets the location of this point to the specified double coordinates.

  `void`

  `setLocation(int x,
  int y)`

  Changes the point to have the specified location.

  `void`

  `setLocation(Point p)`

  Sets the location of the point to the specified location.

  `String`

  `toString()`

  Returns a string representation of this point and its location
  in the `(x,y)` coordinate space.

  `void`

  `translate(int dx,
  int dy)`

  Translates this point, at location `(x,y)`,
  by `dx` along the `x` axis and `dy`
  along the `y` axis so that it now represents the point
  `(x+dx,y+dy)`.

  ### Methods inherited from class java.awt.geom.[Point2D](geom/Point2D.md "class in java.awt.geom")

  `clone, distance, distance, distance, distanceSq, distanceSq, distanceSq, hashCode, setLocation`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### x

    public int x

    The X coordinate of this `Point`.
    If no X coordinate is set it will default to 0.

    Since:
    :   1.0

    See Also:
    :   - [`getLocation()`](#getLocation())
        - [`move(int, int)`](#move(int,int))
  + ### y

    public int y

    The Y coordinate of this `Point`.
    If no Y coordinate is set it will default to 0.

    Since:
    :   1.0

    See Also:
    :   - [`getLocation()`](#getLocation())
        - [`move(int, int)`](#move(int,int))
* ## Constructor Details

  + ### Point

    public Point()

    Constructs and initializes a point at the origin
    (0, 0) of the coordinate space.

    Since:
    :   1.1
  + ### Point

    public Point([Point](Point.md "class in java.awt") p)

    Constructs and initializes a point with the same location as
    the specified `Point` object.

    Parameters:
    :   `p` - a point

    Since:
    :   1.1
  + ### Point

    public Point(int x,
    int y)

    Constructs and initializes a point at the specified
    `(x,y)` location in the coordinate space.

    Parameters:
    :   `x` - the X coordinate of the newly constructed `Point`
    :   `y` - the Y coordinate of the newly constructed `Point`

    Since:
    :   1.0
* ## Method Details

  + ### getX

    public double getX()

    Returns the X coordinate of this `Point2D` in
    `double` precision.

    Specified by:
    :   `getX` in class `Point2D`

    Returns:
    :   the X coordinate of this `Point2D`.

    Since:
    :   1.2
  + ### getY

    public double getY()

    Returns the Y coordinate of this `Point2D` in
    `double` precision.

    Specified by:
    :   `getY` in class `Point2D`

    Returns:
    :   the Y coordinate of this `Point2D`.

    Since:
    :   1.2
  + ### getLocation

    public [Point](Point.md "class in java.awt") getLocation()

    Returns the location of this point.
    This method is included for completeness, to parallel the
    `getLocation` method of `Component`.

    Returns:
    :   a copy of this point, at the same location

    Since:
    :   1.1

    See Also:
    :   - [`Component.getLocation()`](Component.md#getLocation())
        - [`setLocation(java.awt.Point)`](#setLocation(java.awt.Point))
        - [`setLocation(int, int)`](#setLocation(int,int))
  + ### setLocation

    public void setLocation([Point](Point.md "class in java.awt") p)

    Sets the location of the point to the specified location.
    This method is included for completeness, to parallel the
    `setLocation` method of `Component`.

    Parameters:
    :   `p` - a point, the new location for this point

    Since:
    :   1.1

    See Also:
    :   - [`Component.setLocation(java.awt.Point)`](Component.md#setLocation(java.awt.Point))
        - [`getLocation()`](#getLocation())
  + ### setLocation

    public void setLocation(int x,
    int y)

    Changes the point to have the specified location.

    This method is included for completeness, to parallel the
    `setLocation` method of `Component`.
    Its behavior is identical with `move(int, int)`.

    Parameters:
    :   `x` - the X coordinate of the new location
    :   `y` - the Y coordinate of the new location

    Since:
    :   1.1

    See Also:
    :   - [`Component.setLocation(int, int)`](Component.md#setLocation(int,int))
        - [`getLocation()`](#getLocation())
        - [`move(int, int)`](#move(int,int))
  + ### setLocation

    public void setLocation(double x,
    double y)

    Sets the location of this point to the specified double coordinates.
    The double values will be rounded to integer values.
    Any number smaller than `Integer.MIN_VALUE`
    will be reset to `MIN_VALUE`, and any number
    larger than `Integer.MAX_VALUE` will be
    reset to `MAX_VALUE`.

    Specified by:
    :   `setLocation` in class `Point2D`

    Parameters:
    :   `x` - the X coordinate of the new location
    :   `y` - the Y coordinate of the new location

    See Also:
    :   - [`getLocation()`](#getLocation())
  + ### move

    public void move(int x,
    int y)

    Moves this point to the specified location in the
    `(x,y)` coordinate plane. This method
    is identical with `setLocation(int, int)`.

    Parameters:
    :   `x` - the X coordinate of the new location
    :   `y` - the Y coordinate of the new location

    See Also:
    :   - [`Component.setLocation(int, int)`](Component.md#setLocation(int,int))
  + ### translate

    public void translate(int dx,
    int dy)

    Translates this point, at location `(x,y)`,
    by `dx` along the `x` axis and `dy`
    along the `y` axis so that it now represents the point
    `(x+dx,y+dy)`.

    Parameters:
    :   `dx` - the distance to move this point
        along the X axis
    :   `dy` - the distance to move this point
        along the Y axis
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether or not two points are equal. Two instances of
    `Point2D` are equal if the values of their
    `x` and `y` member fields, representing
    their position in the coordinate space, are the same.

    Overrides:
    :   `equals` in class `Point2D`

    Parameters:
    :   `obj` - an object to be compared with this `Point2D`

    Returns:
    :   `true` if the object to be compared is
        an instance of `Point2D` and has
        the same values; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this point and its location
    in the `(x,y)` coordinate space. This method is
    intended to be used only for debugging purposes, and the content
    and format of the returned string may vary between implementations.
    The returned string may be empty but may not be `null`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this point