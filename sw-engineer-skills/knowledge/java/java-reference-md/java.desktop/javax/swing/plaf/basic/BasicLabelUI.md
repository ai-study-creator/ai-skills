Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicLabelUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.LabelUI](../LabelUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicLabelUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Direct Known Subclasses:
:   `MetalLabelUI`, `SynthLabelUI`

---

public class BasicLabelUI
extends [LabelUI](../LabelUI.md "class in javax.swing.plaf")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

A Windows L&F implementation of LabelUI. This implementation
is completely static, i.e. there's only one UIView implementation
that's shared by all JLabel objects.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static BasicLabelUI`

  `labelUI`

  The default `BasicLabelUI` instance.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicLabelUI()`

  Constructs a `BasicLabelUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns an instance of `BasicLabelUI`.

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

  `protected void`

  `installComponents(JLabel c)`

  Registers components.

  `protected void`

  `installDefaults(JLabel c)`

  Installs default properties.

  `protected void`

  `installKeyboardActions(JLabel l)`

  Registers keyboard actions.

  `protected void`

  `installListeners(JLabel c)`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected String`

  `layoutCL(JLabel label,
  FontMetrics fontMetrics,
  String text,
  Icon icon,
  Rectangle viewR,
  Rectangle iconR,
  Rectangle textR)`

  Forwards the call to SwingUtilities.layoutCompoundLabel().

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the label text with the foreground color, if the label is opaque
  then paints the entire background with the background color.

  `protected void`

  `paintDisabledText(JLabel l,
  Graphics g,
  String s,
  int textX,
  int textY)`

  Paint clippedText at textX, textY with background.lighter() and then
  shifted down and to the right by one pixel with background.darker().

  `protected void`

  `paintEnabledText(JLabel l,
  Graphics g,
  String s,
  int textX,
  int textY)`

  Paint clippedText at textX, textY with the labels foreground color.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallComponents(JLabel c)`

  Unregisters components.

  `protected void`

  `uninstallDefaults(JLabel c)`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions(JLabel c)`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners(JLabel c)`

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

  + ### labelUI

    protected static [BasicLabelUI](BasicLabelUI.md "class in javax.swing.plaf.basic") labelUI

    The default `BasicLabelUI` instance. This field might
    not be used. To change the default instance use a subclass which
    overrides the `createUI` method, and place that class
    name in defaults table under the key "LabelUI".
* ## Constructor Details

  + ### BasicLabelUI

    public BasicLabelUI()

    Constructs a `BasicLabelUI`.
* ## Method Details

  + ### layoutCL

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") layoutCL([JLabel](../../JLabel.md "class in javax.swing") label,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") fontMetrics,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") viewR,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconR,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textR)

    Forwards the call to SwingUtilities.layoutCompoundLabel().
    This method is here so that a subclass could do Label specific
    layout and to shorten the method name a little.

    Parameters:
    :   `label` - an instance of `JLabel`
    :   `fontMetrics` - a font metrics
    :   `text` - a text
    :   `icon` - an icon
    :   `viewR` - a bounding rectangle to lay out label
    :   `iconR` - a bounding rectangle to lay out icon
    :   `textR` - a bounding rectangle to lay out text

    Returns:
    :   a possibly clipped version of the compound labels string

    See Also:
    :   - [`SwingUtilities.layoutCompoundLabel(javax.swing.JComponent, java.awt.FontMetrics, java.lang.String, javax.swing.Icon, int, int, int, int, java.awt.Rectangle, java.awt.Rectangle, java.awt.Rectangle, int)`](../../SwingUtilities.md#layoutCompoundLabel(javax.swing.JComponent,java.awt.FontMetrics,java.lang.String,javax.swing.Icon,int,int,int,int,java.awt.Rectangle,java.awt.Rectangle,java.awt.Rectangle,int))
  + ### paintEnabledText

    protected void paintEnabledText([JLabel](../../JLabel.md "class in javax.swing") l,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") s,
    int textX,
    int textY)

    Paint clippedText at textX, textY with the labels foreground color.

    Parameters:
    :   `l` - an instance of `JLabel`
    :   `g` - an instance of `Graphics`
    :   `s` - a text
    :   `textX` - an X coordinate
    :   `textY` - an Y coordinate

    See Also:
    :   - [`paint(java.awt.Graphics, javax.swing.JComponent)`](#paint(java.awt.Graphics,javax.swing.JComponent))
        - [`paintDisabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintDisabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int))
  + ### paintDisabledText

    protected void paintDisabledText([JLabel](../../JLabel.md "class in javax.swing") l,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") s,
    int textX,
    int textY)

    Paint clippedText at textX, textY with background.lighter() and then
    shifted down and to the right by one pixel with background.darker().

    Parameters:
    :   `l` - an instance of `JLabel`
    :   `g` - an instance of `Graphics`
    :   `s` - a text
    :   `textX` - an X coordinate
    :   `textY` - an Y coordinate

    See Also:
    :   - [`paint(java.awt.Graphics, javax.swing.JComponent)`](#paint(java.awt.Graphics,javax.swing.JComponent))
        - [`paintEnabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintEnabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the label text with the foreground color, if the label is opaque
    then paints the entire background with the background color. The Label
    text is drawn by [`paintEnabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintEnabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int)) or [`paintDisabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintDisabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int)).
    The locations of the label parts are computed by [`layoutCL(javax.swing.JLabel, java.awt.FontMetrics, java.lang.String, javax.swing.Icon, java.awt.Rectangle, java.awt.Rectangle, java.awt.Rectangle)`](#layoutCL(javax.swing.JLabel,java.awt.FontMetrics,java.lang.String,javax.swing.Icon,java.awt.Rectangle,java.awt.Rectangle,java.awt.Rectangle)).

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`paintEnabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintEnabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int))
        - [`paintDisabledText(javax.swing.JLabel, java.awt.Graphics, java.lang.String, int, int)`](#paintDisabledText(javax.swing.JLabel,java.awt.Graphics,java.lang.String,int,int))
        - [`layoutCL(javax.swing.JLabel, java.awt.FontMetrics, java.lang.String, javax.swing.Icon, java.awt.Rectangle, java.awt.Rectangle, java.awt.Rectangle)`](#layoutCL(javax.swing.JLabel,java.awt.FontMetrics,java.lang.String,javax.swing.Icon,java.awt.Rectangle,java.awt.Rectangle,java.awt.Rectangle))
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
    :   getPreferredSize(c)

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
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
    :   getPreferredSize(c)

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
  + ### installDefaults

    protected void installDefaults([JLabel](../../JLabel.md "class in javax.swing") c)

    Installs default properties.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### installListeners

    protected void installListeners([JLabel](../../JLabel.md "class in javax.swing") c)

    Registers listeners.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### installComponents

    protected void installComponents([JLabel](../../JLabel.md "class in javax.swing") c)

    Registers components.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### installKeyboardActions

    protected void installKeyboardActions([JLabel](../../JLabel.md "class in javax.swing") l)

    Registers keyboard actions.

    Parameters:
    :   `l` - an instance of `JLabel`
  + ### uninstallDefaults

    protected void uninstallDefaults([JLabel](../../JLabel.md "class in javax.swing") c)

    Uninstalls default properties.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### uninstallListeners

    protected void uninstallListeners([JLabel](../../JLabel.md "class in javax.swing") c)

    Unregisters listeners.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### uninstallComponents

    protected void uninstallComponents([JLabel](../../JLabel.md "class in javax.swing") c)

    Unregisters components.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions([JLabel](../../JLabel.md "class in javax.swing") c)

    Unregisters keyboard actions.

    Parameters:
    :   `c` - an instance of `JLabel`
  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `BasicLabelUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `BasicLabelUI`
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.