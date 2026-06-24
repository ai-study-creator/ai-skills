Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthCheckBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthButtonUI](SynthButtonUI.md "class in javax.swing.plaf.synth")

[javax.swing.plaf.synth.SynthToggleButtonUI](SynthToggleButtonUI.md "class in javax.swing.plaf.synth")

[javax.swing.plaf.synth.SynthRadioButtonUI](SynthRadioButtonUI.md "class in javax.swing.plaf.synth")

javax.swing.plaf.synth.SynthCheckBoxUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthCheckBoxUI
extends [SynthRadioButtonUI](SynthRadioButtonUI.md "class in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JCheckBox`](../../JCheckBox.md "class in javax.swing").

Since:
:   1.7

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthCheckBoxUI()`

  Constructs a `SynthCheckBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Creates a new UI object for the given component.

  `protected String`

  `getPropertyPrefix()`

  Returns the property prefix.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthRadioButtonUI](SynthRadioButtonUI.md "class in javax.swing.plaf.synth")

  `getSizingIcon`

  ### Methods inherited from class javax.swing.plaf.synth.[SynthButtonUI](SynthButtonUI.md "class in javax.swing.plaf.synth")

  `getBaseline, getContext, getDefaultIcon, getIcon, getMaximumSize, getMinimumSize, getPreferredSize, installDefaults, installListeners, paint, paint, propertyChange, uninstallDefaults, uninstallListeners, update`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaselineResizeBehavior, getDefaultTextIconGap, getTextShiftOffset, installKeyboardActions, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthCheckBoxUI

    public SynthCheckBoxUI()

    Constructs a `SynthCheckBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Creates a new UI object for the given component.

    Parameters:
    :   `b` - component to create UI object for

    Returns:
    :   the UI object
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Returns the property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `SynthRadioButtonUI`

    Returns:
    :   the property prefix
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
    :   `paintBorder` in class `SynthRadioButtonUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border