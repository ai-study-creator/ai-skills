Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthCheckBoxMenuItemUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.MenuItemUI](../MenuItemUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicMenuItemUI](../basic/BasicMenuItemUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthMenuItemUI](SynthMenuItemUI.md "class in javax.swing.plaf.synth")

javax.swing.plaf.synth.SynthCheckBoxMenuItemUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthCheckBoxMenuItemUI
extends [SynthMenuItemUI](SynthMenuItemUI.md "class in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JCheckBoxMenuItem`](../../JCheckBoxMenuItem.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](../basic/BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `BasicMenuItemUI.MouseInputHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](../basic/BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `acceleratorDelimiter, acceleratorFont, acceleratorForeground, acceleratorSelectionForeground, arrowIcon, checkIcon, defaultTextIconGap, disabledForeground, menuDragMouseListener, menuItem, menuKeyListener, mouseInputListener, oldBorderPainted, propertyChangeListener, selectionBackground, selectionForeground`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthCheckBoxMenuItemUI()`

  Constructs a `SynthCheckBoxMenuItemUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `protected String`

  `getPropertyPrefix()`

  Returns a property prefix.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthMenuItemUI](SynthMenuItemUI.md "class in javax.swing.plaf.synth")

  `getContext, getPreferredMenuItemSize, installDefaults, installListeners, paint, paint, propertyChange, uninstallDefaults, uninstallListeners, uninstallUI, update`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](../basic/BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `createMenuDragMouseListener, createMenuKeyListener, createMouseInputListener, createPropertyChangeListener, doClick, getMaximumSize, getMinimumSize, getPath, getPreferredSize, installComponents, installKeyboardActions, installUI, paintBackground, paintMenuItem, paintText, uninstallComponents, uninstallKeyboardActions`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthCheckBoxMenuItemUI

    public SynthCheckBoxMenuItemUI()

    Constructs a `SynthCheckBoxMenuItemUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Returns a property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicMenuItemUI`

    Returns:
    :   a property prefix
  + ### paintBorder

    public void paintBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border.

    Specified by:
    :   `paintBorder` in interface `SynthUI`

    Overrides:
    :   `paintBorder` in class `SynthMenuItemUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border