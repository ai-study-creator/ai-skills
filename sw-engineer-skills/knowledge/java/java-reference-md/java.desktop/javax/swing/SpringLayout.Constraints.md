Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SpringLayout.Constraints

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.SpringLayout.Constraints

Enclosing class:
:   `SpringLayout`

---

public static class SpringLayout.Constraints
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A `Constraints` object holds the
constraints that govern the way a component's size and position
change in a container controlled by a `SpringLayout`.
A `Constraints` object is
like a `Rectangle`, in that it
has `x`, `y`,
`width`, and `height` properties.
In the `Constraints` object, however,
these properties have
`Spring` values instead of integers.
In addition,
a `Constraints` object
can be manipulated as four edges
-- north, south, east, and west --
using the `constraint` property.

The following formulas are always true
for a `Constraints` object (here WEST and `x` are synonyms, as are and NORTH and `y`):

```
               EAST = WEST + WIDTH
              SOUTH = NORTH + HEIGHT
  HORIZONTAL_CENTER = WEST + WIDTH/2
    VERTICAL_CENTER = NORTH + HEIGHT/2
  ABSOLUTE_BASELINE = NORTH + RELATIVE_BASELINE*
```

For example, if you have specified the WIDTH and WEST (X) location
the EAST is calculated as WEST + WIDTH. If you instead specified
the WIDTH and EAST locations the WEST (X) location is then calculated
as EAST - WIDTH.

[RELATIVE\_BASELINE is a private constraint that is set automatically when
the SpringLayout.Constraints(Component) constructor is called or when
a constraints object is registered with a SpringLayout object.]

**Note**: In this document,
operators represent methods
in the `Spring` class.
For example, "a + b" is equal to
`Spring.sum(a, b)`,
and "a - b" is equal to
`Spring.sum(a, Spring.minus(b))`.
See the
[`Spring API documentation`](Spring.md "class in javax.swing")
for further details
of spring arithmetic.

Because a `Constraints` object's properties --
representing its edges, size, and location -- can all be set
independently and yet are interrelated,
a `Constraints` object can become *over-constrained*.
For example, if the `WEST`, `WIDTH` and
`EAST` edges are all set, steps must be taken to ensure that
the first of the formulas above holds. To do this, the
`Constraints`
object throws away the *least recently set*
constraint so as to make the formulas hold.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Constraints()`

  Creates an empty `Constraints` object.

  `Constraints(Component c)`

  Creates a `Constraints` object with
  suitable `x`, `y`, `width` and
  `height` springs for component, `c`.

  `Constraints(Spring x,
  Spring y)`

  Creates a `Constraints` object with the
  specified values for its
  `x` and `y` properties.

  `Constraints(Spring x,
  Spring y,
  Spring width,
  Spring height)`

  Creates a `Constraints` object with the
  specified values for its
  `x`, `y`, `width`,
  and `height` properties.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Spring`

  `getConstraint(String edgeName)`

  Returns the value of the specified edge, which may be
  a derived value, or even `null`.

  `Spring`

  `getHeight()`

  Returns the value of the `height` property.

  `Spring`

  `getWidth()`

  Returns the value of the `width` property.

  `Spring`

  `getX()`

  Returns the value of the `x` property.

  `Spring`

  `getY()`

  Returns the value of the `y` property.

  `void`

  `setConstraint(String edgeName,
  Spring s)`

  Sets the spring controlling the specified edge.

  `void`

  `setHeight(Spring height)`

  Sets the `height` property,
  which controls the height of a component.

  `void`

  `setWidth(Spring width)`

  Sets the `width` property,
  which controls the width of a component.

  `void`

  `setX(Spring x)`

  Sets the `x` property,
  which controls the `x` value
  of a component's location.

  `void`

  `setY(Spring y)`

  Sets the `y` property,
  which controls the `y` value
  of a component's location.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Constraints

    public Constraints()

    Creates an empty `Constraints` object.
  + ### Constraints

    public Constraints([Spring](Spring.md "class in javax.swing") x,
    [Spring](Spring.md "class in javax.swing") y)

    Creates a `Constraints` object with the
    specified values for its
    `x` and `y` properties.
    The `height` and `width` springs
    have `null` values.

    Parameters:
    :   `x` - the spring controlling the component's *x* value
    :   `y` - the spring controlling the component's *y* value
  + ### Constraints

    public Constraints([Spring](Spring.md "class in javax.swing") x,
    [Spring](Spring.md "class in javax.swing") y,
    [Spring](Spring.md "class in javax.swing") width,
    [Spring](Spring.md "class in javax.swing") height)

    Creates a `Constraints` object with the
    specified values for its
    `x`, `y`, `width`,
    and `height` properties.
    Note: If the `SpringLayout` class
    encounters `null` values in the
    `Constraints` object of a given component,
    it replaces them with suitable defaults.

    Parameters:
    :   `x` - the spring value for the `x` property
    :   `y` - the spring value for the `y` property
    :   `width` - the spring value for the `width` property
    :   `height` - the spring value for the `height` property
  + ### Constraints

    public Constraints([Component](../../java/awt/Component.md "class in java.awt") c)

    Creates a `Constraints` object with
    suitable `x`, `y`, `width` and
    `height` springs for component, `c`.
    The `x` and `y` springs are constant
    springs initialised with the component's location at
    the time this method is called. The `width` and
    `height` springs are special springs, created by
    the `Spring.width()` and `Spring.height()`
    methods, which track the size characteristics of the component
    when they change.

    Parameters:
    :   `c` - the component whose characteristics will be reflected by this Constraints object

    Throws:
    :   `NullPointerException` - if `c` is null.

    Since:
    :   1.5
