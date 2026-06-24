Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Dimension

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Dimension2D](geom/Dimension2D.md "class in java.awt.geom")

java.awt.Dimension

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `DimensionUIResource`

---

public class Dimension
extends [Dimension2D](geom/Dimension2D.md "class in java.awt.geom")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `Dimension` class encapsulates the width and
height of a component (in integer precision) in a single object.
The class is
associated with certain properties of components. Several methods
defined by the `Component` class and the
`LayoutManager` interface return a
`Dimension` object.

Normally the values of `width`
and `height` are non-negative integers.
The constructors that allow you to create a dimension do
not prevent you from setting a negative value for these properties.
If the value of `width` or `height` is
negative, the behavior of some methods defined by other objects is
undefined.

Since:
:   1.0

See Also:
:   * [`Component`](Component.md "class in java.awt")
    * [`LayoutManager`](LayoutManager.md "interface in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.Dimension)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `height`

  The height dimension; negative values can be used.

  `int`

  `width`

  The width dimension; negative values can be used.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Dimension()`

  Creates an instance of `Dimension` with a width
  of zero and a height of zero.

  `Dimension(int width,
  int height)`

  Constructs a `Dimension` and initializes
  it to the specified width and specified height.

  `Dimension(Dimension d)`

  Creates an instance of `Dimension` whose width
  and height are the same as for the specified dimension.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks whether two dimension objects have equal values.

  `double`

  `getHeight()`

  Returns the height of this `Dimension` in double
  precision.

  `Dimension`

  `getSize()`

  Gets the size of this `Dimension` object.

  `double`

  `getWidth()`

  Returns the width of this `Dimension` in double
  precision.

  `int`

  `hashCode()`

  Returns the hash code for this `Dimension`.

  `void`

  `setSize(double width,
  double height)`

  Sets the size of this `Dimension` object to
  the specified width and height in double precision.

  `void`

  `setSize(int width,
  int height)`

  Sets the size of this `Dimension` object
  to the specified width and height.

  `void`

  `setSize(Dimension d)`

  Sets the size of this `Dimension` object to the specified size.

  `String`

  `toString()`

  Returns a string representation of the values of this
  `Dimension` object's `height` and
  `width` fields.

  ### Methods inherited from class java.awt.geom.[Dimension2D](geom/Dimension2D.md "class in java.awt.geom")

  `clone, setSize`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### width

    public int width

    The width dimension; negative values can be used.

    Since:
    :   1.0

    See Also:
    :   - [`getSize()`](#getSize())
        - [`setSize(double, double)`](#setSize(double,double))
  + ### height

    public int height

    The height dimension; negative values can be used.

    Since:
    :   1.0

    See Also:
    :   - [`getSize()`](#getSize())
        - [`setSize(double, double)`](#setSize(double,double))
* ## Constructor Details

  + ### Dimension

    public Dimension()

    Creates an instance of `Dimension` with a width
    of zero and a height of zero.
  + ### Dimension

    public Dimension([Dimension](Dimension.md "class in java.awt") d)

    Creates an instance of `Dimension` whose width
    and height are the same as for the specified dimension.

    Parameters:
    :   `d` - the specified dimension for the
        `width` and
        `height` values
  + ### Dimension

    public Dimension(int width,
    int height)

    Constructs a `Dimension` and initializes
    it to the specified width and specified height.

    Parameters:
    :   `width` - the specified width
    :   `height` - the specified height
* ## Method Details

  + ### getWidth

    public double getWidth()

    Returns the width of this `Dimension` in double
    precision.

    Specified by:
    :   `getWidth` in class `Dimension2D`

    Returns:
    :   the width of this `Dimension`.

    Since:
    :   1.2
  + ### getHeight

    public double getHeight()

    Returns the height of this `Dimension` in double
    precision.

    Specified by:
    :   `getHeight` in class `Dimension2D`

    Returns:
    :   the height of this `Dimension`.

    Since:
    :   1.2
  + ### setSize

    public void setSize(double width,
    double height)

    Sets the size of this `Dimension` object to
    the specified width and height in double precision.
    Note that if `width` or `height`
    are larger than `Integer.MAX_VALUE`, they will
    be reset to `Integer.MAX_VALUE`.

    Specified by:
    :   `setSize` in class `Dimension2D`

    Parameters:
    :   `width` - the new width for the `Dimension` object
    :   `height` - the new height for the `Dimension` object

    Since:
    :   1.2
  + ### getSize

    public [Dimension](Dimension.md "class in java.awt") getSize()

    Gets the size of this `Dimension` object.
    This method is included for completeness, to parallel the
    `getSize` method defined by `Component`.

    Returns:
    :   the size of this dimension, a new instance of
        `Dimension` with the same width and height

    Since:
    :   1.1

    See Also:
    :   - [`setSize(double, double)`](#setSize(double,double))
        - [`Component.getSize()`](Component.md#getSize())
  + ### setSize

    public void setSize([Dimension](Dimension.md "class in java.awt") d)

    Sets the size of this `Dimension` object to the specified size.
    This method is included for completeness, to parallel the
    `setSize` method defined by `Component`.

    Parameters:
    :   `d` - the new size for this `Dimension` object

    Since:
    :   1.1

    See Also:
    :   - [`getSize()`](#getSize())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
  + ### setSize

    public void setSize(int width,
    int height)

    Sets the size of this `Dimension` object
    to the specified width and height.
    This method is included for completeness, to parallel the
    `setSize` method defined by `Component`.

    Parameters:
    :   `width` - the new width for this `Dimension` object
    :   `height` - the new height for this `Dimension` object

    Since:
    :   1.1

    See Also:
    :   - [`getSize()`](#getSize())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Checks whether two dimension objects have equal values.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code for this `Dimension`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `Dimension`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the values of this
    `Dimension` object's `height` and
    `width` fields. This method is intended to be used only
    for debugging purposes, and the content and format of the returned
    string may vary between implementations. The returned string may be
    empty but may not be `null`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Dimension`
        object