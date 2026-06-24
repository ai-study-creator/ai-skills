Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxUI.MetalComboPopup

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.JPopupMenu](../../JPopupMenu.md "class in javax.swing")

[javax.swing.plaf.basic.BasicComboPopup](../basic/BasicComboPopup.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalComboBoxUI.MetalComboPopup

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`, `ComboPopup`

Enclosing class:
:   `MetalComboBoxUI`

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class MetalComboBoxUI.MetalComboPopup
extends [BasicComboPopup](../basic/BasicComboPopup.md "class in javax.swing.plaf.basic")

Deprecated.

As of Java 2 platform v1.4.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `MetalComboBoxUI`.
This class is now obsolete and doesn't do anything and
is only included for backwards API compatibility. Do not call or
override.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicComboPopup](../basic/BasicComboPopup.md "class in javax.swing.plaf.basic")

  `BasicComboPopup.InvocationKeyHandler, BasicComboPopup.InvocationMouseHandler, BasicComboPopup.InvocationMouseMotionHandler, BasicComboPopup.ItemHandler, BasicComboPopup.ListDataHandler, BasicComboPopup.ListMouseHandler, BasicComboPopup.ListMouseMotionHandler, BasicComboPopup.ListSelectionHandler, BasicComboPopup.PropertyChangeHandler`

  ## Nested classes/interfaces inherited from class javax.swing.[JPopupMenu](../../JPopupMenu.md "class in javax.swing")

  `JPopupMenu.AccessibleJPopupMenu, JPopupMenu.Separator`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicComboPopup](../basic/BasicComboPopup.md "class in javax.swing.plaf.basic")

  `autoscrollTimer, comboBox, hasEntered, isAutoScrolling, itemListener, keyListener, list, listDataListener, listMouseListener, listMouseMotionListener, listSelectionListener, mouseListener, mouseMotionListener, propertyChangeListener, SCROLL_DOWN, SCROLL_UP, scrollDirection, scroller, valueIsAdjusting`

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

  `MetalComboPopup(JComboBox<Object> cBox)`

  Deprecated.

  Constructs a new instance of `MetalComboPopup`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `delegateFocus(MouseEvent e)`

  Deprecated.

  This is a utility method that helps event handlers figure out where to
  send the focus when the popup is brought up.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboPopup](../basic/BasicComboPopup.md "class in javax.swing.plaf.basic")

  `autoScrollDown, autoScrollUp, computePopupBounds, configureList, configurePopup, configureScroller, convertMouseEvent, createItemListener, createKeyListener, createList, createListDataListener, createListMouseListener, createListMouseMotionListener, createListSelectionListener, createMouseListener, createMouseMotionListener, createPropertyChangeListener, createScroller, firePopupMenuCanceled, firePopupMenuWillBecomeInvisible, firePopupMenuWillBecomeVisible, getAccessibleContext, getKeyListener, getList, getMouseListener, getMouseMotionListener, getPopupHeightForRowCount, hide, installComboBoxListeners, installComboBoxModelListeners, installKeyboardActions, installListListeners, isFocusTraversable, show, startAutoScrolling, stopAutoScrolling, togglePopup, uninstallComboBoxModelListeners, uninstallingUI, uninstallKeyboardActions, updateListBoxSelectionForEvent`

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

  ### Methods inherited from interface javax.swing.plaf.basic.[ComboPopup](../basic/ComboPopup.md "interface in javax.swing.plaf.basic")

  `isVisible`

* ## Constructor Details

  + ### MetalComboPopup

    public MetalComboPopup([JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> cBox)

    Deprecated.

    Constructs a new instance of `MetalComboPopup`.

    Parameters:
    :   `cBox` - an instance of `JComboBox`
* ## Method Details

  + ### delegateFocus

    public void delegateFocus([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Deprecated.

    Description copied from class: `BasicComboPopup`

    This is a utility method that helps event handlers figure out where to
    send the focus when the popup is brought up. The standard implementation
    delegates the focus to the editor (if the combo box is editable) or to
    the JComboBox if it is not editable.

    Overrides:
    :   `delegateFocus` in class `BasicComboPopup`

    Parameters:
    :   `e` - a mouse event