Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthPasswordFieldUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

javax.swing.plaf.synth.SynthPasswordFieldUI

All Implemented Interfaces:
:   `SynthConstants`, `SynthUI`, `ViewFactory`

---

public class SynthPasswordFieldUI
extends [SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JPasswordField`](../../JPasswordField.md "class in javax.swing").

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

  `SynthPasswordFieldUI()`

  Constructs a `SynthPasswordFieldUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `View`

  `create(Element elem)`

  Creates a view (PasswordView) for an element.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI for a JPasswordField.

  `protected String`

  `getPropertyPrefix()`

  Fetches the name used as a key to look up properties through the
  UIManager.

  `protected void`

  `installDefaults()`

  Installs the necessary properties on the JPasswordField.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

  `getContext, paint, paintBackground, propertyChange, uninstallDefaults, update`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  `getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintSafely, setView, uninstallKeyboardActions, uninstallListeners, uninstallUI, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthPasswordFieldUI

    public SynthPasswordFieldUI()

    Constructs a `SynthPasswordFieldUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI for a JPasswordField.

    Parameters:
    :   `c` - the JPasswordField

    Returns:
    :   the UI
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Fetches the name used as a key to look up properties through the
    UIManager. This is used as a prefix to all the standard
    text properties.

    Overrides:
    :   `getPropertyPrefix` in class `BasicTextFieldUI`

    Returns:
    :   the name ("PasswordField")
  + ### installDefaults

    protected void installDefaults()

    Installs the necessary properties on the JPasswordField.

    Overrides:
    :   `installDefaults` in class `SynthTextFieldUI`

    See Also:
    :   - [`BasicTextUI.uninstallDefaults()`](../basic/BasicTextUI.md#uninstallDefaults())
        - [`BasicTextUI.installUI(javax.swing.JComponent)`](../basic/BasicTextUI.md#installUI(javax.swing.JComponent))
  + ### create

    public [View](../../text/View.md "class in javax.swing.text") create([Element](../../text/Element.md "interface in javax.swing.text") elem)

    Creates a view (PasswordView) for an element.

    Specified by:
    :   `create` in interface `ViewFactory`

    Overrides:
    :   `create` in class `BasicTextFieldUI`

    Parameters:
    :   `elem` - the element

    Returns:
    :   the view

    See Also:
    :   - [`View`](../../text/View.md "class in javax.swing.text")
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
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.

    Overrides:
    :   `installKeyboardActions` in class `BasicTextUI`