Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthTextAreaUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicTextAreaUI](../basic/BasicTextAreaUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthTextAreaUI

All Implemented Interfaces:
:   `SynthConstants`, `SynthUI`, `ViewFactory`

---

public class SynthTextAreaUI
extends [BasicTextAreaUI](../basic/BasicTextAreaUI.md "class in javax.swing.plaf.basic")
implements [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the look and feel for a plain text editor in the
Synth look and feel. In this implementation the default UI
is extended to act as a simple view factory.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Field Summary

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthTextAreaUI()`

  Constructs a `SynthTextAreaUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent ta)`

  Creates a UI object for a JTextArea.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults()`

  Initializes component properties, such as font, foreground,
  background, caret color, selection color, selected text color,
  disabled text color, border, and margin.

  `protected void`

  `paint(SynthContext context,
  Graphics g)`

  Paints the specified component.

  `protected void`

  `paintBackground(Graphics g)`

  Paints a background for the view.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  `protected void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed
  on the associated JTextComponent.

  `protected void`

  `uninstallDefaults()`

  Sets the component properties that have not been explicitly overridden
  to `null`.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextAreaUI](../basic/BasicTextAreaUI.md "class in javax.swing.plaf.basic")

  `create, getBaseline, getBaselineResizeBehavior, getMinimumSize, getPreferredSize, getPropertyPrefix`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getNextVisualPositionFrom, getRootView, getToolTipText, getVisibleEditorRect, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintSafely, setView, uninstallKeyboardActions, uninstallListeners, uninstallUI, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthTextAreaUI

    public SynthTextAreaUI()

    Constructs a `SynthTextAreaUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") ta)

    Creates a UI object for a JTextArea.

    Parameters:
    :   `ta` - a text area

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults()

    Initializes component properties, such as font, foreground,
    background, caret color, selection color, selected text color,
    disabled text color, border, and margin. Each property is set
    if its current value is either null or a UIResource.

    Overrides:
    :   `installDefaults` in class `BasicTextAreaUI`

    See Also:
    :   - [`BasicTextUI.uninstallDefaults()`](../basic/BasicTextUI.md#uninstallDefaults())
        - [`BasicTextUI.installUI(javax.swing.JComponent)`](../basic/BasicTextUI.md#installUI(javax.swing.JComponent))
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Sets the component properties that have not been explicitly overridden
    to `null`. A property is considered overridden if its current
    value is not a `UIResource`.

    Overrides:
    :   `uninstallDefaults` in class `BasicTextUI`

    See Also:
    :   - [`BasicTextUI.installDefaults()`](../basic/BasicTextUI.md#installDefaults())
        - [`BasicTextUI.uninstallUI(javax.swing.JComponent)`](../basic/BasicTextUI.md#uninstallUI(javax.swing.JComponent))
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
    :   `update` in class `BasicTextUI`

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
  + ### paintBackground

    protected void paintBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints a background for the view. This will only be
    called if isOpaque() on the associated component is
    true. The default is to paint the background color
    of the component.
    Overridden to do nothing.

    Overrides:
    :   `paintBackground` in class `BasicTextUI`

    Parameters:
    :   `g` - the graphics context
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

    protected void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed
    on the associated JTextComponent. This is a hook
    which UI implementations may change to reflect how the
    UI displays bound properties of JTextComponent subclasses.
    This is implemented to rebuild the View when the
    *WrapLine* or the *WrapStyleWord* property changes.

    Overrides:
    :   `propertyChange` in class `BasicTextAreaUI`

    Parameters:
    :   `evt` - the property change event