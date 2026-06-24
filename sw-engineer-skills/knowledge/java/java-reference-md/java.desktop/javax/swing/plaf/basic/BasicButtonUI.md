Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicButtonUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicButtonUI

Direct Known Subclasses:
:   `BasicToggleButtonUI`, `MetalButtonUI`, `SynthButtonUI`

---

public class BasicButtonUI
extends [ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

BasicButton implementation

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `defaultTextIconGap`

  The default gap between a text and an icon.

  `protected int`

  `defaultTextShiftOffset`

  The default offset of a text.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicButtonUI()`

  Constructs a `BasicButtonUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `clearTextShiftOffset()`

  Clears the offset of the text.

  `protected BasicButtonListener`

  `createButtonListener(AbstractButton b)`

  Returns a new instance of `BasicButtonListener`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns an instance of `BasicButtonUI`.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `int`

  `getDefaultTextIconGap(AbstractButton b)`

  Returns the default gap between a text and an icon.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected String`

  `getPropertyPrefix()`

  Returns the property prefix.

  `protected int`

  `getTextShiftOffset()`

  Returns the offset of the text.

  `protected void`

  `installDefaults(AbstractButton b)`

  Installs default properties.

  `protected void`

  `installKeyboardActions(AbstractButton b)`

  Registers keyboard actions.

  `protected void`

  `installListeners(AbstractButton b)`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintButtonPressed(Graphics g,
  AbstractButton b)`

  Paints a pressed button.

  `protected void`

  `paintFocus(Graphics g,
  AbstractButton b,
  Rectangle viewRect,
  Rectangle textRect,
  Rectangle iconRect)`

  Paints a focused button.

  `protected void`

  `paintIcon(Graphics g,
  JComponent c,
  Rectangle iconRect)`

  Paints an icon of the current button.

  `protected void`

  `paintText(Graphics g,
  AbstractButton b,
  Rectangle textRect,
  String text)`

  Method which renders the text of the current button.

  `protected void`

  `paintText(Graphics g,
  JComponent c,
  Rectangle textRect,
  String text)`

  Method which renders the text of the current button.

  `protected void`

  `setTextShiftOffset()`

  Sets the offset of the text.

  `protected void`

  `uninstallDefaults(AbstractButton b)`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions(AbstractButton b)`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners(AbstractButton b)`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### defaultTextIconGap

    protected int defaultTextIconGap

    The default gap between a text and an icon.
  + ### defaultTextShiftOffset

    protected int defaultTextShiftOffset

    The default offset of a text.
* ## Constructor Details

  + ### BasicButtonUI

    public BasicButtonUI()

    Constructs a `BasicButtonUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `BasicButtonUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `BasicButtonUI`
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Returns the property prefix.

    Returns:
    :   the property prefix
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Installs default properties.

    Parameters:
    :   `b` - an abstract button
  + ### installListeners

    protected void installListeners([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Registers listeners.

    Parameters:
    :   `b` - an abstract button
  + ### installKeyboardActions

    protected void installKeyboardActions([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Registers keyboard actions.

    Parameters:
    :   `b` - an abstract button
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Reverses configuration which was done on the specified component during
    `installUI`. This method is invoked when this
    `UIComponent` instance is being removed as the UI delegate
    for the specified component. This method should undo the
    configuration performed in `installUI`, being careful to
    leave the `JComponent` instance in a clean state (no
    extraneous listeners, look-and-feel-specific property objects, etc.).
    This should include the following:
    1. Remove any UI-set borders from the component.+ Remove any UI-set layout managers on the component.+ Remove any UI-added sub-components from the component.+ Remove any UI-added event/property listeners from the component.+ Remove any UI-installed keyboard UI from the component.+ Nullify any allocated instance data objects to allow for GC.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Unregisters keyboard actions.

    Parameters:
    :   `b` - an abstract button
  + ### uninstallListeners

    protected void uninstallListeners([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Unregisters listeners.

    Parameters:
    :   `b` - an abstract button
  + ### uninstallDefaults

    protected void uninstallDefaults([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Uninstalls default properties.

    Parameters:
    :   `b` - an abstract button
  + ### createButtonListener

    protected [BasicButtonListener](BasicButtonListener.md "class in javax.swing.plaf.basic") createButtonListener([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Returns a new instance of `BasicButtonListener`.

    Parameters:
    :   `b` - an abstract button

    Returns:
    :   a new instance of `BasicButtonListener`
  + ### getDefaultTextIconGap

    public int getDefaultTextIconGap([AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Returns the default gap between a text and an icon.

    Parameters:
    :   `b` - an abstract button

    Returns:
    :   the default gap between text and an icon
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintIcon

    protected void paintIcon([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect)

    Paints an icon of the current button.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component
    :   `iconRect` - a bounding rectangle to render the icon
  + ### paintText

    protected void paintText([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Method which renders the text of the current button.
    As of Java 2 platform v 1.4 this method should not be used or overridden.
    Use the paintText method which takes the AbstractButton argument.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component
    :   `textRect` - a bounding rectangle to render the text
    :   `text` - a string to render
  + ### paintText

    protected void paintText([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Method which renders the text of the current button.

    Parameters:
    :   `g` - Graphics context
    :   `b` - Current button to render
    :   `textRect` - Bounding rectangle to render the text
    :   `text` - String to render

    Since:
    :   1.4
  + ### paintFocus

    protected void paintFocus([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") viewRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect)

    Paints a focused button.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `b` - an abstract button
    :   `viewRect` - a bounding rectangle to render the button
    :   `textRect` - a bounding rectangle to render the text
    :   `iconRect` - a bounding rectangle to render the icon
  + ### paintButtonPressed

    protected void paintButtonPressed([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [AbstractButton](../../AbstractButton.md "class in javax.swing") b)

    Paints a pressed button.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `b` - an abstract button
  + ### clearTextShiftOffset

    protected void clearTextShiftOffset()

    Clears the offset of the text.
  + ### setTextShiftOffset

    protected void setTextShiftOffset()

    Sets the offset of the text.
  + ### getTextShiftOffset

    protected int getTextShiftOffset()

    Returns the offset of the text.

    Returns:
    :   the offset of the text
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's minimum size appropriate for
    the look and feel. If `null` is returned, the minimum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's preferred size appropriate for
    the look and feel. If `null` is returned, the preferred
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method returns `null`.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's maximum size appropriate for
    the look and feel. If `null` is returned, the maximum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
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