Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneUI.BasicHorizontalLayoutManager

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicSplitPaneUI.BasicHorizontalLayoutManager

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`

Direct Known Subclasses:
:   `BasicSplitPaneUI.BasicVerticalLayoutManager`

Enclosing class:
:   `BasicSplitPaneUI`

---

public sealed class BasicSplitPaneUI.BasicHorizontalLayoutManager
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](../../../../java/awt/LayoutManager2.md "interface in java.awt")
permits [BasicSplitPaneUI.BasicVerticalLayoutManager](BasicSplitPaneUI.BasicVerticalLayoutManager.md "class in javax.swing.plaf.basic")

LayoutManager for JSplitPanes that have an orientation of
HORIZONTAL\_SPLIT.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Component[]`

  `components`

  The components.

  `protected int[]`

  `sizes`

  The size of components.
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

  `addLayoutComponent(String place,
  Component component)`

  Adds the component at place.

  `protected int`

  `getAvailableSize(Dimension containerSize,
  Insets insets)`

  Returns the available width based on the container size and
  `Insets`.

  `protected int`

  `getInitialLocation(Insets insets)`

  Returns the left inset, unless the `Insets` are null in which case
  0 is returned.

  `float`

  `getLayoutAlignmentX(Container target)`

  Returns the alignment along the x axis.

  `float`

  `getLayoutAlignmentY(Container target)`

  Returns the alignment along the y axis.

  `protected int`

  `getPreferredSizeOfComponent(Component c)`

  Returns the width of the passed in Components preferred size.

  `protected int`

  `getSizeOfComponent(Component c)`

  Returns the width of the passed in component.

  `protected int[]`

  `getSizes()`

  Returns the sizes of the components.

  `void`

  `invalidateLayout(Container c)`

  Does nothing.

  `void`

  `layoutContainer(Container container)`

  Does the actual layout.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum layout size, which is Integer.MAX\_VALUE
  in both directions.

  `Dimension`

  `minimumLayoutSize(Container container)`

  Returns the minimum size needed to contain the children.

  `Dimension`

  `preferredLayoutSize(Container container)`

  Returns the preferred size needed to contain the children.

  `void`

  `removeLayoutComponent(Component component)`

  Removes the specified component from our knowledge.

  `protected void`

  `resetSizeAt(int index)`

  Resets the size of the Component at the passed in location.

  `void`

  `resetToPreferredSizes()`

  Marks the receiver so that the next time this instance is
  laid out it'll ask for the preferred sizes.

  `protected void`

  `setComponentToSize(Component c,
  int size,
  int location,
  Insets insets,
  Dimension containerSize)`

  Sets the width of the component `c` to be `size`, placing its
  x location at `location`, y to the `insets.top` and height
  to the `containerSize.height` less the top and bottom insets.

  `protected void`

  `setSizes(int[] newSizes)`

  Sets the sizes to `newSizes`.

  `protected void`

  `updateComponents()`

  Determines the components.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### sizes

    protected int[] sizes

    The size of components.
  + ### components

    protected [Component](../../../../java/awt/Component.md "class in java.awt")[] components

    The components.
* ## Method Details

  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") container)

    Does the actual layout.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `container` - the container to be laid out
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../../../java.base/java/lang/String.md "class in java.lang") place,
    [Component](../../../../java/awt/Component.md "class in java.awt") component)

    Adds the component at place. Place must be one of
    JSplitPane.LEFT, RIGHT, TOP, BOTTOM, or null (for the
    divider).

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `place` - the string to be associated with the component
    :   `component` - the component to be added
  + ### minimumLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") container)

    Returns the minimum size needed to contain the children.
    The width is the sum of all the children's min widths and
    the height is the largest of the children's minimum heights.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `container` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### preferredLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") container)

    Returns the preferred size needed to contain the children.
    The width is the sum of all the preferred widths of the children and
    the height is the largest preferred height of the children.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `container` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") component)

    Removes the specified component from our knowledge.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `component` - the component to be removed
  + ### addLayoutComponent

    public void addLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Adds the specified component to the layout, using the specified
    constraint object.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - where/how the component is added to the layout.
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](../../../../java/awt/Container.md "class in java.awt") target)

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

    public float getLayoutAlignmentY([Container](../../../../java/awt/Container.md "class in java.awt") target)

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

    public void invalidateLayout([Container](../../../../java/awt/Container.md "class in java.awt") c)

    Does nothing. If the developer really wants to change the
    size of one of the views JSplitPane.resetToPreferredSizes should
    be messaged.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `c` - the target container
  + ### maximumLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") maximumLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") target)

    Returns the maximum layout size, which is Integer.MAX\_VALUE
    in both directions.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `target` - the target container

    Returns:
    :   the maximum size of the container

    See Also:
    :   - [`Component.getMaximumSize()`](../../../../java/awt/Component.md#getMaximumSize())
        - [`LayoutManager`](../../../../java/awt/LayoutManager.md "interface in java.awt")
  + ### resetToPreferredSizes

    public void resetToPreferredSizes()

    Marks the receiver so that the next time this instance is
    laid out it'll ask for the preferred sizes.
  + ### resetSizeAt

    protected void resetSizeAt(int index)

    Resets the size of the Component at the passed in location.

    Parameters:
    :   `index` - the index of a component
  + ### setSizes

    protected void setSizes(int[] newSizes)

    Sets the sizes to `newSizes`.

    Parameters:
    :   `newSizes` - the new sizes
  + ### getSizes

    protected int[] getSizes()

    Returns the sizes of the components.

    Returns:
    :   the sizes of the components
  + ### getPreferredSizeOfComponent

    protected int getPreferredSizeOfComponent([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Returns the width of the passed in Components preferred size.

    Parameters:
    :   `c` - a component

    Returns:
    :   the preferred width of the component
  + ### getSizeOfComponent

    protected int getSizeOfComponent([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Returns the width of the passed in component.

    Parameters:
    :   `c` - a component

    Returns:
    :   the width of the component
  + ### getAvailableSize

    protected int getAvailableSize([Dimension](../../../../java/awt/Dimension.md "class in java.awt") containerSize,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets)

    Returns the available width based on the container size and
    `Insets`.

    Parameters:
    :   `containerSize` - a container size
    :   `insets` - an insets

    Returns:
    :   the available width
  + ### getInitialLocation

    protected int getInitialLocation([Insets](../../../../java/awt/Insets.md "class in java.awt") insets)

    Returns the left inset, unless the `Insets` are null in which case
    0 is returned.

    Parameters:
    :   `insets` - the insets

    Returns:
    :   the left inset
  + ### setComponentToSize

    protected void setComponentToSize([Component](../../../../java/awt/Component.md "class in java.awt") c,
    int size,
    int location,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [Dimension](../../../../java/awt/Dimension.md "class in java.awt") containerSize)

    Sets the width of the component `c` to be `size`, placing its
    x location at `location`, y to the `insets.top` and height
    to the `containerSize.height` less the top and bottom insets.

    Parameters:
    :   `c` - a component
    :   `size` - a new width
    :   `location` - a new X coordinate
    :   `insets` - an insets
    :   `containerSize` - a container size
  + ### updateComponents

    protected void updateComponents()

    Determines the components. This should be called whenever
    a new instance of this is installed into an existing
    SplitPane.