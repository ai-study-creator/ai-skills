Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthFormattedTextFieldUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

javax.swing.plaf.synth.SynthFormattedTextFieldUI

All Implemented Interfaces:
:   `SynthConstants`, `SynthUI`, `ViewFactory`

---

public class SynthFormattedTextFieldUI
extends [SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JFormattedTextField`](../../JFormattedTextField.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Field Summary

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthFormattedTextFieldUI()`

  Constructs a `SynthFormattedTextFieldUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI for a JFormattedTextField.

  `protected String`

  `getPropertyPrefix()`

  Fetches the name used as a key to lookup properties through the
  UIManager.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

  `getContext, installDefaults, paint, paintBackground, propertyChange, uninstallDefaults, update`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  `create, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintSafely, setView, uninstallKeyboardActions, uninstallListeners, uninstallUI, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthFormattedTextFieldUI

    public SynthFormattedTextFieldUI()

    Constructs a `SynthFormattedTextFieldUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI for a JFormattedTextField.

    Parameters:
    :   `c` - the formatted text field

    Returns:
    :   the UI
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Fetches the name used as a key to lookup properties through the
    UIManager. This is used as a prefix to all the standard
    text properties.

    Overrides:
    :   `getPropertyPrefix` in class `BasicTextFieldUI`

    Returns:
    :   the name "FormattedTextField"
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
    :   `paintBorder` in class `SynthTextFieldUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border