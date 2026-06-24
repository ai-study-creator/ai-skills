Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class BoxLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.BoxLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`

Direct Known Subclasses:
:   `DefaultMenuLayout`

---

public class BoxLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](../../java/awt/LayoutManager2.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A layout manager that allows multiple components to be laid out either
vertically or horizontally. The components will not wrap so, for
example, a vertical arrangement of components will stay vertically
arranged when the frame is resized.

**Example:**

![The following text describes this graphic.](doc-files/BoxLayout-1.gif)

Nesting multiple panels with different combinations of horizontal and
vertical gives an effect similar to GridBagLayout, without the
complexity. The diagram shows two panels arranged horizontally, each
of which contains 3 components arranged vertically.

The BoxLayout manager is constructed with an axis parameter that
specifies the type of layout that will be done. There are four choices:
> **`X_AXIS`** - Components are laid out horizontally
> from left to right.

> **`Y_AXIS`** - Components are laid out vertically
> from top to bottom.

> **`LINE_AXIS`** - Components are laid out the way
> words are laid out in a line, based on the container's
> `ComponentOrientation` property. If the container's
> `ComponentOrientation` is horizontal then components are laid out
> horizontally, otherwise they are laid out vertically. For horizontal
> orientations, if the container's `ComponentOrientation` is left to
> right then components are laid out left to right, otherwise they are laid
> out right to left. For vertical orientations components are always laid out
> from top to bottom.

> **`PAGE_AXIS`** - Components are laid out the way
> text lines are laid out on a page, based on the container's
> `ComponentOrientation` property. If the container's
> `ComponentOrientation` is horizontal then components are laid out
> vertically, otherwise they are laid out horizontally. For horizontal
> orientations, if the container's `ComponentOrientation` is left to
> right then components are laid out left to right, otherwise they are laid
> out right to left.  For vertical orientations components are always
> laid out from top to bottom.

For all directions, components are arranged in the same order as they were
added to the container.

BoxLayout attempts to arrange components
at their preferred widths (for horizontal layout)
or heights (for vertical layout).
For a horizontal layout,
if not all the components are the same height,
BoxLayout attempts to make all the components
as high as the highest component.
If that's not possible for a particular component,
then BoxLayout aligns that component vertically,
according to the component's Y alignment.
By default, a component has a Y alignment of 0.5,
which means that the vertical center of the component
should have the same Y coordinate as
the vertical centers of other components with 0.5 Y alignment.

Similarly, for a vertical layout,
BoxLayout attempts to make all components in the column
as wide as the widest component.
If that fails, it aligns them horizontally
according to their X alignments. For `PAGE_AXIS` layout,
horizontal alignment is done based on the leading edge of the component.
In other words, an X alignment value of 0.0 means the left edge of a
component if the container's `ComponentOrientation` is left to
right and it means the right edge of the component otherwise.

Instead of using BoxLayout directly, many programs use the Box class.
The Box class is a lightweight container that uses a BoxLayout.
It also provides handy methods to help you use BoxLayout well.
Adding components to multiple nested boxes is a powerful way to get
the arrangement you want.

For further information and examples see
[How to Use BoxLayout](https://docs.oracle.com/javase/tutorial/uiswing/layout/box.html),
a section in *The Java Tutorial.*

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

See Also:
:   * [`Box`](Box.md "class in javax.swing")
    * [`ComponentOrientation`](../../java/awt/ComponentOrientation.md "class in java.awt")
    * [`JComponent.getAlignmentX()`](JComponent.md#getAlignmentX())
    * [`JComponent.getAlignmentY()`](JComponent.md#getAlignmentY())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `LINE_AXIS`

  Specifies that components should be laid out in the direction of
  a line of text as determined by the target container's
  `ComponentOrientation` property.

  `static final int`

  `PAGE_AXIS`

  Specifies that components should be laid out in the direction that
  lines flow across a page as determined by the target container's
  `ComponentOrientation` property.

  `static final int`

  `X_AXIS`

  Specifies that components should be laid out left to right.

  `static final int`

  `Y_AXIS`

  Specifies that components should be laid out top to bottom.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BoxLayout(Container target,
  int axis)`

  Creates a layout manager that will lay out components along the
  given axis.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(Component comp,
  Object constraints)`

  Not used by this class.

  `void`

  `addLayoutComponent(String name,
  Component comp)`

  Not used by this class.

  `final int`

  `getAxis()`

  Returns the axis that was used to lay out components.

  `float`

  `getLayoutAlignmentX(Container target)`

  Returns the alignment along the X axis for the container.

  `float`

  `getLayoutAlignmentY(Container target)`

  Returns the alignment along the Y axis for the container.

  `final Container`

  `getTarget()`

  Returns the container that uses this layout manager.

  `void`

  `invalidateLayout(Container target)`

  Indicates that a child has changed its layout related information,
  and thus any cached calculations should be flushed.

  `void`

  `layoutContainer(Container target)`

  Called by the AWT  when the specified container
  needs to be laid out.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum dimensions the target container can use
  to lay out the components it contains.

  `Dimension`

  `minimumLayoutSize(Container target)`

  Returns the minimum dimensions needed to lay out the components
  contained in the specified target container.

  `Dimension`

  `preferredLayoutSize(Container target)`

  Returns the preferred dimensions for this layout, given the components
  in the specified target container.

  `void`

  `removeLayoutComponent(Component comp)`

  Not used by this class.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### X\_AXIS

    public static final int X\_AXIS

    Specifies that components should be laid out left to right.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.BoxLayout.X_AXIS)
  + ### Y\_AXIS

    public static final int Y\_AXIS

    Specifies that components should be laid out top to bottom.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.BoxLayout.Y_AXIS)
  + ### LINE\_AXIS

    public static final int LINE\_AXIS

    Specifies that components should be laid out in the direction of
    a line of text as determined by the target container's
    `ComponentOrientation` property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.BoxLayout.LINE_AXIS)
  + ### PAGE\_AXIS

    public static final int PAGE\_AXIS

    Specifies that components should be laid out in the direction that
    lines flow across a page as determined by the target container's
    `ComponentOrientation` property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.BoxLayout.PAGE_AXIS)
* ## Constructor Details

  + ### BoxLayout

    [@ConstructorProperties](../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"target","axis"})
    public BoxLayout([Container](../../java/awt/Container.md "class in java.awt") target,
    int axis)

    Creates a layout manager that will lay out components along the
    given axis.

    Parameters:
    :   `target` - the container that needs to be laid out
    :   `axis` - the axis to lay out components along. Can be one of:
        `BoxLayout.X_AXIS, BoxLayout.Y_AXIS,
        BoxLayout.LINE_AXIS` or `BoxLayout.PAGE_AXIS`

    Throws:
    :   `AWTError` - if the value of `axis` is invalid
* ## Method Details

  + ### getTarget

    public final [Container](../../java/awt/Container.md "class in java.awt") getTarget()

    Returns the container that uses this layout manager.

    Returns:
    :   the container that uses this layout manager

    Since:
    :   1.6
  + ### getAxis

    public final int getAxis()

    Returns the axis that was used to lay out components.
    Returns one of:
    `BoxLayout.X_AXIS, BoxLayout.Y_AXIS,
    BoxLayout.LINE_AXIS` or `BoxLayout.PAGE_AXIS`

    Returns:
    :   the axis that was used to lay out components

    Since:
    :   1.6
  + ### invalidateLayout

    public void invalidateLayout([Container](../../java/awt/Container.md "class in java.awt") target)

    Indicates that a child has changed its layout related information,
    and thus any cached calculations should be flushed.

    This method is called by AWT when the invalidate method is called
    on the Container. Since the invalidate method may be called
    asynchronously to the event thread, this method may be called
    asynchronously.

    Specified by:
    :   `invalidateLayout` in interface `LayoutManager2`

    Parameters:
    :   `target` - the affected container

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") comp)

    Not used by this class.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the name of the component
    :   `comp` - the component
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp)

    Not used by this class.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component
  + ### addLayoutComponent

    public void addLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Not used by this class.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component
    :   `constraints` - constraints
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the preferred dimensions for this layout, given the components
    in the specified target container.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the container that needs to be laid out

    Returns:
    :   the dimensions >= 0 && <= Integer.MAX\_VALUE

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor

    See Also:
    :   - [`Container`](../../java/awt/Container.md "class in java.awt")
        - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
        - [`maximumLayoutSize(java.awt.Container)`](#maximumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the minimum dimensions needed to lay out the components
    contained in the specified target container.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `target` - the container that needs to be laid out

    Returns:
    :   the dimensions >= 0 && <= Integer.MAX\_VALUE

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
        - [`maximumLayoutSize(java.awt.Container)`](#maximumLayoutSize(java.awt.Container))
  + ### maximumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") maximumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the maximum dimensions the target container can use
    to lay out the components it contains.

    Specified by:
    :   `maximumLayoutSize` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container that needs to be laid out

    Returns:
    :   the dimensions >= 0 && <= Integer.MAX\_VALUE

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
        - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
  + ### getLayoutAlignmentX

    public float getLayoutAlignmentX([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the alignment along the X axis for the container.
    If the box is horizontal, the default
    alignment will be returned. Otherwise, the alignment needed
    to place the children along the X axis will be returned.

    Specified by:
    :   `getLayoutAlignmentX` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container

    Returns:
    :   the alignment >= 0.0f && <= 1.0f

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor
  + ### getLayoutAlignmentY

    public float getLayoutAlignmentY([Container](../../java/awt/Container.md "class in java.awt") target)

    Returns the alignment along the Y axis for the container.
    If the box is vertical, the default
    alignment will be returned. Otherwise, the alignment needed
    to place the children along the Y axis will be returned.

    Specified by:
    :   `getLayoutAlignmentY` in interface `LayoutManager2`

    Parameters:
    :   `target` - the container

    Returns:
    :   the alignment >= 0.0f && <= 1.0f

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") target)

    Called by the AWT  when the specified container
    needs to be laid out.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `target` - the container to lay out

    Throws:
    :   `AWTError` - if the target isn't the container specified to the
        BoxLayout constructor