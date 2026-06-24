Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicMenuItemUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ButtonUI](../ButtonUI.md "class in javax.swing.plaf")

[javax.swing.plaf.MenuItemUI](../MenuItemUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicMenuItemUI

Direct Known Subclasses:
:   `BasicCheckBoxMenuItemUI`, `BasicMenuUI`, `BasicRadioButtonMenuItemUI`, `SynthMenuItemUI`

---

public class BasicMenuItemUI
extends [MenuItemUI](../MenuItemUI.md "class in javax.swing.plaf")

BasicMenuItem implementation

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `BasicMenuItemUI.MouseInputHandler`

  Deprecated, for removal: This API element is subject to removal in a future version.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `acceleratorDelimiter`

  Accelerator delimiter string, such as `'+'` in `'Ctrl+C'`.

  `protected Font`

  `acceleratorFont`

  The accelerator font.

  `protected Color`

  `acceleratorForeground`

  The color of the accelerator foreground.

  `protected Color`

  `acceleratorSelectionForeground`

  The color of the accelerator selection.

  `protected Icon`

  `arrowIcon`

  The arrow icon.

  `protected Icon`

  `checkIcon`

  The check icon.

  `protected int`

  `defaultTextIconGap`

  The gap between the text and the icon.

  `protected Color`

  `disabledForeground`

  The color of the disabled foreground.

  `protected MenuDragMouseListener`

  `menuDragMouseListener`

  The instance of `MenuDragMouseListener`.

  `protected JMenuItem`

  `menuItem`

  The instance of `JMenuItem`.

  `protected MenuKeyListener`

  `menuKeyListener`

  The instance of `MenuKeyListener`.

  `protected MouseInputListener`

  `mouseInputListener`

  The instance of `MouseInputListener`.

  `protected boolean`

  `oldBorderPainted`

  The value represents if the old border is painted.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  `PropertyChangeListener` returned from
  `createPropertyChangeListener`.

  `protected Color`

  `selectionBackground`

  The color of the selection background.

  `protected Color`

  `selectionForeground`

  The color of the selection foreground.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicMenuItemUI()`

  Constructs a `BasicMenuItemUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected MenuDragMouseListener`

  `createMenuDragMouseListener(JComponent c)`

  Returns an instance of `MenuDragMouseListener`.

  `protected MenuKeyListener`

  `createMenuKeyListener(JComponent c)`

  Returns an instance of `MenuKeyListener`.

  `protected MouseInputListener`

  `createMouseInputListener(JComponent c)`

  Returns an instance of `MouseInputListener`.

  `protected PropertyChangeListener`

  `createPropertyChangeListener(JComponent c)`

  Creates a `PropertyChangeListener` which will be added to
  the menu item.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of `BasicMenuItemUI`.

  `protected void`

  `doClick(MenuSelectionManager msm)`

  Call this method when a menu item is to be activated.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `MenuElement[]`

  `getPath()`

  Returns a menu element path.

  `protected Dimension`

  `getPreferredMenuItemSize(JComponent c,
  Icon checkIcon,
  Icon arrowIcon,
  int defaultTextIconGap)`

  Returns the preferred size of a menu item.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected String`

  `getPropertyPrefix()`

  Returns a property prefix.

  `protected void`

  `installComponents(JMenuItem menuItem)`

  Registers the subcomponents of the menu.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard action.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintBackground(Graphics g,
  JMenuItem menuItem,
  Color bgColor)`

  Draws the background of the menu item.

  `protected void`

  `paintMenuItem(Graphics g,
  JComponent c,
  Icon checkIcon,
  Icon arrowIcon,
  Color background,
  Color foreground,
  int defaultTextIconGap)`

  Paints a menu item.

  `protected void`

  `paintText(Graphics g,
  JMenuItem menuItem,
  Rectangle textRect,
  String text)`

  Renders the text of the current menu item.

  `protected void`

  `uninstallComponents(JMenuItem menuItem)`

  Unregisters components.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `void`

  `update(Graphics g,
  JComponent c)`

  We draw the background in paintMenuItem()
  so override update (which fills the background of opaque
  components by default) to just call paint().

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### menuItem

    protected [JMenuItem](../../JMenuItem.md "class in javax.swing") menuItem

    The instance of `JMenuItem`.
  + ### selectionBackground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectionBackground

    The color of the selection background.
  + ### selectionForeground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectionForeground

    The color of the selection foreground.
  + ### disabledForeground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") disabledForeground

    The color of the disabled foreground.
  + ### acceleratorForeground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") acceleratorForeground

    The color of the accelerator foreground.
  + ### acceleratorSelectionForeground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") acceleratorSelectionForeground

    The color of the accelerator selection.
  + ### acceleratorDelimiter

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") acceleratorDelimiter

    Accelerator delimiter string, such as `'+'` in `'Ctrl+C'`.

    Since:
    :   1.7
  + ### defaultTextIconGap

    protected int defaultTextIconGap

    The gap between the text and the icon.
  + ### acceleratorFont

    protected [Font](../../../../java/awt/Font.md "class in java.awt") acceleratorFont

    The accelerator font.
  + ### mouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") mouseInputListener

    The instance of `MouseInputListener`.
  + ### menuDragMouseListener

    protected [MenuDragMouseListener](../../event/MenuDragMouseListener.md "interface in javax.swing.event") menuDragMouseListener

    The instance of `MenuDragMouseListener`.
  + ### menuKeyListener

    protected [MenuKeyListener](../../event/MenuKeyListener.md "interface in javax.swing.event") menuKeyListener

    The instance of `MenuKeyListener`.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    `PropertyChangeListener` returned from
    `createPropertyChangeListener`. You should not
    need to access this field, rather if you want to customize the
    `PropertyChangeListener` override
    `createPropertyChangeListener`.

    Since:
    :   1.6

    See Also:
    :   - [`createPropertyChangeListener(javax.swing.JComponent)`](#createPropertyChangeListener(javax.swing.JComponent))
  + ### arrowIcon

    protected [Icon](../../Icon.md "interface in javax.swing") arrowIcon

    The arrow icon.
  + ### checkIcon

    protected [Icon](../../Icon.md "interface in javax.swing") checkIcon

    The check icon.
  + ### oldBorderPainted

    protected boolean oldBorderPainted

    The value represents if the old border is painted.
* ## Constructor Details

  + ### BasicMenuItemUI

    public BasicMenuItemUI()

    Constructs a `BasicMenuItemUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of `BasicMenuItemUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicMenuItemUI`
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

    protected void installDefaults()

    Installs default properties.
  + ### installComponents

    protected void installComponents([JMenuItem](../../JMenuItem.md "class in javax.swing") menuItem)

    Registers the subcomponents of the menu.

    Parameters:
    :   `menuItem` - a menu item

    Since:
    :   1.3
  + ### getPropertyPrefix

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPropertyPrefix()

    Returns a property prefix.

    Returns:
    :   a property prefix
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard action.
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
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### uninstallComponents

    protected void uninstallComponents([JMenuItem](../../JMenuItem.md "class in javax.swing") menuItem)

    Unregisters components.

    Parameters:
    :   `menuItem` - a menu item

    Since:
    :   1.3
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MouseInputListener`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MouseInputListener`
  + ### createMenuDragMouseListener

    protected [MenuDragMouseListener](../../event/MenuDragMouseListener.md "interface in javax.swing.event") createMenuDragMouseListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MenuDragMouseListener`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MenuDragMouseListener`
  + ### createMenuKeyListener

    protected [MenuKeyListener](../../event/MenuKeyListener.md "interface in javax.swing.event") createMenuKeyListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `MenuKeyListener`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MenuKeyListener`
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a `PropertyChangeListener` which will be added to
    the menu item.
    If this method returns null then it will not be added to the menu item.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of a `PropertyChangeListener` or null

    Since:
    :   1.6
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
  + ### getPreferredMenuItemSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredMenuItemSize([JComponent](../../JComponent.md "class in javax.swing") c,
    [Icon](../../Icon.md "interface in javax.swing") checkIcon,
    [Icon](../../Icon.md "interface in javax.swing") arrowIcon,
    int defaultTextIconGap)

    Returns the preferred size of a menu item.

    Parameters:
    :   `c` - a component
    :   `checkIcon` - a check icon
    :   `arrowIcon` - an arrow icon
    :   `defaultTextIconGap` - a gap between a text and an icon

    Returns:
    :   the preferred size of a menu item
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    We draw the background in paintMenuItem()
    so override update (which fills the background of opaque
    components by default) to just call paint().

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#paint(java.awt.Graphics,javax.swing.JComponent))
        - [`JComponent.paintComponent(java.awt.Graphics)`](../../JComponent.md#paintComponent(java.awt.Graphics))
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
  + ### paintMenuItem

    protected void paintMenuItem([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Icon](../../Icon.md "interface in javax.swing") checkIcon,
    [Icon](../../Icon.md "interface in javax.swing") arrowIcon,
    [Color](../../../../java/awt/Color.md "class in java.awt") background,
    [Color](../../../../java/awt/Color.md "class in java.awt") foreground,
    int defaultTextIconGap)

    Paints a menu item.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component
    :   `checkIcon` - a check icon
    :   `arrowIcon` - an arrow icon
    :   `background` - a background color
    :   `foreground` - a foreground color
    :   `defaultTextIconGap` - a gap between a text and an icon
  + ### paintBackground

    protected void paintBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JMenuItem](../../JMenuItem.md "class in javax.swing") menuItem,
    [Color](../../../../java/awt/Color.md "class in java.awt") bgColor)

    Draws the background of the menu item.

    Parameters:
    :   `g` - the paint graphics
    :   `menuItem` - menu item to be painted
    :   `bgColor` - selection background color

    Since:
    :   1.4
  + ### paintText

    protected void paintText([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JMenuItem](../../JMenuItem.md "class in javax.swing") menuItem,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Renders the text of the current menu item.

    Parameters:
    :   `g` - graphics context
    :   `menuItem` - menu item to render
    :   `textRect` - bounding rectangle for rendering the text
    :   `text` - string to render

    Since:
    :   1.4
  + ### getPath

    public [MenuElement](../../MenuElement.md "interface in javax.swing")[] getPath()

    Returns a menu element path.

    Returns:
    :   a menu element path
  + ### doClick

    protected void doClick([MenuSelectionManager](../../MenuSelectionManager.md "class in javax.swing") msm)

    Call this method when a menu item is to be activated.
    This method handles some of the details of menu item activation
    such as clearing the selected path and messaging the
    JMenuItem's doClick() method.

    Parameters:
    :   `msm` - A MenuSelectionManager. The visual feedback and
        internal bookkeeping tasks are delegated to
        this MenuSelectionManager. If `null` is
        passed as this argument, the
        `MenuSelectionManager.defaultManager` is
        used.

    Since:
    :   1.4

    See Also:
    :   - [`MenuSelectionManager`](../../MenuSelectionManager.md "class in javax.swing")
        - [`AbstractButton.doClick(int)`](../../AbstractButton.md#doClick(int))