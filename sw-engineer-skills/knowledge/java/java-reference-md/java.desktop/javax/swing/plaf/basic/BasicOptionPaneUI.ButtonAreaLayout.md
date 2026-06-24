Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicOptionPaneUI.ButtonAreaLayout

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicOptionPaneUI.ButtonAreaLayout

All Implemented Interfaces:
:   `LayoutManager`

Enclosing class:
:   `BasicOptionPaneUI`

---

public static class BasicOptionPaneUI.ButtonAreaLayout
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt")

`ButtonAreaLayout` behaves in a similar manner to
`FlowLayout`. It lays out all components from left to
right. If `syncAllWidths` is true, the widths of each
component will be set to the largest preferred size width.
This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicOptionPaneUI`.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `centersChildren`

  If true, children are lumped together in parent.

  `protected int`

  `padding`

  The padding value.

  `protected boolean`

  `syncAllWidths`

  The value represents if the width of children should be synchronized.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ButtonAreaLayout(boolean syncAllWidths,
  int padding)`

  Constructs a new instance of `ButtonAreaLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String string,
  Component comp)`

  If the layout manager uses a per-component string,
  adds the component `comp` to the layout,
  associating it
  with the string specified by `name`.

  `boolean`

  `getCentersChildren()`

  Returns whether or not center children should be used.

  `int`

  `getPadding()`

  Returns the padding.

  `boolean`

  `getSyncAllWidths()`

  Returns if the width of children should be synchronized.

  `void`

  `layoutContainer(Container container)`

  Lays out the specified container.

  `Dimension`

  `minimumLayoutSize(Container c)`

  Calculates the minimum size dimensions for the specified
  container, given the components it contains.

  `Dimension`

  `preferredLayoutSize(Container c)`

  Calculates the preferred size dimensions for the specified
  container, given the components it contains.

  `void`

  `removeLayoutComponent(Component c)`

  Removes the specified component from the layout.

  `void`

  `setCentersChildren(boolean newValue)`

  Sets whether or not center children should be used.

  `void`

  `setPadding(int newPadding)`

  Sets the padding value.

  `void`

  `setSyncAllWidths(boolean newValue)`

  Sets if the width of children should be synchronized.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### syncAllWidths

    protected boolean syncAllWidths

    The value represents if the width of children should be synchronized.
  + ### padding

    protected int padding

    The padding value.
  + ### centersChildren

    protected boolean centersChildren

    If true, children are lumped together in parent.
* ## Constructor Details

  + ### ButtonAreaLayout

    public ButtonAreaLayout(boolean syncAllWidths,
    int padding)

    Constructs a new instance of `ButtonAreaLayout`.

    Parameters:
    :   `syncAllWidths` - if the width of children should be synchronized
    :   `padding` - the padding value
* ## Method Details

  + ### setSyncAllWidths

    public void setSyncAllWidths(boolean newValue)

    Sets if the width of children should be synchronized.

    Parameters:
    :   `newValue` - if the width of children should be synchronized
  + ### getSyncAllWidths

    public boolean getSyncAllWidths()

    Returns if the width of children should be synchronized.

    Returns:
    :   if the width of children should be synchronized
  + ### setPadding

    public void setPadding(int newPadding)

    Sets the padding value.

    Parameters:
    :   `newPadding` - the new padding
  + ### getPadding

    public int getPadding()

    Returns the padding.

    Returns:
    :   the padding
  + ### setCentersChildren

    public void setCentersChildren(boolean newValue)

    Sets whether or not center children should be used.

    Parameters:
    :   `newValue` - a new value
  + ### getCentersChildren

    public boolean getCentersChildren()

    Returns whether or not center children should be used.

    Returns:
    :   whether or not center children should be used
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../../../java.base/java/lang/String.md "class in java.lang") string,
    [Component](../../../../java/awt/Component.md "class in java.awt") comp)

    Description copied from interface: `LayoutManager`

    If the layout manager uses a per-component string,
    adds the component `comp` to the layout,
    associating it
    with the string specified by `name`.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `string` - the string to be associated with the component
    :   `comp` - the component to be added
  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") container)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `container` - the container to be laid out
  + ### minimumLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    Calculates the minimum size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `c` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### preferredLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    Calculates the preferred size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `c` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `c` - the component to be removed