Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthDesktopPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.DesktopPaneUI](../DesktopPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicDesktopPaneUI](../basic/BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthDesktopPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthDesktopPaneUI
extends [BasicDesktopPaneUI](../basic/BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JDesktopPane`](../../JDesktopPane.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicDesktopPaneUI](../basic/BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")

  `BasicDesktopPaneUI.CloseAction, BasicDesktopPaneUI.MaximizeAction, BasicDesktopPaneUI.MinimizeAction, BasicDesktopPaneUI.NavigateAction, BasicDesktopPaneUI.OpenAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicDesktopPaneUI](../basic/BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")

  `closeKey, desktop, desktopManager, maximizeKey, minimizeKey, navigateKey, navigateKey2`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthDesktopPaneUI()`

  Constructs a `SynthDesktopPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installDesktopManager()`

  Installs desktop manager.

  `protected void`

  `installListeners()`

  Installs the `PropertyChangeListener` returned from
  `createPropertyChangeListener` on the
  `JDesktopPane`.

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

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallDesktopManager()`

  Uninstalls desktop manager.

  `protected void`

  `uninstallListeners()`

  Uninstalls the `PropertyChangeListener` returned from
  `createPropertyChangeListener` from the
  `JDesktopPane`.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicDesktopPaneUI](../basic/BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")

  `createPropertyChangeListener, getMaximumSize, getMinimumSize, getPreferredSize, installKeyboardActions, installUI, registerKeyboardActions, uninstallKeyboardActions, uninstallUI, unregisterKeyboardActions`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthDesktopPaneUI

    public SynthDesktopPaneUI()

    Constructs a `SynthDesktopPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### installListeners

    protected void installListeners()

    Installs the `PropertyChangeListener` returned from
    `createPropertyChangeListener` on the
    `JDesktopPane`.

    Overrides:
    :   `installListeners` in class `BasicDesktopPaneUI`

    See Also:
    :   - [`BasicDesktopPaneUI.createPropertyChangeListener()`](../basic/BasicDesktopPaneUI.md#createPropertyChangeListener())
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicDesktopPaneUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the `PropertyChangeListener` returned from
    `createPropertyChangeListener` from the
    `JDesktopPane`.

    Overrides:
    :   `uninstallListeners` in class `BasicDesktopPaneUI`

    See Also:
    :   - [`BasicDesktopPaneUI.createPropertyChangeListener()`](../basic/BasicDesktopPaneUI.md#createPropertyChangeListener())
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicDesktopPaneUI`
  + ### installDesktopManager

    protected void installDesktopManager()

    Installs desktop manager.

    Overrides:
    :   `installDesktopManager` in class `BasicDesktopPaneUI`
  + ### uninstallDesktopManager

    protected void uninstallDesktopManager()

    Uninstalls desktop manager.

    Overrides:
    :   `uninstallDesktopManager` in class `BasicDesktopPaneUI`
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
    :   `paint` in class `BasicDesktopPaneUI`

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