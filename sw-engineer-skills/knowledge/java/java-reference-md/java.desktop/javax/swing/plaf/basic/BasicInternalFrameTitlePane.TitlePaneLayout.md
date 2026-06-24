Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameTitlePane.TitlePaneLayout

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicInternalFrameTitlePane.TitlePaneLayout

All Implemented Interfaces:
:   `LayoutManager`

Enclosing class:
:   `BasicInternalFrameTitlePane`

---

public class BasicInternalFrameTitlePane.TitlePaneLayout
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TitlePaneLayout()`

  Constructs a `TitlePaneLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String name,
  Component c)`

  If the layout manager uses a per-component string,
  adds the component `comp` to the layout,
  associating it
  with the string specified by `name`.

  `void`

  `layoutContainer(Container c)`

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

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TitlePaneLayout

    public TitlePaneLayout()

    Constructs a `TitlePaneLayout`.
* ## Method Details

  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../../../java/awt/Component.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    If the layout manager uses a per-component string,
    adds the component `comp` to the layout,
    associating it
    with the string specified by `name`.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the string to be associated with the component
    :   `c` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `c` - the component to be removed
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
  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") c)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `c` - the container to be laid out