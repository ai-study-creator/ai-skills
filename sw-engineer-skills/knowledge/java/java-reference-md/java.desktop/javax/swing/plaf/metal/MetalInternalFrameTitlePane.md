Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalInternalFrameTitlePane

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.plaf.basic.BasicInternalFrameTitlePane](../basic/BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalInternalFrameTitlePane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`

---

public class MetalInternalFrameTitlePane
extends [BasicInternalFrameTitlePane](../basic/BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

Class that manages a JLF title bar

Since:
:   1.3

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicInternalFrameTitlePane](../basic/BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

  `BasicInternalFrameTitlePane.CloseAction, BasicInternalFrameTitlePane.IconifyAction, BasicInternalFrameTitlePane.MaximizeAction, BasicInternalFrameTitlePane.MoveAction, BasicInternalFrameTitlePane.PropertyChangeHandler, BasicInternalFrameTitlePane.RestoreAction, BasicInternalFrameTitlePane.SizeAction, BasicInternalFrameTitlePane.SystemMenuBar, BasicInternalFrameTitlePane.TitlePaneLayout`

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

  `protected boolean`

  `isPalette`

  The value `isPalette`

  `protected Icon`

  `paletteCloseIcon`

  The palette close icon.

  `protected int`

  `paletteTitleHeight`

  The height of the palette title.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicInternalFrameTitlePane](../basic/BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

  `CLOSE_CMD, closeAction, closeButton, closeIcon, frame, iconButton, iconIcon, ICONIFY_CMD, iconifyAction, maxButton, maxIcon, MAXIMIZE_CMD, maximizeAction, menuBar, minIcon, MOVE_CMD, moveAction, notSelectedTextColor, notSelectedTitleColor, propertyChangeListener, RESTORE_CMD, restoreAction, selectedTextColor, selectedTitleColor, SIZE_CMD, sizeAction, windowMenu`

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

  `MetalInternalFrameTitlePane(JInternalFrame f)`

  Constructs a new instance of `MetalInternalFrameTitlePane`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotify()`

  Notifies this component that it now has a parent component.

  `protected void`

  `addSubComponents()`

  Override the parent's method avoid creating a menu bar.

  `protected void`

  `addSystemMenuItems(JMenu systemMenu)`

  Override the parent's method to do nothing.

  `protected void`

  `assembleSystemMenu()`

  Override the parent's method to do nothing.

  `protected void`

  `createButtons()`

  Creates buttons.

  `protected LayoutManager`

  `createLayout()`

  Returns a layout manager.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Returns an instance of `PropertyChangeListener`.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `void`

  `paintComponent(Graphics g)`

  Calls the UI delegate's paint method, if the UI delegate
  is non-`null`.

  `void`

  `paintPalette(Graphics g)`

  Paints palette.

  `void`

  `setPalette(boolean b)`

  If `b` is `true`, sets palette icons.

  `protected void`

  `showSystemMenu()`

  Override the parent's method to do nothing.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicInternalFrameTitlePane](../basic/BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

  `createActions, createSystemMenu, createSystemMenuBar, enableActions, getTitle, installListeners, installTitlePane, paintTitleBackground, postClosingEvent, setButtonIcons, uninstallListeners`

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getUI, getUIClassID, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintImmediately, paintImmediately, paramString, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update, updateUI`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAccessibleContext, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### isPalette

    protected boolean isPalette

    The value `isPalette`
  + ### paletteCloseIcon

    protected [Icon](../../Icon.md "interface in javax.swing") paletteCloseIcon

    The palette close icon.
  + ### paletteTitleHeight

    protected int paletteTitleHeight

    The height of the palette title.
* ## Constructor Details

  + ### MetalInternalFrameTitlePane

    public MetalInternalFrameTitlePane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    Constructs a new instance of `MetalInternalFrameTitlePane`

    Parameters:
    :   `f` - an instance of `JInternalFrame`
* ## Method Details

  + ### addNotify

    public void addNotify()

    Description copied from class: `JComponent`

    Notifies this component that it now has a parent component.
    When this method is invoked, the chain of parent components is
    set up with `KeyboardAction` event listeners.
    This method is called by the toolkit internally and should
    not be called directly by programs.

    Overrides:
    :   `addNotify` in class `JComponent`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](../../JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicInternalFrameTitlePane`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicInternalFrameTitlePane`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Description copied from class: `BasicInternalFrameTitlePane`

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicInternalFrameTitlePane`
  + ### createButtons

    protected void createButtons()

    Description copied from class: `BasicInternalFrameTitlePane`

    Creates buttons.

    Overrides:
    :   `createButtons` in class `BasicInternalFrameTitlePane`
  + ### assembleSystemMenu

    protected void assembleSystemMenu()

    Override the parent's method to do nothing. Metal frames do not
    have system menus.

    Overrides:
    :   `assembleSystemMenu` in class `BasicInternalFrameTitlePane`
  + ### addSystemMenuItems

    protected void addSystemMenuItems([JMenu](../../JMenu.md "class in javax.swing") systemMenu)

    Override the parent's method to do nothing. Metal frames do not
    have system menus.

    Overrides:
    :   `addSystemMenuItems` in class `BasicInternalFrameTitlePane`

    Parameters:
    :   `systemMenu` - an instance of `JMenu`
  + ### showSystemMenu

    protected void showSystemMenu()

    Override the parent's method to do nothing. Metal frames do not
    have system menus.

    Overrides:
    :   `showSystemMenu` in class `BasicInternalFrameTitlePane`
  + ### addSubComponents

    protected void addSubComponents()

    Override the parent's method avoid creating a menu bar. Metal frames
    do not have system menus.

    Overrides:
    :   `addSubComponents` in class `BasicInternalFrameTitlePane`
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Description copied from class: `BasicInternalFrameTitlePane`

    Returns an instance of `PropertyChangeListener`.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicInternalFrameTitlePane`

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### createLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayout()

    Description copied from class: `BasicInternalFrameTitlePane`

    Returns a layout manager.

    Overrides:
    :   `createLayout` in class `BasicInternalFrameTitlePane`

    Returns:
    :   a layout manager
  + ### paintPalette

    public void paintPalette([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints palette.

    Parameters:
    :   `g` - a instance of `Graphics`
  + ### paintComponent

    public void paintComponent([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `JComponent`

    Calls the UI delegate's paint method, if the UI delegate
    is non-`null`. We pass the delegate a copy of the
    `Graphics` object to protect the rest of the
    paint code from irrevocable changes
    (for example, `Graphics.translate`).

    If you override this in a subclass you should not make permanent
    changes to the passed in `Graphics`. For example, you
    should not alter the clip `Rectangle` or modify the
    transform. If you need to do these operations you may find it
    easier to create a new `Graphics` from the passed in
    `Graphics` and manipulate it. Further, if you do not
    invoke super's implementation you must honor the opaque property, that is
    if this component is opaque, you must completely fill in the background
    in an opaque color. If you do not honor the opaque property you
    will likely see visual artifacts.

    The passed in `Graphics` object might
    have a transform other than the identify transform
    installed on it. In this case, you might get
    unexpected results if you cumulatively apply
    another transform.

    Overrides:
    :   `paintComponent` in class `BasicInternalFrameTitlePane`

    Parameters:
    :   `g` - the `Graphics` object to protect

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](../../JComponent.md#paint(java.awt.Graphics))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")
  + ### setPalette

    public void setPalette(boolean b)

    If `b` is `true`, sets palette icons.

    Parameters:
    :   `b` - if `true`, sets palette icons