Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ViewportLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ViewportLayout

All Implemented Interfaces:
:   `LayoutManager`, `Serializable`

---

public class ViewportLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The default layout manager for `JViewport`.
`ViewportLayout` defines
a policy for layout that should be useful for most applications.
The viewport makes its view the same size as the viewport,
however it will not make the view smaller than its minimum size.
As the viewport grows the view is kept bottom justified until
the entire view is visible, subsequently the view is kept top
justified.

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

  `ViewportLayout()`

  Constructs a `ViewportLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String name,
  Component c)`

  Adds the specified component to the layout.

  `void`

  `layoutContainer(Container parent)`

  Called by the AWT when the specified container needs to be laid out.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Returns the minimum dimensions needed to layout the components
  contained in the specified target container.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Returns the preferred dimensions for this layout given the components
  in the specified target container.

  `void`

  `removeLayoutComponent(Component c)`

  Removes the specified component from the layout.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ViewportLayout

    public ViewportLayout()

    Constructs a `ViewportLayout`.
* ## Method Details

  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Adds the specified component to the layout. Not used by this class.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the name of the component
    :   `c` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") c)

    Removes the specified component from the layout. Not used by
    this class.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `c` - the component to remove
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the preferred dimensions for this layout given the components
    in the specified target container.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the component which needs to be laid out

    Returns:
    :   a `Dimension` object containing the
        preferred dimensions

    See Also:
    :   - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the minimum dimensions needed to layout the components
    contained in the specified target container.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the component which needs to be laid out

    Returns:
    :   a `Dimension` object containing the minimum
        dimensions

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") parent)

    Called by the AWT when the specified container needs to be laid out.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to lay out

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        `BoxLayout` constructor