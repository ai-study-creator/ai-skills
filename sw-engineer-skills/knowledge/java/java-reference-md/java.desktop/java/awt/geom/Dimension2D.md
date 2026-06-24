Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class Dimension2D

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.geom.Dimension2D

All Implemented Interfaces:
:   `Cloneable`

Direct Known Subclasses:
:   `Dimension`

---

public abstract class Dimension2D
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `Dimension2D` class is to encapsulate a width
and a height dimension.

This class is only the abstract superclass for all objects that
store a 2D dimension.
The actual storage representation of the sizes is left to
the subclass.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Dimension2D()`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a new object of the same class as this object.

  `abstract double`

  `getHeight()`

  Returns the height of this `Dimension` in double
  precision.

  `abstract double`

  `getWidth()`

  Returns the width of this `Dimension` in double
  precision.

  `abstract void`

  `setSize(double width,
  double height)`

  Sets the size of this `Dimension` object to the
  specified width and height.

  `void`

  `setSize(Dimension2D d)`

  Sets the size of this `Dimension2D` object to
  match the specified size.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Dimension2D

    protected Dimension2D()

    This is an abstract class that cannot be instantiated directly.
    Type-specific implementation subclasses are available for
    instantiation and provide a number of formats for storing
    the information necessary to satisfy the various accessor
    methods below.

    Since:
    :   1.2

    See Also:
    :   - [`Dimension`](../Dimension.md "class in java.awt")
* ## Method Details

  + ### getWidth

    public abstract double getWidth()

    Returns the width of this `Dimension` in double
    precision.

    Returns:
    :   the width of this `Dimension`.

    Since:
    :   1.2
  + ### getHeight

    public abstract double getHeight()

    Returns the height of this `Dimension` in double
    precision.

    Returns:
    :   the height of this `Dimension`.

    Since:
    :   1.2
  + ### setSize

    public abstract void setSize(double width,
    double height)

    Sets the size of this `Dimension` object to the
    specified width and height.
    This method is included for completeness, to parallel the
    [`getSize`](../Component.md#getSize()) method of
    [`Component`](../Component.md "class in java.awt").

    Parameters:
    :   `width` - the new width for the `Dimension`
        object
    :   `height` - the new height for the `Dimension`
        object

    Since:
    :   1.2
  + ### setSize

    public void setSize([Dimension2D](Dimension2D.md "class in java.awt.geom") d)

    Sets the size of this `Dimension2D` object to
    match the specified size.
    This method is included for completeness, to parallel the
    `getSize` method of `Component`.

    Parameters:
    :   `d` - the new size for the `Dimension2D`
        object

    Since:
    :   1.2
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a new object of the same class as this object.

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