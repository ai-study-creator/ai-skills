Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class SplitPaneUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.SplitPaneUI

Direct Known Subclasses:
:   `BasicSplitPaneUI`, `MultiSplitPaneUI`

---

public abstract class SplitPaneUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JSplitPane.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SplitPaneUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `finishedPaintingChildren(JSplitPane jc,
  Graphics g)`

  Messaged after the JSplitPane the receiver is providing the look
  and feel for paints its children.

  `abstract int`

  `getDividerLocation(JSplitPane jc)`

  Returns the location of the divider.

  `abstract int`

  `getMaximumDividerLocation(JSplitPane jc)`

  Returns the maximum possible location of the divider.

  `abstract int`

  `getMinimumDividerLocation(JSplitPane jc)`

  Returns the minimum possible location of the divider.

  `abstract void`

  `resetToPreferredSizes(JSplitPane jc)`

  Messaged to relayout the JSplitPane based on the preferred size
  of the children components.

  `abstract void`

  `setDividerLocation(JSplitPane jc,
  int location)`

  Sets the location of the divider to location.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SplitPaneUI

    protected SplitPaneUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### resetToPreferredSizes

    public abstract void resetToPreferredSizes([JSplitPane](../JSplitPane.md "class in javax.swing") jc)

    Messaged to relayout the JSplitPane based on the preferred size
    of the children components.

    Parameters:
    :   `jc` - a `JSplitPane`
  + ### setDividerLocation

    public abstract void setDividerLocation([JSplitPane](../JSplitPane.md "class in javax.swing") jc,
    int location)

    Sets the location of the divider to location.

    Parameters:
    :   `jc` - a `JSplitPane`
    :   `location` - an integer specifying the location of the divider
  + ### getDividerLocation

    public abstract int getDividerLocation([JSplitPane](../JSplitPane.md "class in javax.swing") jc)

    Returns the location of the divider.

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   an integer specifying the location of the divider
  + ### getMinimumDividerLocation

    public abstract int getMinimumDividerLocation([JSplitPane](../JSplitPane.md "class in javax.swing") jc)

    Returns the minimum possible location of the divider.

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   and integer specifying the minimum location of the divider
  + ### getMaximumDividerLocation

    public abstract int getMaximumDividerLocation([JSplitPane](../JSplitPane.md "class in javax.swing") jc)

    Returns the maximum possible location of the divider.

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   an integer specifying the maximum location of the divider
  + ### finishedPaintingChildren

    public abstract void finishedPaintingChildren([JSplitPane](../JSplitPane.md "class in javax.swing") jc,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Messaged after the JSplitPane the receiver is providing the look
    and feel for paints its children.

    Parameters:
    :   `jc` - a `JSplitPane`
    :   `g` - the `Graphics` context