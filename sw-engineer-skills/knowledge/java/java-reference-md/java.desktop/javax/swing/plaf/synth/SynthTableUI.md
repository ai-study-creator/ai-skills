Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthTableUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TableUI](../TableUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTableUI](../basic/BasicTableUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthTableUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthTableUI
extends [BasicTableUI](../basic/BasicTableUI.md "class in javax.swing.plaf.basic")
implements [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth"), [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Provides the Synth L&F UI delegate for
[`JTable`](../../JTable.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTableUI](../basic/BasicTableUI.md "class in javax.swing.plaf.basic")

  `BasicTableUI.FocusHandler, BasicTableUI.KeyHandler, BasicTableUI.MouseInputHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicTableUI](../basic/BasicTableUI.md "class in javax.swing.plaf.basic")

  `focusListener, keyListener, mouseInputListener, rendererPane, table`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthTableUI()`

  Constructs a `SynthTableUI`.
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

  Initializes JTable properties, such as font, foreground, and background.

  `protected void`

  `installListeners()`

  Attaches listeners to the JTable.

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

  `propertyChange(PropertyChangeEvent event)`

  This method gets called when a bound property is changed.

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

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTableUI](../basic/BasicTableUI.md "class in javax.swing.plaf.basic")

  `createFocusListener, createKeyListener, createMouseInputListener, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installKeyboardActions, installUI, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthTableUI

    public SynthTableUI()

    Constructs a `SynthTableUI`.
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

    Initializes JTable properties, such as font, foreground, and background.
    The font, foreground, and background properties are only set if their
    current value is either null or a UIResource, other properties are set
    if the current value is null.

    Overrides:
    :   `installDefaults` in class `BasicTableUI`

    See Also:
    :   - [`BasicTableUI.installUI(javax.swing.JComponent)`](../basic/BasicTableUI.md#installUI(javax.swing.JComponent))
  + ### installListeners

    protected void installListeners()

    Attaches listeners to the JTable.

    Overrides:
    :   `installListeners` in class `BasicTableUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicTableUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicTableUI`
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
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `BasicTableUI`

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
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") event)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `event` - A PropertyChangeEvent object describing the event source
        and the property that has changed.