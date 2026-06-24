Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicDesktopPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.DesktopPaneUI](../DesktopPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicDesktopPaneUI

Direct Known Subclasses:
:   `SynthDesktopPaneUI`

---

public class BasicDesktopPaneUI
extends [DesktopPaneUI](../DesktopPaneUI.md "class in javax.swing.plaf")

Basic L&F for a desktop.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `BasicDesktopPaneUI.CloseAction`

  Handles closing an internal frame.

  `protected class`

  `BasicDesktopPaneUI.MaximizeAction`

  Handles maximizing an internal frame.

  `protected class`

  `BasicDesktopPaneUI.MinimizeAction`

  Handles minimizing an internal frame.

  `protected class`

  `BasicDesktopPaneUI.NavigateAction`

  Handles navigating to the next internal frame.

  `protected class`

  `BasicDesktopPaneUI.OpenAction`

  Handles restoring a minimized or maximized internal frame.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected KeyStroke`

  `closeKey`

  Deprecated.

  As of 1.3.

  `protected JDesktopPane`

  `desktop`

  The instance of `JDesktopPane`.

  `protected DesktopManager`

  `desktopManager`

  The instance of `DesktopManager`.

  `protected KeyStroke`

  `maximizeKey`

  Deprecated.

  As of 1.3.

  `protected KeyStroke`

  `minimizeKey`

  Deprecated.

  As of 1.3.

  `protected KeyStroke`

  `navigateKey`

  Deprecated.

  As of 1.3.

  `protected KeyStroke`

  `navigateKey2`

  Deprecated.

  As of 1.3.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicDesktopPaneUI()`

  Constructs a new instance of `BasicDesktopPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Returns the `PropertyChangeListener` to install on
  the `JDesktopPane`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `BasicDesktopPaneUI`.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installDesktopManager()`

  Installs desktop manager.

  `protected void`

  `installKeyboardActions()`

  Installs keyboard actions.

  `protected void`

  `installListeners()`

  Installs the `PropertyChangeListener` returned from
  `createPropertyChangeListener` on the
  `JDesktopPane`.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `registerKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallDesktopManager()`

  Uninstalls desktop manager.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Uninstalls the `PropertyChangeListener` returned from
  `createPropertyChangeListener` from the
  `JDesktopPane`.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `protected void`

  `unregisterKeyboardActions()`

  Unregisters keyboard actions.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### desktop

    protected [JDesktopPane](../../JDesktopPane.md "class in javax.swing") desktop

    The instance of `JDesktopPane`.
  + ### desktopManager

    protected [DesktopManager](../../DesktopManager.md "interface in javax.swing") desktopManager

    The instance of `DesktopManager`.
  + ### minimizeKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") minimizeKey

    Deprecated.

    As of 1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### maximizeKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") maximizeKey

    Deprecated.

    As of 1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### closeKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") closeKey

    Deprecated.

    As of 1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### navigateKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") navigateKey

    Deprecated.

    As of 1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### navigateKey2

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") navigateKey2

    Deprecated.

    As of 1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
* ## Constructor Details

  + ### BasicDesktopPaneUI

    public BasicDesktopPaneUI()

    Constructs a new instance of `BasicDesktopPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `BasicDesktopPaneUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicDesktopPaneUI`
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

    protected void installDefaults()

    Installs default properties.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### installListeners

    protected void installListeners()

    Installs the `PropertyChangeListener` returned from
    `createPropertyChangeListener` on the
    `JDesktopPane`.

    Since:
    :   1.5

    See Also:
    :   - [`createPropertyChangeListener()`](#createPropertyChangeListener())
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the `PropertyChangeListener` returned from
    `createPropertyChangeListener` from the
    `JDesktopPane`.

    Since:
    :   1.5

    See Also:
    :   - [`createPropertyChangeListener()`](#createPropertyChangeListener())
  + ### installDesktopManager

    protected void installDesktopManager()

    Installs desktop manager.
  + ### uninstallDesktopManager

    protected void uninstallDesktopManager()

    Uninstalls desktop manager.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs keyboard actions.
  + ### registerKeyboardActions

    protected void registerKeyboardActions()

    Registers keyboard actions.
  + ### unregisterKeyboardActions

    protected void unregisterKeyboardActions()

    Unregisters keyboard actions.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
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

    Description copied from class: `ComponentUI`

    Returns the specified component's maximum size appropriate for
    the look and feel. If `null` is returned, the maximum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

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
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Returns the `PropertyChangeListener` to install on
    the `JDesktopPane`.

    Returns:
    :   The PropertyChangeListener that will be added to track
        changes in the desktop pane.

    Since:
    :   1.5