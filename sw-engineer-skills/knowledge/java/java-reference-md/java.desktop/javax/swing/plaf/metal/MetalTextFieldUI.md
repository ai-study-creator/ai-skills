Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalTextFieldUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalTextFieldUI

All Implemented Interfaces:
:   `ViewFactory`

---

public class MetalTextFieldUI
extends [BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

Basis of a look and feel for a JTextField.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalTextFieldUI()`

  Constructs a `MetalTextFieldUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs `MetalTextFieldUI`.

  `void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed
  on the associated JTextComponent.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextFieldUI](../basic/BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  `create, getBaseline, getBaselineResizeBehavior, getPropertyPrefix`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installDefaults, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintBackground, paintSafely, setView, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, update, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalTextFieldUI

    public MetalTextFieldUI()

    Constructs a `MetalTextFieldUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs `MetalTextFieldUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   the instance of `MetalTextFieldUI`
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed
    on the associated JTextComponent. This is a hook
    which UI implementations may change to reflect how the
    UI displays bound properties of JTextComponent subclasses.

    Overrides:
    :   `propertyChange` in class `BasicTextUI`

    Parameters:
    :   `evt` - the property change event