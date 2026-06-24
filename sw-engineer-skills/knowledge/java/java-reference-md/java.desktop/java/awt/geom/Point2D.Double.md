Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Point2D.Double

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Point2D](Point2D.md "class in java.awt.geom")

java.awt.geom.Point2D.Double

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Enclosing class:
:   `Point2D`

---

public static class Point2D.Double
extends [Point2D](Point2D.md "class in java.awt.geom")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `Double` class defines a point specified in
`double` precision.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.Point2D.Double)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Point2D](Point2D.md "class in java.awt.geom")

  `Point2D.Double, Point2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `double`

  `x`

  The X coordinate of this `Point2D`.

  `double`

  `y`

  The Y coordinate of this `Point2D`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Double()`

  Constructs and initializes a `Point2D` with
  coordinates (0, 0).

  `Double(double x,
  double y)`

  Constructs and initializes a `Point2D` with the
  specified coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `double`

  `getX()`

  Returns the X coordinate of this `Point2D` in
  `double` precision.

  `double`

  `getY()`

  Returns the Y coordinate of this `Point2D` in
  `double` precision.

  `void`

  `setLocation(double x,
  double y)`

  Sets the location of this `Point2D` to the
  specified `double` coordinates.

  `String`

  `toString()`

  Returns a `String` that represents the value
  of this `Point2D`.

  ### Methods inherited from class java.awt.geom.[Point2D](Point2D.md "class in java.awt.geom")

  `clone, distance, distance, distance, distanceSq, distanceSq, distanceSq, equals, hashCode, setLocation`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### x

    public double x

    The X coordinate of this `Point2D`.

    Since:
    :   1.2
  + ### y

    public double y

    The Y coordinate of this `Point2D`.

    Since:
    :   1.2
* ## Constructor Details

  + ### Double

    public Double()

    Constructs and initializes a `Point2D` with
    coordinates (0, 0).

    Since:
    :   1.2
  + ### Double

    public Double(double x,
    double y)

    Constructs and initializes a `Point2D` with the
    specified coordinates.

    Parameters:
    :   `x` - the X coordinate of the newly
        constructed `Point2D`
    :   `y` - the Y coordinate of the newly
        constructed `Point2D`

    Since:
    :   1.2
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
  + ### setLocation

    public void setLocation(double x,
    double y)

    Sets the location of this `Point2D` to the
    specified `double` coordinates.

    Specified by:
    :   `setLocation` in class `Point2D`

    Parameters:
    :   `x` - the new X coordinate of this `Point2D`
    :   `y` - the new Y coordinate of this `Point2D`

    Since:
    :   1.2
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` that represents the value
    of this `Point2D`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Point2D`.

    Since:
    :   1.2