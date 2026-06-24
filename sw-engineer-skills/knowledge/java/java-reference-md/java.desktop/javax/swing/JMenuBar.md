Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JMenuBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JMenuBar

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`

Direct Known Subclasses:
:   `BasicInternalFrameTitlePane.SystemMenuBar`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A container for holding and displaying menus.")
public class JMenuBar
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [MenuElement](MenuElement.md "interface in javax.swing")

An implementation of a menu bar. You add `JMenu` objects to the
menu bar to construct a menu. When the user selects a `JMenu`
object, its associated `JPopupMenu` is displayed, allowing the
user to select one of the `JMenuItems` on it.

For information and examples of using menu bars see
[How to Use Menus](https://docs.oracle.com/javase/tutorial/uiswing/components/menu.html),
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

**Warning:**
By default, pressing the Tab key does not transfer focus from a `JMenuBar` which is added to a container together with other Swing
components, because the `focusTraversalKeysEnabled` property
of `JMenuBar` is set to `false`. To resolve this,
you should call the `JMenuBar.setFocusTraversalKeysEnabled(true)`
method.

Since:
:   1.2

See Also:
:   * [`JMenu`](JMenu.md "class in javax.swing")
    * [`JPopupMenu`](JPopupMenu.md "class in javax.swing")
    * [`JMenuItem`](JMenuItem.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JMenuBar.AccessibleJMenuBar`

  This class implements accessibility support for the
  `JMenuBar` class.

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

  `JMenuBar()`

  Creates a new menu bar.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `JMenu`

  `add(JMenu c)`

  Appends the specified menu to the end of the menu bar.

  `void`

  `addNotify()`

  Overrides `JComponent.addNotify` to register this
  menu bar with the current keyboard manager.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JMenuBar.

  `Component`

  `getComponent()`

  Implemented to be a `MenuElement`.

  `Component`

  `getComponentAtIndex(int i)`

  Deprecated.

  replaced by `getComponent(int i)`

  `int`

  `getComponentIndex(Component c)`

  Returns the index of the specified component.

  `JMenu`

  `getHelpMenu()`

  Gets the help menu for the menu bar.

  `Insets`

  `getMargin()`

  Returns the margin between the menubar's border and
  its menus.

  `JMenu`

  `getMenu(int index)`

  Returns the menu at the specified position in the menu bar.

  `int`

  `getMenuCount()`

  Returns the number of items in the menu bar.

  `SingleSelectionModel`

  `getSelectionModel()`

  Returns the model object that handles single selections.

  `MenuElement[]`

  `getSubElements()`

  Implemented to be a `MenuElement` -- returns the
  menus in this menu bar.

  `MenuBarUI`

  `getUI()`

  Returns the menubar's current UI.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `boolean`

  `isBorderPainted()`

  Returns true if the menu bars border should be painted.

  `boolean`

  `isSelected()`

  Returns true if the menu bar currently has a component selected.

  `void`

  `menuSelectionChanged(boolean isIncluded)`

  Implemented to be a `MenuElement` -- does nothing.

  `protected void`

  `paintBorder(Graphics g)`

  Paints the menubar's border if `BorderPainted`
  property is true.

  `protected String`

  `paramString()`

  Returns a string representation of this `JMenuBar`.

  `protected boolean`

  `processKeyBinding(KeyStroke ks,
  KeyEvent e,
  int condition,
  boolean pressed)`

  Subclassed to check all the child menus.

  `void`

  `processKeyEvent(KeyEvent e,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Implemented to be a `MenuElement` -- does nothing.

  `void`

  `processMouseEvent(MouseEvent event,
  MenuElement[] path,
  MenuSelectionManager manager)`

  Implemented to be a `MenuElement` -- does nothing.

  `void`

  `removeNotify()`

  Overrides `JComponent.removeNotify` to unregister this
  menu bar with the current keyboard manager.

  `void`

  `setBorderPainted(boolean b)`

  Sets whether the border should be painted.

  `void`

  `setHelpMenu(JMenu menu)`

  Sets the help menu that appears when the user selects the
  "help" option in the menu bar.

  `void`

  `setMargin(Insets m)`

  Sets the margin between the menubar's border and
  its menus.

  `void`

  `setSelected(Component sel)`

  Sets the currently selected component, producing a
  a change to the selection model.

  `void`

  `setSelectionModel(SingleSelectionModel model)`

  Sets the model object to handle single selections.

  `void`

  `setUI(MenuBarUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `updateUI()`

  Resets the UI property with a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMenuBar

    public JMenuBar()

    Creates a new menu bar.
* ## Method Details

  + ### getUI

    public [MenuBarUI](plaf/MenuBarUI.md "class in javax.swing.plaf") getUI()

    Returns the menubar's current UI.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   a `MenuBarUI` which is the menubar's current L&F object

    See Also:
    :   - [`setUI(javax.swing.plaf.MenuBarUI)`](#setUI(javax.swing.plaf.MenuBarUI))
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([MenuBarUI](plaf/MenuBarUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the new MenuBarUI L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property with a value from the current look and feel.

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
    :   the string "MenuBarUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getSelectionModel

    public [SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing") getSelectionModel()

    Returns the model object that handles single selections.

    Returns:
    :   the `SingleSelectionModel` property

    See Also:
    :   - [`SingleSelectionModel`](SingleSelectionModel.md "interface in javax.swing")
  + ### setSelectionModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The selection model, recording which child is selected.")
    public void setSelectionModel([SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing") model)

    Sets the model object to handle single selections.

    Parameters:
    :   `model` - the `SingleSelectionModel` to use

    See Also:
    :   - [`SingleSelectionModel`](SingleSelectionModel.md "interface in javax.swing")
  + ### add

    public [JMenu](JMenu.md "class in javax.swing") add([JMenu](JMenu.md "class in javax.swing") c)

    Appends the specified menu to the end of the menu bar.

    Parameters:
    :   `c` - the `JMenu` component to add

    Returns:
    :   the menu component
  + ### getMenu

    public [JMenu](JMenu.md "class in javax.swing") getMenu(int index)

    Returns the menu at the specified position in the menu bar.

    Parameters:
    :   `index` - an integer giving the position in the menu bar, where
        0 is the first position

    Returns:
    :   the `JMenu` at that position, or `null` if
        if there is no `JMenu` at that position (ie. if
        it is a `JMenuItem`)
  + ### getMenuCount

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getMenuCount()

    Returns the number of items in the menu bar.

    Returns:
    :   the number of items in the menu bar
  + ### setHelpMenu

    public void setHelpMenu([JMenu](JMenu.md "class in javax.swing") menu)

    Sets the help menu that appears when the user selects the
    "help" option in the menu bar. This method is not yet implemented
    and will throw an exception.

    Parameters:
    :   `menu` - the JMenu that delivers help to the user
  + ### getHelpMenu

    public [JMenu](JMenu.md "class in javax.swing") getHelpMenu()

    Gets the help menu for the menu bar. This method is not yet
    implemented and will throw an exception.

    Returns:
    :   the `JMenu` that delivers help to the user
  + ### getComponentAtIndex

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAtIndex(int i)

    Deprecated.

    replaced by `getComponent(int i)`

    Returns the component at the specified index.

    Parameters:
    :   `i` - an integer specifying the position, where 0 is first

    Returns:
    :   the `Component` at the position,
        or `null` for an invalid index
  + ### getComponentIndex

    public int getComponentIndex([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the index of the specified component.

    Parameters:
    :   `c` - the `Component` to find

    Returns:
    :   an integer giving the component's position, where 0 is first;
        or -1 if it can't be found
  + ### setSelected

    public void setSelected([Component](../../java/awt/Component.md "class in java.awt") sel)

    Sets the currently selected component, producing a
    a change to the selection model.

    Parameters:
    :   `sel` - the `Component` to select
  + ### isSelected

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isSelected()

    Returns true if the menu bar currently has a component selected.

    Returns:
    :   true if a selection has been made, else false
  + ### isBorderPainted

    public boolean isBorderPainted()

    Returns true if the menu bars border should be painted.

    Returns:
    :   true if the border should be painted, else false
  + ### setBorderPainted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the border should be painted.")
    public void setBorderPainted(boolean b)

    Sets whether the border should be painted.

    Parameters:
    :   `b` - if true and border property is not `null`,
        the border is painted.

    See Also:
    :   - [`isBorderPainted()`](#isBorderPainted())
  + ### paintBorder

    protected void paintBorder([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Paints the menubar's border if `BorderPainted`
    property is true.

    Overrides:
    :   `paintBorder` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` context to use for painting

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](JComponent.md#paint(java.awt.Graphics))
        - [`JComponent.setBorder(javax.swing.border.Border)`](JComponent.md#setBorder(javax.swing.border.Border))
  + ### setMargin

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The space between the menubar\'s border and its contents")
    public void setMargin([Insets](../../java/awt/Insets.md "class in java.awt") m)

    Sets the margin between the menubar's border and
    its menus. Setting to `null` will cause the menubar to
    use the default margins.

    Parameters:
    :   `m` - an Insets object containing the margin values

    See Also:
    :   - [`Insets`](../../java/awt/Insets.md "class in java.awt")
  + ### getMargin

    public [Insets](../../java/awt/Insets.md "class in java.awt") getMargin()

    Returns the margin between the menubar's border and
    its menus. If there is no previous margin, it will create
    a default margin with zero size.

    Returns:
    :   an `Insets` object containing the margin values

    See Also:
    :   - [`Insets`](../../java/awt/Insets.md "class in java.awt")
  + ### processMouseEvent

    public void processMouseEvent([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Implemented to be a `MenuElement` -- does nothing.

    Specified by:
    :   `processMouseEvent` in interface `MenuElement`

    Parameters:
    :   `event` - a `MouseEvent` to be processed
    :   `path` - the path of the receiving element in the menu hierarchy
    :   `manager` - the `MenuSelectionManager` for the menu hierarchy

    See Also:
    :   - [`getSubElements()`](#getSubElements())
  + ### processKeyEvent

    public void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e,
    [MenuElement](MenuElement.md "interface in javax.swing")[] path,
    [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") manager)

    Implemented to be a `MenuElement` -- does nothing.

    Specified by:
    :   `processKeyEvent` in interface `MenuElement`

    Parameters:
    :   `e` - a `KeyEvent` to be processed
    :   `path` - the path of the receiving element in the menu hierarchy
    :   `manager` - the `MenuSelectionManager` for the menu hierarchy

    See Also:
    :   - [`getSubElements()`](#getSubElements())
  + ### menuSelectionChanged

    public void menuSelectionChanged(boolean isIncluded)

    Implemented to be a `MenuElement` -- does nothing.

    Specified by:
    :   `menuSelectionChanged` in interface `MenuElement`

    Parameters:
    :   `isIncluded` - can be used to indicate if this `MenuElement` is
        active (if it is a menu) or is on the part of the menu path that
        changed (if it is a menu item).

    See Also:
    :   - [`getSubElements()`](#getSubElements())
  + ### getSubElements

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MenuElement](MenuElement.md "interface in javax.swing")[] getSubElements()

    Implemented to be a `MenuElement` -- returns the
    menus in this menu bar.
    This is the reason for implementing the `MenuElement`
    interface -- so that the menu bar can be treated the same as
    other menu elements.

    Specified by:
    :   `getSubElements` in interface `MenuElement`

    Returns:
    :   an array of menu items in the menu bar.
  + ### getComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Implemented to be a `MenuElement`. Returns this object.

    Specified by:
    :   `getComponent` in interface `MenuElement`

    Returns:
    :   the current `Component` (this)

    See Also:
    :   - [`getSubElements()`](#getSubElements())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JMenuBar`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JMenuBar`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JMenuBar.
    For JMenuBars, the AccessibleContext takes the form of an
    AccessibleJMenuBar.
    A new AccessibleJMenuBar instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJMenuBar that serves as the
        AccessibleContext of this JMenuBar
  + ### processKeyBinding

    protected boolean processKeyBinding([KeyStroke](KeyStroke.md "class in javax.swing") ks,
    [KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e,
    int condition,
    boolean pressed)

    Subclassed to check all the child menus.

    Overrides:
    :   `processKeyBinding` in class `JComponent`

    Parameters:
    :   `ks` - the `KeyStroke` queried
    :   `e` - the `KeyEvent`
    :   `condition` - one of the following values:
        - JComponent.WHEN\_FOCUSED- JComponent.WHEN\_ANCESTOR\_OF\_FOCUSED\_COMPONENT- JComponent.WHEN\_IN\_FOCUSED\_WINDOW
    :   `pressed` - true if the key is pressed

    Returns:
    :   true if there was a binding to an action, and the action
        was enabled

    Since:
    :   1.3
  + ### addNotify

    public void addNotify()

    Overrides `JComponent.addNotify` to register this
    menu bar with the current keyboard manager.

    Overrides:
    :   `addNotify` in class `JComponent`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))
  + ### removeNotify

    public void removeNotify()

    Overrides `JComponent.removeNotify` to unregister this
    menu bar with the current keyboard manager.

    Overrides:
    :   `removeNotify` in class `JComponent`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))