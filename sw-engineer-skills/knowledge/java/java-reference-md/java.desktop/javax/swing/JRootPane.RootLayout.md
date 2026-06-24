Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JRootPane.RootLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JRootPane.RootLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`

Enclosing class:
:   `JRootPane`

---

protected class JRootPane.RootLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](../../java/awt/LayoutManager2.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A custom layout manager that is responsible for the layout of
layeredPane, glassPane, and menuBar.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RootLayout()`

  Constructs a `RootLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  If the layout manager uses a per-component string,
  adds the component `comp` to the layout,
  associating it
  with the string specified by `name`.

  `float`

  `getLayoutAlignmentX(Container target)`

  Returns the alignment along the x axis.

  `float`

  `getLayoutAlignmentY(Container target)`

  Returns the alignment along the y axis.

  `void`

  `invalidateLayout(Container target)`

  Invalidates the layout, indicating that if the layout manager
  has cached information it should be discarded.

  `void`

  `layoutContainer(Container parent)`

  Instructs the layout manager to perform the layout for the specified
  container.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum amount of space the layout can use.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Returns the minimum amount of space the layout needs.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Returns the amount of space the layout would like to have.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from the layout.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RootLayout

    protected RootLayout()

    Constructs a `RootLayout`.
* ## Method Details

  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the amount of space the layout would like to have.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the Container for which this layout manager
        is being used

    Returns:
    :   a Dimension object containing the layout's preferred size

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the minimum amount of space the layout needs.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the Container for which this layout manager
        is being used

    Returns:
    :   a Dimension object containing the layout's minimum size

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### maximumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") maximumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the maximum amount of space the layout can use.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `target` - the Container for which this layout manager
        is being used

    Returns:
    :   a Dimension object containing the layout's maximum size

    See Also:
    :   - [`Component.getMaximumSize()`](../../java/awt/Component.md#getMaximumSize())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") parent)

    Instructs the layout manager to perform the layout for the specified
    container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the Container for which this layout manager
        is being used
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") comp)

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

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp)

    Description copied from interface: `LayoutManager`

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component to be removed
  + ### addLayoutComponent

    public void addLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Description copied from interface: `LayoutManager2`

    Adds the specified component to the layout, using the specified
    constraint object.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - where/how the component is added to the layout.
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](../../java/awt/Container.md "class in java.awt") target)

    Description copied from interface: `LayoutManager2`

    Returns the alignment along the x axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Specified by:
    :   `getLayoutAlignmentX` in interface `LayoutManager2`

    Parameters:
    :   `target` - the target container

    Returns:
    :   the x-axis alignment preference
  + ### getLayoutAlignmentY

    public float getLayoutAlignmentY([Container](../../java/awt/Container.md "class in java.awt") target)

    Description copied from interface: `LayoutManager2`

    Returns the alignment along the y axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Specified by:
    :   `getLayoutAlignmentY` in interface `LayoutManager2`

    Parameters:
    :   `target` - the target container

    Returns:
    :   the y-axis alignment preference
  + ### invalidateLayout

    public void invalidateLayout([Container](../../java/awt/Container.md "class in java.awt") target)

    Description copied from interface: `LayoutManager2`

    Invalidates the layout, indicating that if the layout manager
    has cached information it should be discarded.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `target` - the target container