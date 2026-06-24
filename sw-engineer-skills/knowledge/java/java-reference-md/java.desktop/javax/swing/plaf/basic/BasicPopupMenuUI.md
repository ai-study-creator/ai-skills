Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicPopupMenuUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.PopupMenuUI](../PopupMenuUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicPopupMenuUI

Direct Known Subclasses:
:   `SynthPopupMenuUI`

---

public class BasicPopupMenuUI
extends [PopupMenuUI](../PopupMenuUI.md "class in javax.swing.plaf")

A Windows L&F implementation of PopupMenuUI. This implementation
is a "combined" view/controller.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JPopupMenu`

  `popupMenu`

  The instance of `JPopupMenu`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicPopupMenuUI()`

  Constructs a new instance of `BasicPopupMenuUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs a new instance of `BasicPopupMenuUI`.

  `void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `boolean`

  `isPopupTrigger(MouseEvent e)`

  Returns whether or not the given `MouseEvent` is the popup menu
  trigger event for the platform

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[PopupMenuUI](../PopupMenuUI.md "class in javax.swing.plaf")

  `getPopup`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### popupMenu

    protected [JPopupMenu](../../JPopupMenu.md "class in javax.swing") popupMenu

    The instance of `JPopupMenu`.
* ## Constructor Details

  + ### BasicPopupMenuUI

    public BasicPopupMenuUI()

    Constructs a new instance of `BasicPopupMenuUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs a new instance of `BasicPopupMenuUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   a new instance of `BasicPopupMenuUI`
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
  + ### installDefaults

    public void installDefaults()

    Installs default properties.
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.
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
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### isPopupTrigger

    public boolean isPopupTrigger([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `PopupMenuUI`

    Returns whether or not the given `MouseEvent` is the popup menu
    trigger event for the platform

    Overrides:
    :   `isPopupTrigger` in class `PopupMenuUI`

    Parameters:
    :   `e` - a `MouseEvent`

    Returns:
    :   true if the `MouseEvent e` is the popup menu trigger