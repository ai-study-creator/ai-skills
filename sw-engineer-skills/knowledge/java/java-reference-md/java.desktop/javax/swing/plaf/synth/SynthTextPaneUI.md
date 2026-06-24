Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthTextPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.basic.BasicEditorPaneUI](../basic/BasicEditorPaneUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthEditorPaneUI](SynthEditorPaneUI.md "class in javax.swing.plaf.synth")

javax.swing.plaf.synth.SynthTextPaneUI

All Implemented Interfaces:
:   `SynthConstants`, `SynthUI`, `ViewFactory`

---

public class SynthTextPaneUI
extends [SynthEditorPaneUI](SynthEditorPaneUI.md "class in javax.swing.plaf.synth")

Provides the look and feel for a styled text editor in the
Synth look and feel.

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

  `SynthTextPaneUI()`

  Constructs a `SynthTextPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI for the JTextPane.

  `protected String`

  `getPropertyPrefix()`

  Fetches the name used as a key to lookup properties through the
  UIManager.

  `void`

  `installUI(JComponent c)`

  Installs the UI for a component.

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

  ### Methods inherited from class javax.swing.plaf.synth.[SynthEditorPaneUI](SynthEditorPaneUI.md "class in javax.swing.plaf.synth")

  `getContext, installDefaults, paint, paintBackground, uninstallDefaults, update`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicEditorPaneUI](../basic/BasicEditorPaneUI.md "class in javax.swing.plaf.basic")

  `getEditorKit, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](../basic/BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getKeymapName, getMaximumSize, getMinimumSize, getNextVisualPositionFrom, getPreferredSize, getRootView, getToolTipText, getVisibleEditorRect, installKeyboardActions, installListeners, modelChanged, modelToView, modelToView, modelToView2D, paint, paintSafely, setView, uninstallKeyboardActions, uninstallListeners, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthTextPaneUI

    public SynthTextPaneUI()

    Constructs a `SynthTextPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI for the JTextPane.

    Parameters:
    :   `c` - the JTextPane object

    Returns:
    :   the UI object
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Fetches the name used as a key to lookup properties through the
    UIManager. This is used as a prefix to all the standard
    text properties.

    Overrides:
    :   `getPropertyPrefix` in class `BasicEditorPaneUI`

    Returns:
    :   the name ("TextPane")
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the UI for a component. This does the following
    things.
    1. Sets opaqueness of the associated component according to its style,
       if the opaque property has not already been set by the client program.+ Installs the default caret and highlighter into the
         associated component. These properties are only set if their
         current value is either `null` or an instance of
         [`UIResource`](../UIResource.md "interface in javax.swing.plaf").+ Attaches to the editor and model. If there is no
           model, a default one is created.+ Creates the view factory and the view hierarchy used
             to represent the model.

    Overrides:
    :   `installUI` in class `BasicEditorPaneUI`

    Parameters:
    :   `c` - the editor component

    See Also:
    :   - [`BasicTextUI.installUI(javax.swing.JComponent)`](../basic/BasicTextUI.md#installUI(javax.swing.JComponent))
        - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
  + ### propertyChange

    protected void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed
    on the associated JTextComponent. This is a hook
    which UI implementations may change to reflect how the
    UI displays bound properties of JTextComponent subclasses.
    If the font, foreground or document has changed, the
    the appropriate property is set in the default style of
    the document.

    Overrides:
    :   `propertyChange` in class `SynthEditorPaneUI`

    Parameters:
    :   `evt` - the property change event
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

    Overrides:
    :   `paintBorder` in class `SynthEditorPaneUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border