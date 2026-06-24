Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalScrollButton

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](../../AbstractButton.md "class in javax.swing")

[javax.swing.JButton](../../JButton.md "class in javax.swing")

[javax.swing.plaf.basic.BasicArrowButton](../basic/BasicArrowButton.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalScrollButton

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

public class MetalScrollButton
extends [BasicArrowButton](../basic/BasicArrowButton.md "class in javax.swing.plaf.basic")

JButton object for Metal scrollbar arrows.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JButton](../../JButton.md "class in javax.swing")

  `JButton.AccessibleJButton`

  ## Nested classes/interfaces inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `AbstractButton.AccessibleAbstractButton, AbstractButton.ButtonChangeListener`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicArrowButton](../basic/BasicArrowButton.md "class in javax.swing.plaf.basic")

  `direction`

  ### Fields inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `actionListener, BORDER_PAINTED_CHANGED_PROPERTY, changeEvent, changeListener, CONTENT_AREA_FILLED_CHANGED_PROPERTY, DISABLED_ICON_CHANGED_PROPERTY, DISABLED_SELECTED_ICON_CHANGED_PROPERTY, FOCUS_PAINTED_CHANGED_PROPERTY, HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY, HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY, ICON_CHANGED_PROPERTY, itemListener, MARGIN_CHANGED_PROPERTY, MNEMONIC_CHANGED_PROPERTY, model, MODEL_CHANGED_PROPERTY, PRESSED_ICON_CHANGED_PROPERTY, ROLLOVER_ENABLED_CHANGED_PROPERTY, ROLLOVER_ICON_CHANGED_PROPERTY, ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY, SELECTED_ICON_CHANGED_PROPERTY, TEXT_CHANGED_PROPERTY, VERTICAL_ALIGNMENT_CHANGED_PROPERTY, VERTICAL_TEXT_POSITION_CHANGED_PROPERTY`

  ### Fields inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalScrollButton(int direction,
  int width,
  boolean freeStanding)`

  Constructs an instance of `MetalScrollButton`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getButtonWidth()`

  Returns the width of the button.

  `Dimension`

  `getMaximumSize()`

  Returns the maximum size of the `BasicArrowButton`.

  `Dimension`

  `getMinimumSize()`

  Returns the minimum size of the `BasicArrowButton`.

  `Dimension`

  `getPreferredSize()`

  Returns the preferred size of the `BasicArrowButton`.

  `void`

  `paint(Graphics g)`

  Invoked by Swing to draw components.

  `void`

  `setFreeStanding(boolean freeStanding)`

  Sets the free standing value.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicArrowButton](../basic/BasicArrowButton.md "class in javax.swing.plaf.basic")

  `getDirection, isFocusTraversable, paintTriangle, setDirection`

  ### Methods inherited from class javax.swing.[JButton](../../JButton.md "class in javax.swing")

  `getAccessibleContext, getUIClassID, isDefaultButton, isDefaultCapable, paramString, removeNotify, setDefaultCapable, updateUI`

  ### Methods inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, configurePropertiesFromAction, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getSelectedObjects, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, init, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setEnabled, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setModel, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MetalScrollButton

    public MetalScrollButton(int direction,
    int width,
    boolean freeStanding)

    Constructs an instance of `MetalScrollButton`.

    Parameters:
    :   `direction` - the direction
    :   `width` - the width
    :   `freeStanding` - the free standing value
* ## Method Details

  + ### setFreeStanding

    public void setFreeStanding(boolean freeStanding)

    Sets the free standing value.

    Parameters:
    :   `freeStanding` - the free standing value
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `JComponent`

    Invoked by Swing to draw components.
    Applications should not invoke `paint` directly,
    but should instead use the `repaint` method to
    schedule the component for redrawing.

    This method actually delegates the work of painting to three
    protected methods: `paintComponent`,
    `paintBorder`,
    and `paintChildren`. They're called in the order
    listed to ensure that children appear on top of component itself.
    Generally speaking, the component and its children should not
    paint in the insets area allocated to the border. Subclasses can
    just override this method, as always. A subclass that just
    wants to specialize the UI (look and feel) delegate's
    `paint` method should just override
    `paintComponent`.

    Overrides:
    :   `paint` in class `BasicArrowButton`

    Parameters:
    :   `g` - the `Graphics` context in which to paint

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](../../JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](../../JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](../../JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](../../JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](../../JComponent.md#repaint(long,int,int,int,int))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Description copied from class: `BasicArrowButton`

    Returns the preferred size of the `BasicArrowButton`.

    Overrides:
    :   `getPreferredSize` in class `BasicArrowButton`

    Returns:
    :   the preferred size

    See Also:
    :   - [`JComponent.setPreferredSize(java.awt.Dimension)`](../../JComponent.md#setPreferredSize(java.awt.Dimension))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize()

    Description copied from class: `BasicArrowButton`

    Returns the minimum size of the `BasicArrowButton`.

    Overrides:
    :   `getMinimumSize` in class `BasicArrowButton`

    Returns:
    :   the minimum size

    See Also:
    :   - [`JComponent.setMinimumSize(java.awt.Dimension)`](../../JComponent.md#setMinimumSize(java.awt.Dimension))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize()

    Description copied from class: `BasicArrowButton`

    Returns the maximum size of the `BasicArrowButton`.

    Overrides:
    :   `getMaximumSize` in class `BasicArrowButton`

    Returns:
    :   the maximum size

    See Also:
    :   - [`JComponent.setMaximumSize(java.awt.Dimension)`](../../JComponent.md#setMaximumSize(java.awt.Dimension))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")
  + ### getButtonWidth

    public int getButtonWidth()

    Returns the width of the button.

    Returns:
    :   the width of the button