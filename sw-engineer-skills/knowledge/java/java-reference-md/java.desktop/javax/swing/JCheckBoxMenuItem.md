Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JCheckBoxMenuItem

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](AbstractButton.md "class in javax.swing")

[javax.swing.JMenuItem](JMenuItem.md "class in javax.swing")

javax.swing.JCheckBoxMenuItem

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([description](../../java/beans/JavaBean.md#description())="A menu item which can be selected or deselected.")
public class JCheckBoxMenuItem
extends [JMenuItem](JMenuItem.md "class in javax.swing")
implements [SwingConstants](SwingConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A menu item that can be selected or deselected. If selected, the menu
item typically appears with a checkmark next to it. If unselected or
deselected, the menu item appears without a checkmark. Like a regular
menu item, a check box menu item can have either text or a graphic
icon associated with it, or both.

Either `isSelected`/`setSelected` or
`getState`/`setState` can be used
to determine/specify the menu item's selection state. The
preferred methods are `isSelected` and
`setSelected`, which work for all menus and buttons.
The `getState` and `setState` methods exist for
compatibility with other component sets.

Menu items can be configured, and to some degree controlled, by
`Action`s. Using an
`Action` with a menu item has many benefits beyond directly
configuring a menu item. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
details, and you can find more information in [How
to Use Actions](https://docs.oracle.com/javase/tutorial/uiswing/misc/action.html), a section in *The Java Tutorial*.

Some times it is required to select several check box menu items from a menu.
In this case it is useful that clicking on one check box menu item does not
close the menu. Such behavior can be controlled either by client
[`JComponent.putClientProperty(java.lang.Object, java.lang.Object)`](JComponent.md#putClientProperty(java.lang.Object,java.lang.Object)) or the Look and Feel
[`UIManager.put(java.lang.Object, java.lang.Object)`](UIManager.md#put(java.lang.Object,java.lang.Object)) property named
`"CheckBoxMenuItem.doNotCloseOnMouseClick"`. The default value is
`false`. Setting the property to `true` prevents the menu from
closing when it is clicked by the mouse. If the client property is set its
value is always used; otherwise the L&F property is queried.
Note: some `L&F`s may ignore this property. All built-in `L&F`s
inherit this behaviour.

For further information and examples of using check box menu items,
see [How to Use Menus](https://docs.oracle.com/javase/tutorial/uiswing/components/menu.html),
a section in *The Java Tutorial.*

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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`

  This class implements accessibility support for the
  `JCheckBoxMenuItem` class.

  ## Nested classes/interfaces inherited from class javax.swing.[JMenuItem](JMenuItem.md "class in javax.swing")

  `JMenuItem.AccessibleJMenuItem`

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

  `JCheckBoxMenuItem()`

  Creates an initially unselected check box menu item with no set text or icon.

  `JCheckBoxMenuItem(String text)`

  Creates an initially unselected check box menu item with text.

  `JCheckBoxMenuItem(String text,
  boolean b)`

  Creates a check box menu item with the specified text and selection state.

  `JCheckBoxMenuItem(String text,
  Icon icon)`

  Creates an initially unselected check box menu item with the specified text and icon.

  `JCheckBoxMenuItem(String text,
  Icon icon,
  boolean b)`

  Creates a check box menu item with the specified text, icon, and selection state.

  `JCheckBoxMenuItem(Action a)`

  Creates a menu item whose properties are taken from the
  Action supplied.

  `JCheckBoxMenuItem(Icon icon)`

  Creates an initially unselected check box menu item with an icon.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JCheckBoxMenuItem.

  `Object[]`

  `getSelectedObjects()`

  Returns an array (length 1) containing the check box menu item
  label or null if the check box is not selected.

  `boolean`

  `getState()`

  Returns the selected-state of the item.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class
  that renders this component.

  `protected String`

  `paramString()`

  Returns a string representation of this JCheckBoxMenuItem.

  `void`

  `setState(boolean b)`

  Sets the selected-state of the item.

  ### Methods inherited from class javax.swing.[JMenuItem](JMenuItem.md "class in javax.swing")

  `actionPropertyChanged, addMenuDragMouseListener, addMenuKeyListener, configurePropertiesFromAction, fireMenuDragMouseDragged, fireMenuDragMouseEntered, fireMenuDragMouseExited, fireMenuDragMouseReleased, fireMenuKeyPressed, fireMenuKeyReleased, fireMenuKeyTyped, getAccelerator, getComponent, getMenuDragMouseListeners, getMenuKeyListeners, getSubElements, init, isArmed, menuSelectionChanged, processKeyEvent, processMenuDragMouseEvent, processMenuKeyEvent, processMouseEvent, removeMenuDragMouseListener, removeMenuKeyListener, setAccelerator, setArmed, setEnabled, setModel, setUI, updateUI`

  ### Methods inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, removeNotify, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem()

    Creates an initially unselected check box menu item with no set text or icon.
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([Icon](Icon.md "interface in javax.swing") icon)

    Creates an initially unselected check box menu item with an icon.

    Parameters:
    :   `icon` - the icon of the `JCheckBoxMenuItem`.
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Creates an initially unselected check box menu item with text.

    Parameters:
    :   `text` - the text of the `JCheckBoxMenuItem`
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([Action](Action.md "interface in javax.swing") a)

    Creates a menu item whose properties are taken from the
    Action supplied.

    Parameters:
    :   `a` - the action of the `JCheckBoxMenuItem`

    Since:
    :   1.3
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon)

    Creates an initially unselected check box menu item with the specified text and icon.

    Parameters:
    :   `text` - the text of the `JCheckBoxMenuItem`
    :   `icon` - the icon of the `JCheckBoxMenuItem`
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    boolean b)

    Creates a check box menu item with the specified text and selection state.

    Parameters:
    :   `text` - the text of the check box menu item.
    :   `b` - the selected state of the check box menu item
  + ### JCheckBoxMenuItem

    public JCheckBoxMenuItem([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon,
    boolean b)

    Creates a check box menu item with the specified text, icon, and selection state.

    Parameters:
    :   `text` - the text of the check box menu item
    :   `icon` - the icon of the check box menu item
    :   `b` - the selected state of the check box menu item
* ## Method Details

  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class
    that renders this component.

    Overrides:
    :   `getUIClassID` in class `JMenuItem`

    Returns:
    :   the string "CheckBoxMenuItemUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getState

    public boolean getState()

    Returns the selected-state of the item. This method
    exists for AWT compatibility only. New code should
    use isSelected() instead.

    Returns:
    :   true if the item is selected
  + ### setState

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The selection state of the check box menu item")
    public void setState(boolean b)

    Sets the selected-state of the item. This method
    exists for AWT compatibility only. New code should
    use setSelected() instead.

    Parameters:
    :   `b` - a boolean value indicating the item's
        selected-state, where true=selected
  + ### getSelectedObjects

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedObjects()

    Returns an array (length 1) containing the check box menu item
    label or null if the check box is not selected.

    Specified by:
    :   `getSelectedObjects` in interface `ItemSelectable`

    Overrides:
    :   `getSelectedObjects` in class `AbstractButton`

    Returns:
    :   an array containing one Object -- the text of the menu item
        -- if the item is selected; otherwise null
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this JCheckBoxMenuItem. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JMenuItem`

    Returns:
    :   a string representation of this JCheckBoxMenuItem.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JCheckBoxMenuItem.
    For JCheckBoxMenuItems, the AccessibleContext takes the form of an
    AccessibleJCheckBoxMenuItem.
    A new AccessibleJCheckBoxMenuItem instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JMenuItem`

    Returns:
    :   an AccessibleJCheckBoxMenuItem that serves as the
        AccessibleContext of this AccessibleJCheckBoxMenuItem