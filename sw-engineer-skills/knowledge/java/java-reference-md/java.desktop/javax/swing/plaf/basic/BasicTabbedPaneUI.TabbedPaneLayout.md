Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTabbedPaneUI.TabbedPaneLayout

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTabbedPaneUI.TabbedPaneLayout

All Implemented Interfaces:
:   `LayoutManager`

Direct Known Subclasses:
:   `MetalTabbedPaneUI.TabbedPaneLayout`

Enclosing class:
:   `BasicTabbedPaneUI`

---

public class BasicTabbedPaneUI.TabbedPaneLayout
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of BasicTabbedPaneUI.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TabbedPaneLayout()`

  Constructs a `TabbedPaneLayout`.
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

  `calculateLayoutInfo()`

  Calculates the layout info.

  `protected Dimension`

  `calculateSize(boolean minimum)`

  Returns the calculated size.

  `protected void`

  `calculateTabRects(int tabPlacement,
  int tabCount)`

  Calculate the tab rectangles.

  `void`

  `layoutContainer(Container parent)`

  Lays out the specified container.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Calculates the minimum size dimensions for the specified
  container, given the components it contains.

  `protected void`

  `normalizeTabRuns(int tabPlacement,
  int tabCount,
  int start,
  int max)`

  Normalizes the tab runs.

  `protected void`

  `padSelectedTab(int tabPlacement,
  int selectedIndex)`

  Pads selected tab.

  `protected void`

  `padTabRun(int tabPlacement,
  int start,
  int end,
  int max)`

  Pads the tab run.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Calculates the preferred size dimensions for the specified
  container, given the components it contains.

  `protected int`

  `preferredTabAreaHeight(int tabPlacement,
  int width)`

  Returns the preferred tab area height.

  `protected int`

  `preferredTabAreaWidth(int tabPlacement,
  int height)`

  Returns the preferred tab area width.

  `void`

  `removeLayoutComponent(Component comp)`

  Removes the specified component from the layout.

  `protected void`

  `rotateTabRuns(int tabPlacement,
  int selectedRun)`

  Rotates the run-index array so that the selected run is run[0].

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TabbedPaneLayout

    public TabbedPaneLayout()

    Constructs a `TabbedPaneLayout`.
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
  + ### calculateSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") calculateSize(boolean minimum)

    Returns the calculated size.

    Parameters:
    :   `minimum` - use the minimum size or preferred size

    Returns:
    :   the calculated size
  + ### preferredTabAreaHeight

    protected int preferredTabAreaHeight(int tabPlacement,
    int width)

    Returns the preferred tab area height.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `width` - the width

    Returns:
    :   the preferred tab area height
  + ### preferredTabAreaWidth

    protected int preferredTabAreaWidth(int tabPlacement,
    int height)

    Returns the preferred tab area width.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `height` - the height

    Returns:
    :   the preferred tab area width
  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out
  + ### calculateLayoutInfo

    public void calculateLayoutInfo()

    Calculates the layout info.
  + ### calculateTabRects

    protected void calculateTabRects(int tabPlacement,
    int tabCount)

    Calculate the tab rectangles.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabCount` - the tab count
  + ### rotateTabRuns

    protected void rotateTabRuns(int tabPlacement,
    int selectedRun)

    Rotates the run-index array so that the selected run is run[0].

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `selectedRun` - the selected run
  + ### normalizeTabRuns

    protected void normalizeTabRuns(int tabPlacement,
    int tabCount,
    int start,
    int max)

    Normalizes the tab runs.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabCount` - the tab count
    :   `start` - the start
    :   `max` - the max
  + ### padTabRun

    protected void padTabRun(int tabPlacement,
    int start,
    int end,
    int max)

    Pads the tab run.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `start` - the start
    :   `end` - the end
    :   `max` - the max
  + ### padSelectedTab

    protected void padSelectedTab(int tabPlacement,
    int selectedIndex)

    Pads selected tab.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `selectedIndex` - the selected index