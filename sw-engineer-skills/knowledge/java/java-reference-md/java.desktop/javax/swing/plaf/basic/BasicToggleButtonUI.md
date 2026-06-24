Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToggleButtonUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicToggleButtonUI

Direct Known Subclasses:
:   `BasicRadioButtonUI`, `MetalToggleButtonUI`

---

public class BasicToggleButtonUI
extends [BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

BasicToggleButton implementation

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicToggleButtonUI()`

  Constructs a `BasicToggleButtonUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Returns an instance of `BasicToggleButtonUI`.

  `protected String`

  `getPropertyPrefix()`

  Returns the property prefix.

  `protected int`

  `getTextShiftOffset()`

  Overridden so that the text will not be rendered as shifted for
  Toggle buttons and subclasses.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintIcon(Graphics g,
  AbstractButton b,
  Rectangle iconRect)`

  Paints an icon in the specified location.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, getPreferredSize, installDefaults, installKeyboardActions, installListeners, installUI, paintButtonPressed, paintFocus, paintIcon, paintText, paintText, setTextShiftOffset, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicToggleButtonUI

    public BasicToggleButtonUI()

    Constructs a `BasicToggleButtonUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Returns an instance of `BasicToggleButtonUI`.

    Parameters:
    :   `b` - a component

    Returns:
    :   an instance of `BasicToggleButtonUI`
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicButtonUI`

    Returns the property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicButtonUI`

    Returns:
    :   the property prefix
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `BasicButtonUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintIcon

    protected void paintIcon([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect)

    Paints an icon in the specified location.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `b` - an instance of `Button`
    :   `iconRect` - bounds of an icon
  + ### getTextShiftOffset

    protected int getTextShiftOffset()

    Overridden so that the text will not be rendered as shifted for
    Toggle buttons and subclasses.

    Overrides:
    :   `getTextShiftOffset` in class `BasicButtonUI`

    Returns:
    :   the offset of the text