Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class OverlayLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.OverlayLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`

---

public class OverlayLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](../../java/awt/LayoutManager2.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A layout manager to arrange components over the top
of each other. The requested size of the container
will be the largest requested size of the children,
taking alignment needs into consideration.
The alignment is based upon what is needed to properly
fit the children in the allocation area. The children
will be placed such that their alignment points are all
on top of each other.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OverlayLayout(Container target)`

  Constructs a layout manager that performs overlay
  arrangement of the children.
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

  Adds the specified component to the layout.

  `float`

  `getLayoutAlignmentX(Container target)`

  Returns the alignment along the x axis for the container.

  `float`

  `getLayoutAlignmentY(Container target)`

  Returns the alignment along the y axis for the container.

  `final Container`

  `getTarget()`

  Returns the container that uses this layout manager.

  `void`

  `invalidateLayout(Container target)`

  Indicates a child has changed its layout related information,
  which causes any cached calculations to be flushed.

  `void`

  `layoutContainer(Container target)`

  Called by the AWT when the specified container needs to be laid out.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum dimensions needed to lay out the components
  contained in the specified target container.

  `Dimension`

  `minimumLayoutSize(Container target)`

  Returns the minimum dimensions needed to lay out the components
  contained in the specified target container.

  `Dimension`

  `preferredLayoutSize(Container target)`

  Returns the preferred dimensions for this layout given the components
  in the specified target container.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from the layout.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### OverlayLayout

    [@ConstructorProperties](../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("target")
    public OverlayLayout([Container](../../java/awt/Container.md "class in java.awt") target)

    Constructs a layout manager that performs overlay
    arrangement of the children. The layout manager
    created is dedicated to the given container.

    Parameters:
    :   `target` - the container to do layout against
* ## Method Details

  + ### getTarget

    public final [Container](../../java/awt/Container.md "class in java.awt") getTarget()

    Returns the container that uses this layout manager.

    Returns:
    :   the container that uses this layout manager

    Since:
    :   1.6
  + ### invalidateLayout

    public void invalidateLayout([Container](../../java/awt/Container.md "class in java.awt") target)

    Indicates a child has changed its layout related information,
    which causes any cached calculations to be flushed.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") comp)

    Adds the specified component to the layout. Used by
    this class to know when to invalidate layout.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the name of the component
    :   `comp` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp)

    Removes the specified component from the layout. Used by
    this class to know when to invalidate layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component to remove
  + ### addLayoutComponent

    public void addLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Adds the specified component to the layout, using the specified
    constraint object. Used by this class to know when to invalidate
    layout.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - where/how the component is added to the layout.
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the preferred dimensions for this layout given the components
    in the specified target container. Recomputes the layout if it
    has been invalidated. Factors in the current inset setting returned
    by getInsets().

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the component which needs to be laid out

    Returns:
    :   a Dimension object containing the preferred dimensions

    See Also:
    :   - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the minimum dimensions needed to lay out the components
    contained in the specified target container. Recomputes the layout
    if it has been invalidated, and factors in the current inset setting.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the component which needs to be laid out

    Returns:
    :   a Dimension object containing the minimum dimensions

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
  + ### maximumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") maximumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the maximum dimensions needed to lay out the components
    contained in the specified target container. Recomputes the
    layout if it has been invalidated, and factors in the inset setting
    returned by `getInset`.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `target` - the component that needs to be laid out

    Returns:
    :   a `Dimension` object containing the maximum
        dimensions

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the alignment along the x axis for the container.

    Specified by:
    :   `getLayoutAlignmentX` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container

    Returns:
    :   the alignment >= 0.0f && <= 1.0f
  + ### getLayoutAlignmentY

    public float getLayoutAlignmentY([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the alignment along the y axis for the container.

    Specified by:
    :   `getLayoutAlignmentY` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container

    Returns:
    :   the alignment >= 0.0f && <= 1.0f
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") target)

    Called by the AWT when the specified container needs to be laid out.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `target` - the container to lay out

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        constructor