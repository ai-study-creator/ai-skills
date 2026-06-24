Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class BorderLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.BorderLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`

---

public class BorderLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](LayoutManager2.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A border layout lays out a container, arranging and resizing
its components to fit in five regions:
north, south, east, west, and center.
Each region may contain no more than one component, and
is identified by a corresponding constant:
`NORTH`, `SOUTH`, `EAST`,
`WEST`, and `CENTER`. When adding a
component to a container with a border layout, use one of these
five constants, for example:

```
    Panel p = new Panel();
    p.setLayout(new BorderLayout());
    p.add(new Button("Okay"), BorderLayout.SOUTH);
```

As a convenience, `BorderLayout` interprets the
absence of a string specification the same as the constant
`CENTER`:

```
    Panel p2 = new Panel();
    p2.setLayout(new BorderLayout());
    p2.add(new TextArea());  // Same as p.add(new TextArea(), BorderLayout.CENTER);
```

In addition, `BorderLayout` supports the relative
positioning constants, `PAGE_START`, `PAGE_END`,
`LINE_START`, and `LINE_END`.
In a container whose `ComponentOrientation` is set to
`ComponentOrientation.LEFT_TO_RIGHT`, these constants map to
`NORTH`, `SOUTH`, `WEST`, and
`EAST`, respectively.

For compatibility with previous releases, `BorderLayout`
also includes the relative positioning constants `BEFORE_FIRST_LINE`,
`AFTER_LAST_LINE`, `BEFORE_LINE_BEGINS` and
`AFTER_LINE_ENDS`. These are equivalent to
`PAGE_START`, `PAGE_END`, `LINE_START`
and `LINE_END` respectively. For
consistency with the relative positioning constants used by other
components, the latter constants are preferred.

Mixing both absolute and relative positioning constants can lead to
unpredictable results. If
you use both types, the relative constants will take precedence.
For example, if you add components using both the `NORTH`
and `PAGE_START` constants in a container whose
orientation is `LEFT_TO_RIGHT`, only the
`PAGE_START` will be laid out.

NOTE: Currently,
`BorderLayout` does not support vertical
orientations. The `isVertical` setting on the container's
`ComponentOrientation` is not respected.

The components are laid out according to their
preferred sizes and the constraints of the container's size.
The `NORTH` and `SOUTH` components may
be stretched horizontally; the `EAST` and
`WEST` components may be stretched vertically;
the `CENTER` component may stretch both horizontally
and vertically to fill any space left over.

Here is an example of five buttons in an applet laid out using
the `BorderLayout` layout manager:

![Diagram of an applet
 demonstrating BorderLayout. Each section of the BorderLayout contains a
 Button corresponding to its position in the layout, one of: North, West,
 Center, East, or South.](doc-files/BorderLayout-1.gif)

The code for this applet is as follows:

---

> ```
>  import java.awt.*;
>  import java.applet.Applet;
>
>  public class buttonDir extends Applet {
>    public void init() {
>      setLayout(new BorderLayout());
>      add(new Button("North"), BorderLayout.NORTH);
>      add(new Button("South"), BorderLayout.SOUTH);
>      add(new Button("East"), BorderLayout.EAST);
>      add(new Button("West"), BorderLayout.WEST);
>      add(new Button("Center"), BorderLayout.CENTER);
>    }
>  }
> ```

---

Since:
:   1.0

See Also:
:   * [`Container.add(String, Component)`](Container.md#add(java.lang.String,java.awt.Component))
    * [`ComponentOrientation`](ComponentOrientation.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.BorderLayout)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `AFTER_LAST_LINE`

  Synonym for PAGE\_END.

  `static final String`

  `AFTER_LINE_ENDS`

  Synonym for LINE\_END.

  `static final String`

  `BEFORE_FIRST_LINE`

  Synonym for PAGE\_START.

  `static final String`

  `BEFORE_LINE_BEGINS`

  Synonym for LINE\_START.

  `static final String`

  `CENTER`

  The center layout constraint (middle of container).

  `static final String`

  `EAST`

  The east layout constraint (right side of container).

  `static final String`

  `LINE_END`

  The component goes at the end of the line direction for the
  layout.

  `static final String`

  `LINE_START`

  The component goes at the beginning of the line direction for the
  layout.

  `static final String`

  `NORTH`

  The north layout constraint (top of container).

  `static final String`

  `PAGE_END`

  The component comes after the last line of the layout's content.

  `static final String`

  `PAGE_START`

  The component comes before the first line of the layout's content.

  `static final String`

  `SOUTH`

  The south layout constraint (bottom of container).

  `static final String`

  `WEST`

  The west layout constraint (left side of container).
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BorderLayout()`

  Constructs a new border layout with
  no gaps between components.

  `BorderLayout(int hgap,
  int vgap)`

  Constructs a border layout with the specified gaps
  between components.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(Component comp,
  Object constraints)`

  Adds the specified component to the layout, using the specified
  constraint object.

  `void`

  `addLayoutComponent(String name,
  Component comp)`

  Deprecated.

  replaced by `addLayoutComponent(Component, Object)`.

  `Object`

  `getConstraints(Component comp)`

  Gets the constraints for the specified component

  `int`

  `getHgap()`

  Returns the horizontal gap between components.

  `float`

  `getLayoutAlignmentX(Container parent)`

  Returns the alignment along the x axis.

  `float`

  `getLayoutAlignmentY(Container parent)`

  Returns the alignment along the y axis.

  `Component`

  `getLayoutComponent(Container target,
  Object constraints)`

  Returns the component that corresponds to the given constraint location
  based on the target `Container`'s component orientation.

  `Component`

  `getLayoutComponent(Object constraints)`

  Gets the component that was added using the given constraint

  `int`

  `getVgap()`

  Returns the vertical gap between components.

  `void`

  `invalidateLayout(Container target)`

  Invalidates the layout, indicating that if the layout manager
  has cached information it should be discarded.

  `void`

  `layoutContainer(Container target)`

  Lays out the container argument using this border layout.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum dimensions for this layout given the components
  in the specified target container.

  `Dimension`

  `minimumLayoutSize(Container target)`

  Determines the minimum size of the `target` container
  using this layout manager.

  `Dimension`

  `preferredLayoutSize(Container target)`

  Determines the preferred size of the `target`
  container using this layout manager, based on the components
  in the container.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from this border layout.

  `void`

  `setHgap(int hgap)`

  Sets the horizontal gap between components.

  `void`

  `setVgap(int vgap)`

  Sets the vertical gap between components.

  `String`

  `toString()`

  Returns a string representation of the state of this border layout.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NORTH

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") NORTH

    The north layout constraint (top of container).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.NORTH)
  + ### SOUTH

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SOUTH

    The south layout constraint (bottom of container).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.SOUTH)
  + ### EAST

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EAST

    The east layout constraint (right side of container).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.EAST)
  + ### WEST

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") WEST

    The west layout constraint (left side of container).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.WEST)
  + ### CENTER

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CENTER

    The center layout constraint (middle of container).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.CENTER)
  + ### BEFORE\_FIRST\_LINE

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") BEFORE\_FIRST\_LINE

    Synonym for PAGE\_START. Exists for compatibility with previous
    versions. PAGE\_START is preferred.

    Since:
    :   1.2

    See Also:
    :   - [`PAGE_START`](#PAGE_START)
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.BEFORE_FIRST_LINE)
  + ### AFTER\_LAST\_LINE

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") AFTER\_LAST\_LINE

    Synonym for PAGE\_END. Exists for compatibility with previous
    versions. PAGE\_END is preferred.

    Since:
    :   1.2

    See Also:
    :   - [`PAGE_END`](#PAGE_END)
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.AFTER_LAST_LINE)
  + ### BEFORE\_LINE\_BEGINS

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") BEFORE\_LINE\_BEGINS

    Synonym for LINE\_START. Exists for compatibility with previous
    versions. LINE\_START is preferred.

    Since:
    :   1.2

    See Also:
    :   - [`LINE_START`](#LINE_START)
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.BEFORE_LINE_BEGINS)
  + ### AFTER\_LINE\_ENDS

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") AFTER\_LINE\_ENDS

    Synonym for LINE\_END. Exists for compatibility with previous
    versions. LINE\_END is preferred.

    Since:
    :   1.2

    See Also:
    :   - [`LINE_END`](#LINE_END)
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.AFTER_LINE_ENDS)
  + ### PAGE\_START

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PAGE\_START

    The component comes before the first line of the layout's content.
    For Western, left-to-right and top-to-bottom orientations, this is
    equivalent to NORTH.

    Since:
    :   1.4

    See Also:
    :   - [`Component.getComponentOrientation()`](Component.md#getComponentOrientation())
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.PAGE_START)
  + ### PAGE\_END

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PAGE\_END

    The component comes after the last line of the layout's content.
    For Western, left-to-right and top-to-bottom orientations, this is
    equivalent to SOUTH.

    Since:
    :   1.4

    See Also:
    :   - [`Component.getComponentOrientation()`](Component.md#getComponentOrientation())
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.PAGE_END)
  + ### LINE\_START

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LINE\_START

    The component goes at the beginning of the line direction for the
    layout. For Western, left-to-right and top-to-bottom orientations,
    this is equivalent to WEST.

    Since:
    :   1.4

    See Also:
    :   - [`Component.getComponentOrientation()`](Component.md#getComponentOrientation())
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.LINE_START)
  + ### LINE\_END

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LINE\_END

    The component goes at the end of the line direction for the
    layout. For Western, left-to-right and top-to-bottom orientations,
    this is equivalent to EAST.

    Since:
    :   1.4

    See Also:
    :   - [`Component.getComponentOrientation()`](Component.md#getComponentOrientation())
        - [Constant Field Values](../../../constant-values.md#java.awt.BorderLayout.LINE_END)
* ## Constructor Details

  + ### BorderLayout

    public BorderLayout()

    Constructs a new border layout with
    no gaps between components.
  + ### BorderLayout

    public BorderLayout(int hgap,
    int vgap)

    Constructs a border layout with the specified gaps
    between components.
    The horizontal gap is specified by `hgap`
    and the vertical gap is specified by `vgap`.

    Parameters:
    :   `hgap` - the horizontal gap.
    :   `vgap` - the vertical gap.
* ## Method Details

  + ### getHgap

    public int getHgap()

    Returns the horizontal gap between components.

    Returns:
    :   the horizontal gap between components

    Since:
    :   1.1
  + ### setHgap

    public void setHgap(int hgap)

    Sets the horizontal gap between components.

    Parameters:
    :   `hgap` - the horizontal gap between components

    Since:
    :   1.1
  + ### getVgap

    public int getVgap()

    Returns the vertical gap between components.

    Returns:
    :   the vertical gap between components

    Since:
    :   1.1
  + ### setVgap

    public void setVgap(int vgap)

    Sets the vertical gap between components.

    Parameters:
    :   `vgap` - the vertical gap between components

    Since:
    :   1.1
  + ### addLayoutComponent

    public void addLayoutComponent([Component](Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Adds the specified component to the layout, using the specified
    constraint object. For border layouts, the constraint must be
    one of the following constants: `NORTH`,
    `SOUTH`, `EAST`,
    `WEST`, or `CENTER`.

    Most applications do not call this method directly. This method
    is called when a component is added to a container using the
    `Container.add` method with the same argument types.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component to be added.
    :   `constraints` - an object that specifies how and where
        the component is added to the layout.

    Throws:
    :   `IllegalArgumentException` - if the constraint object is not
        a string, or if it not one of the five specified constants.

    Since:
    :   1.1

    See Also:
    :   - [`Container.add(java.awt.Component, java.lang.Object)`](Container.md#add(java.awt.Component,java.lang.Object))
  + ### addLayoutComponent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](Component.md "class in java.awt") comp)

    Deprecated.

    replaced by `addLayoutComponent(Component, Object)`.

    Description copied from interface: `LayoutManager`

    If the layout manager uses a per-component string,
    adds the component `comp` to the layout,
    associating it
    with the string specified by `name`.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the string to be associated with the component
    :   `comp` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](Component.md "class in java.awt") comp)

    Removes the specified component from this border layout. This
    method is called when a container calls its `remove` or
    `removeAll` methods. Most applications do not call this
    method directly.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component to be removed.

    See Also:
    :   - [`Container.remove(java.awt.Component)`](Container.md#remove(java.awt.Component))
        - [`Container.removeAll()`](Container.md#removeAll())
  + ### getLayoutComponent

    public [Component](Component.md "class in java.awt") getLayoutComponent([Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Gets the component that was added using the given constraint

    Parameters:
    :   `constraints` - the desired constraint, one of `CENTER`,
        `NORTH`, `SOUTH`,
        `WEST`, `EAST`,
        `PAGE_START`, `PAGE_END`,
        `LINE_START`, `LINE_END`

    Returns:
    :   the component at the given location, or `null` if
        the location is empty

    Throws:
    :   `IllegalArgumentException` - if the constraint object is
        not one of the nine specified constants

    Since:
    :   1.5

    See Also:
    :   - [`addLayoutComponent(java.awt.Component, java.lang.Object)`](#addLayoutComponent(java.awt.Component,java.lang.Object))
  + ### getLayoutComponent

    public [Component](Component.md "class in java.awt") getLayoutComponent([Container](Container.md "class in java.awt") target,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Returns the component that corresponds to the given constraint location
    based on the target `Container`'s component orientation.
    Components added with the relative constraints `PAGE_START`,
    `PAGE_END`, `LINE_START`, and `LINE_END`
    take precedence over components added with the explicit constraints
    `NORTH`, `SOUTH`, `WEST`, and `EAST`.
    The `Container`'s component orientation is used to determine the location of components
    added with `LINE_START` and `LINE_END`.

    Parameters:
    :   `target` - the `Container` used to obtain
        the constraint location based on the target
        `Container`'s component orientation.
    :   `constraints` - the desired absolute position, one of `CENTER`,
        `NORTH`, `SOUTH`,
        `EAST`, `WEST`

    Returns:
    :   the component at the given location, or `null` if
        the location is empty

    Throws:
    :   `IllegalArgumentException` - if the constraint object is
        not one of the five specified constants
    :   `NullPointerException` - if the target parameter is null

    Since:
    :   1.5

    See Also:
    :   - [`addLayoutComponent(java.awt.Component, java.lang.Object)`](#addLayoutComponent(java.awt.Component,java.lang.Object))
  + ### getConstraints

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getConstraints([Component](Component.md "class in java.awt") comp)

    Gets the constraints for the specified component

    Parameters:
    :   `comp` - the component to be queried

    Returns:
    :   the constraint for the specified component,
        or null if component is null or is not present
        in this layout

    Since:
    :   1.5

    See Also:
    :   - [`addLayoutComponent(java.awt.Component, java.lang.Object)`](#addLayoutComponent(java.awt.Component,java.lang.Object))
  + ### minimumLayoutSize

    public [Dimension](Dimension.md "class in java.awt") minimumLayoutSize([Container](Container.md "class in java.awt") target)

    Determines the minimum size of the `target` container
    using this layout manager.

    This method is called when a container calls its
    `getMinimumSize` method. Most applications do not call
    this method directly.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the container in which to do the layout.

    Returns:
    :   the minimum dimensions needed to lay out the subcomponents
        of the specified container.

    See Also:
    :   - [`Container`](Container.md "class in java.awt")
        - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
        - [`Container.getMinimumSize()`](Container.md#getMinimumSize())
  + ### preferredLayoutSize

    public [Dimension](Dimension.md "class in java.awt") preferredLayoutSize([Container](Container.md "class in java.awt") target)

    Determines the preferred size of the `target`
    container using this layout manager, based on the components
    in the container.

    Most applications do not call this method directly. This method
    is called when a container calls its `getPreferredSize`
    method.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the container in which to do the layout.

    Returns:
    :   the preferred dimensions to lay out the subcomponents
        of the specified container.

    See Also:
    :   - [`Container`](Container.md "class in java.awt")
        - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
        - [`Container.getPreferredSize()`](Container.md#getPreferredSize())
  + ### maximumLayoutSize

    public [Dimension](Dimension.md "class in java.awt") maximumLayoutSize([Container](Container.md "class in java.awt") target)

    Returns the maximum dimensions for this layout given the components
    in the specified target container.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `target` - the component which needs to be laid out

    Returns:
    :   the maximum size of the container

    See Also:
    :   - [`Container`](Container.md "class in java.awt")
        - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
        - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](Container.md "class in java.awt") parent)

    Returns the alignment along the x axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Specified by:
    :   `getLayoutAlignmentX` in interface `LayoutManager2`

    Parameters:
    :   `parent` - the target container

    Returns:
    :   the x-axis alignment preference
  + ### getLayoutAlignmentY

    public float getLayoutAlignmentY([Container](Container.md "class in java.awt") parent)

    Returns the alignment along the y axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Specified by:
    :   `getLayoutAlignmentY` in interface `LayoutManager2`

    Parameters:
    :   `parent` - the target container

    Returns:
    :   the y-axis alignment preference
  + ### invalidateLayout

    public void invalidateLayout([Container](Container.md "class in java.awt") target)

    Invalidates the layout, indicating that if the layout manager
    has cached information it should be discarded.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `target` - the target container
  + ### layoutContainer

    public void layoutContainer([Container](Container.md "class in java.awt") target)

    Lays out the container argument using this border layout.

    This method actually reshapes the components in the specified
    container in order to satisfy the constraints of this
    `BorderLayout` object. The `NORTH`
    and `SOUTH` components, if any, are placed at
    the top and bottom of the container, respectively. The
    `WEST` and `EAST` components are
    then placed on the left and right, respectively. Finally,
    the `CENTER` object is placed in any remaining
    space in the middle.

    Most applications do not call this method directly. This method
    is called when a container calls its `doLayout` method.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `target` - the container in which to do the layout.

    See Also:
    :   - [`Container`](Container.md "class in java.awt")
        - [`Container.doLayout()`](Container.md#doLayout())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the state of this border layout.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this border layout.