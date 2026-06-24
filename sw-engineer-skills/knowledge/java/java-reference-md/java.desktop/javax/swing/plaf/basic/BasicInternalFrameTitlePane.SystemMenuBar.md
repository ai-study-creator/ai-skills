Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameTitlePane.SystemMenuBar

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.JMenuBar](../../JMenuBar.md "class in javax.swing")

javax.swing.plaf.basic.BasicInternalFrameTitlePane.SystemMenuBar

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `MenuElement`

Enclosing class:
:   `BasicInternalFrameTitlePane`

---

public class BasicInternalFrameTitlePane.SystemMenuBar
extends [JMenuBar](../../JMenuBar.md "class in javax.swing")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JMenuBar](../../JMenuBar.md "class in javax.swing")

  `JMenuBar.AccessibleJMenuBar`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

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

  `SystemMenuBar()`

  Constructs a `SystemMenuBar`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isFocusTraversable()`

  Returns whether this `Component` can become the focus
  owner.

  `boolean`

  `isOpaque()`

  Returns true if this component is completely opaque.

  `void`

  `paint(Graphics g)`

  Invoked by Swing to draw components.

  `void`

  `requestFocus()`

  Requests that this `Component` gets the input focus.

  ### Methods inherited from class javax.swing.[JMenuBar](../../JMenuBar.md "class in javax.swing")

  `add, addNotify, getAccessibleContext, getComponent, getComponentAtIndex, getComponentIndex, getHelpMenu, getMargin, getMenu, getMenuCount, getSelectionModel, getSubElements, getUI, getUIClassID, isBorderPainted, isSelected, menuSelectionChanged, paintBorder, paramString, processKeyBinding, processKeyEvent, processMouseEvent, removeNotify, setBorderPainted, setHelpMenu, setMargin, setSelected, setSelectionModel, setUI, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SystemMenuBar

    public SystemMenuBar()

    Constructs a `SystemMenuBar`.
* ## Method Details

  + ### isFocusTraversable

    public boolean isFocusTraversable()

    Description copied from class: `Component`

    Returns whether this `Component` can become the focus
    owner.

    Overrides:
    :   `isFocusTraversable` in class `Component`

    Returns:
    :   `true` if this `Component` is
        focusable; `false` otherwise

    See Also:
    :   - [`Component.setFocusable(boolean)`](../../../../java/awt/Component.md#setFocusable(boolean))
  + ### requestFocus

    public void requestFocus()

    Description copied from class: `JComponent`

    Requests that this `Component` gets the input focus.
    Refer to [`Component.requestFocus()`](../../../../java/awt/Component.md#requestFocus()) for a complete description of
    this method.

    Note that the use of this method is discouraged because
    its behavior is platform dependent. Instead we recommend the
    use of [`requestFocusInWindow()`](../../JComponent.md#requestFocusInWindow()).
    If you would like more information on focus, see
    [How to Use the Focus Subsystem](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html),
    a section in *The Java Tutorial*.

    Overrides:
    :   `requestFocus` in class `JComponent`

    See Also:
    :   - [`Component.requestFocusInWindow()`](../../../../java/awt/Component.md#requestFocusInWindow())
        - [`Component.requestFocusInWindow(boolean)`](../../../../java/awt/Component.md#requestFocusInWindow(boolean))
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
    :   `paint` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` context in which to paint

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](../../JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](../../JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](../../JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](../../JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](../../JComponent.md#repaint(long,int,int,int,int))
  + ### isOpaque

    public boolean isOpaque()

    Description copied from class: `JComponent`

    Returns true if this component is completely opaque.

    An opaque component paints every pixel within its
    rectangular bounds. A non-opaque component paints only a subset of
    its pixels or none at all, allowing the pixels underneath it to
    "show through". Therefore, a component that does not fully paint
    its pixels provides a degree of transparency.

    Subclasses that guarantee to always completely paint their contents
    should override this method and return true.

    Overrides:
    :   `isOpaque` in class `JComponent`

    Returns:
    :   true if this component is completely opaque

    See Also:
    :   - [`JComponent.setOpaque(boolean)`](../../JComponent.md#setOpaque(boolean))