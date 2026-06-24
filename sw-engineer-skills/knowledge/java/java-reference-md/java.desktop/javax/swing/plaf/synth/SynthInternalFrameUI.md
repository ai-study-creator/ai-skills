Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthInternalFrameUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.InternalFrameUI](../InternalFrameUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthInternalFrameUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthInternalFrameUI
extends [BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")
implements [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth"), [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Provides the Synth L&F UI delegate for
[`JInternalFrame`](../../JInternalFrame.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `BasicInternalFrameUI.BasicInternalFrameListener, BasicInternalFrameUI.BorderListener, BasicInternalFrameUI.ComponentHandler, BasicInternalFrameUI.GlassPaneDispatcher, BasicInternalFrameUI.InternalFrameLayout, BasicInternalFrameUI.InternalFramePropertyChangeListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `borderListener, componentListener, eastPane, frame, glassPaneDispatcher, internalFrameLayout, northPane, openMenuKey, propertyChangeListener, southPane, titlePane, westPane`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SynthInternalFrameUI(JInternalFrame b)`

  Constructs a `SynthInternalFrameUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected ComponentListener`

  `createComponentListener()`

  Creates a component listener.

  `protected JComponent`

  `createNorthPane(JInternalFrame w)`

  Creates the north pane.

  `static ComponentUI`

  `createUI(JComponent b)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `void`

  `installDefaults()`

  Installs the defaults.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component according to the Look and Feel.

  `protected void`

  `paint(SynthContext context,
  Graphics g)`

  Paints the specified component.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  `void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallComponents()`

  Uninstalls the components.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallListeners()`

  Uninstalls the listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `activateFrame, closeFrame, createBorderListener, createDesktopManager, createEastPane, createGlassPaneDispatcher, createInternalFrameListener, createLayoutManager, createPropertyChangeListener, createSouthPane, createWestPane, deactivateFrame, deiconifyFrame, deinstallMouseHandlers, getDesktopManager, getEastPane, getMaximumSize, getMinimumSize, getNorthPane, getPreferredSize, getSouthPane, getWestPane, iconifyFrame, installComponents, installKeyboardActions, installMouseHandlers, installUI, isKeyBindingActive, isKeyBindingRegistered, maximizeFrame, minimizeFrame, replacePane, setEastPane, setKeyBindingActive, setKeyBindingRegistered, setNorthPane, setSouthPane, setupMenuCloseKey, setupMenuOpenKey, setWestPane, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthInternalFrameUI

    protected SynthInternalFrameUI([JInternalFrame](../../JInternalFrame.md "class in javax.swing") b)

    Constructs a `SynthInternalFrameUI`.

    Parameters:
    :   `b` - an internal frame
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") b)

    Creates a new UI object for the given component.

    Parameters:
    :   `b` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    public void installDefaults()

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicInternalFrameUI`
  + ### installListeners

    protected void installListeners()

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicInternalFrameUI`
  + ### uninstallComponents

    protected void uninstallComponents()

    Uninstalls the components.

    Overrides:
    :   `uninstallComponents` in class `BasicInternalFrameUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicInternalFrameUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.

    Overrides:
    :   `uninstallDefaults` in class `BasicInternalFrameUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### createNorthPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createNorthPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Creates the north pane.

    Overrides:
    :   `createNorthPane` in class `BasicInternalFrameUI`

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the north pane
  + ### createComponentListener

    protected [ComponentListener](../../../../java/awt/event/ComponentListener.md "interface in java.awt.event") createComponentListener()

    Creates a component listener.

    Overrides:
    :   `createComponentListener` in class `BasicInternalFrameUI`

    Returns:
    :   a component listener
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
  + ### paint

    protected void paint([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the specified component. This implementation does nothing.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - the `Graphics` object used for painting

    See Also:
    :   - [`update(Graphics,JComponent)`](#update(java.awt.Graphics,javax.swing.JComponent))
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
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `evt` - A PropertyChangeEvent object describing the event source
        and the property that has changed.