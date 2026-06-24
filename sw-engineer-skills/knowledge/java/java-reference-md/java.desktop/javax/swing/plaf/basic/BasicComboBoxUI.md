Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ComboBoxUI](../ComboBoxUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicComboBoxUI

Direct Known Subclasses:
:   `MetalComboBoxUI`, `SynthComboBoxUI`

---

public class BasicComboBoxUI
extends [ComboBoxUI](../ComboBoxUI.md "class in javax.swing.plaf")

Basic UI implementation for JComboBox.

The combo box is a compound component which means that it is an aggregate of
many simpler components. This class creates and manages the listeners
on the combo box and the combo box model. These listeners update the user
interface in response to changes in the properties and state of the combo box.

All event handling is handled by listener classes created with the
`createxxxListener()` methods and internal classes.
You can change the behavior of this class by overriding the
`createxxxListener()` methods and supplying your own
event listeners or subclassing from the ones supplied in this class.

For adding specific actions,
override `installKeyboardActions` to add actions in response to
KeyStroke bindings. See the article [How to Use Key Bindings](https://docs.oracle.com/javase/tutorial/uiswing/misc/keybinding.html)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicComboBoxUI.ComboBoxLayoutManager`

  This layout manager handles the 'standard' layout of combo boxes.

  `class`

  `BasicComboBoxUI.FocusHandler`

  This listener hides the popup when the focus is lost.

  `class`

  `BasicComboBoxUI.ItemHandler`

  This listener watches for changes to the selection in the
  combo box.

  `class`

  `BasicComboBoxUI.KeyHandler`

  This listener checks to see if the key event isn't a navigation key.

  `class`

  `BasicComboBoxUI.ListDataHandler`

  This listener watches for changes in the
  `ComboBoxModel`.

  `class`

  `BasicComboBoxUI.PropertyChangeHandler`

  This listener watches for bound properties that have changed in the
  combo box.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JButton`

  `arrowButton`

  The arrow button that invokes the popup.

  `protected Dimension`

  `cachedMinimumSize`

  The cached minimum preferred size.

  `protected JComboBox<Object>`

  `comboBox`

  The instance of `JComboBox`.

  `protected CellRendererPane`

  `currentValuePane`

  Used to render the currently selected item in the combo box.

  `protected Component`

  `editor`

  The Component that the `ComboBoxEditor` uses for editing.

  `protected FocusListener`

  `focusListener`

  This protected field is implementation specific.

  `protected boolean`

  `hasFocus`

  This protected field is implementation specific.

  `protected boolean`

  `isMinimumSizeDirty`

  The flag for recalculating the minimum preferred size.

  `protected ItemListener`

  `itemListener`

  This protected field is implementation specific.

  `protected KeyListener`

  `keyListener`

  This protected field is implementation specific.

  `protected JList<Object>`

  `listBox`

  This list is for drawing the current item in the combo box.

  `protected ListDataListener`

  `listDataListener`

  This protected field is implementation specific.

  `protected Insets`

  `padding`

  If specified, these insets act as padding around the cell renderer when
  laying out and painting the "selected" item in the combo box.

  `protected ComboPopup`

  `popup`

  The implementation of `ComboPopup` that is used to show the popup.

  `protected KeyListener`

  `popupKeyListener`

  The `KeyListener` listens to events.

  `protected MouseListener`

  `popupMouseListener`

  The `MouseListener` listens to events.

  `protected MouseMotionListener`

  `popupMouseMotionListener`

  The `MouseMotionListener` listens to events.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  This protected field is implementation specific.

  `protected boolean`

  `squareButton`

  Indicates whether or not the combo box button should be square.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicComboBoxUI()`

  Constructs a `BasicComboBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addEditor()`

  This public method is implementation specific and should be private.

  `void`

  `configureArrowButton()`

  This public method is implementation specific and should be private.

  `protected void`

  `configureEditor()`

  This protected method is implementation specific and should be private.

  `protected JButton`

  `createArrowButton()`

  Creates a button which will be used as the control to show or hide
  the popup portion of the combo box.

  `protected ComboBoxEditor`

  `createEditor()`

  Creates the default editor that will be used in editable combo boxes.

  `protected FocusListener`

  `createFocusListener()`

  Creates a `FocusListener` which will be added to the combo box.

  `protected ItemListener`

  `createItemListener()`

  Creates an `ItemListener` which will be added to the
  combo box.

  `protected KeyListener`

  `createKeyListener()`

  Creates a `KeyListener` which will be added to the
  combo box.

  `protected LayoutManager`

  `createLayoutManager()`

  Creates a layout manager for managing the components which make up the
  combo box.

  `protected ListDataListener`

  `createListDataListener()`

  Creates a list data listener which will be added to the
  `ComboBoxModel`.

  `protected ComboPopup`

  `createPopup()`

  Creates the popup portion of the combo box.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a `PropertyChangeListener` which will be added to
  the combo box.

  `protected ListCellRenderer<Object>`

  `createRenderer()`

  Creates the default renderer that will be used in a non-editiable combo
  box.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `BasicComboBoxUI`.

  `Accessible`

  `getAccessibleChild(JComponent c,
  int i)`

  Returns the `i`th `Accessible` child of the object.

  `int`

  `getAccessibleChildrenCount(JComponent c)`

  Returns the number of accessible children in the object.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `protected Dimension`

  `getDefaultSize()`

  Return the default size of an empty display area of the combo box using
  the current renderer and font.

  `protected Dimension`

  `getDisplaySize()`

  Returns the calculated size of the display area.

  `protected Insets`

  `getInsets()`

  Gets the insets from the JComboBox.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  The minimum size is the size of the display area plus insets plus the button.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected Dimension`

  `getSizeForComponent(Component comp)`

  Returns the size a component would have if used as a cell renderer.

  `protected void`

  `installComponents()`

  Creates and initializes the components which make up the
  aggregate combo box.

  `protected void`

  `installDefaults()`

  Installs the default colors, default font, default renderer, and default
  editor into the JComboBox.

  `protected void`

  `installKeyboardActions()`

  Adds keyboard actions to the JComboBox.

  `protected void`

  `installListeners()`

  Creates and installs listeners for the combo box and its model.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `boolean`

  `isFocusTraversable(JComboBox<?> c)`

  Determines if the JComboBox is focus traversable.

  `protected boolean`

  `isNavigationKey(int keyCode)`

  Returns whether or not the supplied keyCode maps to a key that is used for
  navigation.

  `boolean`

  `isPopupVisible(JComboBox<?> c)`

  Tells if the popup is visible or not.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `void`

  `paintCurrentValue(Graphics g,
  Rectangle bounds,
  boolean hasFocus)`

  Paints the currently selected item.

  `void`

  `paintCurrentValueBackground(Graphics g,
  Rectangle bounds,
  boolean hasFocus)`

  Paints the background of the currently selected item.

  `protected Rectangle`

  `rectangleForCurrentValue()`

  Returns the area that is reserved for drawing the currently selected item.

  `void`

  `removeEditor()`

  This public method is implementation specific and should be private.

  `protected void`

  `selectNextPossibleValue()`

  Selects the next item in the list.

  `protected void`

  `selectPreviousPossibleValue()`

  Selects the previous item in the list.

  `void`

  `setPopupVisible(JComboBox<?> c,
  boolean v)`

  Hides the popup.

  `protected void`

  `toggleOpenClose()`

  Hides the popup if it is showing and shows the popup if it is hidden.

  `void`

  `unconfigureArrowButton()`

  This public method is implementation specific and should be private.

  `protected void`

  `unconfigureEditor()`

  This protected method is implementation specific and should be private.

  `protected void`

  `uninstallComponents()`

  The aggregate components which comprise the combo box are
  unregistered and uninitialized.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the default colors, default font, default renderer,
  and default editor from the combo box.

  `protected void`

  `uninstallKeyboardActions()`

  Removes the focus InputMap and ActionMap.

  `protected void`

  `uninstallListeners()`

  Removes the installed listeners from the combo box and its model.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### comboBox

    protected [JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> comboBox

    The instance of `JComboBox`.
  + ### hasFocus

    protected boolean hasFocus

    This protected field is implementation specific. Do not access directly
    or override.
  + ### listBox

    protected [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> listBox

    This list is for drawing the current item in the combo box.
  + ### currentValuePane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") currentValuePane

    Used to render the currently selected item in the combo box.
    It doesn't have anything to do with the popup's rendering.
  + ### popup

    protected [ComboPopup](ComboPopup.md "interface in javax.swing.plaf.basic") popup

    The implementation of `ComboPopup` that is used to show the popup.
  + ### editor

    protected [Component](../../../../java/awt/Component.md "class in java.awt") editor

    The Component that the `ComboBoxEditor` uses for editing.
  + ### arrowButton

    protected [JButton](../../JButton.md "class in javax.swing") arrowButton

    The arrow button that invokes the popup.
  + ### keyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") keyListener

    This protected field is implementation specific. Do not access directly
    or override. Override the listener construction method instead.

    See Also:
    :   - [`createKeyListener()`](#createKeyListener())
  + ### focusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") focusListener

    This protected field is implementation specific. Do not access directly
    or override. Override the listener construction method instead.

    See Also:
    :   - [`createFocusListener()`](#createFocusListener())
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    This protected field is implementation specific. Do not access directly
    or override. Override the listener construction method instead.

    See Also:
    :   - [`createPropertyChangeListener()`](#createPropertyChangeListener())
  + ### itemListener

    protected [ItemListener](../../../../java/awt/event/ItemListener.md "interface in java.awt.event") itemListener

    This protected field is implementation specific. Do not access directly
    or override. Override the listener construction method instead.

    See Also:
    :   - [`createItemListener()`](#createItemListener())
  + ### popupMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") popupMouseListener

    The `MouseListener` listens to events.
  + ### popupMouseMotionListener

    protected [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") popupMouseMotionListener

    The `MouseMotionListener` listens to events.
  + ### popupKeyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") popupKeyListener

    The `KeyListener` listens to events.
  + ### listDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") listDataListener

    This protected field is implementation specific. Do not access directly
    or override. Override the listener construction method instead.

    See Also:
    :   - [`createListDataListener()`](#createListDataListener())
  + ### isMinimumSizeDirty

    protected boolean isMinimumSizeDirty

    The flag for recalculating the minimum preferred size.
  + ### cachedMinimumSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") cachedMinimumSize

    The cached minimum preferred size.
  + ### squareButton

    protected boolean squareButton

    Indicates whether or not the combo box button should be square.
    If square, then the width and height are equal, and are both set to
    the height of the combo minus appropriate insets.

    Since:
    :   1.7
  + ### padding

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") padding

    If specified, these insets act as padding around the cell renderer when
    laying out and painting the "selected" item in the combo box. These
    insets add to those specified by the cell renderer.

    Since:
    :   1.7
* ## Constructor Details

  + ### BasicComboBoxUI

    public BasicComboBoxUI()

    Constructs a `BasicComboBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `BasicComboBoxUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicComboBoxUI`
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

    protected void installDefaults()

    Installs the default colors, default font, default renderer, and default
    editor into the JComboBox.
  + ### installListeners

    protected void installListeners()

    Creates and installs listeners for the combo box and its model.
    This method is called when the UI is installed.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the default colors, default font, default renderer,
    and default editor from the combo box.
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the installed listeners from the combo box and its model.
    The number and types of listeners removed and in this method should be
    the same that was added in `installListeners`
  + ### createPopup

    protected [ComboPopup](ComboPopup.md "interface in javax.swing.plaf.basic") createPopup()

    Creates the popup portion of the combo box.

    Returns:
    :   an instance of `ComboPopup`

    See Also:
    :   - [`ComboPopup`](ComboPopup.md "interface in javax.swing.plaf.basic")
  + ### createKeyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") createKeyListener()

    Creates a `KeyListener` which will be added to the
    combo box. If this method returns null then it will not be added
    to the combo box.

    Returns:
    :   an instance `KeyListener` or null
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Creates a `FocusListener` which will be added to the combo box.
    If this method returns null then it will not be added to the combo box.

    Returns:
    :   an instance of a `FocusListener` or null
  + ### createListDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") createListDataListener()

    Creates a list data listener which will be added to the
    `ComboBoxModel`. If this method returns null then
    it will not be added to the combo box model.

    Returns:
    :   an instance of a `ListDataListener` or null
  + ### createItemListener

    protected [ItemListener](../../../../java/awt/event/ItemListener.md "interface in java.awt.event") createItemListener()

    Creates an `ItemListener` which will be added to the
    combo box. If this method returns null then it will not
    be added to the combo box.

    Subclasses may override this method to return instances of their own
    ItemEvent handlers.

    Returns:
    :   an instance of an `ItemListener` or null
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a `PropertyChangeListener` which will be added to
    the combo box. If this method returns null then it will not
    be added to the combo box.

    Returns:
    :   an instance of a `PropertyChangeListener` or null
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Creates a layout manager for managing the components which make up the
    combo box.

    Returns:
    :   an instance of a layout manager
  + ### createRenderer

    protected [ListCellRenderer](../../ListCellRenderer.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> createRenderer()

    Creates the default renderer that will be used in a non-editiable combo
    box. A default renderer will used only if a renderer has not been
    explicitly set with `setRenderer`.

    Returns:
    :   a `ListCellRender` used for the combo box

    See Also:
    :   - [`JComboBox.setRenderer(javax.swing.ListCellRenderer<? super E>)`](../../JComboBox.md#setRenderer(javax.swing.ListCellRenderer))
  + ### createEditor

    protected [ComboBoxEditor](../../ComboBoxEditor.md "interface in javax.swing") createEditor()

    Creates the default editor that will be used in editable combo boxes.
    A default editor will be used only if an editor has not been
    explicitly set with `setEditor`.

    Returns:
    :   a `ComboBoxEditor` used for the combo box

    See Also:
    :   - [`JComboBox.setEditor(javax.swing.ComboBoxEditor)`](../../JComboBox.md#setEditor(javax.swing.ComboBoxEditor))
  + ### installComponents

    protected void installComponents()

    Creates and initializes the components which make up the
    aggregate combo box. This method is called as part of the UI
    installation process.
  + ### uninstallComponents

    protected void uninstallComponents()

    The aggregate components which comprise the combo box are
    unregistered and uninitialized. This method is called as part of the
    UI uninstallation process.
  + ### addEditor

    public void addEditor()

    This public method is implementation specific and should be private.
    do not call or override. To implement a specific editor create a
    custom `ComboBoxEditor`

    See Also:
    :   - [`createEditor()`](#createEditor())
        - [`JComboBox.setEditor(javax.swing.ComboBoxEditor)`](../../JComboBox.md#setEditor(javax.swing.ComboBoxEditor))
        - [`ComboBoxEditor`](../../ComboBoxEditor.md "interface in javax.swing")
  + ### removeEditor

    public void removeEditor()

    This public method is implementation specific and should be private.
    do not call or override.

    See Also:
    :   - [`addEditor()`](#addEditor())
  + ### configureEditor

    protected void configureEditor()

    This protected method is implementation specific and should be private.
    do not call or override.

    See Also:
    :   - [`addEditor()`](#addEditor())
  + ### unconfigureEditor

    protected void unconfigureEditor()

    This protected method is implementation specific and should be private.
    Do not call or override.

    See Also:
    :   - [`addEditor()`](#addEditor())
  + ### configureArrowButton

    public void configureArrowButton()

    This public method is implementation specific and should be private. Do
    not call or override.

    See Also:
    :   - [`createArrowButton()`](#createArrowButton())
  + ### unconfigureArrowButton

    public void unconfigureArrowButton()

    This public method is implementation specific and should be private. Do
    not call or override.

    See Also:
    :   - [`createArrowButton()`](#createArrowButton())
  + ### createArrowButton

    protected [JButton](../../JButton.md "class in javax.swing") createArrowButton()

    Creates a button which will be used as the control to show or hide
    the popup portion of the combo box.

    Returns:
    :   a button which represents the popup control
  + ### isPopupVisible

    public boolean isPopupVisible([JComboBox](../../JComboBox.md "class in javax.swing")<?> c)

    Tells if the popup is visible or not.

    Specified by:
    :   `isPopupVisible` in class `ComboBoxUI`

    Parameters:
    :   `c` - a `JComboBox`

    Returns:
    :   true if popup of the `JComboBox` is visible
  + ### setPopupVisible

    public void setPopupVisible([JComboBox](../../JComboBox.md "class in javax.swing")<?> c,
    boolean v)

    Hides the popup.

    Specified by:
    :   `setPopupVisible` in class `ComboBoxUI`

    Parameters:
    :   `c` - a `JComboBox`
    :   `v` - a `boolean` determining the visibility of the popup
  + ### isFocusTraversable

    public boolean isFocusTraversable([JComboBox](../../JComboBox.md "class in javax.swing")<?> c)

    Determines if the JComboBox is focus traversable. If the JComboBox is editable
    this returns false, otherwise it returns true.

    Specified by:
    :   `isFocusTraversable` in class `ComboBoxUI`

    Parameters:
    :   `c` - a `JComboBox`

    Returns:
    :   true if the given `JComboBox` is traversable
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

    The minimum size is the size of the display area plus insets plus the button.

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
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the number of accessible children in the object. If all
    of the children of this object implement `Accessible`,
    this
    method should return the number of children of this object.
    UIs might wish to override this if they present areas on the
    screen that can be viewed as components, but actual components
    are not used for presenting those areas.
    Note: As of v1.3, it is recommended that developers call
    `Component.AccessibleAWTComponent.getAccessibleChildrenCount()` instead
    of this method.

    Overrides:
    :   `getAccessibleChildrenCount` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` for which to get count of accessible children

    Returns:
    :   the number of accessible children in the object

    See Also:
    :   - [`ComponentUI.getAccessibleChild(javax.swing.JComponent, int)`](../ComponentUI.md#getAccessibleChild(javax.swing.JComponent,int))
  + ### getAccessibleChild

    public [Accessible](../../../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild([JComponent](../../JComponent.md "class in javax.swing") c,
    int i)

    Description copied from class: `ComponentUI`

    Returns the `i`th `Accessible` child of the object.
    UIs might need to override this if they present areas on the
    screen that can be viewed as components, but actual components
    are not used for presenting those areas.

    Note: As of v1.3, it is recommended that developers call
    `Component.AccessibleAWTComponent.getAccessibleChild()` instead of
    this method.

    Overrides:
    :   `getAccessibleChild` in class `ComponentUI`

    Parameters:
    :   `c` - a `JComponent` for which to get a child object
    :   `i` - zero-based index of child

    Returns:
    :   the `i`th `Accessible` child of the object

    See Also:
    :   - [`ComponentUI.getAccessibleChildrenCount(javax.swing.JComponent)`](../ComponentUI.md#getAccessibleChildrenCount(javax.swing.JComponent))
  + ### isNavigationKey

    protected boolean isNavigationKey(int keyCode)

    Returns whether or not the supplied keyCode maps to a key that is used for
    navigation. This is used for optimizing key input by only passing non-
    navigation keys to the type-ahead mechanism. Subclasses should override this
    if they change the navigation keys.

    Parameters:
    :   `keyCode` - a key code

    Returns:
    :   `true` if the supplied `keyCode` maps to a navigation key
  + ### selectNextPossibleValue

    protected void selectNextPossibleValue()

    Selects the next item in the list. It won't change the selection if the
    currently selected item is already the last item.
  + ### selectPreviousPossibleValue

    protected void selectPreviousPossibleValue()

    Selects the previous item in the list. It won't change the selection if the
    currently selected item is already the first item.
  + ### toggleOpenClose

    protected void toggleOpenClose()

    Hides the popup if it is showing and shows the popup if it is hidden.
  + ### rectangleForCurrentValue

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") rectangleForCurrentValue()

    Returns the area that is reserved for drawing the currently selected item.

    Returns:
    :   the area that is reserved for drawing the currently selected item
  + ### getInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets()

    Gets the insets from the JComboBox.

    Returns:
    :   the insets
  + ### paintCurrentValue

    public void paintCurrentValue([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    boolean hasFocus)

    Paints the currently selected item.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `bounds` - a bounding rectangle to render to
    :   `hasFocus` - is focused
  + ### paintCurrentValueBackground

    public void paintCurrentValueBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    boolean hasFocus)

    Paints the background of the currently selected item.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `bounds` - a bounding rectangle to render to
    :   `hasFocus` - is focused
  + ### getDefaultSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getDefaultSize()

    Return the default size of an empty display area of the combo box using
    the current renderer and font.

    Returns:
    :   the size of an empty display area

    See Also:
    :   - [`getDisplaySize()`](#getDisplaySize())
  + ### getDisplaySize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getDisplaySize()

    Returns the calculated size of the display area. The display area is the
    portion of the combo box in which the selected item is displayed. This
    method will use the prototype display value if it has been set.

    For combo boxes with a non trivial number of items, it is recommended to
    use a prototype display value to significantly speed up the display
    size calculation.

    Returns:
    :   the size of the display area calculated from the combo box items

    See Also:
    :   - [`JComboBox.setPrototypeDisplayValue(E)`](../../JComboBox.md#setPrototypeDisplayValue(E))
  + ### getSizeForComponent

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getSizeForComponent([Component](../../../../java/awt/Component.md "class in java.awt") comp)

    Returns the size a component would have if used as a cell renderer.

    Parameters:
    :   `comp` - a `Component` to check

    Returns:
    :   size of the component

    Since:
    :   1.7
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Adds keyboard actions to the JComboBox. Actions on enter and esc are already
    supplied. Add more actions as you need them.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Removes the focus InputMap and ActionMap.