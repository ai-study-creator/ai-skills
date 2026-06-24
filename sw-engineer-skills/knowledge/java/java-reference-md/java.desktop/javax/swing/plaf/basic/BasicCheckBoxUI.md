Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicCheckBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicRadioButtonUI](BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicCheckBoxUI

---

public class BasicCheckBoxUI
extends [BasicRadioButtonUI](BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

CheckboxUI implementation for BasicCheckboxUI

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `icon`

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicCheckBoxUI()`

  Constructs a `BasicCheckBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Returns an instance of `BasicCheckBoxUI`.

  `String`

  `getPropertyPrefix()`

  Returns the property prefix.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `getDefaultIcon, getPreferredSize, installDefaults, paint, paintFocus, uninstallDefaults`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  `getTextShiftOffset, paintIcon`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, installKeyboardActions, installListeners, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicCheckBoxUI

    public BasicCheckBoxUI()

    Constructs a `BasicCheckBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Returns an instance of `BasicCheckBoxUI`.

    Parameters:
    :   `b` - a component

    Returns:
    :   an instance of `BasicCheckBoxUI`
  + ### getPropertyPrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicButtonUI`

    Returns the property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicRadioButtonUI`

    Returns:
    :   the property prefix