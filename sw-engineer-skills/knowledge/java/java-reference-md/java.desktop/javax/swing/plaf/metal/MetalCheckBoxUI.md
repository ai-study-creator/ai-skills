Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalCheckBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.metal.MetalRadioButtonUI](MetalRadioButtonUI.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.MetalCheckBoxUI

---

public class MetalCheckBoxUI
extends [MetalRadioButtonUI](MetalRadioButtonUI.md "class in javax.swing.plaf.metal")

CheckboxUI implementation for MetalCheckboxUI

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.metal.[MetalRadioButtonUI](MetalRadioButtonUI.md "class in javax.swing.plaf.metal")

  `disabledTextColor, focusColor, selectColor`

  ### Fields inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `icon`

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalCheckBoxUI()`

  Constructs a `MetalCheckBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Returns an instance of `MetalCheckBoxUI`.

  `String`

  `getPropertyPrefix()`

  Returns the property prefix.

  `void`

  `installDefaults(AbstractButton b)`

  Installs default properties.

  `protected void`

  `uninstallDefaults(AbstractButton b)`

  Uninstalls default properties.

  ### Methods inherited from class javax.swing.plaf.metal.[MetalRadioButtonUI](MetalRadioButtonUI.md "class in javax.swing.plaf.metal")

  `getDisabledTextColor, getFocusColor, getSelectColor, paint, paintFocus`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `getDefaultIcon, getPreferredSize`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  `getTextShiftOffset, paintIcon`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, installKeyboardActions, installListeners, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalCheckBoxUI

    public MetalCheckBoxUI()

    Constructs a `MetalCheckBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Returns an instance of `MetalCheckBoxUI`.

    Parameters:
    :   `b` - a component

    Returns:
    :   a new instance of `MetalCheckBoxUI`
  + ### getPropertyPrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicButtonUI`

    Returns the property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicRadioButtonUI`

    Returns:
    :   the property prefix
  + ### installDefaults

    public void installDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `MetalRadioButtonUI`

    Parameters:
    :   `b` - an abstract button
  + ### uninstallDefaults

    protected void uninstallDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `MetalRadioButtonUI`

    Parameters:
    :   `b` - an abstract button