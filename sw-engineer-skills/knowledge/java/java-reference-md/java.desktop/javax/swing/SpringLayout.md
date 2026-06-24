Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SpringLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.SpringLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`

---

public class SpringLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](../../java/awt/LayoutManager2.md "interface in java.awt")

A `SpringLayout` lays out the children of its associated container
according to a set of constraints.
See [How to Use SpringLayout](https://docs.oracle.com/javase/tutorial/uiswing/layout/spring.html)
in *The Java Tutorial* for examples of using
`SpringLayout`.

Each constraint,
represented by a `Spring` object,
controls the vertical or horizontal distance
between two component edges.
The edges can belong to
any child of the container,
or to the container itself.
For example,
the allowable width of a component
can be expressed using a constraint
that controls the distance between the west (left) and east (right)
edges of the component.
The allowable *y* coordinates for a component
can be expressed by constraining the distance between
the north (top) edge of the component
and the north edge of its container.

Every child of a `SpringLayout`-controlled container,
as well as the container itself,
has exactly one set of constraints
associated with it.
These constraints are represented by
a `SpringLayout.Constraints` object.
By default,
`SpringLayout` creates constraints
that make their associated component
have the minimum, preferred, and maximum sizes
returned by the component's
[`Component.getMinimumSize()`](../../java/awt/Component.md#getMinimumSize()),
[`Component.getPreferredSize()`](../../java/awt/Component.md#getPreferredSize()), and
[`Component.getMaximumSize()`](../../java/awt/Component.md#getMaximumSize())
methods. The *x* and *y* positions are initially not
constrained, so that until you constrain them the `Component`
will be positioned at 0,0 relative to the `Insets` of the
parent `Container`.

You can change
a component's constraints in several ways.
You can
use one of the
[`putConstraint`](#putConstraint(java.lang.String,java.awt.Component,int,java.lang.String,java.awt.Component))
methods
to establish a spring
linking the edges of two components within the same container.
Or you can get the appropriate `SpringLayout.Constraints`
object using
[`getConstraints`](#getConstraints(java.awt.Component))
and then modify one or more of its springs.
Or you can get the spring for a particular edge of a component
using [`getConstraint`](#getConstraint(java.lang.String,java.awt.Component)),
and modify it.
You can also associate
your own `SpringLayout.Constraints` object
with a component by specifying the constraints object
when you add the component to its container
(using
[`Container.add(Component, Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))).

