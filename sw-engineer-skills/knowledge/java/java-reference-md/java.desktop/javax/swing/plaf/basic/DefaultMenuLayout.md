Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class DefaultMenuLayout

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.BoxLayout](../../BoxLayout.md "class in javax.swing")

javax.swing.plaf.basic.DefaultMenuLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`, `UIResource`

---

public class DefaultMenuLayout
extends [BoxLayout](../../BoxLayout.md "class in javax.swing")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf")

The default layout manager for Popup menus and menubars. This
class is an extension of BoxLayout which adds the UIResource tag
so that pluggable L&Fs can distinguish it from user-installed
layout managers on menus.

* ## Field Summary

  ### Fields inherited from class javax.swing.[BoxLayout](../../BoxLayout.md "class in javax.swing")

  `LINE_AXIS, PAGE_AXIS, X_AXIS, Y_AXIS`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultMenuLayout(Container target,
  int axis)`

  Constructs a new instance of `DefaultMenuLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Dimension`

  `preferredLayoutSize(Container target)`

  Returns the preferred dimensions for this layout, given the components
  in the specified target container.

  ### Methods inherited from class javax.swing.[BoxLayout](../../BoxLayout.md "class in javax.swing")

  `addLayoutComponent, addLayoutComponent, getAxis, getLayoutAlignmentX, getLayoutAlignmentY, getTarget, invalidateLayout, layoutContainer, maximumLayoutSize, minimumLayoutSize, removeLayoutComponent`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultMenuLayout

    public DefaultMenuLayout([Container](../../../../java/awt/Container.md "class in java.awt") target,
    int axis)

    Constructs a new instance of `DefaultMenuLayout`.

    Parameters:
    :   `target` - the container that needs to be laid out
    :   `axis` - the axis to lay out components along. Can be one of:
        `BoxLayout.X_AXIS`,
        `BoxLayout.Y_AXIS`,
        `BoxLayout.LINE_AXIS` or
        `BoxLayout.PAGE_AXIS`
* ## Method Details

  + ### preferredLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") target)

    Description copied from class: `BoxLayout`

    Returns the preferred dimensions for this layout, given the components
    in the specified target container.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Overrides:
    :   `preferredLayoutSize` in class `BoxLayout`

    Parameters:
    :   `target` - the container that needs to be laid out

    Returns:
    :   the dimensions >= 0 && <= Integer.MAX\_VALUE

    See Also:
    :   - [`Container`](../../../../java/awt/Container.md "class in java.awt")
        - [`BoxLayout.minimumLayoutSize(java.awt.Container)`](../../BoxLayout.md#minimumLayoutSize(java.awt.Container))
        - [`BoxLayout.maximumLayoutSize(java.awt.Container)`](../../BoxLayout.md#maximumLayoutSize(java.awt.Container))