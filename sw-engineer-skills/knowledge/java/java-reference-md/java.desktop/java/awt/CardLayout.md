Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class CardLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.CardLayout

All Implemented Interfaces:
:   `LayoutManager`, `LayoutManager2`, `Serializable`

---

public class CardLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager2](LayoutManager2.md "interface in java.awt"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A `CardLayout` object is a layout manager for a
container. It treats each component in the container as a card.
Only one card is visible at a time, and the container acts as
a stack of cards. The first component added to a
`CardLayout` object is the visible component when the
container is first displayed.

The ordering of cards is determined by the container's own internal
ordering of its component objects. `CardLayout`
defines a set of methods that allow an application to flip
through these cards sequentially, or to show a specified card.
The [`addLayoutComponent(java.awt.Component, java.lang.Object)`](#addLayoutComponent(java.awt.Component,java.lang.Object))
method can be used to associate a string identifier with a given card
for fast random access.

Since:
:   1.0

See Also:
:   * [`Container`](Container.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.CardLayout)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CardLayout()`

  Creates a new card layout with gaps of size zero.

  `CardLayout(int hgap,
  int vgap)`

  Creates a new card layout with the specified horizontal and
  vertical gaps.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(Component comp,
  Object constraints)`

  Adds the specified component to this card layout's internal
  table of names.

  `void`

  `addLayoutComponent(String name,
  Component comp)`

  Deprecated.

  replaced by
  `addLayoutComponent(Component, Object)`.

  `void`

  `first(Container parent)`

  Flips to the first card of the container.

  `int`

  `getHgap()`

  Gets the horizontal gap between components.

  `float`

  `getLayoutAlignmentX(Container parent)`

  Returns the alignment along the x axis.

  `float`

  `getLayoutAlignmentY(Container parent)`

  Returns the alignment along the y axis.

  `int`

  `getVgap()`

  Gets the vertical gap between components.

  `void`

  `invalidateLayout(Container target)`

  Invalidates the layout, indicating that if the layout manager
  has cached information it should be discarded.

  `void`

  `last(Container parent)`

  Flips to the last card of the container.

  `void`

  `layoutContainer(Container parent)`

  Lays out the specified container using this card layout.

  `Dimension`

  `maximumLayoutSize(Container target)`

  Returns the maximum dimensions for this layout given the components
  in the specified target container.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Calculates the minimum size for the specified panel.

  `void`

  `next(Container parent)`

  Flips to the next card of the specified container.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Determines the preferred size of the container argument using
  this card layout.

  `void`

  `previous(Container parent)`

  Flips to the previous card of the specified container.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from the layout.

  `void`

  `setHgap(int hgap)`

  Sets the horizontal gap between components.

  `void`

  `setVgap(int vgap)`

  Sets the vertical gap between components.

  `void`

  `show(Container parent,
  String name)`

  Flips to the component that was added to this layout with the
  specified `name`, using `addLayoutComponent`.

  `String`

  `toString()`

  Returns a string representation of the state of this card layout.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CardLayout

    public CardLayout()

    Creates a new card layout with gaps of size zero.
  + ### CardLayout

    public CardLayout(int hgap,
    int vgap)

    Creates a new card layout with the specified horizontal and
    vertical gaps. The horizontal gaps are placed at the left and
    right edges. The vertical gaps are placed at the top and bottom
    edges.

    Parameters:
    :   `hgap` - the horizontal gap.
    :   `vgap` - the vertical gap.
* ## Method Details

  + ### getHgap

    public int getHgap()

    Gets the horizontal gap between components.

    Returns:
    :   the horizontal gap between components.

    Since:
    :   1.1

    See Also:
    :   - [`setHgap(int)`](#setHgap(int))
        - [`getVgap()`](#getVgap())
  + ### setHgap

    public void setHgap(int hgap)

    Sets the horizontal gap between components.

    Parameters:
    :   `hgap` - the horizontal gap between components.

    Since:
    :   1.1

    See Also:
    :   - [`getHgap()`](#getHgap())
        - [`setVgap(int)`](#setVgap(int))
  + ### getVgap

    public int getVgap()

    Gets the vertical gap between components.

    Returns:
    :   the vertical gap between components.

    See Also:
    :   - [`setVgap(int)`](#setVgap(int))
        - [`getHgap()`](#getHgap())
  + ### setVgap

    public void setVgap(int vgap)

    Sets the vertical gap between components.

    Parameters:
    :   `vgap` - the vertical gap between components.

    Since:
    :   1.1

    See Also:
    :   - [`getVgap()`](#getVgap())
        - [`setHgap(int)`](#setHgap(int))
  + ### addLayoutComponent

    public void addLayoutComponent([Component](Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints)

    Adds the specified component to this card layout's internal
    table of names. The object specified by `constraints`
    must be a string. The card layout stores this string as a key-value
    pair that can be used for random access to a particular card.
    By calling the `show` method, an application can
    display the component with the specified name.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager2`

    Parameters:
    :   `comp` - the component to be added.
    :   `constraints` - a tag that identifies a particular
        card in the layout.

    Throws:
    :   `IllegalArgumentException` - if the constraint is not a string.

    See Also:
    :   - [`show(java.awt.Container, java.lang.String)`](#show(java.awt.Container,java.lang.String))
  + ### addLayoutComponent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](Component.md "class in java.awt") comp)

    Deprecated.

    replaced by
    `addLayoutComponent(Component, Object)`.

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

    Removes the specified component from the layout.
    If the card was visible on top, the next card underneath it is shown.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component to be removed.

    See Also:
    :   - [`Container.remove(java.awt.Component)`](Container.md#remove(java.awt.Component))
        - [`Container.removeAll()`](Container.md#removeAll())
  + ### preferredLayoutSize

    public [Dimension](Dimension.md "class in java.awt") preferredLayoutSize([Container](Container.md "class in java.awt") parent)

    Determines the preferred size of the container argument using
    this card layout.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the parent container in which to do the layout

    Returns:
    :   the preferred dimensions to lay out the subcomponents
        of the specified container

    See Also:
    :   - [`Container.getPreferredSize()`](Container.md#getPreferredSize())
        - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](Dimension.md "class in java.awt") minimumLayoutSize([Container](Container.md "class in java.awt") parent)

    Calculates the minimum size for the specified panel.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the parent container in which to do the layout

    Returns:
    :   the minimum dimensions required to lay out the
        subcomponents of the specified container

    See Also:
    :   - [`Container.doLayout()`](Container.md#doLayout())
        - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
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

    public void layoutContainer([Container](Container.md "class in java.awt") parent)

    Lays out the specified container using this card layout.

    Each component in the `parent` container is reshaped
    to be the size of the container, minus space for surrounding
    insets, horizontal gaps, and vertical gaps.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the parent container in which to do the layout

    See Also:
    :   - [`Container.doLayout()`](Container.md#doLayout())
  + ### first

    public void first([Container](Container.md "class in java.awt") parent)

    Flips to the first card of the container.

    Parameters:
    :   `parent` - the parent container in which to do the layout

    See Also:
    :   - [`last(java.awt.Container)`](#last(java.awt.Container))
  + ### next

    public void next([Container](Container.md "class in java.awt") parent)

    Flips to the next card of the specified container. If the
    currently visible card is the last one, this method flips to the
    first card in the layout.

    Parameters:
    :   `parent` - the parent container in which to do the layout

    See Also:
    :   - [`previous(java.awt.Container)`](#previous(java.awt.Container))
  + ### previous

    public void previous([Container](Container.md "class in java.awt") parent)

    Flips to the previous card of the specified container. If the
    currently visible card is the first one, this method flips to the
    last card in the layout.

    Parameters:
    :   `parent` - the parent container in which to do the layout

    See Also:
    :   - [`next(java.awt.Container)`](#next(java.awt.Container))
  + ### last

    public void last([Container](Container.md "class in java.awt") parent)

    Flips to the last card of the container.

    Parameters:
    :   `parent` - the parent container in which to do the layout

    See Also:
    :   - [`first(java.awt.Container)`](#first(java.awt.Container))
  + ### show

    public void show([Container](Container.md "class in java.awt") parent,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Flips to the component that was added to this layout with the
    specified `name`, using `addLayoutComponent`.
    If no such component exists, then nothing happens.

    Parameters:
    :   `parent` - the parent container in which to do the layout
    :   `name` - the component name

    See Also:
    :   - [`addLayoutComponent(java.awt.Component, java.lang.Object)`](#addLayoutComponent(java.awt.Component,java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the state of this card layout.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this card layout.