Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthToolBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ToolBarUI](../ToolBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthToolBarUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`, `SwingConstants`

---

public class SynthToolBarUI
extends [BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JToolBar`](../../JToolBar.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `BasicToolBarUI.DockingListener, BasicToolBarUI.DragWindow, BasicToolBarUI.FrameListener, BasicToolBarUI.PropertyListener, BasicToolBarUI.ToolBarContListener, BasicToolBarUI.ToolBarFocusListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `constraintBeforeFloating, dockingBorderColor, dockingColor, dockingListener, downKey, dragWindow, floatingBorderColor, floatingColor, focusedCompIndex, leftKey, propertyListener, rightKey, toolBar, toolBarContListener, toolBarFocusListener, upKey`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthToolBarUI()`

  Constructs a `SynthToolBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected LayoutManager`

  `createLayout()`

  Creates a `LayoutManager` to use with the toolbar.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

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

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component according to the Look and Feel.

  `protected void`

  `paint(SynthContext context,
  Graphics g)`

  Paints the toolbar.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  `protected void`

  `paintContent(SynthContext context,
  Graphics g,
  Rectangle bounds)`

  Paints the toolbar content.

  `protected void`

  `paintDragWindow(Graphics g)`

  Paints the contents of the window used for dragging.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `setBorderToNonRollover(Component c)`

  This implementation does nothing, because the `rollover`
  property of the `JToolBar` class is not used
  in the Synth Look and Feel.

  `protected void`

  `setBorderToNormal(Component c)`

  This implementation does nothing, because the `rollover`
  property of the `JToolBar` class is not used
  in the Synth Look and Feel.

  `protected void`

  `setBorderToRollover(Component c)`

  This implementation does nothing, because the `rollover`
  property of the `JToolBar` class is not used
  in the Synth Look and Feel.

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

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicToolBarUI](../basic/BasicToolBarUI.md "class in javax.swing.plaf.basic")

  `canDock, createDockingListener, createDragWindow, createFloatingFrame, createFloatingWindow, createFrameListener, createNonRolloverBorder, createPropertyListener, createRolloverBorder, createToolBarContListener, createToolBarFocusListener, dragTo, floatAt, getDockingColor, getFloatingColor, getNonRolloverBorder, getRolloverBorder, installKeyboardActions, installNonRolloverBorders, installNormalBorders, installRolloverBorders, installUI, isFloating, isRolloverBorders, navigateFocusedComp, setDockingColor, setFloating, setFloatingColor, setFloatingLocation, setOrientation, setRolloverBorders, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthToolBarUI

    public SynthToolBarUI()

    Constructs a `SynthToolBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicToolBarUI`
  + ### installListeners

    protected void installListeners()

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicToolBarUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicToolBarUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicToolBarUI`
  + ### installComponents

    protected void installComponents()

    Registers components.

    Overrides:
    :   `installComponents` in class `BasicToolBarUI`
  + ### uninstallComponents

    protected void uninstallComponents()

    Unregisters components.

    Overrides:
    :   `uninstallComponents` in class `BasicToolBarUI`
  + ### createLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayout()

    Creates a `LayoutManager` to use with the toolbar.

    Returns:
    :   a `LayoutManager` instance
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Notifies this UI delegate to repaint the specified component.
    This method paints the component background, then calls
    the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    In general, this method does not need to be overridden by subclasses.
    All Look and Feel rendering code should reside in the `paint` method.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paintBorder

    public void paintBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border.

    Specified by:
    :   `paintBorder` in interface `SynthUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border
  + ### setBorderToNonRollover

    protected void setBorderToNonRollover([Component](../../../../java/awt/Component.md "class in java.awt") c)

    This implementation does nothing, because the `rollover`
    property of the `JToolBar` class is not used
    in the Synth Look and Feel.

    Overrides:
    :   `setBorderToNonRollover` in class `BasicToolBarUI`

    Parameters:
    :   `c` - component which will have a non-rollover border installed

    See Also:
    :   - [`BasicToolBarUI.createNonRolloverBorder()`](../basic/BasicToolBarUI.md#createNonRolloverBorder())
  + ### setBorderToRollover

    protected void setBorderToRollover([Component](../../../../java/awt/Component.md "class in java.awt") c)

    This implementation does nothing, because the `rollover`
    property of the `JToolBar` class is not used
    in the Synth Look and Feel.

    Overrides:
    :   `setBorderToRollover` in class `BasicToolBarUI`

    Parameters:
    :   `c` - component which will have a rollover border installed

    See Also:
    :   - [`BasicToolBarUI.createRolloverBorder()`](../basic/BasicToolBarUI.md#createRolloverBorder())
  + ### setBorderToNormal

    protected void setBorderToNormal([Component](../../../../java/awt/Component.md "class in java.awt") c)

    This implementation does nothing, because the `rollover`
    property of the `JToolBar` class is not used
    in the Synth Look and Feel.

    Overrides:
    :   `setBorderToNormal` in class `BasicToolBarUI`

    Parameters:
    :   `c` - component which will have a normal border re-installed

    See Also:
    :   - [`BasicToolBarUI.createNonRolloverBorder()`](../basic/BasicToolBarUI.md#createNonRolloverBorder())
  + ### paint

    protected void paint([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the toolbar.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - the `Graphics` object used for painting

    See Also:
    :   - [`update(Graphics,JComponent)`](#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintContent

    protected void paintContent([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds)

    Paints the toolbar content.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `bounds` - bounding box for the toolbar
  + ### paintDragWindow

    protected void paintDragWindow([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the contents of the window used for dragging.

    Overrides:
    :   `paintDragWindow` in class `BasicToolBarUI`

    Parameters:
    :   `g` - Graphics to paint to.
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.