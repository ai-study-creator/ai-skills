Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalRadioButtonUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalRadioButtonUI

Direct Known Subclasses:
:   `MetalCheckBoxUI`

---

public class MetalRadioButtonUI
extends [BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

RadioButtonUI implementation for MetalRadioButtonUI

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Color`

  `disabledTextColor`

  The color of a disabled text.

  `protected Color`

  `focusColor`

  The color of the focused radio button.

  `protected Color`

  `selectColor`

  The color of the selected radio button.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `icon`

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalRadioButtonUI()`

  Constructs a `MetalRadioButtonUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns an instance of `MetalRadioButtonUI`.

  `protected Color`

  `getDisabledTextColor()`

  Returns the color of the disabled text.

  `protected Color`

  `getFocusColor()`

  Returns the color of the focused `JRadioButton`.

  `protected Color`

  `getSelectColor()`

  Returns the color of the selected `JRadioButton`.

  `void`

  `installDefaults(AbstractButton b)`

  Installs default properties.

  `void`

  `paint(Graphics g,
  JComponent c)`

  paint the radio button

  `protected void`

  `paintFocus(Graphics g,
  Rectangle t,
  Dimension d)`

  Paints focused radio button.

  `protected void`

  `uninstallDefaults(AbstractButton b)`

  Uninstalls default properties.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicRadioButtonUI](../basic/BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  `getDefaultIcon, getPreferredSize, getPropertyPrefix`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  `getTextShiftOffset, paintIcon`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, installKeyboardActions, installListeners, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### focusColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") focusColor

    The color of the focused radio button.
  + ### selectColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectColor

    The color of the selected radio button.
  + ### disabledTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") disabledTextColor

    The color of a disabled text.
* ## Constructor Details

  + ### MetalRadioButtonUI

    public MetalRadioButtonUI()

    Constructs a `MetalRadioButtonUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MetalRadioButtonUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MetalRadioButtonUI`
  + ### installDefaults

    public void installDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicRadioButtonUI`

    Parameters:
    :   `b` - an abstract button
  + ### uninstallDefaults

    protected void uninstallDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicRadioButtonUI`

    Parameters:
    :   `b` - an abstract button
  + ### getSelectColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getSelectColor()

    Returns the color of the selected `JRadioButton`.

    Returns:
    :   the color of the selected `JRadioButton`
  + ### getDisabledTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getDisabledTextColor()

    Returns the color of the disabled text.

    Returns:
    :   the color of the disabled text
  + ### getFocusColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getFocusColor()

    Returns the color of the focused `JRadioButton`.

    Returns:
    :   the color of the focused `JRadioButton`
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicRadioButtonUI`

    paint the radio button

    Overrides:
    :   `paint` in class `BasicRadioButtonUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintFocus

    protected void paintFocus([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") t,
    [Dimension](../../../../java/awt/Dimension.md "class in java.awt") d)

    Description copied from class: `BasicRadioButtonUI`

    Paints focused radio button.

    Overrides:
    :   `paintFocus` in class `BasicRadioButtonUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `t` - bounds
    :   `d` - the size of radio button