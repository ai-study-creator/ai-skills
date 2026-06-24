Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI.ComboBoxLayoutManager

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboBoxUI.ComboBoxLayoutManager

All Implemented Interfaces:
:   `LayoutManager`

Direct Known Subclasses:
:   `MetalComboBoxUI.MetalComboBoxLayoutManager`

Enclosing class:
:   `BasicComboBoxUI`

---

public class BasicComboBoxUI.ComboBoxLayoutManager
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt")

This layout manager handles the 'standard' layout of combo boxes. It puts
the arrow button to the right and the editor to the left. If there is no
editor it still keeps the arrow button to the right.
This public inner class should be treated as protected.
Instantiate it only within subclasses of
`BasicComboBoxUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ComboBoxLayoutManager()`

  Constructs a `ComboBoxLayoutManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String name,
  Component comp)`

  If the layout manager uses a per-component string,
  adds the component `comp` to the layout,
  associating it
  with the string specified by `name`.

  `void`

  `layoutContainer(Container parent)`

  Lays out the specified container.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Calculates the minimum size dimensions for the specified
  container, given the components it contains.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Calculates the preferred size dimensions for the specified
  container, given the components it contains.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from the layout.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComboBoxLayoutManager

    public ComboBoxLayoutManager()

    Constructs a `ComboBoxLayoutManager`.
* ## Method Details

  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../../../java/awt/Component.md "class in java.awt") comp)

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

    public void removeLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") comp)

    Description copied from interface: `LayoutManager`

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `comp` - the component to be removed
  + ### preferredLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Calculates the preferred size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Calculates the minimum size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out