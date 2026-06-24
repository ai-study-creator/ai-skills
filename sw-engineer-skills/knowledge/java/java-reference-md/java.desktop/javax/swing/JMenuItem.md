Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JMenuItem

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](AbstractButton.md "class in javax.swing")

javax.swing.JMenuItem

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`, `SwingConstants`

Direct Known Subclasses:
:   `JCheckBoxMenuItem`, `JMenu`, `JRadioButtonMenuItem`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UIClassID",
[description](../../java/beans/JavaBean.md#description())="An item which can be selected in a menu.")
public class JMenuItem
extends [AbstractButton](AbstractButton.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [MenuElement](MenuElement.md "interface in javax.swing")

An implementation of an item in a menu. A menu item is essentially a button
sitting in a list. When the user selects the "button", the action
associated with the menu item is performed. A `JMenuItem`
contained in a `JPopupMenu` performs exactly that function.

Menu items can be configured, and to some degree controlled, by
`Action`s. Using an
`Action` with a menu item has many benefits beyond directly
configuring a menu item. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
details, and you can find more information in [How
to Use Actions](https://docs.oracle.com/javase/tutorial/uiswing/misc/action.html), a section in *The Java Tutorial*.

For further documentation and for examples, see
[How to Use Menus](https://docs.oracle.com/javase/tutorial/uiswing/components/menu.html)
in *The Java Tutorial.*

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`JPopupMenu`](JPopupMenu.md "class in javax.swing")
    * [`JMenu`](JMenu.md "class in javax.swing")
    * [`JCheckBoxMenuItem`](JCheckBoxMenuItem.md "class in javax.swing")
    * [`JRadioButtonMenuItem`](JRadioButtonMenuItem.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JMenuItem.AccessibleJMenuItem`

  This class implements accessibility support for the
  `JMenuItem` class.

  ## Nested classes/interfaces inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `AbstractButton.AccessibleAbstractButton, AbstractButton.ButtonChangeListener`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `actionListener, BORDER_PAINTED_CHANGED_PROPERTY, changeEvent, changeListener, CONTENT_AREA_FILLED_CHANGED_PROPERTY, DISABLED_ICON_CHANGED_PROPERTY, DISABLED_SELECTED_ICON_CHANGED_PROPERTY, FOCUS_PAINTED_CHANGED_PROPERTY, HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY, HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY, ICON_CHANGED_PROPERTY, itemListener, MARGIN_CHANGED_PROPERTY, MNEMONIC_CHANGED_PROPERTY, model, MODEL_CHANGED_PROPERTY, PRESSED_ICON_CHANGED_PROPERTY, ROLLOVER_ENABLED_CHANGED_PROPERTY, ROLLOVER_ICON_CHANGED_PROPERTY, ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY, SELECTED_ICON_CHANGED_PROPERTY, TEXT_CHANGED_PROPERTY, VERTICAL_ALIGNMENT_CHANGED_PROPERTY, VERTICAL_TEXT_POSITION_CHANGED_PROPERTY`

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMenuItem()`

  Creates a `JMenuItem` with no set text or icon.

  `JMenuItem(String text)`

  Creates a `JMenuItem` with the specified text.

  `JMenuItem(String text,
  int mnemonic)`

  Creates a `JMenuItem` with the specified text and
  keyboard mnemonic.

  `JMenuItem(String text,
  Icon icon)`

  Creates a `JMenuItem` with the specified text and icon.

  `JMenuItem(Action a)`

  Creates a menu item whose properties are taken from the
  specified `Action`.

  `JMenuItem(Icon icon)`

  Creates a `JMenuItem` with the specified icon.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `actionPropertyChanged(Action action,
  String propertyName)`

  Updates the button's state in response to property changes in the
  associated action.

  `void`

  `addMenuDragMouseListener(MenuDragMouseListener l)`

  Adds a `MenuDragMouseListener` to the menu item.

  `void`

  `addMenuKeyListener(MenuKeyListener l)`

  Adds a `MenuKeyListener` to the menu item.

  `protected void`

  `configurePropertiesFromAction(Action a)`

  Sets the properties on this button to match those in the specified
  `Action`.

  `protected void`

  `fireMenuDragMouseDragged(MenuDragMouseEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuDragMouseEntered(MenuDragMouseEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuDragMouseExited(MenuDragMouseEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuDragMouseReleased(MenuDragMouseEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuKeyPressed(MenuKeyEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuKeyReleased(MenuKeyEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireMenuKeyTyped(MenuKeyEvent event)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `KeyStroke`

  `getAccelerator()`

  Returns the `KeyStroke` which serves as an accelerator
  for the menu item.

  `AccessibleContext`

  `getAccessibleContext()`

  Returns the `AccessibleContext` associated with this
  `JMenuItem`.

  `Component`

  `getComponent()`

  Returns the `java.awt.Component` used to paint
  this object.

  `MenuDragMouseListener[]`

  `getMenuDragMouseListeners()`

  Returns an array of all the `MenuDragMouseListener`s added
  to this JMenuItem with addMenuDragMouseListener().

  `MenuKeyListener[]`

  `getMenuKeyListeners()`

  Returns an array of all the `MenuKeyListener`s added
  to this JMenuItem with addMenuKeyListener().

  `MenuElement[]`

  `getSubElements()`

  This method returns an array containing the sub-menu
  components for this menu component.

  `String`

  `getUIClassID()`

  Returns the suffix used to construct the name of the L&F class used to
  render this component.

  `protected void`

  `init(String text,
  Icon icon)`

  Initializes the menu item with the specified text and icon.

  `boolean`

  `isArmed()`

  Returns whether the menu item is "armed".

  `void`

  `menuSelectionChanged(boolean isIncluded)`

  Called by the `MenuSelectionManager` when the
  `MenuElement` is selected or unselected.

  `protected String`

  `paramString()`

  Returns a string representation of this `JMenuItem`.

  `void`

  `processKeyEvent(KeyEvent e,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Processes a key event forwarded from the
  `MenuSelectionManager` and changes the menu selection,
  if necessary, by using `MenuSelectionManager`'s API.

  `void`

  `processMenuDragMouseEvent(MenuDragMouseEvent e)`

  Handles mouse drag in a menu.

  `void`

  `processMenuKeyEvent(MenuKeyEvent e)`

  Handles a keystroke in a menu.

  `void`

  `processMouseEvent(MouseEvent e,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Processes a mouse event forwarded from the
  `MenuSelectionManager` and changes the menu
  selection, if necessary, by using the
  `MenuSelectionManager`'s API.

  `void`

  `removeMenuDragMouseListener(MenuDragMouseListener l)`

  Removes a `MenuDragMouseListener` from the menu item.

  `void`

  `removeMenuKeyListener(MenuKeyListener l)`

  Removes a `MenuKeyListener` from the menu item.

  `void`

  `setAccelerator(KeyStroke keyStroke)`

  Sets the key combination which invokes the menu item's
  action listeners without navigating the menu hierarchy.

  `void`

  `setArmed(boolean b)`

  Identifies the menu item as "armed".

  `void`

  `setEnabled(boolean b)`

  Enables or disables the menu item.

  `void`

  `setModel(ButtonModel newModel)`

  Sets the model that this button represents.

  `void`

  `setUI(MenuItemUI ui)`

  Sets the look and feel object that renders this component.

  `void`

  `updateUI()`

  Resets the UI property with a value from the current look and feel.

  ### Methods inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getSelectedObjects, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, removeNotify, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMenuItem

    public JMenuItem()

    Creates a `JMenuItem` with no set text or icon.
  + ### JMenuItem

    public JMenuItem([Icon](Icon.md "interface in javax.swing") icon)

    Creates a `JMenuItem` with the specified icon.

    Parameters:
    :   `icon` - the icon of the `JMenuItem`
  + ### JMenuItem

    public JMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Creates a `JMenuItem` with the specified text.

    Parameters:
    :   `text` - the text of the `JMenuItem`
  + ### JMenuItem

    public JMenuItem([Action](Action.md "interface in javax.swing") a)

    Creates a menu item whose properties are taken from the
    specified `Action`.

    Parameters:
    :   `a` - the action of the `JMenuItem`

    Since:
    :   1.3
  + ### JMenuItem

    public JMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon)

    Creates a `JMenuItem` with the specified text and icon.

    Parameters:
    :   `text` - the text of the `JMenuItem`
    :   `icon` - the icon of the `JMenuItem`
  + ### JMenuItem

    public JMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    int mnemonic)

    Creates a `JMenuItem` with the specified text and
    keyboard mnemonic.

    Parameters:
    :   `text` - the text of the `JMenuItem`
    :   `mnemonic` - the keyboard mnemonic for the `JMenuItem`
* ## Method Details

  + ### setModel

    public void setModel([ButtonModel](ButtonModel.md "interface in javax.swing") newModel)

    Sets the model that this button represents.

    Overrides:
    :   `setModel` in class `AbstractButton`

    Parameters:
    :   `newModel` - the new `ButtonModel`

    See Also:
    :   - [`AbstractButton.getModel()`](AbstractButton.md#getModel())
  + ### init

    protected void init([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon)

    Initializes the menu item with the specified text and icon.

    Overrides:
    :   `init` in class `AbstractButton`

    Parameters:
    :   `text` - the text of the `JMenuItem`
    :   `icon` - the icon of the `JMenuItem`
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the LookAndFeel.")
    public void setUI([MenuItemUI](plaf/MenuItemUI.md "class in javax.swing.plaf") ui)

    Sets the look and feel object that renders this component.

    Parameters:
    :   `ui` - the `JMenuItemUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property with a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `AbstractButton`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the suffix used to construct the name of the L&F class used to
    render this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "MenuItemUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setArmed

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="Mouse release will fire an action event")
    public void setArmed(boolean b)

    Identifies the menu item as "armed". If the mouse button is
    released while it is over this item, the menu's action event
    will fire. If the mouse button is released elsewhere, the
    event will not fire and the menu item will be disarmed.

    Parameters:
    :   `b` - true to arm the menu item so it can be selected
  + ### isArmed

    public boolean isArmed()

    Returns whether the menu item is "armed".

    Returns:
    :   true if the menu item is armed, and it can be selected

    See Also:
    :   - [`setArmed(boolean)`](#setArmed(boolean))
  + ### setEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The enabled state of the component.")
    public void setEnabled(boolean b)

    Enables or disables the menu item.

    Overrides:
    :   `setEnabled` in class `AbstractButton`

    Parameters:
    :   `b` - true to enable the item

    See Also:
    :   - [`Component.isEnabled()`](../../java/awt/Component.md#isEnabled())
        - [`Component.isLightweight()`](../../java/awt/Component.md#isLightweight())
  + ### setAccelerator

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The keystroke combination which will invoke the JMenuItem\'s actionlisteners without navigating the menu hierarchy")
    public void setAccelerator([KeyStroke](KeyStroke.md "class in javax.swing") keyStroke)

    Sets the key combination which invokes the menu item's
    action listeners without navigating the menu hierarchy. It is the
    UI's responsibility to install the correct action. Note that
    when the keyboard accelerator is typed, it will work whether or
    not the menu is currently displayed.

    Parameters:
    :   `keyStroke` - the `KeyStroke` which will
        serve as an accelerator
  + ### getAccelerator

    public [KeyStroke](KeyStroke.md "class in javax.swing") getAccelerator()

    Returns the `KeyStroke` which serves as an accelerator
    for the menu item.

    Returns:
    :   a `KeyStroke` object identifying the
        accelerator key
  + ### configurePropertiesFromAction

    protected void configurePropertiesFromAction([Action](Action.md "interface in javax.swing") a)

    Sets the properties on this button to match those in the specified
    `Action`. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
    details as to which properties this sets.

    Overrides:
    :   `configurePropertiesFromAction` in class `AbstractButton`

    Parameters:
    :   `a` - the `Action` from which to get the properties,
        or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`AbstractButton.setAction(javax.swing.Action)`](AbstractButton.md#setAction(javax.swing.Action))
  + ### actionPropertyChanged

    protected void actionPropertyChanged([Action](Action.md "interface in javax.swing") action,
    [String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Updates the button's state in response to property changes in the
    associated action. This method is invoked from the
    `PropertyChangeListener` returned from
    `createActionPropertyChangeListener`. Subclasses do not normally
    need to invoke this. Subclasses that support additional `Action`
    properties should override this and
    `configurePropertiesFromAction`.

    Refer to the table at [Swing Components Supporting `Action`](Action.md#buttonActions) for a list of
    the properties this method sets.

    Overrides:
    :   `actionPropertyChanged` in class `AbstractButton`

    Parameters:
    :   `action` - the `Action` associated with this button
    :   `propertyName` - the name of the property that changed

    Since:
    :   1.6

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`AbstractButton.configurePropertiesFromAction(javax.swing.Action)`](AbstractButton.md#configurePropertiesFromAction(javax.swing.Action))
  + ### processMouseEvent

    public void processMouseEvent([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") e,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Processes a mouse event forwarded from the
    `MenuSelectionManager` and changes the menu
    selection, if necessary, by using the
    `MenuSelectionManager`'s API.

    Note: you do not have to forward the event to sub-components.
    This is done automatically by the `MenuSelectionManager`.

    Specified by:
    :   `processMouseEvent` in interface `MenuElement`

    Parameters:
    :   `e` - a `MouseEvent`
    :   `path` - the `MenuElement` path array
    :   `manager` - the `MenuSelectionManager`
  + ### processKeyEvent

    public void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Processes a key event forwarded from the
    `MenuSelectionManager` and changes the menu selection,
    if necessary, by using `MenuSelectionManager`'s API.

    Note: you do not have to forward the event to sub-components.
    This is done automatically by the `MenuSelectionManager`.

    Specified by:
    :   `processKeyEvent` in interface `MenuElement`

    Parameters:
    :   `e` - a `KeyEvent`
    :   `path` - the `MenuElement` path array
    :   `manager` - the `MenuSelectionManager`
  + ### processMenuDragMouseEvent

    public void processMenuDragMouseEvent([MenuDragMouseEvent](event/MenuDragMouseEvent.md "class in javax.swing.event") e)

    Handles mouse drag in a menu.

    Parameters:
    :   `e` - a `MenuDragMouseEvent` object
  + ### processMenuKeyEvent

    public void processMenuKeyEvent([MenuKeyEvent](event/MenuKeyEvent.md "class in javax.swing.event") e)

    Handles a keystroke in a menu.

    Parameters:
    :   `e` - a `MenuKeyEvent` object
  + ### fireMenuDragMouseEntered

    protected void fireMenuDragMouseEntered([MenuDragMouseEvent](event/MenuDragMouseEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuMouseDragEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuDragMouseExited

    protected void fireMenuDragMouseExited([MenuDragMouseEvent](event/MenuDragMouseEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuDragMouseEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuDragMouseDragged

    protected void fireMenuDragMouseDragged([MenuDragMouseEvent](event/MenuDragMouseEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuDragMouseEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuDragMouseReleased

    protected void fireMenuDragMouseReleased([MenuDragMouseEvent](event/MenuDragMouseEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuDragMouseEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuKeyPressed

    protected void fireMenuKeyPressed([MenuKeyEvent](event/MenuKeyEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuKeyEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuKeyReleased

    protected void fireMenuKeyReleased([MenuKeyEvent](event/MenuKeyEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuKeyEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireMenuKeyTyped

    protected void fireMenuKeyTyped([MenuKeyEvent](event/MenuKeyEvent.md "class in javax.swing.event") event)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `event` - a `MenuKeyEvent`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### menuSelectionChanged

    public void menuSelectionChanged(boolean isIncluded)

    Called by the `MenuSelectionManager` when the
    `MenuElement` is selected or unselected.

    Specified by:
    :   `menuSelectionChanged` in interface `MenuElement`

    Parameters:
    :   `isIncluded` - true if this menu item is on the part of the menu
        path that changed, false if this menu is part of the
        a menu path that changed, but this particular part of
        that path is still the same

    See Also:
    :   - [`MenuSelectionManager.setSelectedPath(MenuElement[])`](MenuSelectionManager.md#setSelectedPath(javax.swing.MenuElement%5B%5D))
  + ### getSubElements

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuElement](MenuElement.md "interface in javax.swing")[] getSubElements()

    This method returns an array containing the sub-menu
    components for this menu component.

    Specified by:
    :   `getSubElements` in interface `MenuElement`

    Returns:
    :   an array of `MenuElement`s
  + ### getComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Returns the `java.awt.Component` used to paint
    this object. The returned component will be used to convert
    events and detect if an event is inside a menu component.

    Specified by:
    :   `getComponent` in interface `MenuElement`

    Returns:
    :   the `Component` that paints this menu item
  + ### addMenuDragMouseListener

    public void addMenuDragMouseListener([MenuDragMouseListener](event/MenuDragMouseListener.md "interface in javax.swing.event") l)

    Adds a `MenuDragMouseListener` to the menu item.

    Parameters:
    :   `l` - the `MenuDragMouseListener` to be added
  + ### removeMenuDragMouseListener

    public void removeMenuDragMouseListener([MenuDragMouseListener](event/MenuDragMouseListener.md "interface in javax.swing.event") l)

    Removes a `MenuDragMouseListener` from the menu item.

    Parameters:
    :   `l` - the `MenuDragMouseListener` to be removed
  + ### getMenuDragMouseListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuDragMouseListener](event/MenuDragMouseListener.md "interface in javax.swing.event")[] getMenuDragMouseListeners()

    Returns an array of all the `MenuDragMouseListener`s added
    to this JMenuItem with addMenuDragMouseListener().

    Returns:
    :   all of the `MenuDragMouseListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### addMenuKeyListener

    public void addMenuKeyListener([MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event") l)

    Adds a `MenuKeyListener` to the menu item.

    Parameters:
    :   `l` - the `MenuKeyListener` to be added
  + ### removeMenuKeyListener

    public void removeMenuKeyListener([MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event") l)

    Removes a `MenuKeyListener` from the menu item.

    Parameters:
    :   `l` - the `MenuKeyListener` to be removed
  + ### getMenuKeyListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event")[] getMenuKeyListeners()

    Returns an array of all the `MenuKeyListener`s added
    to this JMenuItem with addMenuKeyListener().

    Returns:
    :   all of the `MenuKeyListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JMenuItem`.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `AbstractButton`

    Returns:
    :   a string representation of this `JMenuItem`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Returns the `AccessibleContext` associated with this
    `JMenuItem`. For `JMenuItem`s,
    the `AccessibleContext` takes the form of an
    `AccessibleJMenuItem`.
    A new AccessibleJMenuItme instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleJMenuItem` that serves as the
        `AccessibleContext` of this `JMenuItem`