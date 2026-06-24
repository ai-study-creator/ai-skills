Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicFormattedTextFieldUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicFormattedTextFieldUI

All Implemented Interfaces:
:   `ViewFactory`

---

public class BasicFormattedTextFieldUI
extends [BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

Provides the look and feel implementation for
`JFormattedTextField`.

Since:
:   1.4

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicFormattedTextFieldUI()`

  Constructs a `BasicFormattedTextFieldUI`.
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

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  `create, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installDefaults, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintBackground, paintSafely, propertyChange, setView, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, update, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicFormattedTextFieldUI

    public BasicFormattedTextFieldUI()

    Constructs a `BasicFormattedTextFieldUI`.
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