Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JScrollPane.ScrollBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JScrollBar](JScrollBar.md "class in javax.swing")

javax.swing.JScrollPane.ScrollBar

All Implemented Interfaces:
:   `Adjustable`, `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `UIResource`

Enclosing class:
:   `JScrollPane`

---

protected class JScrollPane.ScrollBar
extends [JScrollBar](JScrollBar.md "class in javax.swing")
implements [UIResource](plaf/UIResource.md "interface in javax.swing.plaf")

By default `JScrollPane` creates scrollbars
that are instances
of this class. `Scrollbar` overrides the
`getUnitIncrement` and `getBlockIncrement`
methods so that, if the viewport's view is a `Scrollable`,
the view is asked to compute these values. Unless
the unit/block increment have been explicitly set.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`Scrollable`](Scrollable.md "interface in javax.swing")
    * [`JScrollPane.createVerticalScrollBar()`](JScrollPane.md#createVerticalScrollBar())
    * [`JScrollPane.createHorizontalScrollBar()`](JScrollPane.md#createHorizontalScrollBar())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JScrollBar](JScrollBar.md "class in javax.swing")

  `JScrollBar.AccessibleJScrollBar`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JScrollBar](JScrollBar.md "class in javax.swing")

  `blockIncrement, model, orientation, unitIncrement`

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.[Adjustable](../../java/awt/Adjustable.md "interface in java.awt")

  `HORIZONTAL, NO_ORIENTATION, VERTICAL`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScrollBar(int orientation)`

  Creates a scrollbar with the specified orientation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getBlockIncrement(int direction)`

  Computes the block increment for scrolling if the viewport's
  view is a `Scrollable` object.

  `int`

  `getUnitIncrement(int direction)`

  Computes the unit increment for scrolling if the viewport's
  view is a `Scrollable` object.

  `void`

  `setBlockIncrement(int blockIncrement)`

  Messages super to set the value, and resets the
  `blockIncrementSet` instance variable to true.

  `void`

  `setUnitIncrement(int unitIncrement)`

  Messages super to set the value, and resets the
  `unitIncrementSet` instance variable to true.

  ### Methods inherited from class javax.swing.[JScrollBar](JScrollBar.md "class in javax.swing")

  `addAdjustmentListener, fireAdjustmentValueChanged, getAccessibleContext, getAdjustmentListeners, getBlockIncrement, getMaximum, getMaximumSize, getMinimum, getMinimumSize, getModel, getOrientation, getUI, getUIClassID, getUnitIncrement, getValue, getValueIsAdjusting, getVisibleAmount, paramString, removeAdjustmentListener, setEnabled, setMaximum, setMinimum, setModel, setOrientation, setUI, setValue, setValueIsAdjusting, setValues, setVisibleAmount, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ScrollBar

    public ScrollBar(int orientation)

    Creates a scrollbar with the specified orientation.
    The options are:
    - `ScrollPaneConstants.VERTICAL`- `ScrollPaneConstants.HORIZONTAL`

    Parameters:
    :   `orientation` - an integer specifying one of the legal
        orientation values shown above

    Since:
    :   1.4
* ## Method Details

  + ### setUnitIncrement

    public void setUnitIncrement(int unitIncrement)

    Messages super to set the value, and resets the
    `unitIncrementSet` instance variable to true.

    Specified by:
    :   `setUnitIncrement` in interface `Adjustable`

    Overrides:
    :   `setUnitIncrement` in class `JScrollBar`

    Parameters:
    :   `unitIncrement` - the new unit increment value, in pixels

    See Also:
    :   - [`JScrollBar.getUnitIncrement(int)`](JScrollBar.md#getUnitIncrement(int))
  + ### getUnitIncrement

    public int getUnitIncrement(int direction)

    Computes the unit increment for scrolling if the viewport's
    view is a `Scrollable` object.
    Otherwise return `super.getUnitIncrement`.

    Overrides:
    :   `getUnitIncrement` in class `JScrollBar`

    Parameters:
    :   `direction` - less than zero to scroll up/left,
        greater than zero for down/right

    Returns:
    :   an integer, in pixels, containing the unit increment

    See Also:
    :   - [`Scrollable.getScrollableUnitIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableUnitIncrement(java.awt.Rectangle,int,int))
  + ### setBlockIncrement

    public void setBlockIncrement(int blockIncrement)

    Messages super to set the value, and resets the
    `blockIncrementSet` instance variable to true.

    Specified by:
    :   `setBlockIncrement` in interface `Adjustable`

    Overrides:
    :   `setBlockIncrement` in class `JScrollBar`

    Parameters:
    :   `blockIncrement` - the new block increment value, in pixels

    See Also:
    :   - [`JScrollBar.getBlockIncrement()`](JScrollBar.md#getBlockIncrement())
  + ### getBlockIncrement

    public int getBlockIncrement(int direction)

    Computes the block increment for scrolling if the viewport's
    view is a `Scrollable` object. Otherwise
    the `blockIncrement` equals the viewport's width
    or height. If there's no viewport return
    `super.getBlockIncrement`.

    Overrides:
    :   `getBlockIncrement` in class `JScrollBar`

    Parameters:
    :   `direction` - less than zero to scroll up/left,
        greater than zero for down/right

    Returns:
    :   an integer, in pixels, containing the block increment

    See Also:
    :   - [`Scrollable.getScrollableBlockIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableBlockIncrement(java.awt.Rectangle,int,int))