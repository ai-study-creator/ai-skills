Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class PopupMenuUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.PopupMenuUI

Direct Known Subclasses:
:   `BasicPopupMenuUI`, `MultiPopupMenuUI`

---

public abstract class PopupMenuUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JPopupMenu.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PopupMenuUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Popup`

  `getPopup(JPopupMenu popup,
  int x,
  int y)`

  Returns the `Popup` that will be responsible for
  displaying the `JPopupMenu`.

  `boolean`

  `isPopupTrigger(MouseEvent e)`

  Returns whether or not the given `MouseEvent` is the popup menu
  trigger event for the platform

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PopupMenuUI

    protected PopupMenuUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### isPopupTrigger

    public boolean isPopupTrigger([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Returns whether or not the given `MouseEvent` is the popup menu
    trigger event for the platform

    Parameters:
    :   `e` - a `MouseEvent`

    Returns:
    :   true if the `MouseEvent e` is the popup menu trigger

    Since:
    :   1.3
  + ### getPopup

    public [Popup](../Popup.md "class in javax.swing") getPopup([JPopupMenu](../JPopupMenu.md "class in javax.swing") popup,
    int x,
    int y)

    Returns the `Popup` that will be responsible for
    displaying the `JPopupMenu`.

    Parameters:
    :   `popup` - JPopupMenu requesting Popup
    :   `x` - Screen x location Popup is to be shown at
    :   `y` - Screen y location Popup is to be shown at.

    Returns:
    :   Popup that will show the JPopupMenu

    Since:
    :   1.4