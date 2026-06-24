Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSpinner.NumberEditor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JPanel](JPanel.md "class in javax.swing")

[javax.swing.JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

javax.swing.JSpinner.NumberEditor

All Implemented Interfaces:
:   `ImageObserver`, `LayoutManager`, `MenuContainer`, `PropertyChangeListener`, `Serializable`, `EventListener`, `Accessible`, `ChangeListener`

Enclosing class:
:   `JSpinner`

---

public static class JSpinner.NumberEditor
extends [JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

An editor for a `JSpinner` whose model is a
`SpinnerNumberModel`. The value of the editor is
displayed with a `JFormattedTextField` whose format
is defined by a `NumberFormatter` instance whose
`minimum` and `maximum` properties
are mapped to the `SpinnerNumberModel`.

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

  `NumberEditor(JSpinner spinner)`

  Construct a `JSpinner` editor that supports displaying
  and editing the value of a `SpinnerNumberModel`
  with a `JFormattedTextField`.

  `NumberEditor(JSpinner spinner,
  String decimalFormatPattern)`

  Construct a `JSpinner` editor that supports displaying
  and editing the value of a `SpinnerNumberModel`
  with a `JFormattedTextField`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DecimalFormat`

  `getFormat()`

  Returns the `java.text.DecimalFormat` object the
  `JFormattedTextField` uses to parse and format
  numbers.

  `SpinnerNumberModel`

  `getModel()`

  Return our spinner ancestor's `SpinnerNumberModel`.

  `void`

  `setComponentOrientation(ComponentOrientation o)`

  Sets the language-sensitive orientation that is to be used to order
  the elements or text within this component.

  ### Methods inherited from class javax.swing.[JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

  `addLayoutComponent, commitEdit, dismiss, getBaseline, getBaselineResizeBehavior, getSpinner, getTextField, layoutContainer, minimumLayoutSize, preferredLayoutSize, propertyChange, removeLayoutComponent, stateChanged`

  ### Methods inherited from class javax.swing.[JPanel](JPanel.md "class in javax.swing")

  `getAccessibleContext, getUI, getUIClassID, paramString, setUI, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NumberEditor

    public NumberEditor([JSpinner](JSpinner.md "class in javax.swing") spinner)

    Construct a `JSpinner` editor that supports displaying
    and editing the value of a `SpinnerNumberModel`
    with a `JFormattedTextField`. `This`
    `NumberEditor` becomes both a `ChangeListener`
    on the spinner and a `PropertyChangeListener`
    on the new `JFormattedTextField`.

    Parameters:
    :   `spinner` - the spinner whose model `this` editor will monitor

    Throws:
    :   `IllegalArgumentException` - if the spinners model is not
        an instance of `SpinnerNumberModel`

    See Also:
    :   - [`getModel()`](#getModel())
        - [`getFormat()`](#getFormat())
        - [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
  + ### NumberEditor

    public NumberEditor([JSpinner](JSpinner.md "class in javax.swing") spinner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") decimalFormatPattern)

    Construct a `JSpinner` editor that supports displaying
    and editing the value of a `SpinnerNumberModel`
    with a `JFormattedTextField`. `This`
    `NumberEditor` becomes both a `ChangeListener`
    on the spinner and a `PropertyChangeListener`
    on the new `JFormattedTextField`.

    Parameters:
    :   `spinner` - the spinner whose model `this` editor will monitor
    :   `decimalFormatPattern` - the initial pattern for the
        `DecimalFormat` object that's used to display
        and parse the value of the text field.

    Throws:
    :   `IllegalArgumentException` - if the spinners model is not
        an instance of `SpinnerNumberModel` or if
        `decimalFormatPattern` is not a legal
        argument to `DecimalFormat`

    See Also:
    :   - [`JSpinner.DefaultEditor.getTextField()`](JSpinner.DefaultEditor.md#getTextField())
        - [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
        - [`DecimalFormat`](../../../java.base/java/text/DecimalFormat.md "class in java.text")
* ## Method Details

  + ### getFormat

    public [DecimalFormat](../../../java.base/java/text/DecimalFormat.md "class in java.text") getFormat()

    Returns the `java.text.DecimalFormat` object the
    `JFormattedTextField` uses to parse and format
    numbers.

    Returns:
    :   the value of `getTextField().getFormatter().getFormat()`.

    See Also:
    :   - [`JSpinner.DefaultEditor.getTextField()`](JSpinner.DefaultEditor.md#getTextField())
        - [`DecimalFormat`](../../../java.base/java/text/DecimalFormat.md "class in java.text")
  + ### getModel

    public [SpinnerNumberModel](SpinnerNumberModel.md "class in javax.swing") getModel()

    Return our spinner ancestor's `SpinnerNumberModel`.

    Returns:
    :   `getSpinner().getModel()`

    See Also:
    :   - [`JSpinner.DefaultEditor.getSpinner()`](JSpinner.DefaultEditor.md#getSpinner())
        - [`JSpinner.DefaultEditor.getTextField()`](JSpinner.DefaultEditor.md#getTextField())
  + ### setComponentOrientation

    public void setComponentOrientation([ComponentOrientation](../../java/awt/ComponentOrientation.md "class in java.awt") o)

    Sets the language-sensitive orientation that is to be used to order
    the elements or text within this component. Language-sensitive
    `LayoutManager` and `Component`
    subclasses will use this property to
    determine how to lay out and draw components.

    At construction time, a component's orientation is set to
    `ComponentOrientation.UNKNOWN`,
    indicating that it has not been specified
    explicitly. The UNKNOWN orientation behaves the same as
    `ComponentOrientation.LEFT_TO_RIGHT`.

    To set the orientation of a single component, use this method.
    To set the orientation of an entire component
    hierarchy, use
    [`applyComponentOrientation`](../../java/awt/Component.md#applyComponentOrientation(java.awt.ComponentOrientation)).

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy.

    Overrides:
    :   `setComponentOrientation` in class `Component`

    Parameters:
    :   `o` - the orientation to be set

    See Also:
    :   - [`ComponentOrientation`](../../java/awt/ComponentOrientation.md "class in java.awt")
        - [`Component.invalidate()`](../../java/awt/Component.md#invalidate())