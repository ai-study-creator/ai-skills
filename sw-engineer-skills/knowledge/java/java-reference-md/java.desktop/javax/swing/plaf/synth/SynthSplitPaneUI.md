Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthSplitPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SplitPaneUI](../SplitPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthSplitPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthSplitPaneUI
extends [BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JSplitPane`](../../JSplitPane.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `BasicSplitPaneUI.BasicHorizontalLayoutManager, BasicSplitPaneUI.BasicVerticalLayoutManager, BasicSplitPaneUI.FocusHandler, BasicSplitPaneUI.KeyboardDownRightHandler, BasicSplitPaneUI.KeyboardEndHandler, BasicSplitPaneUI.KeyboardHomeHandler, BasicSplitPaneUI.KeyboardResizeToggleHandler, BasicSplitPaneUI.KeyboardUpLeftHandler, BasicSplitPaneUI.PropertyHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `beginDragDividerLocation, divider, dividerResizeToggleKey, dividerSize, downKey, draggingHW, endKey, focusListener, homeKey, KEYBOARD_DIVIDER_MOVE_OFFSET, keyboardDownRightListener, keyboardEndListener, keyboardHomeListener, keyboardResizeToggleListener, keyboardUpLeftListener, layoutManager, leftKey, NON_CONTINUOUS_DIVIDER, nonContinuousLayoutDivider, propertyChangeListener, rightKey, splitPane, upKey`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthSplitPaneUI()`

  Constructs a `SynthSplitPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BasicSplitPaneDivider`

  `createDefaultDivider()`

  Creates the default divider.

  `protected Component`

  `createDefaultNonContinuousLayoutDivider()`

  Returns the default non continuous layout divider, which is an
  instance of `Canvas` that fills in the background with dark gray.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new SynthSplitPaneUI instance

  `void`

  `finishedPaintingChildren(JSplitPane jc,
  Graphics g)`

  Called when the specified split pane has finished painting
  its children.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults()`

  Installs the UI defaults.

  `protected void`

  `installListeners()`

  Installs the event listeners for the UI.

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

  Uninstalls the UI defaults.

  `protected void`

  `uninstallListeners()`

  Uninstalls the event listeners from the UI.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `createFocusListener, createKeyboardDownRightListener, createKeyboardEndListener, createKeyboardHomeListener, createKeyboardResizeToggleListener, createKeyboardUpLeftListener, createPropertyChangeListener, dragDividerTo, finishDraggingTo, getDivider, getDividerBorderSize, getDividerLocation, getInsets, getLastDragLocation, getMaximumDividerLocation, getMaximumSize, getMinimumDividerLocation, getMinimumSize, getNonContinuousLayoutDivider, getOrientation, getPreferredSize, getSplitPane, installKeyboardActions, installUI, isContinuousLayout, resetLayoutManager, resetToPreferredSizes, setContinuousLayout, setDividerLocation, setLastDragLocation, setNonContinuousLayoutDivider, setNonContinuousLayoutDivider, setOrientation, startDragging, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthSplitPaneUI

    public SynthSplitPaneUI()

    Constructs a `SynthSplitPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new SynthSplitPaneUI instance

    Parameters:
    :   `x` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults()

    Installs the UI defaults.

    Overrides:
    :   `installDefaults` in class `BasicSplitPaneUI`
  + ### installListeners

    protected void installListeners()

    Installs the event listeners for the UI.

    Overrides:
    :   `installListeners` in class `BasicSplitPaneUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the UI defaults.

    Overrides:
    :   `uninstallDefaults` in class `BasicSplitPaneUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the event listeners from the UI.

    Overrides:
    :   `uninstallListeners` in class `BasicSplitPaneUI`
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

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### createDefaultDivider

    public [BasicSplitPaneDivider](../basic/BasicSplitPaneDivider.md "class in javax.swing.plaf.basic") createDefaultDivider()

    Creates the default divider.

    Overrides:
    :   `createDefaultDivider` in class `BasicSplitPaneUI`

    Returns:
    :   the default divider
  + ### createDefaultNonContinuousLayoutDivider

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createDefaultNonContinuousLayoutDivider()

    Returns the default non continuous layout divider, which is an
    instance of `Canvas` that fills in the background with dark gray.

    Overrides:
    :   `createDefaultNonContinuousLayoutDivider` in class `BasicSplitPaneUI`

    Returns:
    :   the default non continuous layout divider
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
    :   `paint` in class `BasicSplitPaneUI`

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
  + ### finishedPaintingChildren

    public void finishedPaintingChildren([JSplitPane](../../JSplitPane.md "class in javax.swing") jc,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Called when the specified split pane has finished painting
    its children.

    Overrides:
    :   `finishedPaintingChildren` in class `BasicSplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`
    :   `g` - the `Graphics` context