Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface LayoutManager

All Known Subinterfaces:
:   `LayoutManager2`

All Known Implementing Classes:
:   `BasicComboBoxUI.ComboBoxLayoutManager`, `BasicInternalFrameTitlePane.TitlePaneLayout`, `BasicInternalFrameUI.InternalFrameLayout`, `BasicOptionPaneUI.ButtonAreaLayout`, `BasicScrollBarUI`, `BasicSplitPaneDivider.DividerLayout`, `BasicSplitPaneUI.BasicHorizontalLayoutManager`, `BasicSplitPaneUI.BasicVerticalLayoutManager`, `BasicTabbedPaneUI.TabbedPaneLayout`, `BorderLayout`, `BoxLayout`, `CardLayout`, `DefaultMenuLayout`, `FlowLayout`, `GridBagLayout`, `GridLayout`, `GroupLayout`, `JRootPane.RootLayout`, `JSpinner.DateEditor`, `JSpinner.DefaultEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`, `MetalComboBoxUI.MetalComboBoxLayoutManager`, `MetalScrollBarUI`, `MetalTabbedPaneUI.TabbedPaneLayout`, `OverlayLayout`, `ScrollPaneLayout`, `ScrollPaneLayout.UIResource`, `SpringLayout`, `SynthScrollBarUI`, `ViewportLayout`

---

public interface LayoutManager

Defines the interface for classes that know how to lay out
`Container`s.

Swing's painting architecture assumes the children of a
`JComponent` do not overlap. If a
`JComponent`'s `LayoutManager` allows
children to overlap, the `JComponent` must override
`isOptimizedDrawingEnabled` to return false.

See Also:
:   * [`Container`](Container.md "class in java.awt")
    * [`JComponent.isOptimizedDrawingEnabled()`](../../javax/swing/JComponent.md#isOptimizedDrawingEnabled())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

* ## Method Details

  + ### addLayoutComponent

    void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](Component.md "class in java.awt") comp)

    If the layout manager uses a per-component string,
    adds the component `comp` to the layout,
    associating it
    with the string specified by `name`.

    Parameters:
    :   `name` - the string to be associated with the component
    :   `comp` - the component to be added
  + ### removeLayoutComponent

    void removeLayoutComponent([Component](Component.md "class in java.awt") comp)

    Removes the specified component from the layout.

    Parameters:
    :   `comp` - the component to be removed
  + ### preferredLayoutSize

    [Dimension](Dimension.md "class in java.awt") preferredLayoutSize([Container](Container.md "class in java.awt") parent)

    Calculates the preferred size dimensions for the specified
    container, given the components it contains.

    Parameters:
    :   `parent` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`minimumLayoutSize(java.awt.Container)`](#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    [Dimension](Dimension.md "class in java.awt") minimumLayoutSize([Container](Container.md "class in java.awt") parent)

    Calculates the minimum size dimensions for the specified
    container, given the components it contains.

    Parameters:
    :   `parent` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`preferredLayoutSize(java.awt.Container)`](#preferredLayoutSize(java.awt.Container))
  + ### layoutContainer

    void layoutContainer([Container](Container.md "class in java.awt") parent)

    Lays out the specified container.

    Parameters:
    :   `parent` - the container to be laid out