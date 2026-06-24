Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalToolBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ToolBarUI](../ToolBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalToolBarUI

All Implemented Interfaces:
:   `SwingConstants`

---

public class MetalToolBarUI
extends [BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

A Metal Look and Feel implementation of ToolBarUI. This implementation
is a "combined" view/controller.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `MetalToolBarUI.MetalContainerListener`

  No longer used.

  `protected class`

  `MetalToolBarUI.MetalDockingListener`

  `DockingListener` for `MetalToolBarUI`.

  `protected class`

  `MetalToolBarUI.MetalRolloverListener`

  No longer used.

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `BasicToolBarUI.DockingListener, BasicToolBarUI.DragWindow, BasicToolBarUI.FrameListener, BasicToolBarUI.PropertyListener, BasicToolBarUI.ToolBarContListener, BasicToolBarUI.ToolBarFocusListener`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ContainerListener`

  `contListener`

  This protected field is implementation specific.

  `protected PropertyChangeListener`

  `rolloverListener`

  This protected field is implementation specific.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `constraintBeforeFloating, dockingBorderColor, dockingColor, dockingListener, downKey, dragWindow, floatingBorderColor, floatingColor, focusedCompIndex, leftKey, propertyListener, rightKey, toolBar, toolBarContListener, toolBarFocusListener, upKey`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalToolBarUI()`

  Constructs a `MetalToolBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected ContainerListener`

  `createContainerListener()`

  Creates a container listener that will be added to the JToolBar.

  `protected MouseInputListener`

  `createDockingListener()`

  Returns an instance of `MouseInputListener`.

  `protected Border`

  `createNonRolloverBorder()`

  Creates the non rollover border for toolbar components.

  `protected Border`

  `createRolloverBorder()`

  Creates a rollover border for toolbar components.

  `protected PropertyChangeListener`

  `createRolloverListener()`

  Creates a property change listener that will be added to the JToolBar.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs an instance of `MetalToolBarUI`.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected void`

  `setBorderToNonRollover(Component c)`

  Sets the border of the component to have a non-rollover border which
  was created by the [`BasicToolBarUI.createNonRolloverBorder()`](../basic/BasicToolBarUI.md#createNonRolloverBorder()) method.

  `protected void`

  `setDragOffset(Point p)`

  Sets the offset of the mouse cursor inside the DragWindow.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `void`

  `update(Graphics g,
  JComponent c)`

  If necessary paints the background of the component, then invokes
  `paint`.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `canDock, createDragWindow, createFloatingFrame, createFloatingWindow, createFrameListener, createPropertyListener, createToolBarContListener, createToolBarFocusListener, dragTo, floatAt, getDockingColor, getFloatingColor, getNonRolloverBorder, getRolloverBorder, installComponents, installDefaults, installKeyboardActions, installNonRolloverBorders, installNormalBorders, installRolloverBorders, isFloating, isRolloverBorders, navigateFocusedComp, paintDragWindow, setBorderToNormal, setBorderToRollover, setDockingColor, setFloating, setFloatingColor, setFloatingLocation, setOrientation, setRolloverBorders, uninstallComponents, uninstallDefaults, uninstallKeyboardActions`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### contListener

    protected [ContainerListener](../../../../java/awt/event/ContainerListener.md "interface in java.awt.event") contListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead.

    See Also:
    :   - [`createContainerListener()`](#createContainerListener())
  + ### rolloverListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") rolloverListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead.

    See Also:
    :   - [`createRolloverListener()`](#createRolloverListener())
* ## Constructor Details

  + ### MetalToolBarUI

    public MetalToolBarUI()

    Constructs a `MetalToolBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs an instance of `MetalToolBarUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MetalToolBarUI`
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
    :   `installUI` in class `BasicToolBarUI`

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
    :   `uninstallUI` in class `BasicToolBarUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installListeners

    protected void installListeners()

    Description copied from class: `BasicToolBarUI`

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicToolBarUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Description copied from class: `BasicToolBarUI`

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicToolBarUI`
  + ### createRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") createRolloverBorder()

    Description copied from class: `BasicToolBarUI`

    Creates a rollover border for toolbar components. The
    rollover border will be installed if rollover borders are
    enabled.

    Override this method to provide an alternate rollover border.

    Overrides:
    :   `createRolloverBorder` in class `BasicToolBarUI`

    Returns:
    :   a rollover border for toolbar components
  + ### createNonRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") createNonRolloverBorder()

    Description copied from class: `BasicToolBarUI`

    Creates the non rollover border for toolbar components. This
    border will be installed as the border for components added
    to the toolbar if rollover borders are not enabled.

    Override this method to provide an alternate rollover border.

    Overrides:
    :   `createNonRolloverBorder` in class `BasicToolBarUI`

    Returns:
    :   the non rollover border for toolbar components
  + ### setBorderToNonRollover

    protected void setBorderToNonRollover([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Description copied from class: `BasicToolBarUI`

    Sets the border of the component to have a non-rollover border which
    was created by the [`BasicToolBarUI.createNonRolloverBorder()`](../basic/BasicToolBarUI.md#createNonRolloverBorder()) method.

    Overrides:
    :   `setBorderToNonRollover` in class `BasicToolBarUI`

    Parameters:
    :   `c` - component which will have a non-rollover border installed

    See Also:
    :   - [`BasicToolBarUI.createNonRolloverBorder()`](../basic/BasicToolBarUI.md#createNonRolloverBorder())
  + ### createContainerListener

    protected [ContainerListener](../../../../java/awt/event/ContainerListener.md "interface in java.awt.event") createContainerListener()

    Creates a container listener that will be added to the JToolBar.
    If this method returns null then it will not be added to the
    toolbar.

    Returns:
    :   an instance of a `ContainerListener` or null
  + ### createRolloverListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createRolloverListener()

    Creates a property change listener that will be added to the JToolBar.
    If this method returns null then it will not be added to the
    toolbar.

    Returns:
    :   an instance of a `PropertyChangeListener` or null
  + ### createDockingListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createDockingListener()

    Description copied from class: `BasicToolBarUI`

    Returns an instance of `MouseInputListener`.

    Overrides:
    :   `createDockingListener` in class `BasicToolBarUI`

    Returns:
    :   an instance of `MouseInputListener`
  + ### setDragOffset

    protected void setDragOffset([Point](../../../../java/awt/Point.md "class in java.awt") p)

    Sets the offset of the mouse cursor inside the DragWindow.

    Parameters:
    :   `p` - the offset
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    If necessary paints the background of the component, then invokes
    `paint`.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `c` - JComponent painting on

    Throws:
    :   `NullPointerException` - if `g` or `c` is
        null

    Since:
    :   1.5

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
        - [`ComponentUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#paint(java.awt.Graphics,javax.swing.JComponent))