Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.JPopupMenu](../../JPopupMenu.md "class in javax.swing")

javax.swing.plaf.basic.BasicComboPopup

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`, `ComboPopup`

Direct Known Subclasses:
:   `MetalComboBoxUI.MetalComboPopup`

---

public class BasicComboPopup
extends [JPopupMenu](../../JPopupMenu.md "class in javax.swing")
implements [ComboPopup](ComboPopup.md "interface in javax.swing.plaf.basic")

This is a basic implementation of the `ComboPopup` interface.
This class represents the ui for the popup portion of the combo box.

All event handling is handled by listener classes created with the
`createxxxListener()` methods and internal classes.
You can change the behavior of this class by overriding the
`createxxxListener()` methods and supplying your own
event listeners or subclassing from the ones supplied in this class.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicComboPopup.InvocationKeyHandler`

  As of Java 2 platform v 1.4, this class is now obsolete and is only included for
  backwards API compatibility.

  `protected class`

  `BasicComboPopup.InvocationMouseHandler`

  A listener to be registered upon the combo box
  (*not* its popup menu)
  to handle mouse events
  that affect the state of the popup menu.

  `protected class`

  `BasicComboPopup.InvocationMouseMotionHandler`

  This listener watches for dragging and updates the current selection in the
  list if it is dragging over the list.

  `protected class`

  `BasicComboPopup.ItemHandler`

  This listener watches for changes to the selection in the
  combo box.

  `class`

  `BasicComboPopup.ListDataHandler`

  As of 1.4, this class is now obsolete, doesn't do anything, and
  is only included for backwards API compatibility.

  `protected class`

  `BasicComboPopup.ListMouseHandler`

  This listener hides the popup when the mouse is released in the list.

  `protected class`

  `BasicComboPopup.ListMouseMotionHandler`

  This listener changes the selected item as you move the mouse over the list.

  `protected class`

  `BasicComboPopup.ListSelectionHandler`

  As of Java 2 platform v 1.4, this class is now obsolete, doesn't do anything, and
  is only included for backwards API compatibility.

  `protected class`

  `BasicComboPopup.PropertyChangeHandler`

  This listener watches for bound properties that have changed in the
  combo box.

  ## Nested classes/interfaces inherited from class javax.swing.[JPopupMenu](../../JPopupMenu.md "class in javax.swing")

  `JPopupMenu.AccessibleJPopupMenu, JPopupMenu.Separator`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Timer`

  `autoscrollTimer`

  This protected field is implementation specific.

  `protected JComboBox<Object>`

  `comboBox`

  The instance of `JComboBox`.

  `protected boolean`

  `hasEntered`

  `true` if the mouse cursor is in the popup.

  `protected boolean`

  `isAutoScrolling`

  If `true` the auto-scrolling is enabled.

  `protected ItemListener`

  `itemListener`

  This protected field is implementation specific.

  `protected KeyListener`

  `keyListener`

  This protected field is implementation specific.

  `protected JList<Object>`

  `list`

  This protected field is implementation specific.

  `protected ListDataListener`

  `listDataListener`

  This protected field is implementation specific.

  `protected MouseListener`

  `listMouseListener`

  This protected field is implementation specific.

  `protected MouseMotionListener`

  `listMouseMotionListener`

  This protected field is implementation specific.

  `protected ListSelectionListener`

  `listSelectionListener`

  This protected field is implementation specific.

  `protected MouseListener`

  `mouseListener`

  This protected field is implementation specific.

  `protected MouseMotionListener`

  `mouseMotionListener`

  This protected field is implementation specific.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  This protected field is implementation specific.

  `protected static final int`

  `SCROLL_DOWN`

  The direction of scrolling down.

  `protected static final int`

  `SCROLL_UP`

  The direction of scrolling up.

  `protected int`

  `scrollDirection`

  The direction of scrolling.

  `protected JScrollPane`

  `scroller`

  This protected field is implementation specific.

  `protected boolean`

  `valueIsAdjusting`

  As of Java 2 platform v1.4 this previously undocumented field is no
  longer used.

  ### Fields inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicComboPopup(JComboBox<Object> combo)`

  Constructs a new instance of `BasicComboPopup`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `autoScrollDown()`

  This protected method is implementation specific and should be private.

  `protected void`

  `autoScrollUp()`

  This protected method is implementation specific and should be private.

  `protected Rectangle`

  `computePopupBounds(int px,
  int py,
  int pw,
  int ph)`

  Calculate the placement and size of the popup portion of the combo box based
  on the combo box location and the enclosing screen bounds.

  `protected void`

  `configureList()`

  Configures the list which is used to hold the combo box items in the
  popup.

  `protected void`

  `configurePopup()`

  Configures the popup portion of the combo box.

  `protected void`

  `configureScroller()`

  Configures the scrollable portion which holds the list within
  the combo box popup.

  `protected MouseEvent`

  `convertMouseEvent(MouseEvent e)`

  Converts mouse event.

  `protected ItemListener`

  `createItemListener()`

  Creates an `ItemListener` which will be added to the
  combo box.

  `protected KeyListener`

  `createKeyListener()`

  Creates the key listener that will be added to the combo box.

  `protected JList<Object>`

  `createList()`

  Creates the JList used in the popup to display
  the items in the combo box model.

  `protected ListDataListener`

  `createListDataListener()`

  Creates a list data listener which will be added to the
  `ComboBoxModel`.

  `protected MouseListener`

  `createListMouseListener()`

  Creates a mouse listener that watches for mouse events in
  the popup's list.

  `protected MouseMotionListener`

  `createListMouseMotionListener()`

  Creates a mouse motion listener that watches for mouse motion
  events in the popup's list.

  `protected ListSelectionListener`

  `createListSelectionListener()`

  Creates a list selection listener that watches for selection changes in
  the popup's list.

  `protected MouseListener`

  `createMouseListener()`

  Creates a listener
  that will watch for mouse-press and release events on the combo box.

  `protected MouseMotionListener`

  `createMouseMotionListener()`

  Creates the mouse motion listener which will be added to the combo
  box.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a `PropertyChangeListener` which will be added to
  the combo box.

  `protected JScrollPane`

  `createScroller()`

  Creates the scroll pane which houses the scrollable list.

  `protected void`

  `delegateFocus(MouseEvent e)`

  This is a utility method that helps event handlers figure out where to
  send the focus when the popup is brought up.

  `protected void`

  `firePopupMenuCanceled()`

  Notifies `PopupMenuListeners` that this popup menu is
  cancelled.

  `protected void`

  `firePopupMenuWillBecomeInvisible()`

  Notifies `PopupMenuListener`s that this popup menu will
  become invisible.

  `protected void`

  `firePopupMenuWillBecomeVisible()`

  Notifies `PopupMenuListener`s that this popup menu will
  become visible.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this BasicComboPopup.

  `KeyListener`

  `getKeyListener()`

  Implementation of ComboPopup.getKeyListener().

  `JList<Object>`

  `getList()`

  Implementation of ComboPopup.getList().

  `MouseListener`

  `getMouseListener()`

  Implementation of ComboPopup.getMouseListener().

  `MouseMotionListener`

  `getMouseMotionListener()`

  Implementation of ComboPopup.getMouseMotionListener().

  `protected int`

  `getPopupHeightForRowCount(int maxRowCount)`

  Retrieves the height of the popup based on the current
  ListCellRenderer and the maximum row count.

  `void`

  `hide()`

  Implementation of ComboPopup.hide().

  `protected void`

  `installComboBoxListeners()`

  This method adds the necessary listeners to the JComboBox.

  `protected void`

  `installComboBoxModelListeners(ComboBoxModel<?> model)`

  Installs the listeners on the combo box model.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `installListListeners()`

  Adds the listeners to the list control.

  `boolean`

  `isFocusTraversable()`

  Overridden to unconditionally return false.

  `void`

  `show()`

  Implementation of ComboPopup.show().

  `protected void`

  `startAutoScrolling(int direction)`

  This protected method is implementation specific and should be private.

  `protected void`

  `stopAutoScrolling()`

  This protected method is implementation specific and should be private.

  `protected void`

  `togglePopup()`

  Makes the popup visible if it is hidden and makes it hidden if it is
  visible.

  `protected void`

  `uninstallComboBoxModelListeners(ComboBoxModel<?> model)`

  Removes the listeners from the combo box model

  `void`

  `uninstallingUI()`

  Called when the UI is uninstalling.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `updateListBoxSelectionForEvent(MouseEvent anEvent,
  boolean shouldScroll)`

  A utility method used by the event listeners.

  ### Methods inherited from class javax.swing.[JPopupMenu](../../JPopupMenu.md "class in javax.swing")

  `add, add, add, addMenuKeyListener, addPopupMenuListener, addSeparator, createActionChangeListener, createActionComponent, getComponent, getComponentAtIndex, getComponentIndex, getDefaultLightWeightPopupEnabled, getInvoker, getLabel, getMargin, getMenuKeyListeners, getPopupMenuListeners, getSelectionModel, getSubElements, getUI, getUIClassID, insert, insert, isBorderPainted, isLightWeightPopupEnabled, isPopupTrigger, isVisible, menuSelectionChanged, pack, paintBorder, paramString, processFocusEvent, processKeyEvent, processKeyEvent, processMouseEvent, remove, removeMenuKeyListener, removePopupMenuListener, setBorderPainted, setDefaultLightWeightPopupEnabled, setInvoker, setLabel, setLightWeightPopupEnabled, setLocation, setPopupSize, setPopupSize, setSelected, setSelectionModel, setUI, setVisible, show, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.swing.plaf.basic.[ComboPopup](ComboPopup.md "interface in javax.swing.plaf.basic")

  `isVisible`

* ## Field Details

  + ### comboBox

    protected [JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> comboBox

    The instance of `JComboBox`.
  + ### list

    protected [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> list

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`getList()`](#getList())
        - [`createList()`](#createList())
  + ### scroller

    protected [JScrollPane](../../JScrollPane.md "class in javax.swing") scroller

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead

    See Also:
    :   - [`createScroller()`](#createScroller())
  + ### valueIsAdjusting

    protected boolean valueIsAdjusting

    As of Java 2 platform v1.4 this previously undocumented field is no
    longer used.
  + ### mouseMotionListener

    protected [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") mouseMotionListener

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor or create methods instead.

    See Also:
    :   - [`getMouseMotionListener()`](#getMouseMotionListener())
        - [`createMouseMotionListener()`](#createMouseMotionListener())
  + ### mouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") mouseListener

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor or create methods instead.

    See Also:
    :   - [`getMouseListener()`](#getMouseListener())
        - [`createMouseListener()`](#createMouseListener())
  + ### keyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") keyListener

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor or create methods instead.

    See Also:
    :   - [`getKeyListener()`](#getKeyListener())
        - [`createKeyListener()`](#createKeyListener())
  + ### listSelectionListener

    protected [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event") listSelectionListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead.

    See Also:
    :   - [`createListSelectionListener()`](#createListSelectionListener())
  + ### listMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") listMouseListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead.

    See Also:
    :   - [`createListMouseListener()`](#createListMouseListener())
  + ### listMouseMotionListener

    protected [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") listMouseMotionListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead

    See Also:
    :   - [`createListMouseMotionListener()`](#createListMouseMotionListener())
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead

    See Also:
    :   - [`createPropertyChangeListener()`](#createPropertyChangeListener())
  + ### listDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") listDataListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead

    See Also:
    :   - [`createListDataListener()`](#createListDataListener())
  + ### itemListener

    protected [ItemListener](../../../../java/awt/event/ItemListener.md "interface in java.awt.event") itemListener

    This protected field is implementation specific. Do not access directly
    or override. Use the create method instead

    See Also:
    :   - [`createItemListener()`](#createItemListener())
  + ### autoscrollTimer

    protected [Timer](../../Timer.md "class in javax.swing") autoscrollTimer

    This protected field is implementation specific. Do not access directly
    or override.
  + ### hasEntered

    protected boolean hasEntered

    `true` if the mouse cursor is in the popup.
  + ### isAutoScrolling

    protected boolean isAutoScrolling

    If `true` the auto-scrolling is enabled.
  + ### scrollDirection

    protected int scrollDirection

    The direction of scrolling.
  + ### SCROLL\_UP

    protected static final int SCROLL\_UP

    The direction of scrolling up.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicComboPopup.SCROLL_UP)
  + ### SCROLL\_DOWN

    protected static final int SCROLL\_DOWN

    The direction of scrolling down.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicComboPopup.SCROLL_DOWN)
* ## Constructor Details

  + ### BasicComboPopup

    public BasicComboPopup([JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> combo)

    Constructs a new instance of `BasicComboPopup`.

    Parameters:
    :   `combo` - an instance of `JComboBox`
* ## Method Details

  + ### show

    public void show()

    Implementation of ComboPopup.show().

    Specified by:
    :   `show` in interface `ComboPopup`

    Overrides:
    :   `show` in class `Component`
  + ### hide

    public void hide()

    Implementation of ComboPopup.hide().

    Specified by:
    :   `hide` in interface `ComboPopup`

    Overrides:
    :   `hide` in class `JComponent`
  + ### getList

    public [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getList()

    Implementation of ComboPopup.getList().

    Specified by:
    :   `getList` in interface `ComboPopup`

    Returns:
    :   the list that is being used to draw the items in the combo box
  + ### getMouseListener

    public [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") getMouseListener()

    Implementation of ComboPopup.getMouseListener().

    Specified by:
    :   `getMouseListener` in interface `ComboPopup`

    Returns:
    :   a `MouseListener` or null

    See Also:
    :   - [`ComboPopup.getMouseListener()`](ComboPopup.md#getMouseListener())
  + ### getMouseMotionListener

    public [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") getMouseMotionListener()

    Implementation of ComboPopup.getMouseMotionListener().

    Specified by:
    :   `getMouseMotionListener` in interface `ComboPopup`

    Returns:
    :   a `MouseMotionListener` or null

    See Also:
    :   - [`ComboPopup.getMouseMotionListener()`](ComboPopup.md#getMouseMotionListener())
  + ### getKeyListener

    public [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") getKeyListener()

    Implementation of ComboPopup.getKeyListener().

    Specified by:
    :   `getKeyListener` in interface `ComboPopup`

    Returns:
    :   a `KeyListener` or null

    See Also:
    :   - [`ComboPopup.getKeyListener()`](ComboPopup.md#getKeyListener())
  + ### uninstallingUI

    public void uninstallingUI()

    Called when the UI is uninstalling. Since this popup isn't in the component
    tree, it won't get it's uninstallUI() called. It removes the listeners that
    were added in addComboBoxListeners().

    Specified by:
    :   `uninstallingUI` in interface `ComboPopup`
  + ### uninstallComboBoxModelListeners

    protected void uninstallComboBoxModelListeners([ComboBoxModel](../../ComboBoxModel.md "interface in javax.swing")<?> model)

    Removes the listeners from the combo box model

    Parameters:
    :   `model` - The combo box model to install listeners

    See Also:
    :   - [`installComboBoxModelListeners(javax.swing.ComboBoxModel<?>)`](#installComboBoxModelListeners(javax.swing.ComboBoxModel))
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### firePopupMenuWillBecomeVisible

    protected void firePopupMenuWillBecomeVisible()

    Description copied from class: `JPopupMenu`

    Notifies `PopupMenuListener`s that this popup menu will
    become visible.

    Overrides:
    :   `firePopupMenuWillBecomeVisible` in class `JPopupMenu`
  + ### firePopupMenuWillBecomeInvisible

    protected void firePopupMenuWillBecomeInvisible()

    Description copied from class: `JPopupMenu`

    Notifies `PopupMenuListener`s that this popup menu will
    become invisible.

    Overrides:
    :   `firePopupMenuWillBecomeInvisible` in class `JPopupMenu`
  + ### firePopupMenuCanceled

    protected void firePopupMenuCanceled()

    Description copied from class: `JPopupMenu`

    Notifies `PopupMenuListeners` that this popup menu is
    cancelled.

    Overrides:
    :   `firePopupMenuCanceled` in class `JPopupMenu`
  + ### createMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") createMouseListener()

    Creates a listener
    that will watch for mouse-press and release events on the combo box.
    **Warning:**
    When overriding this method, make sure to maintain the existing
    behavior.

    Returns:
    :   a `MouseListener` which will be added to
        the combo box or null
  + ### createMouseMotionListener

    protected [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") createMouseMotionListener()

    Creates the mouse motion listener which will be added to the combo
    box.
    **Warning:**
    When overriding this method, make sure to maintain the existing
    behavior.

    Returns:
    :   a `MouseMotionListener` which will be added to
        the combo box or null
  + ### createKeyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") createKeyListener()

    Creates the key listener that will be added to the combo box. If
    this method returns null then it will not be added to the combo box.

    Returns:
    :   a `KeyListener` or null
  + ### createListSelectionListener

    protected [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event") createListSelectionListener()

    Creates a list selection listener that watches for selection changes in
    the popup's list. If this method returns null then it will not
    be added to the popup list.

    Returns:
    :   an instance of a `ListSelectionListener` or null
  + ### createListDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") createListDataListener()

    Creates a list data listener which will be added to the
    `ComboBoxModel`. If this method returns null then
    it will not be added to the combo box model.

    Returns:
    :   an instance of a `ListDataListener` or null
  + ### createListMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") createListMouseListener()

    Creates a mouse listener that watches for mouse events in
    the popup's list. If this method returns null then it will
    not be added to the combo box.

    Returns:
    :   an instance of a `MouseListener` or null
  + ### createListMouseMotionListener

    protected [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") createListMouseMotionListener()

    Creates a mouse motion listener that watches for mouse motion
    events in the popup's list. If this method returns null then it will
    not be added to the combo box.

    Returns:
    :   an instance of a `MouseMotionListener` or null
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a `PropertyChangeListener` which will be added to
    the combo box. If this method returns null then it will not
    be added to the combo box.

    Returns:
    :   an instance of a `PropertyChangeListener` or null
  + ### createItemListener

    protected [ItemListener](../../../../java/awt/event/ItemListener.md "interface in java.awt.event") createItemListener()

    Creates an `ItemListener` which will be added to the
    combo box. If this method returns null then it will not
    be added to the combo box.

    Subclasses may override this method to return instances of their own
    ItemEvent handlers.

    Returns:
    :   an instance of an `ItemListener` or null
  + ### createList

    protected [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> createList()

    Creates the JList used in the popup to display
    the items in the combo box model. This method is called when the UI class
    is created.

    Returns:
    :   a `JList` used to display the combo box items
  + ### configureList

    protected void configureList()

    Configures the list which is used to hold the combo box items in the
    popup. This method is called when the UI class
    is created.

    See Also:
    :   - [`createList()`](#createList())
  + ### installListListeners

    protected void installListListeners()

    Adds the listeners to the list control.
  + ### createScroller

    protected [JScrollPane](../../JScrollPane.md "class in javax.swing") createScroller()

    Creates the scroll pane which houses the scrollable list.

    Returns:
    :   the scroll pane which houses the scrollable list
  + ### configureScroller

    protected void configureScroller()

    Configures the scrollable portion which holds the list within
    the combo box popup. This method is called when the UI class
    is created.
  + ### configurePopup

    protected void configurePopup()

    Configures the popup portion of the combo box. This method is called
    when the UI class is created.
  + ### installComboBoxListeners

    protected void installComboBoxListeners()

    This method adds the necessary listeners to the JComboBox.
  + ### installComboBoxModelListeners

    protected void installComboBoxModelListeners([ComboBoxModel](../../ComboBoxModel.md "interface in javax.swing")<?> model)

    Installs the listeners on the combo box model. Any listeners installed
    on the combo box model should be removed in
    `uninstallComboBoxModelListeners`.

    Parameters:
    :   `model` - The combo box model to install listeners

    See Also:
    :   - [`uninstallComboBoxModelListeners(javax.swing.ComboBoxModel<?>)`](#uninstallComboBoxModelListeners(javax.swing.ComboBoxModel))
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.
  + ### isFocusTraversable

    public boolean isFocusTraversable()

    Overridden to unconditionally return false.

    Overrides:
    :   `isFocusTraversable` in class `Component`

    Returns:
    :   `true` if this `Component` is
        focusable; `false` otherwise

    See Also:
    :   - [`Component.setFocusable(boolean)`](../../../../java/awt/Component.md#setFocusable(boolean))
  + ### startAutoScrolling

    protected void startAutoScrolling(int direction)

    This protected method is implementation specific and should be private.
    do not call or override.

    Parameters:
    :   `direction` - the direction of scrolling
  + ### stopAutoScrolling

    protected void stopAutoScrolling()

    This protected method is implementation specific and should be private.
    do not call or override.
  + ### autoScrollUp

    protected void autoScrollUp()

    This protected method is implementation specific and should be private.
    do not call or override.
  + ### autoScrollDown

    protected void autoScrollDown()

    This protected method is implementation specific and should be private.
    do not call or override.
  + ### getAccessibleContext

    public [AccessibleContext](../../../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this BasicComboPopup.
    The AccessibleContext will have its parent set to the ComboBox.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JPopupMenu`

    Returns:
    :   an AccessibleContext for the BasicComboPopup

    Since:
    :   1.5
  + ### delegateFocus

    protected void delegateFocus([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    This is a utility method that helps event handlers figure out where to
    send the focus when the popup is brought up. The standard implementation
    delegates the focus to the editor (if the combo box is editable) or to
    the JComboBox if it is not editable.

    Parameters:
    :   `e` - a mouse event
  + ### togglePopup

    protected void togglePopup()

    Makes the popup visible if it is hidden and makes it hidden if it is
    visible.
  + ### convertMouseEvent

    protected [MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") convertMouseEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Converts mouse event.

    Parameters:
    :   `e` - a mouse event

    Returns:
    :   converted mouse event
  + ### getPopupHeightForRowCount

    protected int getPopupHeightForRowCount(int maxRowCount)

    Retrieves the height of the popup based on the current
    ListCellRenderer and the maximum row count.

    Parameters:
    :   `maxRowCount` - the row count

    Returns:
    :   the height of the popup
  + ### computePopupBounds

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") computePopupBounds(int px,
    int py,
    int pw,
    int ph)

    Calculate the placement and size of the popup portion of the combo box based
    on the combo box location and the enclosing screen bounds. If
    no transformations are required, then the returned rectangle will
    have the same values as the parameters.

    Parameters:
    :   `px` - starting x location
    :   `py` - starting y location
    :   `pw` - starting width
    :   `ph` - starting height

    Returns:
    :   a rectangle which represents the placement and size of the popup
  + ### updateListBoxSelectionForEvent

    protected void updateListBoxSelectionForEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") anEvent,
    boolean shouldScroll)

    A utility method used by the event listeners. Given a mouse event, it changes
    the list selection to the list item below the mouse.

    Parameters:
    :   `anEvent` - a mouse event
    :   `shouldScroll` - if `true` list should be scrolled.