* ## Method Details

  + ### setX

    public void setX([Spring](Spring.md "class in javax.swing") x)

    Sets the `x` property,
    which controls the `x` value
    of a component's location.

    Parameters:
    :   `x` - the spring controlling the `x` value
        of a component's location

    See Also:
    :   - [`getX()`](#getX())
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getX

    public [Spring](Spring.md "class in javax.swing") getX()

    Returns the value of the `x` property.

    Returns:
    :   the spring controlling the `x` value
        of a component's location

    See Also:
    :   - [`setX(javax.swing.Spring)`](#setX(javax.swing.Spring))
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### setY

    public void setY([Spring](Spring.md "class in javax.swing") y)

    Sets the `y` property,
    which controls the `y` value
    of a component's location.

    Parameters:
    :   `y` - the spring controlling the `y` value
        of a component's location

    See Also:
    :   - [`getY()`](#getY())
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getY

    public [Spring](Spring.md "class in javax.swing") getY()

    Returns the value of the `y` property.

    Returns:
    :   the spring controlling the `y` value
        of a component's location

    See Also:
    :   - [`setY(javax.swing.Spring)`](#setY(javax.swing.Spring))
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### setWidth

    public void setWidth([Spring](Spring.md "class in javax.swing") width)

    Sets the `width` property,
    which controls the width of a component.

    Parameters:
    :   `width` - the spring controlling the width of this
        `Constraints` object

    See Also:
    :   - [`getWidth()`](#getWidth())
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getWidth

    public [Spring](Spring.md "class in javax.swing") getWidth()

    Returns the value of the `width` property.

    Returns:
    :   the spring controlling the width of a component

    See Also:
    :   - [`setWidth(javax.swing.Spring)`](#setWidth(javax.swing.Spring))
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### setHeight

    public void setHeight([Spring](Spring.md "class in javax.swing") height)

    Sets the `height` property,
    which controls the height of a component.

    Parameters:
    :   `height` - the spring controlling the height of this `Constraints`
        object

    See Also:
    :   - [`getHeight()`](#getHeight())
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getHeight

    public [Spring](Spring.md "class in javax.swing") getHeight()

    Returns the value of the `height` property.

    Returns:
    :   the spring controlling the height of a component

    See Also:
    :   - [`setHeight(javax.swing.Spring)`](#setHeight(javax.swing.Spring))
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### setConstraint

    public void setConstraint([String](../../../java.base/java/lang/String.md "class in java.lang") edgeName,
    [Spring](Spring.md "class in javax.swing") s)

    Sets the spring controlling the specified edge.
    The edge must have one of the following values:
    `SpringLayout.NORTH`,
    `SpringLayout.SOUTH`,
    `SpringLayout.EAST`,
    `SpringLayout.WEST`,
    `SpringLayout.HORIZONTAL_CENTER`,
    `SpringLayout.VERTICAL_CENTER`,
    `SpringLayout.BASELINE`,
    `SpringLayout.WIDTH` or
    `SpringLayout.HEIGHT`.
    For any other `String` value passed as the edge,
    no action is taken. For a `null` edge, a
    `NullPointerException` is thrown.

    **Note:** This method can affect `x` and `y` values
    previously set for this `Constraints`.

    Parameters:
    :   `edgeName` - the edge to be set
    :   `s` - the spring controlling the specified edge

    Throws:
    :   `NullPointerException` - if `edgeName` is `null`

    See Also:
    :   - [`getConstraint(java.lang.String)`](#getConstraint(java.lang.String))
        - [`SpringLayout.NORTH`](SpringLayout.md#NORTH)
        - [`SpringLayout.SOUTH`](SpringLayout.md#SOUTH)
        - [`SpringLayout.EAST`](SpringLayout.md#EAST)
        - [`SpringLayout.WEST`](SpringLayout.md#WEST)
        - [`SpringLayout.HORIZONTAL_CENTER`](SpringLayout.md#HORIZONTAL_CENTER)
        - [`SpringLayout.VERTICAL_CENTER`](SpringLayout.md#VERTICAL_CENTER)
        - [`SpringLayout.BASELINE`](SpringLayout.md#BASELINE)
        - [`SpringLayout.WIDTH`](SpringLayout.md#WIDTH)
        - [`SpringLayout.HEIGHT`](SpringLayout.md#HEIGHT)
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getConstraint

    public [Spring](Spring.md "class in javax.swing") getConstraint([String](../../../java.base/java/lang/String.md "class in java.lang") edgeName)

    Returns the value of the specified edge, which may be
    a derived value, or even `null`.
    The edge must have one of the following values:
    `SpringLayout.NORTH`,
    `SpringLayout.SOUTH`,
    `SpringLayout.EAST`,
    `SpringLayout.WEST`,
    `SpringLayout.HORIZONTAL_CENTER`,
    `SpringLayout.VERTICAL_CENTER`,
    `SpringLayout.BASELINE`,
    `SpringLayout.WIDTH` or
    `SpringLayout.HEIGHT`.
    For any other `String` value passed as the edge,
    `null` will be returned. Throws
    `NullPointerException` for a `null` edge.

    Parameters:
    :   `edgeName` - the edge whose value
        is to be returned

    Returns:
    :   the spring controlling the specified edge, may be `null`

    Throws:
    :   `NullPointerException` - if `edgeName` is `null`

    See Also:
    :   - [`setConstraint(java.lang.String, javax.swing.Spring)`](#setConstraint(java.lang.String,javax.swing.Spring))
        - [`SpringLayout.NORTH`](SpringLayout.md#NORTH)
        - [`SpringLayout.SOUTH`](SpringLayout.md#SOUTH)
        - [`SpringLayout.EAST`](SpringLayout.md#EAST)
        - [`SpringLayout.WEST`](SpringLayout.md#WEST)
        - [`SpringLayout.HORIZONTAL_CENTER`](SpringLayout.md#HORIZONTAL_CENTER)
        - [`SpringLayout.VERTICAL_CENTER`](SpringLayout.md#VERTICAL_CENTER)
        - [`SpringLayout.BASELINE`](SpringLayout.md#BASELINE)
        - [`SpringLayout.WIDTH`](SpringLayout.md#WIDTH)
        - [`SpringLayout.HEIGHT`](SpringLayout.md#HEIGHT)
        - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")