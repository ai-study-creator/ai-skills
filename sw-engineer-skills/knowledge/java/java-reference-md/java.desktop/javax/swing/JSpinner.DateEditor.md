Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSpinner.DateEditor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JPanel](JPanel.md "class in javax.swing")

[javax.swing.JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

javax.swing.JSpinner.DateEditor

All Implemented Interfaces:
:   `ImageObserver`, `LayoutManager`, `MenuContainer`, `PropertyChangeListener`, `Serializable`, `EventListener`, `Accessible`, `ChangeListener`

Enclosing class:
:   `JSpinner`

---

public static class JSpinner.DateEditor
extends [JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

An editor for a `JSpinner` whose model is a
`SpinnerDateModel`. The value of the editor is
displayed with a `JFormattedTextField` whose format
is defined by a `DateFormatter` instance whose
`minimum` and `maximum` properties
are mapped to the `SpinnerDateModel`.

Since:
:   1.4

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JPanel](JPanel.md "class in javax.swing")

  `JPanel.AccessibleJPanel`

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

  `DateEditor(JSpinner spinner)`

  Construct a `JSpinner` editor that supports displaying
  and editing the value of a `SpinnerDateModel`
  with a `JFormattedTextField`.

  `DateEditor(JSpinner spinner,
  String dateFormatPattern)`

  Construct a `JSpinner` editor that supports displaying
  and editing the value of a `SpinnerDateModel`
  with a `JFormattedTextField`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SimpleDateFormat`

  `getFormat()`

  Returns the `java.text.SimpleDateFormat` object the
  `JFormattedTextField` uses to parse and format
  numbers.

  `SpinnerDateModel`

  `getModel()`

  Return our spinner ancestor's `SpinnerDateModel`.

  ### Methods inherited from class javax.swing.[JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

  `addLayoutComponent, commitEdit, dismiss, getBaseline, getBaselineResizeBehavior, getSpinner, getTextField, layoutContainer, minimumLayoutSize, preferredLayoutSize, propertyChange, removeLayoutComponent, stateChanged`

  ### Methods inherited from class javax.swing.[JPanel](JPanel.md "class in javax.swing")

  `getAccessibleContext, getUI, getUIClassID, paramString, setUI, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DateEditor

    public DateEditor([JSpinner](JSpinner.md "class in javax.swing") spinner)

    Construct a `JSpinner` editor that supports displaying
    and editing the value of a `SpinnerDateModel`
    with a `JFormattedTextField`. `This`
    `DateEditor` becomes both a `ChangeListener`
    on the spinner and a `PropertyChangeListener`
    on the new `JFormattedTextField`.

    Parameters:
    :   `spinner` - the spinner whose model `this` editor will monitor

    Throws:
    :   `IllegalArgumentException` - if the spinners model is not
        an instance of `SpinnerDateModel`

    See Also:
    :   - [`getModel()`](#getModel())
        - [`getFormat()`](#getFormat())
        - [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")
  + ### DateEditor

    public DateEditor([JSpinner](JSpinner.md "class in javax.swing") spinner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") dateFormatPattern)

    Construct a `JSpinner` editor that supports displaying
    and editing the value of a `SpinnerDateModel`
    with a `JFormattedTextField`. `This`
    `DateEditor` becomes both a `ChangeListener`
    on the spinner and a `PropertyChangeListener`
    on the new `JFormattedTextField`.

    Parameters:
    :   `spinner` - the spinner whose model `this` editor will monitor
    :   `dateFormatPattern` - the initial pattern for the
        `SimpleDateFormat` object that's used to display
        and parse the value of the text field.

    Throws:
    :   `IllegalArgumentException` - if the spinners model is not
        an instance of `SpinnerDateModel`

    See Also:
    :   - [`getModel()`](#getModel())
        - [`getFormat()`](#getFormat())
        - [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")
        - [`SimpleDateFormat`](../../../java.base/java/text/SimpleDateFormat.md "class in java.text")
* ## Method Details

  + ### getFormat

    public [SimpleDateFormat](../../../java.base/java/text/SimpleDateFormat.md "class in java.text") getFormat()

    Returns the `java.text.SimpleDateFormat` object the
    `JFormattedTextField` uses to parse and format
    numbers.

    Returns:
    :   the value of `getTextField().getFormatter().getFormat()`.

    See Also:
    :   - [`JSpinner.DefaultEditor.getTextField()`](JSpinner.DefaultEditor.md#getTextField())
        - [`SimpleDateFormat`](../../../java.base/java/text/SimpleDateFormat.md "class in java.text")
  + ### getModel

    public [SpinnerDateModel](SpinnerDateModel.md "class in javax.swing") getModel()

    Return our spinner ancestor's `SpinnerDateModel`.

    Returns:
    :   `getSpinner().getModel()`

    See Also:
    :   - [`JSpinner.DefaultEditor.getSpinner()`](JSpinner.DefaultEditor.md#getSpinner())
        - [`JSpinner.DefaultEditor.getTextField()`](JSpinner.DefaultEditor.md#getTextField())