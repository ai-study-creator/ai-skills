Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicEditorPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicEditorPaneUI

All Implemented Interfaces:
:   `ViewFactory`

Direct Known Subclasses:
:   `BasicTextPaneUI`, `SynthEditorPaneUI`

---

public class BasicEditorPaneUI
extends [BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

Provides the look and feel for a JEditorPane.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicEditorPaneUI()`

  Creates a new BasicEditorPaneUI.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI for the JTextPane.

  `EditorKit`

  `getEditorKit(JTextComponent tc)`

  Fetches the EditorKit for the UI.

  `protected String`

  `getPropertyPrefix()`

  Fetches the name used as a key to lookup properties through the
  UIManager.

  `void`

  `installUI(JComponent c)`

  Installs the UI for a component.

  `protected void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed
  on the associated JTextComponent.

  `void`

  `uninstallUI(JComponent c)`

  Deinstalls the UI for a component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installDefaults, installKeyboardActions, installListeners, modelChanged, modelToView, modelToView, modelToView2D, paint, paintBackground, paintSafely, setView, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, update, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicEditorPaneUI

    public BasicEditorPaneUI()

    Creates a new BasicEditorPaneUI.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI for the JTextPane.

    Parameters:
    :   `c` - the JTextPane component

    Returns:
    :   the UI
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Fetches the name used as a key to lookup properties through the
    UIManager. This is used as a prefix to all the standard
    text properties.

    Specified by:
    :   `getPropertyPrefix` in class `BasicTextUI`

    Returns:
    :   the name ("EditorPane")
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the UI for a component. This does the following
    things.
    1. Sets the associated component to opaque if the opaque property
       has not already been set by the client program. This will cause the
       component's background color to be painted.+ Installs the default caret and highlighter into the
         associated component. These properties are only set if their
         current value is either `null` or an instance of
         [`UIResource`](../UIResource.md "interface in javax.swing.plaf").+ Attaches to the editor and model. If there is no
           model, a default one is created.+ Creates the view factory and the view hierarchy used
             to represent the model.

    Overrides:
    :   `installUI` in class `BasicTextUI`

    Parameters:
    :   `c` - the editor component

    Since:
    :   1.5

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Deinstalls the UI for a component. This removes the listeners,
    uninstalls the highlighter, removes views, and nulls out the keymap.

    Overrides:
    :   `uninstallUI` in class `BasicTextUI`

    Parameters:
    :   `c` - the editor component

    Since:
    :   1.5

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
  + ### getEditorKit

    public [EditorKit](../../text/EditorKit.md "class in javax.swing.text") getEditorKit([JTextComponent](../../text/JTextComponent.md "class in javax.swing.text") tc)

    Fetches the EditorKit for the UI. This is whatever is
    currently set in the associated JEditorPane.

    Overrides:
    :   `getEditorKit` in class `BasicTextUI`

    Parameters:
    :   `tc` - the text component for which this UI is installed

    Returns:
    :   the editor capabilities

    See Also:
    :   - [`TextUI.getEditorKit(javax.swing.text.JTextComponent)`](../TextUI.md#getEditorKit(javax.swing.text.JTextComponent))
  + ### propertyChange

    protected void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed
    on the associated JTextComponent. This is a hook
    which UI implementations may change to reflect how the
    UI displays bound properties of JTextComponent subclasses.
    This is implemented to rebuild the ActionMap based upon an
    EditorKit change.

    Overrides:
    :   `propertyChange` in class `BasicTextUI`

    Parameters:
    :   `evt` - the property change event