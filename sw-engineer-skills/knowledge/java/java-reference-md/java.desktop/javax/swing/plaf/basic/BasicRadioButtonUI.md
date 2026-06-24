Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicRadioButtonUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicRadioButtonUI

Direct Known Subclasses:
:   `BasicCheckBoxUI`, `MetalRadioButtonUI`

---

public class BasicRadioButtonUI
extends [BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

RadioButtonUI implementation for BasicRadioButtonUI

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Icon`

  `icon`

  The icon.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicRadioButtonUI()`

  Constructs a `BasicRadioButtonUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Returns an instance of `BasicRadioButtonUI`.

  `Icon`

  `getDefaultIcon()`

  Returns the default icon.

  `Dimension`

  `getPreferredSize(JComponent c)`

  The preferred size of the radio button

  `protected String`

  `getPropertyPrefix()`

  Returns the property prefix.

  `protected void`

  `installDefaults(AbstractButton b)`

  Installs default properties.

  `void`

  `paint(Graphics g,
  JComponent c)`

  paint the radio button

  `protected void`

  `paintFocus(Graphics g,
  Rectangle textRect,
  Dimension size)`

  Paints focused radio button.

  `protected void`

  `uninstallDefaults(AbstractButton b)`

  Uninstalls default properties.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  `getTextShiftOffset, paintIcon`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, installKeyboardActions, installListeners, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### icon

    protected [Icon](../../Icon.md "interface in javax.swing") icon

    The icon.
* ## Constructor Details

  + ### BasicRadioButtonUI

    public BasicRadioButtonUI()

    Constructs a `BasicRadioButtonUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Returns an instance of `BasicRadioButtonUI`.

    Parameters:
    :   `b` - a component

    Returns:
    :   an instance of `BasicRadioButtonUI`
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicButtonUI`

    Returns the property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicToggleButtonUI`

    Returns:
    :   the property prefix
  + ### installDefaults

    protected void installDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicButtonUI`

    Parameters:
    :   `b` - an abstract button
  + ### uninstallDefaults

    protected void uninstallDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicButtonUI`

    Parameters:
    :   `b` - an abstract button
  + ### getDefaultIcon

    public [Icon](../../Icon.md "interface in javax.swing") getDefaultIcon()

    Returns the default icon.

    Returns:
    :   the default icon
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    paint the radio button

    Overrides:
    :   `paint` in class `BasicToggleButtonUI`

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
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [Dimension](../../../../java/awt/Dimension.md "class in java.awt") size)

    Paints focused radio button.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `textRect` - bounds
    :   `size` - the size of radio button
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    The preferred size of the radio button

    Overrides:
    :   `getPreferredSize` in class `BasicButtonUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))