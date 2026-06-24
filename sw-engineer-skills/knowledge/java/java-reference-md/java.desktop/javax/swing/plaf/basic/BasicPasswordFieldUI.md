Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicPasswordFieldUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicPasswordFieldUI

All Implemented Interfaces:
:   `ViewFactory`

---

public class BasicPasswordFieldUI
extends [BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

Provides the Windows look and feel for a password field.
The only difference from the standard text field is that
the view of the text is simply a string of the echo
character as specified in JPasswordField, rather than the
real text contained in the field.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicPasswordFieldUI()`

  Constructs a `BasicPasswordFieldUI`.
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

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  `getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintBackground, paintSafely, propertyChange, setView, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, update, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicPasswordFieldUI

    public BasicPasswordFieldUI()

    Constructs a `BasicPasswordFieldUI`.
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
    :   `installDefaults` in class `BasicTextUI`

    Since:
    :   1.6

    See Also:
    :   - [`BasicTextUI.uninstallDefaults()`](BasicTextUI.md#uninstallDefaults())
        - [`BasicTextUI.installUI(javax.swing.JComponent)`](BasicTextUI.md#installUI(javax.swing.JComponent))
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