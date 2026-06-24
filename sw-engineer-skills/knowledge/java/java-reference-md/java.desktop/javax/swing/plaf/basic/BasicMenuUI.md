Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicMenuUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.MenuItemUI](../MenuItemUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicMenuUI

Direct Known Subclasses:
:   `SynthMenuUI`

---

public class BasicMenuUI
extends [BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

A default L&F implementation of MenuUI. This implementation
is a "combined" view/controller.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicMenuUI.ChangeHandler`

  As of Java 2 platform 1.4, this previously undocumented class
  is now obsolete.

  `protected class`

  `BasicMenuUI.MouseInputHandler`

  Instantiated and used by a menu item to handle the current menu selection
  from mouse events.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeListener`

  `changeListener`

  The instance of `ChangeListener`.

  `protected MenuListener`

  `menuListener`

  The instance of `MenuListener`.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `acceleratorDelimiter, acceleratorFont, acceleratorForeground, acceleratorSelectionForeground, arrowIcon, checkIcon, defaultTextIconGap, disabledForeground, menuDragMouseListener, menuItem, menuKeyListener, mouseInputListener, oldBorderPainted, propertyChangeListener, selectionBackground, selectionForeground`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicMenuUI()`

  Constructs a `BasicMenuUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected ChangeListener`

  `createChangeListener(JComponent c)`

  Returns an instance of `ChangeListener`.

  `protected MenuDragMouseListener`

  `createMenuDragMouseListener(JComponent c)`

  Returns an instance of `MenuDragMouseListener`.

  `protected MenuKeyListener`

  `createMenuKeyListener(JComponent c)`

  Returns an instance of `MenuKeyListener`.

  `protected MenuListener`

  `createMenuListener(JComponent c)`

  Returns an instance of `MenuListener`.

  `protected MouseInputListener`

  `createMouseInputListener(JComponent c)`

  Returns an instance of `MouseInputListener`.

  `protected PropertyChangeListener`

  `createPropertyChangeListener(JComponent c)`

  Creates a `PropertyChangeListener` which will be added to
  the menu item.

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs a new instance of `BasicMenuUI`.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `protected String`

  `getPropertyPrefix()`

  Returns a property prefix.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard action.

  `protected void`

  `installListeners()`

  Registers listeners.

  `protected void`

  `setupPostTimer(JMenu menu)`

  Sets timer to the `menu`.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  `doClick, getPath, getPreferredMenuItemSize, getPreferredSize, installComponents, installUI, paint, paintBackground, paintMenuItem, paintText, uninstallComponents, uninstallUI, update`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### changeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") changeListener

    The instance of `ChangeListener`.
  + ### menuListener

    protected [MenuListener](../../event/MenuListener.md "interface in javax.swing.event") menuListener

    The instance of `MenuListener`.
* ## Constructor Details

  + ### BasicMenuUI

    public BasicMenuUI()

    Constructs a `BasicMenuUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs a new instance of `BasicMenuUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   a new instance of `BasicMenuUI`
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicMenuItemUI`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicMenuItemUI`
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Description copied from class: `BasicMenuItemUI`

    Returns a property prefix.

    Overrides:
    :   `getPropertyPrefix` in class `BasicMenuItemUI`

    Returns:
    :   a property prefix
  + ### installListeners

    protected void installListeners()

    Description copied from class: `BasicMenuItemUI`

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicMenuItemUI`
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Description copied from class: `BasicMenuItemUI`

    Registers keyboard action.

    Overrides:
    :   `installKeyboardActions` in class `BasicMenuItemUI`
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Description copied from class: `BasicMenuItemUI`

    Unregisters keyboard actions.

    Overrides:
    :   `uninstallKeyboardActions` in class `BasicMenuItemUI`
  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicMenuItemUI`

    Returns an instance of `MouseInputListener`.

    Overrides:
    :   `createMouseInputListener` in class `BasicMenuItemUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MouseInputListener`
  + ### createMenuListener

    protected [MenuListener](../../event/MenuListener.md "interface in javax.swing.event") createMenuListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MenuListener`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MenuListener`
  + ### createChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") createChangeListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `ChangeListener`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `ChangeListener`
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicMenuItemUI`

    Creates a `PropertyChangeListener` which will be added to
    the menu item.
    If this method returns null then it will not be added to the menu item.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicMenuItemUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of a `PropertyChangeListener` or null
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Description copied from class: `BasicMenuItemUI`

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicMenuItemUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Description copied from class: `BasicMenuItemUI`

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicMenuItemUI`
  + ### createMenuDragMouseListener

    protected [MenuDragMouseListener](../../event/MenuDragMouseListener.md "interface in javax.swing.event") createMenuDragMouseListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicMenuItemUI`

    Returns an instance of `MenuDragMouseListener`.

    Overrides:
    :   `createMenuDragMouseListener` in class `BasicMenuItemUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MenuDragMouseListener`
  + ### createMenuKeyListener

    protected [MenuKeyListener](../../event/MenuKeyListener.md "interface in javax.swing.event") createMenuKeyListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicMenuItemUI`

    Returns an instance of `MenuKeyListener`.

    Overrides:
    :   `createMenuKeyListener` in class `BasicMenuItemUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MenuKeyListener`
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
    :   `getMinimumSize` in class `BasicMenuItemUI`

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
    :   `getMaximumSize` in class `BasicMenuItemUI`

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
  + ### setupPostTimer

    protected void setupPostTimer([JMenu](../../JMenu.md "class in javax.swing") menu)

    Sets timer to the `menu`.

    Parameters:
    :   `menu` - an instance of `JMenu`.