The `Spring` object representing each constraint
has a minimum, preferred, maximum, and current value.
The current value of the spring
is somewhere between the minimum and maximum values,
according to the formula given in the
[`Spring.sum(javax.swing.Spring, javax.swing.Spring)`](Spring.md#sum(javax.swing.Spring,javax.swing.Spring)) method description.
When the minimum, preferred, and maximum values are the same,
the current value is always equal to them;
this inflexible spring is called a *strut*.
You can create struts using the factory method
[`Spring.constant(int)`](Spring.md#constant(int)).
The `Spring` class also provides factory methods
for creating other kinds of springs,
including springs that depend on other springs.

In a `SpringLayout`, the position of each edge is dependent on
the position of just one other edge. If a constraint is subsequently added
to create a new binding for an edge, the previous binding is discarded
and the edge remains dependent on a single edge.
Springs should only be attached
between edges of the container and its immediate children; the behavior
of the `SpringLayout` when presented with constraints linking
the edges of components from different containers (either internal or
external) is undefined.

## SpringLayout vs. Other Layout Managers

> ---
>
> **Note:**
> Unlike many layout managers,
> `SpringLayout` doesn't automatically set the location of
> the components it manages.
> If you hand-code a GUI that uses `SpringLayout`,
> remember to initialize component locations by constraining the west/east
> and north/south locations.
>
> Depending on the constraints you use,
> you may also need to set the size of the container explicitly.
>
> ---

Despite the simplicity of `SpringLayout`,
it can emulate the behavior of most other layout managers.
For some features,
such as the line breaking provided by `FlowLayout`,
you'll need to
create a special-purpose subclass of the `Spring` class.

`SpringLayout` also provides a way to solve
many of the difficult layout
problems that cannot be solved by nesting combinations
of `Box`es. That said, `SpringLayout` honors the
`LayoutManager2` contract correctly and so can be nested with
other layout managers -- a technique that can be preferable to
creating the constraints implied by the other layout managers.

The asymptotic complexity of the layout operation of a `SpringLayout`
is linear in the number of constraints (and/or components).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.4

See Also:
:   * [`Spring`](Spring.md "class in javax.swing")
    * [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `SpringLayout.Constraints`

  A `Constraints` object holds the
  constraints that govern the way a component's size and position
  change in a container controlled by a `SpringLayout`.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `BASELINE`

  Specifies the baseline of a component.

  `static final String`

  `EAST`

  Specifies the right edge of a component's bounding rectangle.

  `static final String`

  `HEIGHT`

  Specifies the height of a component's bounding rectangle.

  `static final String`

  `HORIZONTAL_CENTER`

  Specifies the horizontal center of a component's bounding rectangle.

  `static final String`

  `NORTH`

  Specifies the top edge of a component's bounding rectangle.

  `static final String`

  `SOUTH`

  Specifies the bottom edge of a component's bounding rectangle.

  `static final String`

  `VERTICAL_CENTER`

  Specifies the vertical center of a component's bounding rectangle.

  `static final String`

  `WEST`

  Specifies the left edge of a component's bounding rectangle.

  `static final String`

  `WIDTH`

  Specifies the width of a component's bounding rectangle.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SpringLayout()`

  Constructs a new `SpringLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(Component component,
  Object constraints)`

  If `constraints` is an instance of
  `SpringLayout.Constraints`,
  associates the constraints with the specified component.

  `void`

  `addLayoutComponent(String name,
  Component c)`

  Has no effect,
  since this layout manager does not
  use a per-component string.

  `Spring`

  `getConstraint(String edgeName,
  Component c)`

  Returns the spring controlling the distance between
  the specified edge of
  the component and the top or left edge of its parent.

  `SpringLayout.Constraints`

  `getConstraints(Component c)`

  Returns the constraints for the specified component.

  `float`

  `getLayoutAlignmentX(Container p)`

  Returns 0.5f (centered).

  `float`

  `getLayoutAlignmentY(Container p)`

  Returns 0.5f (centered).

  `void`

  `invalidateLayout(Container p)`

  Invalidates the layout, indicating that if the layout manager
  has cached information it should be discarded.

  `void`

  `layoutContainer(Container parent)`

  Lays out the specified container.

  `Dimension`

  `maximumLayoutSize(Container parent)`

  Calculates the maximum size dimensions for the specified container,
  given the components it contains.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Calculates the minimum size dimensions for the specified
  container, given the components it contains.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Calculates the preferred size dimensions for the specified
  container, given the components it contains.

  `void`

  `putConstraint(String e1,
  Component c1,
  int pad,
  String e2,
  Component c2)`

  Links edge `e1` of component `c1` to
  edge `e2` of component `c2`,
  with a fixed distance between the edges.

  `void`

  `putConstraint(String e1,
  Component c1,
  Spring s,
  String e2,
  Component c2)`

  Links edge `e1` of component `c1` to
  edge `e2` of component `c2`.

  `void`

  `removeLayoutComponent(Component c)`

  Removes the constraints associated with the specified component.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NORTH

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") NORTH

    Specifies the top edge of a component's bounding rectangle.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.NORTH)
  + ### SOUTH

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SOUTH

    Specifies the bottom edge of a component's bounding rectangle.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.SOUTH)
  + ### EAST

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EAST

    Specifies the right edge of a component's bounding rectangle.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.EAST)
  + ### WEST

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") WEST

    Specifies the left edge of a component's bounding rectangle.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.WEST)
  + ### HORIZONTAL\_CENTER

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") HORIZONTAL\_CENTER

    Specifies the horizontal center of a component's bounding rectangle.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.HORIZONTAL_CENTER)
  + ### VERTICAL\_CENTER

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") VERTICAL\_CENTER

    Specifies the vertical center of a component's bounding rectangle.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.VERTICAL_CENTER)
  + ### BASELINE

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") BASELINE

    Specifies the baseline of a component.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.BASELINE)
  + ### WIDTH

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") WIDTH

    Specifies the width of a component's bounding rectangle.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.WIDTH)
  + ### HEIGHT

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") HEIGHT

    Specifies the height of a component's bounding rectangle.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.SpringLayout.HEIGHT)
* ## Constructor Details

  + ### SpringLayout

    public SpringLayout()

    Constructs a new `SpringLayout`.
* ## Method Details

  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Has no effect,
    since this layout manager does not
    use a per-component string.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the string to be associated with the component
    :   `c` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") c)

    Removes the constraints associated with the specified component.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `c` - the component being removed from the container
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Calculates the minimum size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Calculates the preferred size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### maximumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") maximumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager2`

    Calculates the maximum size dimensions for the specified container,
    given the components it contains.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `parent` - the target container

    Returns:
    :   the maximum size of the container

    See Also:
    :   - [`Component.getMaximumSize()`](../../java/awt/Component.md#getMaximumSize())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
  + ### addLayoutComponent

    public void addLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") component,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    If `constraints` is an instance of
    `SpringLayout.Constraints`,
    associates the constraints with the specified component.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `component` - the component being added
    :   `constraints` - the component's constraints

    See Also:
    :   - [`SpringLayout.Constraints`](SpringLayout.Constraints.md "class in javax.swing")
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](../../java/awt/Container.md "class in java.awt") p)

    Returns 0.5f (centered).

    Specified by:
    :   `getLayoutAlignmentX` in interface `LayoutManager2`

    Parameters:
    :   `p` - the target container

    Returns:
    :   the x-axis alignment preference
  + ### getLayoutAlignmentY

    public float getLayoutAlignmentY([Container](../../java/awt/Container.md "class in java.awt") p)

    Returns 0.5f (centered).

    Specified by:
    :   `getLayoutAlignmentY` in interface `LayoutManager2`

    Parameters:
    :   `p` - the target container

    Returns:
    :   the y-axis alignment preference
  + ### invalidateLayout

    public void invalidateLayout([Container](../../java/awt/Container.md "class in java.awt") p)

    Description copied from interface: `LayoutManager2`

    Invalidates the layout, indicating that if the layout manager
    has cached information it should be discarded.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `p` - the target container
  + ### putConstraint

    public void putConstraint([String](../../../java.base/java/lang/String.md "class in java.lang") e1,
    [Component](../../java/awt/Component.md "class in java.awt") c1,
    int pad,
    [String](../../../java.base/java/lang/String.md "class in java.lang") e2,
    [Component](../../java/awt/Component.md "class in java.awt") c2)

    Links edge `e1` of component `c1` to
    edge `e2` of component `c2`,
    with a fixed distance between the edges. This
    constraint will cause the assignment

    ```
         value(e1, c1) = value(e2, c2) + pad
    ```

    to take place during all subsequent layout operations.

    Parameters:
    :   `e1` - the edge of the dependent
    :   `c1` - the component of the dependent
    :   `pad` - the fixed distance between dependent and anchor
    :   `e2` - the edge of the anchor
    :   `c2` - the component of the anchor

    See Also:
    :   - [`putConstraint(String, Component, Spring, String, Component)`](#putConstraint(java.lang.String,java.awt.Component,javax.swing.Spring,java.lang.String,java.awt.Component))
  + ### putConstraint

    public void putConstraint([String](../../../java.base/java/lang/String.md "class in java.lang") e1,
    [Component](../../java/awt/Component.md "class in java.awt") c1,
    [Spring](Spring.md "class in javax.swing") s,
    [String](../../../java.base/java/lang/String.md "class in java.lang") e2,
    [Component](../../java/awt/Component.md "class in java.awt") c2)

    Links edge `e1` of component `c1` to
    edge `e2` of component `c2`. As edge
    `(e2, c2)` changes value, edge `(e1, c1)` will
    be calculated by taking the (spring) sum of `(e2, c2)`
    and `s`.
    Each edge must have one of the following values:
    `SpringLayout.NORTH`,
    `SpringLayout.SOUTH`,
    `SpringLayout.EAST`,
    `SpringLayout.WEST`,
    `SpringLayout.VERTICAL_CENTER`,
    `SpringLayout.HORIZONTAL_CENTER` or
    `SpringLayout.BASELINE`.

    Parameters:
    :   `e1` - the edge of the dependent
    :   `c1` - the component of the dependent
    :   `s` - the spring linking dependent and anchor
    :   `e2` - the edge of the anchor
    :   `c2` - the component of the anchor

    See Also:
    :   - [`putConstraint(String, Component, int, String, Component)`](#putConstraint(java.lang.String,java.awt.Component,int,java.lang.String,java.awt.Component))
        - [`NORTH`](#NORTH)
        - [`SOUTH`](#SOUTH)
        - [`EAST`](#EAST)
        - [`WEST`](#WEST)
        - [`VERTICAL_CENTER`](#VERTICAL_CENTER)
        - [`HORIZONTAL_CENTER`](#HORIZONTAL_CENTER)
        - [`BASELINE`](#BASELINE)
  + ### getConstraints

    public [SpringLayout.Constraints](SpringLayout.Constraints.md "class in javax.swing") getConstraints([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the constraints for the specified component.
    Note that,
    unlike the `GridBagLayout`
    `getConstraints` method,
    this method does not clone constraints.
    If no constraints
    have been associated with this component,
    this method
    returns a default constraints object positioned at
    0,0 relative to the parent's Insets and its width/height
    constrained to the minimum, maximum, and preferred sizes of the
    component. The size characteristics
    are not frozen at the time this method is called;
    instead this method returns a constraints object
    whose characteristics track the characteristics
    of the component as they change.

    Parameters:
    :   `c` - the component whose constraints will be returned

    Returns:
    :   the constraints for the specified component
  + ### getConstraint

    public [Spring](Spring.md "class in javax.swing") getConstraint([String](../../../java.base/java/lang/String.md "class in java.lang") edgeName,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the spring controlling the distance between
    the specified edge of
    the component and the top or left edge of its parent. This
    method, instead of returning the current binding for the
    edge, returns a proxy that tracks the characteristics
    of the edge even if the edge is subsequently rebound.
    Proxies are intended to be used in builder environments
    where it is useful to allow the user to define the
    constraints for a layout in any order. Proxies do, however,
    provide the means to create cyclic dependencies amongst
    the constraints of a layout. Such cycles are detected
    internally by `SpringLayout` so that
    the layout operation always terminates.

    Parameters:
    :   `edgeName` - must be one of
        `SpringLayout.NORTH`,
        `SpringLayout.SOUTH`,
        `SpringLayout.EAST`,
        `SpringLayout.WEST`,
        `SpringLayout.VERTICAL_CENTER`,
        `SpringLayout.HORIZONTAL_CENTER` or
        `SpringLayout.BASELINE`
    :   `c` - the component whose edge spring is desired

    Returns:
    :   a proxy for the spring controlling the distance between the
        specified edge and the top or left edge of its parent

    See Also:
    :   - [`NORTH`](#NORTH)
        - [`SOUTH`](#SOUTH)
        - [`EAST`](#EAST)
        - [`WEST`](#WEST)
        - [`VERTICAL_CENTER`](#VERTICAL_CENTER)
        - [`HORIZONTAL_CENTER`](#HORIZONTAL_CENTER)
        - [`BASELINE`](#BASELINE)
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out