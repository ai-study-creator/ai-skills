Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicCheckBoxMenuItemUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.MenuItemUI](../MenuItemUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicCheckBoxMenuItemUI

---

public class BasicCheckBoxMenuItemUI
extends [BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

BasicCheckboxMenuItem implementation

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `BasicMenuItemUI.MouseInputHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `acceleratorDelimiter, acceleratorFont, acceleratorForeground, acceleratorSelectionForeground, arrowIcon, checkIcon, defaultTextIconGap, disabledForeground, menuDragMouseListener, menuItem, menuKeyListener, mouseInputListener, oldBorderPainted, propertyChangeListener, selectionBackground, selectionForeground`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicCheckBoxMenuItemUI()`

  Constructs a `BasicCheckBoxMenuItemUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `BasicCheckBoxMenuItemUI`.

  `protected String`

  `getPropertyPrefix()`

  Returns a property prefix.

  `void`

  `processMouseEvent(JMenuItem item,
  MouseEvent e,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Invoked when mouse event occurs.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `createMenuDragMouseListener, createMenuKeyListener, createMouseInputListener, createPropertyChangeListener, doClick, getMaximumSize, getMinimumSize, getPath, getPreferredMenuItemSize, getPreferredSize, installComponents, installDefaults, installKeyboardActions, installListeners, installUI, paint, paintBackground, paintMenuItem, paintText, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, update`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicCheckBoxMenuItemUI

    public BasicCheckBoxMenuItemUI()

    Constructs a `BasicCheckBoxMenuItemUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `BasicCheckBoxMenuItemUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicCheckBoxMenuItemUI`
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicMenuItemUI`

    Returns a property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicMenuItemUI`

    Returns:
    :   a property prefix
  + ### processMouseEvent

    public void processMouseEvent([JMenuItem](../../JMenuItem.md "class in javax.swing") item,
    [MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e,
    [MenuElement](../../MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](../../MenuSelectionManager.md "class in javax.swing") manager)

    Invoked when mouse event occurs.

    Parameters:
    :   `item` - a menu item
    :   `e` - a mouse event
    :   `path` - an array of `MenuElement`
    :   `manager` - an instance of `MenuSelectionManager`