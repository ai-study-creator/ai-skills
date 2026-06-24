Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JPopupMenu

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JPopupMenu

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`

Direct Known Subclasses:
:   `BasicComboPopup`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A small window that pops up and displays a series of choices.")
public class JPopupMenu
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [MenuElement](MenuElement.md "interface in javax.swing")

An implementation of a popup menu -- a small window that pops up
and displays a series of choices. A `JPopupMenu` is used for the
menu that appears when the user selects an item on the menu bar.
It is also used for "pull-right" menu that appears when the
selects a menu item that activates it. Finally, a `JPopupMenu`
can also be used anywhere else you want a menu to appear. For
example, when the user right-clicks in a specified area.

For information and examples of using popup menus, see
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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JPopupMenu.AccessibleJPopupMenu`

  This class implements accessibility support for the
  `JPopupMenu` class.

  `static class`

  `JPopupMenu.Separator`

  A popup menu-specific separator.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JPopupMenu()`

  Constructs a `JPopupMenu` without an "invoker".

  `JPopupMenu(String label)`

  Constructs a `JPopupMenu` with the specified title.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `JMenuItem`

  `add(String s)`

  Creates a new menu item with the specified text and appends
  it to the end of this menu.

  `JMenuItem`

  `add(Action a)`

  Appends a new menu item to the end of the menu which
  dispatches the specified `Action` object.

  `JMenuItem`

  `add(JMenuItem menuItem)`

  Appends the specified menu item to the end of this menu.

  `void`

  `addMenuKeyListener(MenuKeyListener l)`

  Adds a `MenuKeyListener` to the popup menu.

  `void`

  `addPopupMenuListener(PopupMenuListener l)`

  Adds a `PopupMenu` listener.

  `void`

  `addSeparator()`

  Appends a new separator at the end of the menu.

  `protected PropertyChangeListener`

  `createActionChangeListener(JMenuItem b)`

  Returns a properly configured `PropertyChangeListener`
  which updates the control as changes to the `Action` occur.

  `protected JMenuItem`

  `createActionComponent(Action a)`

  Factory method which creates the `JMenuItem` for
  `Actions` added to the `JPopupMenu`.

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

  Gets the AccessibleContext associated with this JPopupMenu.

  `Component`

  `getComponent()`

  Returns this `JPopupMenu` component.

  `Component`

  `getComponentAtIndex(int i)`

  Deprecated.

  replaced by [`Container.getComponent(int)`](../../java/awt/Container.md#getComponent(int))

  `int`

  `getComponentIndex(Component c)`

  Returns the index of the specified component.

  `static boolean`

  `getDefaultLightWeightPopupEnabled()`

  Gets the `defaultLightWeightPopupEnabled` property,
  which by default is `true`.

  `Component`

  `getInvoker()`

  Returns the component which is the 'invoker' of this
  popup menu.

  `String`

  `getLabel()`

  Returns the popup menu's label

  `Insets`

  `getMargin()`

  Returns the margin, in pixels, between the popup menu's border and
  its containers.

  `MenuKeyListener[]`

  `getMenuKeyListeners()`

  Returns an array of all the `MenuKeyListener`s added
  to this JPopupMenu with addMenuKeyListener().

  `PopupMenuListener[]`

  `getPopupMenuListeners()`

  Returns an array of all the `PopupMenuListener`s added
  to this JMenuItem with addPopupMenuListener().

  `SingleSelectionModel`

  `getSelectionModel()`

  Returns the model object that handles single selections.

  `MenuElement[]`

  `getSubElements()`

  Returns an array of `MenuElement`s containing the submenu
  for this menu component.

  `PopupMenuUI`

  `getUI()`

  Returns the look and feel (L&F) object that renders this component.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `void`

  `insert(Component component,
  int index)`

  Inserts the specified component into the menu at a given
  position.

  `void`

  `insert(Action a,
  int index)`

  Inserts a menu item for the specified `Action` object at
  a given position.

  `boolean`

  `isBorderPainted()`

  Checks whether the border should be painted.

  `boolean`

  `isLightWeightPopupEnabled()`

  Gets the `lightWeightPopupEnabled` property.

  `boolean`

  `isPopupTrigger(MouseEvent e)`

  Returns true if the `MouseEvent` is considered a popup trigger
  by the `JPopupMenu`'s currently installed UI.

  `boolean`

  `isVisible()`

  Returns true if the popup menu is visible (currently
  being displayed).

  `void`

  `menuSelectionChanged(boolean isIncluded)`

  Messaged when the menubar selection changes to activate or
  deactivate this menu.

  `void`

  `pack()`

  Lays out the container so that it uses the minimum space
  needed to display its contents.

  `protected void`

  `paintBorder(Graphics g)`

  Paints the popup menu's border if the `borderPainted`
  property is `true`.

  `protected String`

  `paramString()`

  Returns a string representation of this `JPopupMenu`.

  `protected void`

  `processFocusEvent(FocusEvent evt)`

  Processes focus events occurring on this component by
  dispatching them to any registered
  `FocusListener` objects.

  `protected void`

  `processKeyEvent(KeyEvent evt)`

  Processes key stroke events such as mnemonics and accelerators.

  `void`

  `processKeyEvent(KeyEvent e,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Processes a key event forwarded from the
  `MenuSelectionManager` and changes the menu selection,
  if necessary, by using `MenuSelectionManager`'s API.

  `void`

  `processMouseEvent(MouseEvent event,
  MenuElement[] path,
  MenuSelectionManager manager)`

  This method is required to conform to the
  `MenuElement` interface, but it not implemented.

  `void`

  `remove(int pos)`

  Removes the component at the specified index from this popup menu.

  `void`

  `removeMenuKeyListener(MenuKeyListener l)`

  Removes a `MenuKeyListener` from the popup menu.

  `void`

  `removePopupMenuListener(PopupMenuListener l)`

  Removes a `PopupMenu` listener.

  `void`

  `setBorderPainted(boolean b)`

  Sets whether the border should be painted.

  `static void`

  `setDefaultLightWeightPopupEnabled(boolean aFlag)`

  Sets the default value of the `lightWeightPopupEnabled`
  property.

  `void`

  `setInvoker(Component invoker)`

  Sets the invoker of this popup menu -- the component in which
  the popup menu menu is to be displayed.

  `void`

  `setLabel(String label)`

  Sets the popup menu's label.

  `void`

  `setLightWeightPopupEnabled(boolean aFlag)`

  Sets the value of the `lightWeightPopupEnabled` property,
  which by default is `true`.

  `void`

  `setLocation(int x,
  int y)`

  Sets the location of the upper left corner of the
  popup menu using x, y coordinates.

  `void`

  `setPopupSize(int width,
  int height)`

  Sets the size of the Popup window to the specified width and
  height.

  `void`

  `setPopupSize(Dimension d)`

  Sets the size of the Popup window using a `Dimension` object.

  `void`

  `setSelected(Component sel)`

  Sets the currently selected component, This will result
  in a change to the selection model.

  `void`

  `setSelectionModel(SingleSelectionModel model)`

  Sets the model object to handle single selections.

  `void`

  `setUI(PopupMenuUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `setVisible(boolean b)`

  Sets the visibility of the popup menu.

  `void`

  `show(Component invoker,
  int x,
  int y)`

  Displays the popup menu at the position x,y in the coordinate
  space of the component invoker.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JPopupMenu

    public JPopupMenu()

    Constructs a `JPopupMenu` without an "invoker".
  + ### JPopupMenu

    public JPopupMenu([String](../../../java.base/java/lang/String.md "class in java.lang") label)

    Constructs a `JPopupMenu` with the specified title.

    Parameters:
    :   `label` - the string that a UI may use to display as a title
        for the popup menu.
* ## Method Details

  + ### setDefaultLightWeightPopupEnabled

    public static void setDefaultLightWeightPopupEnabled(boolean aFlag)

    Sets the default value of the `lightWeightPopupEnabled`
    property.

    Parameters:
    :   `aFlag` - `true` if popups can be lightweight,
        otherwise `false`

    See Also:
    :   - [`getDefaultLightWeightPopupEnabled()`](#getDefaultLightWeightPopupEnabled())
        - [`setLightWeightPopupEnabled(boolean)`](#setLightWeightPopupEnabled(boolean))
  + ### getDefaultLightWeightPopupEnabled

    public static boolean getDefaultLightWeightPopupEnabled()

    Gets the `defaultLightWeightPopupEnabled` property,
    which by default is `true`.

    Returns:
    :   the value of the `defaultLightWeightPopupEnabled`
        property

    See Also:
    :   - [`setDefaultLightWeightPopupEnabled(boolean)`](#setDefaultLightWeightPopupEnabled(boolean))
  + ### getUI

    public [PopupMenuUI](plaf/PopupMenuUI.md "class in javax.swing.plaf") getUI()

    Returns the look and feel (L&F) object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `PopupMenuUI` object that renders this component
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([PopupMenuUI](plaf/PopupMenuUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the new `PopupMenuUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "PopupMenuUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### processFocusEvent

    protected void processFocusEvent([FocusEvent](../../java/awt/event/FocusEvent.md "class in java.awt.event") evt)

    Description copied from class: `Component`

    Processes focus events occurring on this component by
    dispatching them to any registered
    `FocusListener` objects.

    This method is not called unless focus events are
    enabled for this component. Focus events are enabled
    when one of the following occurs:
    - A `FocusListener` object is registered
      via `addFocusListener`.- Focus events are enabled via `enableEvents`.

    If focus events are enabled for a `Component`,
    the current `KeyboardFocusManager` determines
    whether or not a focus event should be dispatched to
    registered `FocusListener` objects. If the
    events are to be dispatched, the `KeyboardFocusManager`
    calls the `Component`'s `dispatchEvent`
    method, which results in a call to the `Component`'s
    `processFocusEvent` method.

    If focus events are enabled for a `Component`, calling
    the `Component`'s `dispatchEvent` method
    with a `FocusEvent` as the argument will result in a
    call to the `Component`'s `processFocusEvent`
    method regardless of the current `KeyboardFocusManager`.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Overrides:
    :   `processFocusEvent` in class `Component`

    Parameters:
    :   `evt` - the focus event

    See Also:
    :   - [`FocusEvent`](../../java/awt/event/FocusEvent.md "class in java.awt.event")
        - [`FocusListener`](../../java/awt/event/FocusListener.md "interface in java.awt.event")
        - [`KeyboardFocusManager`](../../java/awt/KeyboardFocusManager.md "class in java.awt")
        - [`Component.addFocusListener(java.awt.event.FocusListener)`](../../java/awt/Component.md#addFocusListener(java.awt.event.FocusListener))
        - [`Component.enableEvents(long)`](../../java/awt/Component.md#enableEvents(long))
        - [`Component.dispatchEvent(java.awt.AWTEvent)`](../../java/awt/Component.md#dispatchEvent(java.awt.AWTEvent))
  + ### processKeyEvent

    protected void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") evt)

    Processes key stroke events such as mnemonics and accelerators.

    Overrides:
    :   `processKeyEvent` in class `JComponent`

    Parameters:
    :   `evt` - the key event to be processed

    See Also:
    :   - [`KeyEvent`](../../java/awt/event/KeyEvent.md "class in java.awt.event")
        - [`KeyListener`](../../java/awt/event/KeyListener.md "interface in java.awt.event")
        - [`KeyboardFocusManager`](../../java/awt/KeyboardFocusManager.md "class in java.awt")
        - [`DefaultKeyboardFocusManager`](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")
        - [`Component.processEvent(java.awt.AWTEvent)`](../../java/awt/Component.md#processEvent(java.awt.AWTEvent))
        - [`Component.dispatchEvent(java.awt.AWTEvent)`](../../java/awt/Component.md#dispatchEvent(java.awt.AWTEvent))
        - [`Component.addKeyListener(java.awt.event.KeyListener)`](../../java/awt/Component.md#addKeyListener(java.awt.event.KeyListener))
        - [`Component.enableEvents(long)`](../../java/awt/Component.md#enableEvents(long))
        - [`Component.isShowing()`](../../java/awt/Component.md#isShowing())
  + ### getSelectionModel

    public [SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing") getSelectionModel()

    Returns the model object that handles single selections.

    Returns:
    :   the `selectionModel` property

    See Also:
    :   - [`SingleSelectionModel`](SingleSelectionModel.md "interface in javax.swing")
  + ### setSelectionModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The selection model for the popup menu")
    public void setSelectionModel([SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing") model)

    Sets the model object to handle single selections.

    Parameters:
    :   `model` - the new `SingleSelectionModel`

    See Also:
    :   - [`SingleSelectionModel`](SingleSelectionModel.md "interface in javax.swing")
  + ### add

    public [JMenuItem](JMenuItem.md "class in javax.swing") add([JMenuItem](JMenuItem.md "class in javax.swing") menuItem)

    Appends the specified menu item to the end of this menu.

    Parameters:
    :   `menuItem` - the `JMenuItem` to add

    Returns:
    :   the `JMenuItem` added
  + ### add

    public [JMenuItem](JMenuItem.md "class in javax.swing") add([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Creates a new menu item with the specified text and appends
    it to the end of this menu.

    Parameters:
    :   `s` - the string for the menu item to be added

    Returns:
    :   a new `JMenuItem` created using `s`
  + ### add

    public [JMenuItem](JMenuItem.md "class in javax.swing") add([Action](Action.md "interface in javax.swing") a)

    Appends a new menu item to the end of the menu which
    dispatches the specified `Action` object.

    Parameters:
    :   `a` - the `Action` to add to the menu

    Returns:
    :   the new menu item

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
  + ### createActionComponent

    protected [JMenuItem](JMenuItem.md "class in javax.swing") createActionComponent([Action](Action.md "interface in javax.swing") a)

    Factory method which creates the `JMenuItem` for
    `Actions` added to the `JPopupMenu`.

    Parameters:
    :   `a` - the `Action` for the menu item to be added

    Returns:
    :   the new menu item

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
  + ### createActionChangeListener

    protected [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") createActionChangeListener([JMenuItem](JMenuItem.md "class in javax.swing") b)

    Returns a properly configured `PropertyChangeListener`
    which updates the control as changes to the `Action` occur.

    Parameters:
    :   `b` - the menu item for which to create a listener

    Returns:
    :   a properly configured `PropertyChangeListener`
  + ### remove

    public void remove(int pos)

    Removes the component at the specified index from this popup menu.

    Overrides:
    :   `remove` in class `Container`

    Parameters:
    :   `pos` - the position of the item to be removed

    Throws:
    :   `IllegalArgumentException` - if the value of
        `pos` < 0, or if the value of
        `pos` is greater than the
        number of items

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`Container.getComponentCount()`](../../java/awt/Container.md#getComponentCount())
  + ### setLightWeightPopupEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="Determines whether lightweight popups are used when possible")
    public void setLightWeightPopupEnabled(boolean aFlag)

    Sets the value of the `lightWeightPopupEnabled` property,
    which by default is `true`.
    By default, when a look and feel displays a popup,
    it can choose to
    use a lightweight (all-Java) popup.
    Lightweight popup windows are more efficient than heavyweight
    (native peer) windows,
    but lightweight and heavyweight components do not mix well in a GUI.
    If your application mixes lightweight and heavyweight components,
    you should disable lightweight popups.
    Some look and feels might always use heavyweight popups,
    no matter what the value of this property.

    Parameters:
    :   `aFlag` - `false` to disable lightweight popups

    See Also:
    :   - [`isLightWeightPopupEnabled()`](#isLightWeightPopupEnabled())
  + ### isLightWeightPopupEnabled

    public boolean isLightWeightPopupEnabled()

    Gets the `lightWeightPopupEnabled` property.

    Returns:
    :   the value of the `lightWeightPopupEnabled` property

    See Also:
    :   - [`setLightWeightPopupEnabled(boolean)`](#setLightWeightPopupEnabled(boolean))
  + ### getLabel

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getLabel()

    Returns the popup menu's label

    Returns:
    :   a string containing the popup menu's label

    See Also:
    :   - [`setLabel(java.lang.String)`](#setLabel(java.lang.String))
  + ### setLabel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The label for the popup menu.")
    public void setLabel([String](../../../java.base/java/lang/String.md "class in java.lang") label)

    Sets the popup menu's label. Different look and feels may choose
    to display or not display this.

    Parameters:
    :   `label` - a string specifying the label for the popup menu

    See Also:
    :   - [`getLabel()`](#getLabel())
  + ### addSeparator

    public void addSeparator()

    Appends a new separator at the end of the menu.
  + ### insert

    public void insert([Action](Action.md "interface in javax.swing") a,
    int index)

    Inserts a menu item for the specified `Action` object at
    a given position.

    Parameters:
    :   `a` - the `Action` object to insert
    :   `index` - specifies the position at which to insert the
        `Action`, where 0 is the first

    Throws:
    :   `IllegalArgumentException` - if `index` < 0

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
  + ### insert

    public void insert([Component](../../java/awt/Component.md "class in java.awt") component,
    int index)

    Inserts the specified component into the menu at a given
    position.

    Parameters:
    :   `component` - the `Component` to insert
    :   `index` - specifies the position at which
        to insert the component, where 0 is the first

    Throws:
    :   `IllegalArgumentException` - if `index` < 0
  + ### addPopupMenuListener

    public void addPopupMenuListener([PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event") l)

    Adds a `PopupMenu` listener.

    Parameters:
    :   `l` - the `PopupMenuListener` to add
  + ### removePopupMenuListener

    public void removePopupMenuListener([PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event") l)

    Removes a `PopupMenu` listener.

    Parameters:
    :   `l` - the `PopupMenuListener` to remove
  + ### getPopupMenuListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event")[] getPopupMenuListeners()

    Returns an array of all the `PopupMenuListener`s added
    to this JMenuItem with addPopupMenuListener().

    Returns:
    :   all of the `PopupMenuListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### addMenuKeyListener

    public void addMenuKeyListener([MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event") l)

    Adds a `MenuKeyListener` to the popup menu.

    Parameters:
    :   `l` - the `MenuKeyListener` to be added

    Since:
    :   1.5
  + ### removeMenuKeyListener

    public void removeMenuKeyListener([MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event") l)

    Removes a `MenuKeyListener` from the popup menu.

    Parameters:
    :   `l` - the `MenuKeyListener` to be removed

    Since:
    :   1.5
  + ### getMenuKeyListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuKeyListener](event/MenuKeyListener.md "interface in javax.swing.event")[] getMenuKeyListeners()

    Returns an array of all the `MenuKeyListener`s added
    to this JPopupMenu with addMenuKeyListener().

    Returns:
    :   all of the `MenuKeyListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.5
  + ### firePopupMenuWillBecomeVisible

    protected void firePopupMenuWillBecomeVisible()

    Notifies `PopupMenuListener`s that this popup menu will
    become visible.
  + ### firePopupMenuWillBecomeInvisible

    protected void firePopupMenuWillBecomeInvisible()

    Notifies `PopupMenuListener`s that this popup menu will
    become invisible.
  + ### firePopupMenuCanceled

    protected void firePopupMenuCanceled()

    Notifies `PopupMenuListeners` that this popup menu is
    cancelled.
  + ### pack

    public void pack()

    Lays out the container so that it uses the minimum space
    needed to display its contents.
  + ### setVisible

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Makes the popup visible")
    public void setVisible(boolean b)

    Sets the visibility of the popup menu.

    Overrides:
    :   `setVisible` in class `JComponent`

    Parameters:
    :   `b` - true to make the popup visible, or false to
        hide it

    See Also:
    :   - [`Component.isVisible()`](../../java/awt/Component.md#isVisible())
        - [`Component.invalidate()`](../../java/awt/Component.md#invalidate())
  + ### isVisible

    public boolean isVisible()

    Returns true if the popup menu is visible (currently
    being displayed).

    Overrides:
    :   `isVisible` in class `Component`

    Returns:
    :   `true` if the component is visible,
        `false` otherwise

    See Also:
    :   - [`Component.setVisible(boolean)`](../../java/awt/Component.md#setVisible(boolean))
  + ### setLocation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The location of the popup menu.")
    public void setLocation(int x,
    int y)

    Sets the location of the upper left corner of the
    popup menu using x, y coordinates.

    The method changes the geometry-related data. Therefore,
    the native windowing system may ignore such requests, or it may modify
    the requested data, so that the `JPopupMenu` object is placed and sized
    in a way that corresponds closely to the desktop settings.

    Overrides:
    :   `setLocation` in class `Component`

    Parameters:
    :   `x` - the x coordinate of the popup's new position
        in the screen's coordinate space
    :   `y` - the y coordinate of the popup's new position
        in the screen's coordinate space

    See Also:
    :   - [`Component.getLocation()`](../../java/awt/Component.md#getLocation())
        - [`Component.setBounds(int, int, int, int)`](../../java/awt/Component.md#setBounds(int,int,int,int))
        - [`Component.invalidate()`](../../java/awt/Component.md#invalidate())
  + ### getInvoker

    public [Component](../../java/awt/Component.md "class in java.awt") getInvoker()

    Returns the component which is the 'invoker' of this
    popup menu.

    Returns:
    :   the `Component` in which the popup menu is displayed
  + ### setInvoker

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The invoking component for the popup menu")
    public void setInvoker([Component](../../java/awt/Component.md "class in java.awt") invoker)

    Sets the invoker of this popup menu -- the component in which
    the popup menu menu is to be displayed.

    Parameters:
    :   `invoker` - the `Component` in which the popup
        menu is displayed
  + ### show

    public void show([Component](../../java/awt/Component.md "class in java.awt") invoker,
    int x,
    int y)

    Displays the popup menu at the position x,y in the coordinate
    space of the component invoker.

    Parameters:
    :   `invoker` - the component in whose space the popup menu is to appear
    :   `x` - the x coordinate in invoker's coordinate space at which
        the popup menu is to be displayed
    :   `y` - the y coordinate in invoker's coordinate space at which
        the popup menu is to be displayed
  + ### getComponentAtIndex

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAtIndex(int i)

    Deprecated.

    replaced by [`Container.getComponent(int)`](../../java/awt/Container.md#getComponent(int))

    Returns the component at the specified index.

    Parameters:
    :   `i` - the index of the component, where 0 is the first

    Returns:
    :   the `Component` at that index
  + ### getComponentIndex

    public int getComponentIndex([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the index of the specified component.

    Parameters:
    :   `c` - the `Component` to find

    Returns:
    :   the index of the component, where 0 is the first;
        or -1 if the component is not found
  + ### setPopupSize

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The size of the popup menu")
    public void setPopupSize([Dimension](../../java/awt/Dimension.md "class in java.awt") d)

    Sets the size of the Popup window using a `Dimension` object.
    This is equivalent to `setPreferredSize(d)`.

    Parameters:
    :   `d` - the `Dimension` specifying the new size
        of this component.
  + ### setPopupSize

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The size of the popup menu")
    public void setPopupSize(int width,
    int height)

    Sets the size of the Popup window to the specified width and
    height. This is equivalent to
    `setPreferredSize(new Dimension(width, height))`.

    Parameters:
    :   `width` - the new width of the Popup in pixels
    :   `height` - the new height of the Popup in pixels
  + ### setSelected

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The selected component on the popup menu")
    public void setSelected([Component](../../java/awt/Component.md "class in java.awt") sel)

    Sets the currently selected component, This will result
    in a change to the selection model.

    Parameters:
    :   `sel` - the `Component` to select
  + ### isBorderPainted

    public boolean isBorderPainted()

    Checks whether the border should be painted.

    Returns:
    :   true if the border is painted, false otherwise

    See Also:
    :   - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
  + ### setBorderPainted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="Is the border of the popup menu painted")
    public void setBorderPainted(boolean b)

    Sets whether the border should be painted.

    Parameters:
    :   `b` - if true, the border is painted.

    See Also:
    :   - [`isBorderPainted()`](#isBorderPainted())
  + ### paintBorder

    protected void paintBorder([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Paints the popup menu's border if the `borderPainted`
    property is `true`.

    Overrides:
    :   `paintBorder` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` object

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](JComponent.md#paint(java.awt.Graphics))
        - [`JComponent.setBorder(javax.swing.border.Border)`](JComponent.md#setBorder(javax.swing.border.Border))
  + ### getMargin

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Insets](../../java/awt/Insets.md "class in java.awt") getMargin()

    Returns the margin, in pixels, between the popup menu's border and
    its containers.

    Returns:
    :   an `Insets` object containing the margin values.
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JPopupMenu`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JPopupMenu`.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JPopupMenu.
    For JPopupMenus, the AccessibleContext takes the form of an
    AccessibleJPopupMenu.
    A new AccessibleJPopupMenu instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJPopupMenu that serves as the
        AccessibleContext of this JPopupMenu
  + ### processMouseEvent

    public void processMouseEvent([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    This method is required to conform to the
    `MenuElement` interface, but it not implemented.

    Specified by:
    :   `processMouseEvent` in interface `MenuElement`

    Parameters:
    :   `event` - a `MouseEvent` to be processed
    :   `path` - the path of the receiving element in the menu hierarchy
    :   `manager` - the `MenuSelectionManager` for the menu hierarchy

    See Also:
    :   - [`MenuElement.processMouseEvent(MouseEvent, MenuElement[], MenuSelectionManager)`](MenuElement.md#processMouseEvent(java.awt.event.MouseEvent,javax.swing.MenuElement%5B%5D,javax.swing.MenuSelectionManager))
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
  + ### menuSelectionChanged

    public void menuSelectionChanged(boolean isIncluded)

    Messaged when the menubar selection changes to activate or
    deactivate this menu. This implements the
    `javax.swing.MenuElement` interface.
    Overrides `MenuElement.menuSelectionChanged`.

    Specified by:
    :   `menuSelectionChanged` in interface `MenuElement`

    Parameters:
    :   `isIncluded` - true if this menu is active, false if
        it is not

    See Also:
    :   - [`MenuElement.menuSelectionChanged(boolean)`](MenuElement.md#menuSelectionChanged(boolean))
  + ### getSubElements

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuElement](MenuElement.md "interface in javax.swing")[] getSubElements()

    Returns an array of `MenuElement`s containing the submenu
    for this menu component. It will only return items conforming to
    the `JMenuElement` interface.
    If popup menu is `null` returns
    an empty array. This method is required to conform to the
    `MenuElement` interface.

    Specified by:
    :   `getSubElements` in interface `MenuElement`

    Returns:
    :   an array of `MenuElement` objects

    See Also:
    :   - [`MenuElement.getSubElements()`](MenuElement.md#getSubElements())
  + ### getComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Returns this `JPopupMenu` component.

    Specified by:
    :   `getComponent` in interface `MenuElement`

    Returns:
    :   this `JPopupMenu` object

    See Also:
    :   - [`MenuElement.getComponent()`](MenuElement.md#getComponent())
  + ### isPopupTrigger

    public boolean isPopupTrigger([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Returns true if the `MouseEvent` is considered a popup trigger
    by the `JPopupMenu`'s currently installed UI.

    Parameters:
    :   `e` - a `MouseEvent`

    Returns:
    :   true if the mouse event is a popup trigger

    Since:
    :   1.3