Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTextAreaUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TextUI](../TextUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicTextAreaUI

All Implemented Interfaces:
:   `ViewFactory`

Direct Known Subclasses:
:   `SynthTextAreaUI`

---

public class BasicTextAreaUI
extends [BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

Provides the look and feel for a plain text editor. In this
implementation the default UI is extended to act as a simple
view factory.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `BasicTextUI.BasicCaret, BasicTextUI.BasicHighlighter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicTextAreaUI()`

  Constructs a new BasicTextAreaUI object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `View`

  `create(Element elem)`

  Creates a view for an element.

  `static ComponentUI`

  `createUI(JComponent ta)`

  Creates a UI for a JTextArea.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `Dimension`

  `getMinimumSize(JComponent c)`

  The method is overridden to take into account caret width.

  `Dimension`

  `getPreferredSize(JComponent c)`

  The method is overridden to take into account caret width.

  `protected String`

  `getPropertyPrefix()`

  Fetches the name used as a key to look up properties through the
  UIManager.

  `protected void`

  `installDefaults()`

  Initializes component properties, such as font, foreground,
  background, caret color, selection color, selected text color,
  disabled text color, border, and margin.

  `protected void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed
  on the associated JTextComponent.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  `create, createCaret, createHighlighter, createKeymap, damageRange, damageRange, getComponent, getEditorKit, getKeymapName, getMaximumSize, getNextVisualPositionFrom, getRootView, getToolTipText, getVisibleEditorRect, installKeyboardActions, installListeners, installUI, modelChanged, modelToView, modelToView, modelToView2D, paint, paintBackground, paintSafely, setView, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, update, viewToModel, viewToModel, viewToModel2D`

  ### Methods inherited from class javax.swing.plaf.[TextUI](../TextUI.md "class in javax.swing.plaf")

  `getToolTipText2D`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicTextAreaUI

    public BasicTextAreaUI()

    Constructs a new BasicTextAreaUI object.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") ta)

    Creates a UI for a JTextArea.

    Parameters:
    :   `ta` - a text area

    Returns:
    :   the UI
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Fetches the name used as a key to look up properties through the
    UIManager. This is used as a prefix to all the standard
    text properties.

    Specified by:
    :   `getPropertyPrefix` in class `BasicTextUI`

    Returns:
    :   the name ("TextArea")
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicTextUI`

    Initializes component properties, such as font, foreground,
    background, caret color, selection color, selected text color,
    disabled text color, border, and margin. Each property is set
    if its current value is either null or a UIResource.

    Overrides:
    :   `installDefaults` in class `BasicTextUI`

    See Also:
    :   - [`BasicTextUI.uninstallDefaults()`](BasicTextUI.md#uninstallDefaults())
        - [`BasicTextUI.installUI(javax.swing.JComponent)`](BasicTextUI.md#installUI(javax.swing.JComponent))
  + ### propertyChange

    protected void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed
    on the associated JTextComponent. This is a hook
    which UI implementations may change to reflect how the
    UI displays bound properties of JTextComponent subclasses.
    This is implemented to rebuild the View when the
    *WrapLine* or the *WrapStyleWord* property changes.

    Overrides:
    :   `propertyChange` in class `BasicTextUI`

    Parameters:
    :   `evt` - the property change event
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    The method is overridden to take into account caret width.

    Overrides:
    :   `getPreferredSize` in class `BasicTextUI`

    Parameters:
    :   `c` - the editor component

    Returns:
    :   the preferred size

    Throws:
    :   `IllegalArgumentException` - if invalid value is passed

    Since:
    :   1.5

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    The method is overridden to take into account caret width.

    Overrides:
    :   `getMinimumSize` in class `BasicTextUI`

    Parameters:
    :   `c` - the editor component

    Returns:
    :   the minimum size

    Throws:
    :   `IllegalArgumentException` - if invalid value is passed

    Since:
    :   1.5

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### create

    public [View](../../text/View.md "class in javax.swing.text") create([Element](../../text/Element.md "interface in javax.swing.text") elem)

    Creates a view for an element.

    Specified by:
    :   `create` in interface `ViewFactory`

    Overrides:
    :   `create` in class `BasicTextUI`

    Parameters:
    :   `elem` - the element

    Returns:
    :   the view for the element

    See Also:
    :   - [`View`](../../text/View.md "class in javax.swing.text")
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `NullPointerException` - if `c` is `null`
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an enum indicating how the baseline of the component
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the component
        size changes

    Throws:
    :   `NullPointerException` - if `c` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))