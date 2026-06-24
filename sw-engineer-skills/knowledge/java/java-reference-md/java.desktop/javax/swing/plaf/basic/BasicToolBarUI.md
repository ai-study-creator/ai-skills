Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToolBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ToolBarUI](../ToolBarUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicToolBarUI

All Implemented Interfaces:
:   `SwingConstants`

Direct Known Subclasses:
:   `MetalToolBarUI`, `SynthToolBarUI`

---

public class BasicToolBarUI
extends [ToolBarUI](../ToolBarUI.md "class in javax.swing.plaf")
implements [SwingConstants](../../SwingConstants.md "interface in javax.swing")

A Basic L&F implementation of ToolBarUI. This implementation
is a "combined" view/controller.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicToolBarUI.DockingListener`

  This class should be treated as a "protected" inner class.

  `protected class`

  `BasicToolBarUI.DragWindow`

  The window which appears during dragging the `JToolBar`.

  `protected class`

  `BasicToolBarUI.FrameListener`

  The class listens for window events.

  `protected class`

  `BasicToolBarUI.PropertyListener`

  The class listens for property changed events.

  `protected class`

  `BasicToolBarUI.ToolBarContListener`

  The class listens for component events.

  `protected class`

  `BasicToolBarUI.ToolBarFocusListener`

  The class listens for focus events.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `constraintBeforeFloating`

  The layout before floating.

  `protected Color`

  `dockingBorderColor`

  The color of the docking border.

  `protected Color`

  `dockingColor`

  The background color of the docking border.

  `protected MouseInputListener`

  `dockingListener`

  The instance of a `MouseInputListener`.

  `protected KeyStroke`

  `downKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected BasicToolBarUI.DragWindow`

  `dragWindow`

  The instance of `DragWindow`.

  `protected Color`

  `floatingBorderColor`

  The color of the not docking border.

  `protected Color`

  `floatingColor`

  The background color of the not docking border.

  `protected int`

  `focusedCompIndex`

  The index of the focused component.

  `protected KeyStroke`

  `leftKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected PropertyChangeListener`

  `propertyListener`

  The instance of a `PropertyChangeListener`.

  `protected KeyStroke`

  `rightKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected JToolBar`

  `toolBar`

  The instance of `JToolBar`.

  `protected ContainerListener`

  `toolBarContListener`

  The instance of a `ContainerListener`.

  `protected FocusListener`

  `toolBarFocusListener`

  The instance of a `FocusListener`.

  `protected KeyStroke`

  `upKey`

  Deprecated.

  As of Java 2 platform v1.3.

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicToolBarUI()`

  Constructs a `BasicToolBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `canDock(Component c,
  Point p)`

  Returns `true` if the `JToolBar` can dock at the given position.

  `protected MouseInputListener`

  `createDockingListener()`

  Returns an instance of `MouseInputListener`.

  `protected BasicToolBarUI.DragWindow`

  `createDragWindow(JToolBar toolbar)`

  Returns an instance of `DragWindow`.

  `protected JFrame`

  `createFloatingFrame(JToolBar toolbar)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is recommended that [`createFloatingWindow(JToolBar)`](#createFloatingWindow(javax.swing.JToolBar))
  be used instead

  `protected RootPaneContainer`

  `createFloatingWindow(JToolBar toolbar)`

  Creates a window which contains the toolbar after it has been
  dragged out from its container

  `protected WindowListener`

  `createFrameListener()`

  Constructs a new instance of `WindowListener`.

  `protected Border`

  `createNonRolloverBorder()`

  Creates the non rollover border for toolbar components.

  `protected PropertyChangeListener`

  `createPropertyListener()`

  Returns an instance of `PropertyChangeListener`.

  `protected Border`

  `createRolloverBorder()`

  Creates a rollover border for toolbar components.

  `protected ContainerListener`

  `createToolBarContListener()`

  Returns an instance of `ContainerListener`.

  `protected FocusListener`

  `createToolBarFocusListener()`

  Returns an instance of `FocusListener`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `BasicToolBarUI`.

  `protected void`

  `dragTo(Point position,
  Point origin)`

  The method is used to drag `DragWindow` during the `JToolBar`
  is being dragged.

  `protected void`

  `floatAt(Point position,
  Point origin)`

  The method is called at end of dragging to place the frame in either
  its original place or in its floating frame.

  `Color`

  `getDockingColor()`

  Gets the color displayed when over a docking area

  `Color`

  `getFloatingColor()`

  Gets the color displayed when over a floating area

  `protected Border`

  `getNonRolloverBorder(AbstractButton b)`

  Returns a non-rollover border for the button.

  `protected Border`

  `getRolloverBorder(AbstractButton b)`

  Returns a rollover border for the button.

  `protected void`

  `installComponents()`

  Registers components.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `installListeners()`

  Registers listeners.

  `protected void`

  `installNonRolloverBorders(JComponent c)`

  Installs non-rollover borders on all the child components of the JComponent.

  `protected void`

  `installNormalBorders(JComponent c)`

  Installs normal borders on all the child components of the JComponent.

  `protected void`

  `installRolloverBorders(JComponent c)`

  Installs rollover borders on all the child components of the JComponent.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `boolean`

  `isFloating()`

  Returns `true` if the `JToolBar` is floating

  `boolean`

  `isRolloverBorders()`

  Returns a flag to determine whether rollover button borders
  are enabled.

  `protected void`

  `navigateFocusedComp(int direction)`

  Navigates the focused component.

  `protected void`

  `paintDragWindow(Graphics g)`

  Paints the contents of the window used for dragging.

  `protected void`

  `setBorderToNonRollover(Component c)`

  Sets the border of the component to have a non-rollover border which
  was created by the [`createNonRolloverBorder()`](#createNonRolloverBorder()) method.

  `protected void`

  `setBorderToNormal(Component c)`

  Sets the border of the component to have a normal border.

  `protected void`

  `setBorderToRollover(Component c)`

  Sets the border of the component to have a rollover border which
  was created by the [`createRolloverBorder()`](#createRolloverBorder()) method.

  `void`

  `setDockingColor(Color c)`

  Sets the color displayed when over a docking area

  `void`

  `setFloating(boolean b,
  Point p)`

  Sets the floating property.

  `void`

  `setFloatingColor(Color c)`

  Sets the color displayed when over a floating area

  `void`

  `setFloatingLocation(int x,
  int y)`

  Sets the floating location.

  `void`

  `setOrientation(int orientation)`

  Sets the tool bar's orientation.

  `void`

  `setRolloverBorders(boolean rollover)`

  Sets the flag for enabling rollover borders on the toolbar and it will
  also install the appropriate border depending on the state of the flag.

  `protected void`

  `uninstallComponents()`

  Unregisters components.

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

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### toolBar

    protected [JToolBar](../../JToolBar.md "class in javax.swing") toolBar

    The instance of `JToolBar`.
  + ### dragWindow

    protected [BasicToolBarUI.DragWindow](BasicToolBarUI.DragWindow.md "class in javax.swing.plaf.basic") dragWindow

    The instance of `DragWindow`.
  + ### focusedCompIndex

    protected int focusedCompIndex

    The index of the focused component.
  + ### dockingColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") dockingColor

    The background color of the docking border.
  + ### floatingColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") floatingColor

    The background color of the not docking border.
  + ### dockingBorderColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") dockingBorderColor

    The color of the docking border.
  + ### floatingBorderColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") floatingBorderColor

    The color of the not docking border.
  + ### dockingListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") dockingListener

    The instance of a `MouseInputListener`.
  + ### propertyListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyListener

    The instance of a `PropertyChangeListener`.
  + ### toolBarContListener

    protected [ContainerListener](../../../../java/awt/event/ContainerListener.md "interface in java.awt.event") toolBarContListener

    The instance of a `ContainerListener`.
  + ### toolBarFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") toolBarFocusListener

    The instance of a `FocusListener`.
  + ### constraintBeforeFloating

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") constraintBeforeFloating

    The layout before floating.
  + ### upKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") upKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### downKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") downKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### leftKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") leftKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### rightKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") rightKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
* ## Constructor Details

  + ### BasicToolBarUI

    public BasicToolBarUI()

    Constructs a `BasicToolBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `BasicToolBarUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicToolBarUI`
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
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### navigateFocusedComp

    protected void navigateFocusedComp(int direction)

    Navigates the focused component.

    Parameters:
    :   `direction` - a direction
  + ### createRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") createRolloverBorder()

    Creates a rollover border for toolbar components. The
    rollover border will be installed if rollover borders are
    enabled.

    Override this method to provide an alternate rollover border.

    Returns:
    :   a rollover border for toolbar components

    Since:
    :   1.4
  + ### createNonRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") createNonRolloverBorder()

    Creates the non rollover border for toolbar components. This
    border will be installed as the border for components added
    to the toolbar if rollover borders are not enabled.

    Override this method to provide an alternate rollover border.

    Returns:
    :   the non rollover border for toolbar components

    Since:
    :   1.4
  + ### createFloatingFrame

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
    [forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    protected [JFrame](../../JFrame.md "class in javax.swing") createFloatingFrame([JToolBar](../../JToolBar.md "class in javax.swing") toolbar)

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is recommended that [`createFloatingWindow(JToolBar)`](#createFloatingWindow(javax.swing.JToolBar))
    be used instead

    No longer used, use BasicToolBarUI.createFloatingWindow(JToolBar)

    Parameters:
    :   `toolbar` - an instance of `JToolBar`

    Returns:
    :   an instance of `JFrame`

    See Also:
    :   - [`createFloatingWindow(javax.swing.JToolBar)`](#createFloatingWindow(javax.swing.JToolBar))
  + ### createFloatingWindow

    protected [RootPaneContainer](../../RootPaneContainer.md "interface in javax.swing") createFloatingWindow([JToolBar](../../JToolBar.md "class in javax.swing") toolbar)

    Creates a window which contains the toolbar after it has been
    dragged out from its container

    Parameters:
    :   `toolbar` - an instance of `JToolBar`

    Returns:
    :   a `RootPaneContainer` object, containing the toolbar

    Since:
    :   1.4
  + ### createDragWindow

    protected [BasicToolBarUI.DragWindow](BasicToolBarUI.DragWindow.md "class in javax.swing.plaf.basic") createDragWindow([JToolBar](../../JToolBar.md "class in javax.swing") toolbar)

    Returns an instance of `DragWindow`.

    Parameters:
    :   `toolbar` - an instance of `JToolBar`

    Returns:
    :   an instance of `DragWindow`
  + ### isRolloverBorders

    public boolean isRolloverBorders()

    Returns a flag to determine whether rollover button borders
    are enabled.

    Returns:
    :   true if rollover borders are enabled; false otherwise

    Since:
    :   1.4

    See Also:
    :   - [`setRolloverBorders(boolean)`](#setRolloverBorders(boolean))
  + ### setRolloverBorders

    public void setRolloverBorders(boolean rollover)

    Sets the flag for enabling rollover borders on the toolbar and it will
    also install the appropriate border depending on the state of the flag.

    Parameters:
    :   `rollover` - if true, rollover borders are installed.
        Otherwise non-rollover borders are installed

    Since:
    :   1.4

    See Also:
    :   - [`isRolloverBorders()`](#isRolloverBorders())
  + ### installRolloverBorders

    protected void installRolloverBorders([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs rollover borders on all the child components of the JComponent.

    This is a convenience method to call `setBorderToRollover`
    for each child component.

    Parameters:
    :   `c` - container which holds the child components (usually a JToolBar)

    Since:
    :   1.4

    See Also:
    :   - [`setBorderToRollover(java.awt.Component)`](#setBorderToRollover(java.awt.Component))
  + ### installNonRolloverBorders

    protected void installNonRolloverBorders([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs non-rollover borders on all the child components of the JComponent.
    A non-rollover border is the border that is installed on the child component
    while it is in the toolbar.

    This is a convenience method to call `setBorderToNonRollover`
    for each child component.

    Parameters:
    :   `c` - container which holds the child components (usually a JToolBar)

    Since:
    :   1.4

    See Also:
    :   - [`setBorderToNonRollover(java.awt.Component)`](#setBorderToNonRollover(java.awt.Component))
  + ### installNormalBorders

    protected void installNormalBorders([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs normal borders on all the child components of the JComponent.
    A normal border is the original border that was installed on the child
    component before it was added to the toolbar.

    This is a convenience method to call `setBorderNormal`
    for each child component.

    Parameters:
    :   `c` - container which holds the child components (usually a JToolBar)

    Since:
    :   1.4

    See Also:
    :   - [`setBorderToNonRollover(java.awt.Component)`](#setBorderToNonRollover(java.awt.Component))
  + ### setBorderToRollover

    protected void setBorderToRollover([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Sets the border of the component to have a rollover border which
    was created by the [`createRolloverBorder()`](#createRolloverBorder()) method.

    Parameters:
    :   `c` - component which will have a rollover border installed

    Since:
    :   1.4

    See Also:
    :   - [`createRolloverBorder()`](#createRolloverBorder())
  + ### getRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") getRolloverBorder([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Returns a rollover border for the button.

    Parameters:
    :   `b` - the button to calculate the rollover border for

    Returns:
    :   the rollover border

    Since:
    :   1.6

    See Also:
    :   - [`setBorderToRollover(java.awt.Component)`](#setBorderToRollover(java.awt.Component))
  + ### setBorderToNonRollover

    protected void setBorderToNonRollover([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Sets the border of the component to have a non-rollover border which
    was created by the [`createNonRolloverBorder()`](#createNonRolloverBorder()) method.

    Parameters:
    :   `c` - component which will have a non-rollover border installed

    Since:
    :   1.4

    See Also:
    :   - [`createNonRolloverBorder()`](#createNonRolloverBorder())
  + ### getNonRolloverBorder

    protected [Border](../../border/Border.md "interface in javax.swing.border") getNonRolloverBorder([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Returns a non-rollover border for the button.

    Parameters:
    :   `b` - the button to calculate the non-rollover border for

    Returns:
    :   the non-rollover border

    Since:
    :   1.6

    See Also:
    :   - [`setBorderToNonRollover(java.awt.Component)`](#setBorderToNonRollover(java.awt.Component))
  + ### setBorderToNormal

    protected void setBorderToNormal([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Sets the border of the component to have a normal border.
    A normal border is the original border that was installed on the child
    component before it was added to the toolbar.

    Parameters:
    :   `c` - component which will have a normal border re-installed

    Since:
    :   1.4

    See Also:
    :   - [`createNonRolloverBorder()`](#createNonRolloverBorder())
  + ### setFloatingLocation

    public void setFloatingLocation(int x,
    int y)

    Sets the floating location.

    Parameters:
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### isFloating

    public boolean isFloating()

    Returns `true` if the `JToolBar` is floating

    Returns:
    :   `true` if the `JToolBar` is floating
  + ### setFloating

    public void setFloating(boolean b,
    [Point](../../../../java/awt/Point.md "class in java.awt") p)

    Sets the floating property.

    Parameters:
    :   `b` - `true` if the `JToolBar` is floating
    :   `p` - the position
  + ### setOrientation

    public void setOrientation(int orientation)

    Sets the tool bar's orientation.

    Parameters:
    :   `orientation` - the new orientation
  + ### getDockingColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") getDockingColor()

    Gets the color displayed when over a docking area

    Returns:
    :   the color displayed when over a docking area
  + ### setDockingColor

    public void setDockingColor([Color](../../../../java/awt/Color.md "class in java.awt") c)

    Sets the color displayed when over a docking area

    Parameters:
    :   `c` - the new color
  + ### getFloatingColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") getFloatingColor()

    Gets the color displayed when over a floating area

    Returns:
    :   the color displayed when over a floating area
  + ### setFloatingColor

    public void setFloatingColor([Color](../../../../java/awt/Color.md "class in java.awt") c)

    Sets the color displayed when over a floating area

    Parameters:
    :   `c` - the new color
  + ### canDock

    public boolean canDock([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Point](../../../../java/awt/Point.md "class in java.awt") p)

    Returns `true` if the `JToolBar` can dock at the given position.

    Parameters:
    :   `c` - a component
    :   `p` - a position

    Returns:
    :   `true` if the `JToolBar` can dock at the given position
  + ### dragTo

    protected void dragTo([Point](../../../../java/awt/Point.md "class in java.awt") position,
    [Point](../../../../java/awt/Point.md "class in java.awt") origin)

    The method is used to drag `DragWindow` during the `JToolBar`
    is being dragged.

    Parameters:
    :   `position` - the relative to the `JTollBar` position
    :   `origin` - the screen position of `JToolBar` before dragging
  + ### floatAt

    protected void floatAt([Point](../../../../java/awt/Point.md "class in java.awt") position,
    [Point](../../../../java/awt/Point.md "class in java.awt") origin)

    The method is called at end of dragging to place the frame in either
    its original place or in its floating frame.

    Parameters:
    :   `position` - the relative to the `JTollBar` position
    :   `origin` - the screen position of `JToolBar` before dragging
  + ### createToolBarContListener

    protected [ContainerListener](../../../../java/awt/event/ContainerListener.md "interface in java.awt.event") createToolBarContListener()

    Returns an instance of `ContainerListener`.

    Returns:
    :   an instance of `ContainerListener`
  + ### createToolBarFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createToolBarFocusListener()

    Returns an instance of `FocusListener`.

    Returns:
    :   an instance of `FocusListener`
  + ### createPropertyListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyListener()

    Returns an instance of `PropertyChangeListener`.

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### createDockingListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createDockingListener()

    Returns an instance of `MouseInputListener`.

    Returns:
    :   an instance of `MouseInputListener`
  + ### createFrameListener

    protected [WindowListener](../../../../java/awt/event/WindowListener.md "interface in java.awt.event") createFrameListener()

    Constructs a new instance of `WindowListener`.

    Returns:
    :   a new instance of `WindowListener`
  + ### paintDragWindow

    protected void paintDragWindow([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the contents of the window used for dragging.

    Parameters:
    :   `g` - Graphics to paint to.

    Throws:
    :   `NullPointerException` - is `g` is null

    Since:
    :   1.5