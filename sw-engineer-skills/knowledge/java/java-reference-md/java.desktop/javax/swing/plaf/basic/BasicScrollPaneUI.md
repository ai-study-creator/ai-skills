Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollPaneUI](../ScrollPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicScrollPaneUI

All Implemented Interfaces:
:   `ScrollPaneConstants`

Direct Known Subclasses:
:   `MetalScrollPaneUI`, `SynthScrollPaneUI`

---

public class BasicScrollPaneUI
extends [ScrollPaneUI](../ScrollPaneUI.md "class in javax.swing.plaf")
implements [ScrollPaneConstants](../../ScrollPaneConstants.md "interface in javax.swing")

A default L&F implementation of ScrollPaneUI.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicScrollPaneUI.HSBChangeListener`

  Deprecated, for removal: This API element is subject to removal in a future version.

  `protected class`

  `BasicScrollPaneUI.MouseWheelHandler`

  MouseWheelHandler is an inner class which implements the
  MouseWheelListener interface.

  `class`

  `BasicScrollPaneUI.PropertyChangeHandler`

  Deprecated, for removal: This API element is subject to removal in a future version.

  `class`

  `BasicScrollPaneUI.ViewportChangeHandler`

  Deprecated, for removal: This API element is subject to removal in a future version.

  `class`

  `BasicScrollPaneUI.VSBChangeListener`

  Deprecated, for removal: This API element is subject to removal in a future version.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeListener`

  `hsbChangeListener`

  `ChangeListener` installed on the horizontal scrollbar.

  `protected JScrollPane`

  `scrollpane`

  The instance of `JScrollPane`.

  `protected PropertyChangeListener`

  `spPropertyChangeListener`

  `PropertyChangeListener` installed on the scroll pane.

  `protected ChangeListener`

  `viewportChangeListener`

  `ChangeListener` installed on the viewport.

  `protected ChangeListener`

  `vsbChangeListener`

  `ChangeListener` installed on the vertical scrollbar.

  ### Fields inherited from interface javax.swing.[ScrollPaneConstants](../../ScrollPaneConstants.md "interface in javax.swing")

  `COLUMN_HEADER, HORIZONTAL_SCROLLBAR, HORIZONTAL_SCROLLBAR_ALWAYS, HORIZONTAL_SCROLLBAR_AS_NEEDED, HORIZONTAL_SCROLLBAR_NEVER, HORIZONTAL_SCROLLBAR_POLICY, LOWER_LEADING_CORNER, LOWER_LEFT_CORNER, LOWER_RIGHT_CORNER, LOWER_TRAILING_CORNER, ROW_HEADER, UPPER_LEADING_CORNER, UPPER_LEFT_CORNER, UPPER_RIGHT_CORNER, UPPER_TRAILING_CORNER, VERTICAL_SCROLLBAR, VERTICAL_SCROLLBAR_ALWAYS, VERTICAL_SCROLLBAR_AS_NEEDED, VERTICAL_SCROLLBAR_NEVER, VERTICAL_SCROLLBAR_POLICY, VIEWPORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicScrollPaneUI()`

  Constructs a `BasicScrollPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected ChangeListener`

  `createHSBChangeListener()`

  Returns an instance of horizontal scroll bar `ChangeListener`.

  `protected MouseWheelListener`

  `createMouseWheelListener()`

  Creates an instance of MouseWheelListener, which is added to the
  JScrollPane by installUI().

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates an instance of `PropertyChangeListener` that's added to
  the `JScrollPane` by `installUI()`.

  `static ComponentUI`

  `createUI(JComponent x)`

  Returns a new instance of `BasicScrollPaneUI`.

  `protected ChangeListener`

  `createViewportChangeListener()`

  Returns an instance of viewport `ChangeListener`.

  `protected ChangeListener`

  `createVSBChangeListener()`

  Returns an instance of vertical scroll bar `ChangeListener`.

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

  `protected void`

  `installDefaults(JScrollPane scrollpane)`

  Installs default properties.

  `protected void`

  `installKeyboardActions(JScrollPane c)`

  Registers keyboard actions.

  `protected void`

  `installListeners(JScrollPane c)`

  Registers listeners.

  `void`

  `installUI(JComponent x)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `syncScrollPaneWithViewport()`

  Synchronizes the `JScrollPane` with `Viewport`.

  `protected void`

  `uninstallDefaults(JScrollPane c)`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions(JScrollPane c)`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners(JComponent c)`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `protected void`

  `updateColumnHeader(PropertyChangeEvent e)`

  Updates column header.

  `protected void`

  `updateRowHeader(PropertyChangeEvent e)`

  Updates row header.

  `protected void`

  `updateScrollBarDisplayPolicy(PropertyChangeEvent e)`

  Updates a scroll bar display policy.

  `protected void`

  `updateViewport(PropertyChangeEvent e)`

  Updates viewport.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMinimumSize, getPreferredSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### scrollpane

    protected [JScrollPane](../../JScrollPane.md "class in javax.swing") scrollpane

    The instance of `JScrollPane`.
  + ### vsbChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") vsbChangeListener

    `ChangeListener` installed on the vertical scrollbar.
  + ### hsbChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") hsbChangeListener

    `ChangeListener` installed on the horizontal scrollbar.
  + ### viewportChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") viewportChangeListener

    `ChangeListener` installed on the viewport.
  + ### spPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") spPropertyChangeListener

    `PropertyChangeListener` installed on the scroll pane.
* ## Constructor Details

  + ### BasicScrollPaneUI

    public BasicScrollPaneUI()

    Constructs a `BasicScrollPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Returns a new instance of `BasicScrollPaneUI`.

    Parameters:
    :   `x` - a component.

    Returns:
    :   a new instance of `BasicScrollPaneUI`
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
    :   new Dimension(Short.MAX\_VALUE, Short.MAX\_VALUE)

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### installDefaults

    protected void installDefaults([JScrollPane](../../JScrollPane.md "class in javax.swing") scrollpane)

    Installs default properties.

    Parameters:
    :   `scrollpane` - an instance of `JScrollPane`
  + ### installListeners

    protected void installListeners([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Registers listeners.

    Parameters:
    :   `c` - an instance of `JScrollPane`
  + ### installKeyboardActions

    protected void installKeyboardActions([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Registers keyboard actions.

    Parameters:
    :   `c` - an instance of `JScrollPane`
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") x)

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
    :   `x` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallDefaults

    protected void uninstallDefaults([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Uninstalls default properties.

    Parameters:
    :   `c` - an instance of `JScrollPane`
  + ### uninstallListeners

    protected void uninstallListeners([JComponent](../../JComponent.md "class in javax.swing") c)

    Unregisters listeners.

    Parameters:
    :   `c` - a component
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions([JScrollPane](../../JScrollPane.md "class in javax.swing") c)

    Unregisters keyboard actions.

    Parameters:
    :   `c` - an instance of `JScrollPane`
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
  + ### syncScrollPaneWithViewport

    protected void syncScrollPaneWithViewport()

    Synchronizes the `JScrollPane` with `Viewport`.
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
  + ### createViewportChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") createViewportChangeListener()

    Returns an instance of viewport `ChangeListener`.

    Returns:
    :   an instance of viewport `ChangeListener`
  + ### createHSBChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") createHSBChangeListener()

    Returns an instance of horizontal scroll bar `ChangeListener`.

    Returns:
    :   an instance of horizontal scroll bar `ChangeListener`
  + ### createVSBChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") createVSBChangeListener()

    Returns an instance of vertical scroll bar `ChangeListener`.

    Returns:
    :   an instance of vertical scroll bar `ChangeListener`
  + ### createMouseWheelListener

    protected [MouseWheelListener](../../../../java/awt/event/MouseWheelListener.md "interface in java.awt.event") createMouseWheelListener()

    Creates an instance of MouseWheelListener, which is added to the
    JScrollPane by installUI(). The returned MouseWheelListener is used
    to handle mouse wheel-driven scrolling.

    Returns:
    :   MouseWheelListener which implements wheel-driven scrolling

    Since:
    :   1.4

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`BasicScrollPaneUI.MouseWheelHandler`](BasicScrollPaneUI.MouseWheelHandler.md "class in javax.swing.plaf.basic")
  + ### updateScrollBarDisplayPolicy

    protected void updateScrollBarDisplayPolicy([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Updates a scroll bar display policy.

    Parameters:
    :   `e` - the property change event
  + ### updateViewport

    protected void updateViewport([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Updates viewport.

    Parameters:
    :   `e` - the property change event
  + ### updateRowHeader

    protected void updateRowHeader([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Updates row header.

    Parameters:
    :   `e` - the property change event
  + ### updateColumnHeader

    protected void updateColumnHeader([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Updates column header.

    Parameters:
    :   `e` - the property change event
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates an instance of `PropertyChangeListener` that's added to
    the `JScrollPane` by `installUI()`. Subclasses can override
    this method to return a custom `PropertyChangeListener`, e.g.

    ```
     class MyScrollPaneUI extends BasicScrollPaneUI {
        protected PropertyChangeListener createPropertyChangeListener() {
            return new MyPropertyChangeListener();
        }
        public class MyPropertyChangeListener extends PropertyChangeListener {
            public void propertyChange(PropertyChangeEvent e) {
                if (e.getPropertyName().equals("viewport")) {
                    // do some extra work when the viewport changes
                }
                super.propertyChange(e);
            }
        }
     }
    ```

    Returns:
    :   an instance of `PropertyChangeListener`

    See Also:
    :   - [`PropertyChangeListener`](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))