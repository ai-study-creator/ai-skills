Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalTabbedPaneUI.TabbedPaneLayout

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicTabbedPaneUI.TabbedPaneLayout](../basic/BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalTabbedPaneUI.TabbedPaneLayout

All Implemented Interfaces:
:   `LayoutManager`

Enclosing class:
:   `MetalTabbedPaneUI`

---

public class MetalTabbedPaneUI.TabbedPaneLayout
extends [BasicTabbedPaneUI.TabbedPaneLayout](../basic/BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `MetalTabbedPaneUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TabbedPaneLayout()`

  Constructs `TabbedPaneLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  `rotateTabRuns(int tabPlacement,
  int selectedRun)`

  Rotates the run-index array so that the selected run is run[0].

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI.TabbedPaneLayout](../basic/BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")

  `addLayoutComponent, calculateLayoutInfo, calculateSize, calculateTabRects, layoutContainer, minimumLayoutSize, padTabRun, preferredLayoutSize, preferredTabAreaHeight, preferredTabAreaWidth, removeLayoutComponent`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TabbedPaneLayout

    public TabbedPaneLayout()

    Constructs `TabbedPaneLayout`.
* ## Method Details

  + ### normalizeTabRuns

    protected void normalizeTabRuns(int tabPlacement,
    int tabCount,
    int start,
    int max)

    Description copied from class: `BasicTabbedPaneUI.TabbedPaneLayout`

    Normalizes the tab runs.

    Overrides:
    :   `normalizeTabRuns` in class `BasicTabbedPaneUI.TabbedPaneLayout`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabCount` - the tab count
    :   `start` - the start
    :   `max` - the max
  + ### rotateTabRuns

    protected void rotateTabRuns(int tabPlacement,
    int selectedRun)

    Description copied from class: `BasicTabbedPaneUI.TabbedPaneLayout`

    Rotates the run-index array so that the selected run is run[0].

    Overrides:
    :   `rotateTabRuns` in class `BasicTabbedPaneUI.TabbedPaneLayout`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `selectedRun` - the selected run
  + ### padSelectedTab

    protected void padSelectedTab(int tabPlacement,
    int selectedIndex)

    Description copied from class: `BasicTabbedPaneUI.TabbedPaneLayout`

    Pads selected tab.

    Overrides:
    :   `padSelectedTab` in class `BasicTabbedPaneUI.TabbedPaneLayout`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `selectedIndex` - the selected index