Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalLabelUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.LabelUI](../LabelUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicLabelUI](../basic/BasicLabelUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalLabelUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

---

public class MetalLabelUI
extends [BasicLabelUI](../basic/BasicLabelUI.md "class in javax.swing.plaf.basic")

A Windows L&F implementation of LabelUI. This implementation
is completely static, i.e. there's only one UIView implementation
that's shared by all JLabel objects.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static MetalLabelUI`

  `metalLabelUI`

  The default `MetalLabelUI` instance.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicLabelUI](../basic/BasicLabelUI.md "class in javax.swing.plaf.basic")

  `labelUI`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalLabelUI()`

  Constructs a `MetalLabelUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns an instance of `MetalLabelUI`.

  `protected void`

  `paintDisabledText(JLabel l,
  Graphics g,
  String s,
  int textX,
  int textY)`

  Just paint the text gray (Label.disabledForeground) rather than
  in the labels foreground color.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicLabelUI](../basic/BasicLabelUI.md "class in javax.swing.plaf.basic")

  `getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installComponents, installDefaults, installKeyboardActions, installListeners, installUI, layoutCL, paint, paintEnabledText, propertyChange, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### metalLabelUI

    protected static [MetalLabelUI](MetalLabelUI.md "class in javax.swing.plaf.metal") metalLabelUI

    The default `MetalLabelUI` instance. This field might
    not be used. To change the default instance use a subclass which
    overrides the `createUI` method, and place that class
    name in defaults table under the key "LabelUI".
* ## Constructor Details

  + ### MetalLabelUI

    public MetalLabelUI()

    Constructs a `MetalLabelUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MetalLabelUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MetalLabelUI`
  + ### paintDisabledText

    protected void paintDisabledText([JLabel](../../JLabel.md "class in javax.swing") l,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") s,
    int textX,
    int textY)

    Just paint the text gray (Label.disabledForeground) rather than
    in the labels foreground color.

    Overrides:
    :   `paintDisabledText` in class `BasicLabelUI`

    Parameters:
    :   `l` - an instance of `JLabel`
    :   `g` - an instance of `Graphics`
    :   `s` - a text
    :   `textX` - an X coordinate
    :   `textY` - an Y coordinate

    See Also:
    :   - [`BasicLabelUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../basic/BasicLabelUI.md#paint(java.awt.Graphics,javax.swing.JComponent))
        - [`BasicLabelUI.paintEnabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](../basic/BasicLabelUI.md#paintEnabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int))