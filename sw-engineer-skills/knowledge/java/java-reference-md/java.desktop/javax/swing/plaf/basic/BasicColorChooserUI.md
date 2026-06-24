Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicColorChooserUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ColorChooserUI](../ColorChooserUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicColorChooserUI

Direct Known Subclasses:
:   `SynthColorChooserUI`

---

public class BasicColorChooserUI
extends [ColorChooserUI](../ColorChooserUI.md "class in javax.swing.plaf")

Provides the basic look and feel for a JColorChooser.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicColorChooserUI.PropertyHandler`

  This class should be treated as a "protected" inner class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JColorChooser`

  `chooser`

  JColorChooser this BasicColorChooserUI is installed on.

  `protected AbstractColorChooserPanel[]`

  `defaultChoosers`

  The array of default color choosers.

  `protected ChangeListener`

  `previewListener`

  The instance of `ChangeListener`.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  The instance of `PropertyChangeListener`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicColorChooserUI()`

  Constructs a `BasicColorChooserUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected AbstractColorChooserPanel[]`

  `createDefaultChoosers()`

  Returns an array of default color choosers.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Returns an instance of `PropertyChangeListener`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of `BasicColorChooserUI`.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installListeners()`

  Registers listeners.

  `protected void`

  `installPreviewPanel()`

  Installs preview panel.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected void`

  `uninstallDefaultChoosers()`

  Uninstalls default color choosers.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `protected void`

  `uninstallPreviewPanel()`

  Removes installed preview panel from the UI delegate.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### chooser

    protected [JColorChooser](../../JColorChooser.md "class in javax.swing") chooser

    JColorChooser this BasicColorChooserUI is installed on.

    Since:
    :   1.5
  + ### defaultChoosers

    protected [AbstractColorChooserPanel](../../colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser")[] defaultChoosers

    The array of default color choosers.
  + ### previewListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") previewListener

    The instance of `ChangeListener`.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    The instance of `PropertyChangeListener`.
* ## Constructor Details

  + ### BasicColorChooserUI

    public BasicColorChooserUI()

    Constructs a `BasicColorChooserUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of `BasicColorChooserUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicColorChooserUI`
  + ### createDefaultChoosers

    protected [AbstractColorChooserPanel](../../colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser")[] createDefaultChoosers()

    Returns an array of default color choosers.

    Returns:
    :   an array of default color choosers
  + ### uninstallDefaultChoosers

    protected void uninstallDefaultChoosers()

    Uninstalls default color choosers.
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Reverses configuration which was done on the specified component during
    `installUI`. This method is invoked when this
    `UIComponent` instance is being removed as the UI delegate
    for the specified component. This method should undo the
    configuration performed in `installUI`, being careful to
    leave the `JComponent` instance in a clean state (no
    extraneous listeners, look-and-feel-specific property objects, etc.).
    This should include the following:
    1. Remove any UI-set borders from the component.+ Remove any UI-set layout managers on the component.+ Remove any UI-added sub-components from the component.+ Remove any UI-added event/property listeners from the component.+ Remove any UI-installed keyboard UI from the component.+ Nullify any allocated instance data objects to allow for GC.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installPreviewPanel

    protected void installPreviewPanel()

    Installs preview panel.
  + ### uninstallPreviewPanel

    protected void uninstallPreviewPanel()

    Removes installed preview panel from the UI delegate.

    Since:
    :   1.7
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Returns an instance of `PropertyChangeListener`.

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.