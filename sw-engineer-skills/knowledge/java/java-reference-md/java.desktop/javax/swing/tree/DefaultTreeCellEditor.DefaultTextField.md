Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class DefaultTreeCellEditor.DefaultTextField

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../JComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent](../text/JTextComponent.md "class in javax.swing.text")

[javax.swing.JTextField](../JTextField.md "class in javax.swing")

javax.swing.tree.DefaultTreeCellEditor.DefaultTextField

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`, `SwingConstants`

Enclosing class:
:   `DefaultTreeCellEditor`

---

public class DefaultTreeCellEditor.DefaultTextField
extends [JTextField](../JTextField.md "class in javax.swing")

`TextField` used when no editor is supplied.
This textfield locks into the border it is constructed with.
It also prefers its parents font over its font. And if the
renderer is not `null` and no font
has been specified the preferred height is that of the renderer.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JTextField](../JTextField.md "class in javax.swing")

  `JTextField.AccessibleJTextField`

  ## Nested classes/interfaces inherited from class javax.swing.text.[JTextComponent](../text/JTextComponent.md "class in javax.swing.text")

  `JTextComponent.AccessibleJTextComponent, JTextComponent.DropLocation, JTextComponent.KeyBinding`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Border`

  `border`

  Border to use.

  ### Fields inherited from class javax.swing.[JTextField](../JTextField.md "class in javax.swing")

  `notifyAction`

  ### Fields inherited from class javax.swing.text.[JTextComponent](../text/JTextComponent.md "class in javax.swing.text")

  `DEFAULT_KEYMAP, FOCUS_ACCELERATOR_KEY`

  ### Fields inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultTextField(Border border)`

  Constructs a
  `DefaultTreeCellEditor.DefaultTextField` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Border`

  `getBorder()`

  Overrides `JComponent.getBorder` to
  returns the current border.

  `Font`

  `getFont()`

  Gets the font of this component.

  `Dimension`

  `getPreferredSize()`

  Overrides `JTextField.getPreferredSize` to
  return the preferred size based on current font, if set,
  or else use renderer's font.

  `void`

  `setBorder(Border border)`

  Sets the border of this component.

  ### Methods inherited from class javax.swing.[JTextField](../JTextField.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, configurePropertiesFromAction, createActionPropertyChangeListener, createDefaultModel, fireActionPerformed, getAccessibleContext, getAction, getActionListeners, getActions, getColumns, getColumnWidth, getHorizontalAlignment, getHorizontalVisibility, getScrollOffset, getUIClassID, isValidateRoot, paramString, postActionEvent, removeActionListener, scrollRectToVisible, setAction, setActionCommand, setColumns, setDocument, setFont, setHorizontalAlignment, setScrollOffset`

  ### Methods inherited from class javax.swing.text.[JTextComponent](../text/JTextComponent.md "class in javax.swing.text")

  `addCaretListener, addInputMethodListener, addKeymap, copy, cut, fireCaretUpdate, getCaret, getCaretColor, getCaretListeners, getCaretPosition, getDisabledTextColor, getDocument, getDragEnabled, getDropLocation, getDropMode, getFocusAccelerator, getHighlighter, getInputMethodRequests, getKeymap, getKeymap, getMargin, getNavigationFilter, getPreferredScrollableViewportSize, getPrintable, getScrollableBlockIncrement, getScrollableTracksViewportHeight, getScrollableTracksViewportWidth, getScrollableUnitIncrement, getSelectedText, getSelectedTextColor, getSelectionColor, getSelectionEnd, getSelectionStart, getText, getText, getToolTipText, getUI, isEditable, loadKeymap, modelToView, modelToView2D, moveCaretPosition, paste, print, print, print, processInputMethodEvent, read, removeCaretListener, removeKeymap, removeNotify, replaceSelection, restoreComposedText, saveComposedText, select, selectAll, setCaret, setCaretColor, setCaretPosition, setComponentOrientation, setDisabledTextColor, setDragEnabled, setDropMode, setEditable, setFocusAccelerator, setHighlighter, setKeymap, setMargin, setNavigationFilter, setSelectedTextColor, setSelectionColor, setSelectionEnd, setSelectionStart, setText, setUI, updateUI, viewToModel, viewToModel2D, write`

  ### Methods inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### border

    protected [Border](../border/Border.md "interface in javax.swing.border") border

    Border to use.
* ## Constructor Details

  + ### DefaultTextField

    public DefaultTextField([Border](../border/Border.md "interface in javax.swing.border") border)

    Constructs a
    `DefaultTreeCellEditor.DefaultTextField` object.

    Parameters:
    :   `border` - a `Border` object

    Since:
    :   1.4
* ## Method Details

  + ### setBorder

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../../java/beans/BeanProperty.md#preferred())=true,
    [visualUpdate](../../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../../java/beans/BeanProperty.md#description())="The component\'s border.")
    public void setBorder([Border](../border/Border.md "interface in javax.swing.border") border)

    Sets the border of this component.

    This is a bound property.

    Overrides:
    :   `setBorder` in class `JComponent`

    Parameters:
    :   `border` - the border to be rendered for this component

    See Also:
    :   - [`Border`](../border/Border.md "interface in javax.swing.border")
        - [`CompoundBorder`](../border/CompoundBorder.md "class in javax.swing.border")
  + ### getBorder

    public [Border](../border/Border.md "interface in javax.swing.border") getBorder()

    Overrides `JComponent.getBorder` to
    returns the current border.

    Overrides:
    :   `getBorder` in class `JComponent`

    Returns:
    :   the border object for this component

    See Also:
    :   - [`JComponent.setBorder(javax.swing.border.Border)`](../JComponent.md#setBorder(javax.swing.border.Border))
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont()

    Description copied from class: `Component`

    Gets the font of this component.

    Specified by:
    :   `getFont` in interface `MenuContainer`

    Overrides:
    :   `getFont` in class `Component`

    Returns:
    :   this component's font; if a font has not been set
        for this component, the font of its parent is returned

    See Also:
    :   - [`Component.setFont(java.awt.Font)`](../../../java/awt/Component.md#setFont(java.awt.Font))
  + ### getPreferredSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Overrides `JTextField.getPreferredSize` to
    return the preferred size based on current font, if set,
    or else use renderer's font.

    Overrides:
    :   `getPreferredSize` in class `JTextField`

    Returns:
    :   a `Dimension` object containing
        the preferred size

    See Also:
    :   - [`JComponent.setPreferredSize(java.awt.Dimension)`](../JComponent.md#setPreferredSize(java.awt.Dimension))
        - [`ComponentUI`](../plaf/ComponentUI.md "class in javax.swing.plaf")