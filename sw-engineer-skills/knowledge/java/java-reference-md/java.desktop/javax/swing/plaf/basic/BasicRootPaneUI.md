Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicRootPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.RootPaneUI](../RootPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicRootPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Direct Known Subclasses:
:   `MetalRootPaneUI`, `SynthRootPaneUI`

---

public class BasicRootPaneUI
extends [RootPaneUI](../RootPaneUI.md "class in javax.swing.plaf")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Basic implementation of RootPaneUI, there is one shared between all
JRootPane instances.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicRootPaneUI()`

  Constructs a `BasicRootPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of `BasicRootPaneUI`.

  `protected void`

  `installComponents(JRootPane root)`

  Installs components.

  `protected void`

  `installDefaults(JRootPane c)`

  Installs default properties.

  `protected void`

  `installKeyboardActions(JRootPane root)`

  Registers keyboard actions.

  `protected void`

  `installListeners(JRootPane root)`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Invoked when a property changes on the root pane.

  `protected void`

  `uninstallComponents(JRootPane root)`

  Unregisters components.

  `protected void`

  `uninstallDefaults(JRootPane root)`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions(JRootPane root)`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners(JRootPane root)`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicRootPaneUI

    public BasicRootPaneUI()

    Constructs a `BasicRootPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of `BasicRootPaneUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicRootPaneUI`
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
  + ### installDefaults

    protected void installDefaults([JRootPane](../../JRootPane.md "class in javax.swing") c)

    Installs default properties.

    Parameters:
    :   `c` - an instance of `JRootPane`
  + ### installComponents

    protected void installComponents([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Installs components.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### installListeners

    protected void installListeners([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Registers listeners.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### installKeyboardActions

    protected void installKeyboardActions([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Registers keyboard actions.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### uninstallDefaults

    protected void uninstallDefaults([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Uninstalls default properties.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### uninstallComponents

    protected void uninstallComponents([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Unregisters components.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### uninstallListeners

    protected void uninstallListeners([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Unregisters listeners.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions([JRootPane](../../JRootPane.md "class in javax.swing") root)

    Unregisters keyboard actions.

    Parameters:
    :   `root` - an instance of `JRootPane`
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Invoked when a property changes on the root pane. If the event
    indicates the `defaultButton` has changed, this will
    reinstall the keyboard actions.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.