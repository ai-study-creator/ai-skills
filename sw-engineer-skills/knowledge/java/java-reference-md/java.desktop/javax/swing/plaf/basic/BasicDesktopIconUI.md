Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicDesktopIconUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.DesktopIconUI](../DesktopIconUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicDesktopIconUI

Direct Known Subclasses:
:   `MetalDesktopIconUI`, `SynthDesktopIconUI`

---

public class BasicDesktopIconUI
extends [DesktopIconUI](../DesktopIconUI.md "class in javax.swing.plaf")

Basic L&F for a minimized window on a desktop.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicDesktopIconUI.MouseInputHandler`

  Listens for mouse movements and acts on them.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JInternalFrame.JDesktopIcon`

  `desktopIcon`

  The instance of `JInternalFrame.JDesktopIcon`.

  `protected JInternalFrame`

  `frame`

  The instance of `JInternalFrame`.

  `protected JComponent`

  `iconPane`

  The title pane component used in the desktop icon.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicDesktopIconUI()`

  Constructs a new instance of `BasicDesktopIconUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected MouseInputListener`

  `createMouseInputListener()`

  Returns a new instance of `MouseInputListener`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `BasicDesktopIconUI`.

  `void`

  `deiconize()`

  De-iconifies the internal frame.

  `Insets`

  `getInsets(JComponent c)`

  Returns the insets.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Desktop icons can not be resized.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected void`

  `installComponents()`

  Registers components.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected void`

  `uninstallComponents()`

  Unregisters components.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### desktopIcon

    protected [JInternalFrame.JDesktopIcon](../../JInternalFrame.JDesktopIcon.md "class in javax.swing") desktopIcon

    The instance of `JInternalFrame.JDesktopIcon`.
  + ### frame

    protected [JInternalFrame](../../JInternalFrame.md "class in javax.swing") frame

    The instance of `JInternalFrame`.
  + ### iconPane

    protected [JComponent](../../JComponent.md "class in javax.swing") iconPane

    The title pane component used in the desktop icon.

    Since:
    :   1.5
* ## Constructor Details

  + ### BasicDesktopIconUI

    public BasicDesktopIconUI()

    Constructs a new instance of `BasicDesktopIconUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `BasicDesktopIconUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicDesktopIconUI`
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
  + ### installComponents

    protected void installComponents()

    Registers components.
  + ### uninstallComponents

    protected void uninstallComponents()

    Unregisters components.
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener()

    Returns a new instance of `MouseInputListener`.

    Returns:
    :   a new instance of `MouseInputListener`
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's preferred size appropriate for
    the look and feel. If `null` is returned, the preferred
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method returns `null`.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's minimum size appropriate for
    the look and feel. If `null` is returned, the minimum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Desktop icons can not be resized. Therefore, we should always
    return the minimum size of the desktop icon.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`getMinimumSize(javax.swing.JComponent)`](#getMinimumSize(javax.swing.JComponent))
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the insets.

    Parameters:
    :   `c` - a component

    Returns:
    :   the insets
  + ### deiconize

    public void deiconize()

    De-iconifies the internal frame.