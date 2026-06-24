Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalScrollPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollPaneUI](../ScrollPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalScrollPaneUI

All Implemented Interfaces:
:   `ScrollPaneConstants`

---

public class MetalScrollPaneUI
extends [BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

A Metal L&F implementation of ScrollPaneUI.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `BasicScrollPaneUI.HSBChangeListener, BasicScrollPaneUI.MouseWheelHandler, BasicScrollPaneUI.PropertyChangeHandler, BasicScrollPaneUI.ViewportChangeHandler, BasicScrollPaneUI.VSBChangeListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `hsbChangeListener, scrollpane, spPropertyChangeListener, viewportChangeListener, vsbChangeListener`

  ### Fields inherited from interface javax.swing.[ScrollPaneConstants](../../ScrollPaneConstants.md "interface in javax.swing")

  `COLUMN_HEADER, HORIZONTAL_SCROLLBAR, HORIZONTAL_SCROLLBAR_ALWAYS, HORIZONTAL_SCROLLBAR_AS_NEEDED, HORIZONTAL_SCROLLBAR_NEVER, HORIZONTAL_SCROLLBAR_POLICY, LOWER_LEADING_CORNER, LOWER_LEFT_CORNER, LOWER_RIGHT_CORNER, LOWER_TRAILING_CORNER, ROW_HEADER, UPPER_LEADING_CORNER, UPPER_LEFT_CORNER, UPPER_RIGHT_CORNER, UPPER_TRAILING_CORNER, VERTICAL_SCROLLBAR, VERTICAL_SCROLLBAR_ALWAYS, VERTICAL_SCROLLBAR_AS_NEEDED, VERTICAL_SCROLLBAR_NEVER, VERTICAL_SCROLLBAR_POLICY, VIEWPORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalScrollPaneUI()`

  Constructs a `MetalScrollPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected PropertyChangeListener`

  `createScrollBarSwapListener()`

  Returns a new `PropertyChangeListener` for scroll bar swap events.

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs a new `MetalScrollPaneUI`.

  `void`

  `installListeners(JScrollPane scrollPane)`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected void`

  `uninstallListeners(JComponent c)`

  Unregisters listeners.

  `void`

  `uninstallListeners(JScrollPane scrollPane)`

  Deprecated.

  - Replaced by [`uninstallListeners(JComponent)`](#uninstallListeners(javax.swing.JComponent))

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `createHSBChangeListener, createMouseWheelListener, createPropertyChangeListener, createViewportChangeListener, createVSBChangeListener, getBaseline, getBaselineResizeBehavior, getMaximumSize, installDefaults, installKeyboardActions, paint, syncScrollPaneWithViewport, uninstallDefaults, uninstallKeyboardActions, updateColumnHeader, updateRowHeader, updateScrollBarDisplayPolicy, updateViewport`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMinimumSize, getPreferredSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalScrollPaneUI

    public MetalScrollPaneUI()

    Constructs a `MetalScrollPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs a new `MetalScrollPaneUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   a new `MetalScrollPaneUI`
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
    :   `installUI` in class `BasicScrollPaneUI`

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
    :   `uninstallUI` in class `BasicScrollPaneUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installListeners

    public void installListeners([JScrollPane](../../JScrollPane.md "class in javax.swing") scrollPane)

    Description copied from class: `BasicScrollPaneUI`

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicScrollPaneUI`

    Parameters:
    :   `scrollPane` - an instance of `JScrollPane`
  + ### uninstallListeners

    protected void uninstallListeners([JComponent](../../JComponent.md "class in javax.swing") c)

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicScrollPaneUI`

    Parameters:
    :   `c` - a component
  + ### uninstallListeners

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void uninstallListeners([JScrollPane](../../JScrollPane.md "class in javax.swing") scrollPane)

    Deprecated.

    - Replaced by [`uninstallListeners(JComponent)`](#uninstallListeners(javax.swing.JComponent))

    Parameters:
    :   `scrollPane` - an instance of the `JScrollPane`
  + ### createScrollBarSwapListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createScrollBarSwapListener()

    Returns a new `PropertyChangeListener` for scroll bar swap events.

    Returns:
    :   a new `PropertyChangeListener` for scroll bar swap events.