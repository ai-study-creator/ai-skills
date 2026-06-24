Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthScrollPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollPaneUI](../ScrollPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthScrollPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`, `ScrollPaneConstants`

---

public class SynthScrollPaneUI
extends [BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JScrollPane`](../../JScrollPane.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `BasicScrollPaneUI.HSBChangeListener, BasicScrollPaneUI.MouseWheelHandler, BasicScrollPaneUI.PropertyChangeHandler, BasicScrollPaneUI.ViewportChangeHandler, BasicScrollPaneUI.VSBChangeListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `hsbChangeListener, scrollpane, spPropertyChangeListener, viewportChangeListener, vsbChangeListener`

  ### Fields inherited from interface javax.swing.[ScrollPaneConstants](../../ScrollPaneConstants.md "interface in javax.swing")

  `COLUMN_HEADER, HORIZONTAL_SCROLLBAR, HORIZONTAL_SCROLLBAR_ALWAYS, HORIZONTAL_SCROLLBAR_AS_NEEDED, HORIZONTAL_SCROLLBAR_NEVER, HORIZONTAL_SCROLLBAR_POLICY, LOWER_LEADING_CORNER, LOWER_LEFT_CORNER, LOWER_RIGHT_CORNER, LOWER_TRAILING_CORNER, ROW_HEADER, UPPER_LEADING_CORNER, UPPER_LEFT_CORNER, UPPER_RIGHT_CORNER, UPPER_TRAILING_CORNER, VERTICAL_SCROLLBAR, VERTICAL_SCROLLBAR_ALWAYS, VERTICAL_SCROLLBAR_AS_NEEDED, VERTICAL_SCROLLBAR_NEVER, VERTICAL_SCROLLBAR_POLICY, VIEWPORT`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthScrollPaneUI()`

  Constructs a `SynthScrollPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults(JScrollPane scrollpane)`

  Installs default properties.

  `protected void`

  `installListeners(JScrollPane c)`

  Registers listeners.

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

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallDefaults(JScrollPane c)`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners(JComponent c)`

  Unregisters listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicScrollPaneUI](../basic/BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  `createHSBChangeListener, createMouseWheelListener, createPropertyChangeListener, createViewportChangeListener, createVSBChangeListener, getBaseline, getBaselineResizeBehavior, getMaximumSize, installKeyboardActions, installUI, syncScrollPaneWithViewport, uninstallKeyboardActions, uninstallUI, updateColumnHeader, updateRowHeader, updateScrollBarDisplayPolicy, updateViewport`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMinimumSize, getPreferredSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthScrollPaneUI

    public SynthScrollPaneUI()

    Constructs a `SynthScrollPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new UI object for the given component.

    Parameters:
    :   `x` - component to create UI object for

    Returns:
    :   the UI object
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
    :   `paint` in class `BasicScrollPaneUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    protected void paint([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the specified component.

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
  + ### installDefaults

    protected void installDefaults([JScrollPane](../../JScrollPane.md "class in javax.swing") scrollpane)

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicScrollPaneUI`

    Parameters:
    :   `scrollpane` - an instance of `JScrollPane`
  + ### installListeners

    protected void installListeners([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicScrollPaneUI`

    Parameters:
    :   `c` - an instance of `JScrollPane`
  + ### uninstallDefaults

    protected void uninstallDefaults([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicScrollPaneUI`

    Parameters:
    :   `c` - an instance of `JScrollPane`
  + ### uninstallListeners

    protected void uninstallListeners([JComponent](../../JComponent.md "class in javax.swing") c)

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicScrollPaneUI`

    Parameters:
    :   `c` - a component
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.