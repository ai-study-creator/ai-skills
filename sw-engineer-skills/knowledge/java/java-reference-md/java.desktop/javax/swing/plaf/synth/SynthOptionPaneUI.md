Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthOptionPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.OptionPaneUI](../OptionPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicOptionPaneUI](../basic/BasicOptionPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthOptionPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthOptionPaneUI
extends [BasicOptionPaneUI](../basic/BasicOptionPaneUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JOptionPane`](../../JOptionPane.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicOptionPaneUI](../basic/BasicOptionPaneUI.md "class in javax.swing.plaf.basic")

  `BasicOptionPaneUI.ButtonActionListener, BasicOptionPaneUI.ButtonAreaLayout, BasicOptionPaneUI.PropertyChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicOptionPaneUI](../basic/BasicOptionPaneUI.md "class in javax.swing.plaf.basic")

  `hasCustomComponents, initialFocusComponent, inputComponent, MinimumHeight, minimumSize, MinimumWidth, optionPane, propertyChangeListener`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthOptionPaneUI()`

  Constructs a `SynthOptionPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Container`

  `createMessageArea()`

  Called from [`installComponents()`](#installComponents()) to create a `Container`
  containing the body of the message.

  `protected Container`

  `createSeparator()`

  Returns a separator.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected boolean`

  `getSizeButtonsToSameWidth()`

  Returns `true`, basic L&F wants all the buttons to have the same
  width.

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

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicOptionPaneUI](../basic/BasicOptionPaneUI.md "class in javax.swing.plaf.basic")

  `addButtonComponents, addIcon, addMessageComponents, burstStringInto, containsCustomComponents, createButtonActionListener, createButtonArea, createLayoutManager, createPropertyChangeListener, getButtons, getIcon, getIconForType, getInitialValueIndex, getMaxCharactersPerLineCount, getMessage, getMinimumOptionPaneSize, getPreferredSize, installKeyboardActions, installUI, resetInputValue, selectInitialValue, uninstallComponents, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthOptionPaneUI

    public SynthOptionPaneUI()

    Constructs a `SynthOptionPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new UI object for the given component.

    Parameters:
    :   `x` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicOptionPaneUI`
  + ### installListeners

    protected void installListeners()

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicOptionPaneUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicOptionPaneUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicOptionPaneUI`
  + ### installComponents

    protected void installComponents()

    Registers components.

    Overrides:
    :   `installComponents` in class `BasicOptionPaneUI`
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

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### getSizeButtonsToSameWidth

    protected boolean getSizeButtonsToSameWidth()

    Returns `true`, basic L&F wants all the buttons to have the same
    width.

    Overrides:
    :   `getSizeButtonsToSameWidth` in class `BasicOptionPaneUI`

    Returns:
    :   `true` if all the buttons should have the same width
  + ### createMessageArea

    protected [Container](../../../../java/awt/Container.md "class in java.awt") createMessageArea()

    Called from [`installComponents()`](#installComponents()) to create a `Container`
    containing the body of the message. The icon is the created by calling
    [`BasicOptionPaneUI.addIcon(java.awt.Container)`](../basic/BasicOptionPaneUI.md#addIcon(java.awt.Container)).

    Overrides:
    :   `createMessageArea` in class `BasicOptionPaneUI`

    Returns:
    :   a instance of `Container`
  + ### createSeparator

    protected [Container](../../../../java/awt/Container.md "class in java.awt") createSeparator()

    Returns a separator.

    Overrides:
    :   `createSeparator` in class `BasicOptionPaneUI`

    Returns:
    :   a separator