Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class TabbedPaneUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.TabbedPaneUI

Direct Known Subclasses:
:   `BasicTabbedPaneUI`, `MultiTabbedPaneUI`

---

public abstract class TabbedPaneUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JTabbedPane.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TabbedPaneUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Rectangle`

  `getTabBounds(JTabbedPane pane,
  int index)`

  Returns the rectangle for the tab bounds.

  `abstract int`

  `getTabRunCount(JTabbedPane pane)`

  Returns the tab run count.

  `abstract int`

  `tabForCoordinate(JTabbedPane pane,
  int x,
  int y)`

  Returns the tab for the coordinate.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TabbedPaneUI

    protected TabbedPaneUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### tabForCoordinate

    public abstract int tabForCoordinate([JTabbedPane](../JTabbedPane.md "class in javax.swing") pane,
    int x,
    int y)

    Returns the tab for the coordinate.

    Parameters:
    :   `pane` - the pane
    :   `x` - the x coordinate
    :   `y` - the y coordinate

    Returns:
    :   the tab for the coordinate
  + ### getTabBounds

    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getTabBounds([JTabbedPane](../JTabbedPane.md "class in javax.swing") pane,
    int index)

    Returns the rectangle for the tab bounds.

    Parameters:
    :   `pane` - the pane
    :   `index` - the index

    Returns:
    :   the rectangle for the tab bounds
  + ### getTabRunCount

    public abstract int getTabRunCount([JTabbedPane](../JTabbedPane.md "class in javax.swing") pane)

    Returns the tab run count.

    Parameters:
    :   `pane` - the pane

    Returns:
    :   the tab run count