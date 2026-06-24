Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.InternalFrameUI](../InternalFrameUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicInternalFrameUI

Direct Known Subclasses:
:   `MetalInternalFrameUI`, `SynthInternalFrameUI`

---

public class BasicInternalFrameUI
extends [InternalFrameUI](../InternalFrameUI.md "class in javax.swing.plaf")

A basic L&F implementation of JInternalFrame.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `BasicInternalFrameUI.BasicInternalFrameListener`

  Basic internal frame listener.

  `protected class`

  `BasicInternalFrameUI.BorderListener`

  Listens for border adjustments.

  `protected class`

  `BasicInternalFrameUI.ComponentHandler`

  Component handler.

  `protected class`

  `BasicInternalFrameUI.GlassPaneDispatcher`

  Glass pane dispatcher.

  `class`

  `BasicInternalFrameUI.InternalFrameLayout`

  Internal frame layout.

  `class`

  `BasicInternalFrameUI.InternalFramePropertyChangeListener`

  Internal frame property change listener.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected MouseInputAdapter`

  `borderListener`

  Border listener

  `protected ComponentListener`

  `componentListener`

  Component listener

  `protected JComponent`

  `eastPane`

  East pane

  `protected JInternalFrame`

  `frame`

  frame

  `protected MouseInputListener`

  `glassPaneDispatcher`

  Glass pane dispatcher

  `protected LayoutManager`

  `internalFrameLayout`

  Internal frame layout

  `protected JComponent`

  `northPane`

  North pane

  `protected KeyStroke`

  `openMenuKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  Property change listener

  `protected JComponent`

  `southPane`

  South pane

  `protected BasicInternalFrameTitlePane`

  `titlePane`

  Title pane

  `protected JComponent`

  `westPane`

  West pane
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicInternalFrameUI(JInternalFrame b)`

  Constructs a `BasicInternalFrameUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `activateFrame(JInternalFrame f)`

  This method is called when the frame becomes selected.

  `protected void`

  `closeFrame(JInternalFrame f)`

  This method is called when the user wants to close the frame.

  `protected MouseInputAdapter`

  `createBorderListener(JInternalFrame w)`

  Creates the border listener.

  `protected ComponentListener`

  `createComponentListener()`

  Creates a component listener.

  `protected DesktopManager`

  `createDesktopManager()`

  Creates the desktop manager.

  `protected JComponent`

  `createEastPane(JInternalFrame w)`

  Creates the east pane.

  `protected MouseInputListener`

  `createGlassPaneDispatcher()`

  Creates a `GlassPaneDispatcher`.

  `protected void`

  `createInternalFrameListener()`

  Creates the internal frame listener.

  `protected LayoutManager`

  `createLayoutManager()`

  Creates the layout manager.

  `protected JComponent`

  `createNorthPane(JInternalFrame w)`

  Creates the north pane.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates the property change listener.

  `protected JComponent`

  `createSouthPane(JInternalFrame w)`

  Creates the north pane.

  `static ComponentUI`

  `createUI(JComponent b)`

  Returns a component UI.

  `protected JComponent`

  `createWestPane(JInternalFrame w)`

  Creates the west pane.

  `protected void`

  `deactivateFrame(JInternalFrame f)`

  This method is called when the frame is no longer selected.

  `protected void`

  `deiconifyFrame(JInternalFrame f)`

  This method is called when the user wants to deiconify the frame.

  `protected void`

  `deinstallMouseHandlers(JComponent c)`

  Deinstalls the mouse handlers.

  `protected DesktopManager`

  `getDesktopManager()`

  Returns the proper DesktopManager.

  `JComponent`

  `getEastPane()`

  Returns the east pane.

  `Dimension`

  `getMaximumSize(JComponent x)`

  Returns the maximum size.

  `Dimension`

  `getMinimumSize(JComponent x)`

  Returns the minimum size.

  `JComponent`

  `getNorthPane()`

  Returns the north pane.

  `Dimension`

  `getPreferredSize(JComponent x)`

  Returns the preferred size.

  `JComponent`

  `getSouthPane()`

  Returns the south pane.

  `JComponent`

  `getWestPane()`

  Returns the west pane.

  `protected void`

  `iconifyFrame(JInternalFrame f)`

  This method is called when the user wants to iconify the frame.

  `protected void`

  `installComponents()`

  Installs the components.

  `protected void`

  `installDefaults()`

  Installs the defaults.

  `protected void`

  `installKeyboardActions()`

  Installs the keyboard actions.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `protected void`

  `installMouseHandlers(JComponent c)`

  Installs the mouse handlers.

  `void`

  `installUI(JComponent c)`

  Installs the UI.

  `final boolean`

  `isKeyBindingActive()`

  Returns whether or no the key binding is active.

  `protected final boolean`

  `isKeyBindingRegistered()`

  Returns whether or no the key binding is registered.

  `protected void`

  `maximizeFrame(JInternalFrame f)`

  This method is called when the user wants to maximize the frame.

  `protected void`

  `minimizeFrame(JInternalFrame f)`

  This method is called when the user wants to minimize the frame.

  `protected void`

  `replacePane(JComponent currentPane,
  JComponent newPane)`

  Installs necessary mouse handlers on `newPane`
  and adds it to the frame.

  `void`

  `setEastPane(JComponent c)`

  Sets the east pane.

  `protected final void`

  `setKeyBindingActive(boolean b)`

  Sets the key binding activity.

  `protected final void`

  `setKeyBindingRegistered(boolean b)`

  Sets the key binding registration.

  `void`

  `setNorthPane(JComponent c)`

  Sets the north pane.

  `void`

  `setSouthPane(JComponent c)`

  Sets the south pane.

  `protected void`

  `setupMenuCloseKey()`

  Setup the menu close key.

  `protected void`

  `setupMenuOpenKey()`

  Setup the menu open key.

  `void`

  `setWestPane(JComponent c)`

  Sets the west pane.

  `protected void`

  `uninstallComponents()`

  Uninstalls the components.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallKeyboardActions()`

  Uninstalls the keyboard actions.

  `protected void`

  `uninstallListeners()`

  Uninstalls the listeners.

  `void`

  `uninstallUI(JComponent c)`

  Uninstalls the UI.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### frame

    protected [JInternalFrame](../../JInternalFrame.md "class in javax.swing") frame

    frame
  + ### borderListener

    protected [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event") borderListener

    Border listener
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    Property change listener
  + ### internalFrameLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") internalFrameLayout

    Internal frame layout
  + ### componentListener

    protected [ComponentListener](../../../../java/awt/event/ComponentListener.md "interface in java.awt.event") componentListener

    Component listener
  + ### glassPaneDispatcher

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") glassPaneDispatcher

    Glass pane dispatcher
  + ### northPane

    protected [JComponent](../../JComponent.md "class in javax.swing") northPane

    North pane
  + ### southPane

    protected [JComponent](../../JComponent.md "class in javax.swing") southPane

    South pane
  + ### westPane

    protected [JComponent](../../JComponent.md "class in javax.swing") westPane

    West pane
  + ### eastPane

    protected [JComponent](../../JComponent.md "class in javax.swing") eastPane

    East pane
  + ### titlePane

    protected [BasicInternalFrameTitlePane](BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic") titlePane

    Title pane
  + ### openMenuKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") openMenuKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
* ## Constructor Details

  + ### BasicInternalFrameUI

    public BasicInternalFrameUI([JInternalFrame](../../JInternalFrame.md "class in javax.swing") b)

    Constructs a `BasicInternalFrameUI`.

    Parameters:
    :   `b` - the internal frame
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Returns a component UI.

    Parameters:
    :   `b` - a component

    Returns:
    :   a component UI
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the UI.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Uninstalls the UI.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults()

    Installs the defaults.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs the keyboard actions.
  + ### installComponents

    protected void installComponents()

    Installs the components.
  + ### installListeners

    protected void installListeners()

    Installs the listeners.

    Since:
    :   1.3
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.
  + ### uninstallComponents

    protected void uninstallComponents()

    Uninstalls the components.
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the listeners.

    Since:
    :   1.3
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Uninstalls the keyboard actions.
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Creates the layout manager.

    Returns:
    :   the layout manager
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates the property change listener.

    Returns:
    :   the property change listener
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") x)

    Returns the preferred size.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `x` - the component

    Returns:
    :   the preferred size

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") x)

    Returns the minimum size.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `x` - the component

    Returns:
    :   the minimum size

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") x)

    Returns the maximum size.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `x` - the component

    Returns:
    :   the maximum size

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### replacePane

    protected void replacePane([JComponent](../../JComponent.md "class in javax.swing") currentPane,
    [JComponent](../../JComponent.md "class in javax.swing") newPane)

    Installs necessary mouse handlers on `newPane`
    and adds it to the frame.
    Reverse process for the `currentPane`.

    Parameters:
    :   `currentPane` - this `Jcomponent` is the current pane being
        viewed that has mouse handlers installed
    :   `newPane` - this `Jcomponent` is the pane which will be added
        and have mouse handlers installed
  + ### deinstallMouseHandlers

    protected void deinstallMouseHandlers([JComponent](../../JComponent.md "class in javax.swing") c)

    Deinstalls the mouse handlers.

    Parameters:
    :   `c` - the component
  + ### installMouseHandlers

    protected void installMouseHandlers([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the mouse handlers.

    Parameters:
    :   `c` - the component
  + ### createNorthPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createNorthPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the north pane.

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the north pane
  + ### createSouthPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createSouthPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the north pane.

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the north pane
  + ### createWestPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createWestPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the west pane.

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the west pane
  + ### createEastPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createEastPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the east pane.

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the east pane
  + ### createBorderListener

    protected [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event") createBorderListener([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the border listener.

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the border listener
  + ### createInternalFrameListener

    protected void createInternalFrameListener()

    Creates the internal frame listener.
  + ### isKeyBindingRegistered

    protected final boolean isKeyBindingRegistered()

    Returns whether or no the key binding is registered.

    Returns:
    :   whether or no the key binding is registered
  + ### setKeyBindingRegistered

    protected final void setKeyBindingRegistered(boolean b)

    Sets the key binding registration.

    Parameters:
    :   `b` - new value for key binding registration
  + ### isKeyBindingActive

    public final boolean isKeyBindingActive()

    Returns whether or no the key binding is active.

    Returns:
    :   whether or no the key binding is active
  + ### setKeyBindingActive

    protected final void setKeyBindingActive(boolean b)

    Sets the key binding activity.

    Parameters:
    :   `b` - new value for key binding activity
  + ### setupMenuOpenKey

    protected void setupMenuOpenKey()

    Setup the menu open key.
  + ### setupMenuCloseKey

    protected void setupMenuCloseKey()

    Setup the menu close key.
  + ### getNorthPane

    public [JComponent](../../JComponent.md "class in javax.swing") getNorthPane()

    Returns the north pane.

    Returns:
    :   the north pane
  + ### setNorthPane

    public void setNorthPane([JComponent](../../JComponent.md "class in javax.swing") c)

    Sets the north pane.

    Parameters:
    :   `c` - the new north pane
  + ### getSouthPane

    public [JComponent](../../JComponent.md "class in javax.swing") getSouthPane()

    Returns the south pane.

    Returns:
    :   the south pane
  + ### setSouthPane

    public void setSouthPane([JComponent](../../JComponent.md "class in javax.swing") c)

    Sets the south pane.

    Parameters:
    :   `c` - the new south pane
  + ### getWestPane

    public [JComponent](../../JComponent.md "class in javax.swing") getWestPane()

    Returns the west pane.

    Returns:
    :   the west pane
  + ### setWestPane

    public void setWestPane([JComponent](../../JComponent.md "class in javax.swing") c)

    Sets the west pane.

    Parameters:
    :   `c` - the new west pane
  + ### getEastPane

    public [JComponent](../../JComponent.md "class in javax.swing") getEastPane()

    Returns the east pane.

    Returns:
    :   the east pane
  + ### setEastPane

    public void setEastPane([JComponent](../../JComponent.md "class in javax.swing") c)

    Sets the east pane.

    Parameters:
    :   `c` - the new east pane
  + ### getDesktopManager

    protected [DesktopManager](../../DesktopManager.md "interface in javax.swing") getDesktopManager()

    Returns the proper DesktopManager. Calls getDesktopPane() to
    find the JDesktop component and returns the desktopManager from
    it. If this fails, it will return a default DesktopManager that
    should work in arbitrary parents.

    Returns:
    :   the proper DesktopManager
  + ### createDesktopManager

    protected [DesktopManager](../../DesktopManager.md "interface in javax.swing") createDesktopManager()

    Creates the desktop manager.

    Returns:
    :   the desktop manager
  + ### closeFrame

    protected void closeFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the user wants to close the frame.
    The `playCloseSound` Action is fired.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### maximizeFrame

    protected void maximizeFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the user wants to maximize the frame.
    The `playMaximizeSound` Action is fired.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### minimizeFrame

    protected void minimizeFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the user wants to minimize the frame.
    The `playRestoreDownSound` Action is fired.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### iconifyFrame

    protected void iconifyFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the user wants to iconify the frame.
    The `playMinimizeSound` Action is fired.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### deiconifyFrame

    protected void deiconifyFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the user wants to deiconify the frame.
    The `playRestoreUpSound` Action is fired.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### activateFrame

    protected void activateFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the frame becomes selected.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### deactivateFrame

    protected void deactivateFrame([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    This method is called when the frame is no longer selected.
    This action is delegated to the desktopManager.

    Parameters:
    :   `f` - the `JInternalFrame` being viewed
  + ### createComponentListener

    protected [ComponentListener](../../../../java/awt/event/ComponentListener.md "interface in java.awt.event") createComponentListener()

    Creates a component listener.

    Returns:
    :   a component listener
  + ### createGlassPaneDispatcher

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createGlassPaneDispatcher()

    Creates a `GlassPaneDispatcher`.

    Returns:
    :   a `GlassPaneDispatcher`