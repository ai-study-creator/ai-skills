Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface LayoutManager2

All Superinterfaces:
:   `LayoutManager`

All Known Implementing Classes:
:   `BasicSplitPaneUI.BasicHorizontalLayoutManager`, `BasicSplitPaneUI.BasicVerticalLayoutManager`, `BorderLayout`, `BoxLayout`, `CardLayout`, `DefaultMenuLayout`, `GridBagLayout`, `GroupLayout`, `JRootPane.RootLayout`, `OverlayLayout`, `SpringLayout`

---

public interface LayoutManager2
extends [LayoutManager](LayoutManager.md "interface in java.awt")

Defines an interface for classes that know how to layout `Container`s
based on a layout constraints object.
This interface extends the `LayoutManager` interface to deal with layouts
explicitly in terms of constraint objects that specify how and where
components should be added to the layout.

This minimal extension to `LayoutManager` is intended for tool
providers who wish to create constraint-based layouts.
It does not yet provide full, general support for custom
constraint-based layout managers.

See Also:
:   * [`LayoutManager`](LayoutManager.md "interface in java.awt")
    * [`Container`](Container.md "class in java.awt")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(Component comp,
  Object constraints)`

  Adds the specified component to the layout, using the specified
  constraint object.

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

  `Dimension`

  `maximumLayoutSize(Container target)`

  Calculates the maximum size dimensions for the specified container,
  given the components it contains.

  ### Methods inherited from interface java.awt.[LayoutManager](LayoutManager.md "interface in java.awt")

  `addLayoutComponent, layoutContainer, minimumLayoutSize, preferredLayoutSize, removeLayoutComponent`

* ## Method Details

  + ### addLayoutComponent

    void addLayoutComponent([Component](Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Adds the specified component to the layout, using the specified
    constraint object.

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - where/how the component is added to the layout.
  + ### maximumLayoutSize

    [Dimension](Dimension.md "class in java.awt") maximumLayoutSize([Container](Container.md "class in java.awt") target)

    Calculates the maximum size dimensions for the specified container,
    given the components it contains.

    Parameters:
    :   `target` - the target container

    Returns:
    :   the maximum size of the container

    See Also:
    :   - [`Component.getMaximumSize()`](Component.md#getMaximumSize())
        - [`LayoutManager`](LayoutManager.md "interface in java.awt")
  + ### getLayoutAlignmentX

    float getLayoutAlignmentX([Container](Container.md "class in java.awt") target)

    Returns the alignment along the x axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Parameters:
    :   `target` - the target container

    Returns:
    :   the x-axis alignment preference
  + ### getLayoutAlignmentY

    float getLayoutAlignmentY([Container](Container.md "class in java.awt") target)

    Returns the alignment along the y axis. This specifies how
    the component would like to be aligned relative to other
    components. The value should be a number between 0 and 1
    where 0 represents alignment along the origin, 1 is aligned
    the furthest away from the origin, 0.5 is centered, etc.

    Parameters:
    :   `target` - the target container

    Returns:
    :   the y-axis alignment preference
  + ### invalidateLayout

    void invalidateLayout([Container](Container.md "class in java.awt") target)

    Invalidates the layout, indicating that if the layout manager
    has cached information it should be discarded.

    Parameters:
    :   `target` - the target container