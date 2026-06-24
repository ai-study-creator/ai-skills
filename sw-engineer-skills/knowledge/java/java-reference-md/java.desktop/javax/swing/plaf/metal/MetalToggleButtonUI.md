Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalToggleButtonUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalToggleButtonUI

---

public class MetalToggleButtonUI
extends [BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

MetalToggleButton implementation

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

  The color of a focused toggle button.

  `protected Color`

  `selectColor`

  The color of a selected button.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `defaultTextIconGap, defaultTextShiftOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalToggleButtonUI()`

  Constructs a `MetalToggleButtonUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent b)`

  Constructs the `MetalToogleButtonUI`.

  `protected Color`

  `getDisabledTextColor()`

  Returns the color of a disabled text.

  `protected Color`

  `getFocusColor()`

  Returns the color of a focused toggle button.

  `protected Color`

  `getSelectColor()`

  Returns the color of a selected button.

  `void`

  `installDefaults(AbstractButton b)`

  Installs default properties.

  `protected void`

  `paintButtonPressed(Graphics g,
  AbstractButton b)`

  Paints a pressed button.

  `protected void`

  `paintFocus(Graphics g,
  AbstractButton b,
  Rectangle viewRect,
  Rectangle textRect,
  Rectangle iconRect)`

  Paints a focused button.

  `protected void`

  `paintIcon(Graphics g,
  AbstractButton b,
  Rectangle iconRect)`

  Paints the appropriate icon of the button `b` in the
  space `iconRect`.

  `protected void`

  `paintText(Graphics g,
  JComponent c,
  Rectangle textRect,
  String text)`

  Method which renders the text of the current button.

  `protected void`

  `uninstallDefaults(AbstractButton b)`

  Uninstalls default properties.

  `void`

  `update(Graphics g,
  JComponent c)`

  If necessary paints the background of the component, then invokes
  `paint`.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToggleButtonUI](../basic/BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  `getPropertyPrefix, getTextShiftOffset, paint`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicButtonUI](../basic/BasicButtonUI.md "class in javax.swing.plaf.basic")

  `clearTextShiftOffset, createButtonListener, getBaseline, getBaselineResizeBehavior, getDefaultTextIconGap, getMaximumSize, getMinimumSize, getPreferredSize, installKeyboardActions, installListeners, installUI, paintIcon, paintText, setTextShiftOffset, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### focusColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") focusColor

    The color of a focused toggle button.
  + ### selectColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectColor

    The color of a selected button.
  + ### disabledTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") disabledTextColor

    The color of a disabled text.
* ## Constructor Details

  + ### MetalToggleButtonUI

    public MetalToggleButtonUI()

    Constructs a `MetalToggleButtonUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Constructs the `MetalToogleButtonUI`.

    Parameters:
    :   `b` - a component

    Returns:
    :   the `MetalToogleButtonUI`.
  + ### installDefaults

    public void installDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

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
  + ### getSelectColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getSelectColor()

    Returns the color of a selected button.

    Returns:
    :   the color of a selected button
  + ### getDisabledTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getDisabledTextColor()

    Returns the color of a disabled text.

    Returns:
    :   the color of a disabled text
  + ### getFocusColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getFocusColor()

    Returns the color of a focused toggle button.

    Returns:
    :   the color of a focused toggle button
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    If necessary paints the background of the component, then invokes
    `paint`.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `c` - JComponent painting on

    Throws:
    :   `NullPointerException` - if `g` or `c` is
        null

    Since:
    :   1.5

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
        - [`ComponentUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#paint(java.awt.Graphics,javax.swing.JComponent))
  + ### paintButtonPressed

    protected void paintButtonPressed([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Description copied from class: `BasicButtonUI`

    Paints a pressed button.

    Overrides:
    :   `paintButtonPressed` in class `BasicButtonUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `b` - an abstract button
  + ### paintText

    protected void paintText([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Description copied from class: `BasicButtonUI`

    Method which renders the text of the current button.
    As of Java 2 platform v 1.4 this method should not be used or overridden.
    Use the paintText method which takes the AbstractButton argument.

    Overrides:
    :   `paintText` in class `BasicButtonUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component
    :   `textRect` - a bounding rectangle to render the text
    :   `text` - a string to render
  + ### paintFocus

    protected void paintFocus([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") viewRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect)

    Description copied from class: `BasicButtonUI`

    Paints a focused button.

    Overrides:
    :   `paintFocus` in class `BasicButtonUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `b` - an abstract button
    :   `viewRect` - a bounding rectangle to render the button
    :   `textRect` - a bounding rectangle to render the text
    :   `iconRect` - a bounding rectangle to render the icon
  + ### paintIcon

    protected void paintIcon([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect)

    Paints the appropriate icon of the button `b` in the
    space `iconRect`.

    Overrides:
    :   `paintIcon` in class `BasicToggleButtonUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `b` - Button to render for
    :   `iconRect` - space to render in

    Throws:
    :   `NullPointerException` - if any of the arguments are null.

    Since:
    :   1.5