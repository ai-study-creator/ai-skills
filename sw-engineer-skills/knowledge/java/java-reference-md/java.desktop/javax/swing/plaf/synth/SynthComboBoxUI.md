Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthComboBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ComboBoxUI](../ComboBoxUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthComboBoxUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthComboBoxUI
extends [BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JComboBox`](../../JComboBox.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `BasicComboBoxUI.ComboBoxLayoutManager, BasicComboBoxUI.FocusHandler, BasicComboBoxUI.ItemHandler, BasicComboBoxUI.KeyHandler, BasicComboBoxUI.ListDataHandler, BasicComboBoxUI.PropertyChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `arrowButton, cachedMinimumSize, comboBox, currentValuePane, editor, focusListener, hasFocus, isMinimumSizeDirty, itemListener, keyListener, listBox, listDataListener, padding, popup, popupKeyListener, popupMouseListener, popupMouseMotionListener, propertyChangeListener, squareButton`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthComboBoxUI()`

  Constructs a `SynthComboBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected JButton`

  `createArrowButton()`

  Creates a button which will be used as the control to show or hide
  the popup portion of the combo box.

  `protected ComboBoxEditor`

  `createEditor()`

  Creates the default editor that will be used in editable combo boxes.

  `protected ComboPopup`

  `createPopup()`

  Creates the popup portion of the combo box.

  `protected ListCellRenderer<Object>`

  `createRenderer()`

  Creates the default renderer that will be used in a non-editiable combo
  box.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected Dimension`

  `getDefaultSize()`

  Returns the default size of an empty display area of the combo box using
  the current renderer and font.

  `Dimension`

  `getMinimumSize(JComponent c)`

  The minimum size is the size of the display area plus insets plus the button.

  `protected void`

  `installDefaults()`

  Installs the default colors, default font, default renderer, and default
  editor into the JComboBox.

  `protected void`

  `installListeners()`

  Creates and installs listeners for the combo box and its model.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

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

  `paintCurrentValue(Graphics g,
  Rectangle bounds,
  boolean hasFocus)`

  Paints the currently selected item.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the default colors, default font, default renderer,
  and default editor from the combo box.

  `protected void`

  `uninstallListeners()`

  Removes the installed listeners from the combo box and its model.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `addEditor, configureArrowButton, configureEditor, createFocusListener, createItemListener, createKeyListener, createLayoutManager, createListDataListener, createPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getDisplaySize, getInsets, getMaximumSize, getPreferredSize, getSizeForComponent, installComponents, installKeyboardActions, isFocusTraversable, isNavigationKey, isPopupVisible, paintCurrentValueBackground, rectangleForCurrentValue, removeEditor, selectNextPossibleValue, selectPreviousPossibleValue, setPopupVisible, toggleOpenClose, unconfigureArrowButton, unconfigureEditor, uninstallComponents, uninstallKeyboardActions`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthComboBoxUI

    public SynthComboBoxUI()

    Constructs a `SynthComboBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.Overridden to ensure that ButtonHandler is created prior to any of
    the other installXXX methods, since several of them reference
    buttonHandler.

    Overrides:
    :   `installUI` in class `BasicComboBoxUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicComboBoxUI`

    Installs the default colors, default font, default renderer, and default
    editor into the JComboBox.

    Overrides:
    :   `installDefaults` in class `BasicComboBoxUI`
  + ### installListeners

    protected void installListeners()

    Creates and installs listeners for the combo box and its model.
    This method is called when the UI is installed.

    Overrides:
    :   `installListeners` in class `BasicComboBoxUI`
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

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
    :   `uninstallUI` in class `BasicComboBoxUI`

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

    Uninstalls the default colors, default font, default renderer,
    and default editor from the combo box.

    Overrides:
    :   `uninstallDefaults` in class `BasicComboBoxUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the installed listeners from the combo box and its model.
    The number and types of listeners removed and in this method should be
    the same that was added in `installListeners`

    Overrides:
    :   `uninstallListeners` in class `BasicComboBoxUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### createPopup

    protected [ComboPopup](../basic/ComboPopup.md "interface in javax.swing.plaf.basic") createPopup()

    Creates the popup portion of the combo box.

    Overrides:
    :   `createPopup` in class `BasicComboBoxUI`

    Returns:
    :   an instance of `ComboPopup`

    See Also:
    :   - [`ComboPopup`](../basic/ComboPopup.md "interface in javax.swing.plaf.basic")
  + ### createRenderer

    protected [ListCellRenderer](../../ListCellRenderer.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> createRenderer()

    Creates the default renderer that will be used in a non-editiable combo
    box. A default renderer will used only if a renderer has not been
    explicitly set with `setRenderer`.

    Overrides:
    :   `createRenderer` in class `BasicComboBoxUI`

    Returns:
    :   a `ListCellRender` used for the combo box

    See Also:
    :   - [`JComboBox.setRenderer(javax.swing.ListCellRenderer<? super E>)`](../../JComboBox.md#setRenderer(javax.swing.ListCellRenderer))
  + ### createEditor

    protected [ComboBoxEditor](../../ComboBoxEditor.md "interface in javax.swing") createEditor()

    Creates the default editor that will be used in editable combo boxes.
    A default editor will be used only if an editor has not been
    explicitly set with `setEditor`.

    Overrides:
    :   `createEditor` in class `BasicComboBoxUI`

    Returns:
    :   a `ComboBoxEditor` used for the combo box

    See Also:
    :   - [`JComboBox.setEditor(javax.swing.ComboBoxEditor)`](../../JComboBox.md#setEditor(javax.swing.ComboBoxEditor))
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### createArrowButton

    protected [JButton](../../JButton.md "class in javax.swing") createArrowButton()

    Creates a button which will be used as the control to show or hide
    the popup portion of the combo box.

    Overrides:
    :   `createArrowButton` in class `BasicComboBoxUI`

    Returns:
    :   a button which represents the popup control
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
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    The minimum size is the size of the display area plus insets plus the button.

    Overrides:
    :   `getMinimumSize` in class `BasicComboBoxUI`

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
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `BasicComboBoxUI`

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
  + ### paintCurrentValue

    public void paintCurrentValue([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    boolean hasFocus)

    Paints the currently selected item.

    Overrides:
    :   `paintCurrentValue` in class `BasicComboBoxUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `bounds` - a bounding rectangle to render to
    :   `hasFocus` - is focused
  + ### getDefaultSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getDefaultSize()

    Returns the default size of an empty display area of the combo box using
    the current renderer and font.
    This method was overridden to use SynthComboBoxRenderer instead of
    DefaultListCellRenderer as the default renderer when calculating the
    size of the combo box. This is used in the case of the combo not having
    any data.

    Overrides:
    :   `getDefaultSize` in class `BasicComboBoxUI`

    Returns:
    :   the size of an empty display area

    See Also:
    :   - [`BasicComboBoxUI.getDisplaySize()`](../basic/BasicComboBoxUI.md#getDisplaySize())