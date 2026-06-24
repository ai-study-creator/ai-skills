Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToolBarUI.DragWindow

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[java.awt.Window](../../../../java/awt/Window.md "class in java.awt")

javax.swing.plaf.basic.BasicToolBarUI.DragWindow

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

Enclosing class:
:   `BasicToolBarUI`

---

protected class BasicToolBarUI.DragWindow
extends [Window](../../../../java/awt/Window.md "class in java.awt")

The window which appears during dragging the `JToolBar`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Window](../../../../java/awt/Window.md "class in java.awt")

  `Window.AccessibleAWTWindow, Window.Type`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Color`

  `getBorderColor()`

  Returns the border color.

  `Insets`

  `getInsets()`

  Determines the insets of this container, which indicate the size
  of the container's border.

  `Point`

  `getOffset()`

  Returns the offset.

  `int`

  `getOrientation()`

  Returns the orientation of the toolbar window when the toolbar is
  floating.

  `void`

  `paint(Graphics g)`

  Paints the container.

  `void`

  `setBorderColor(Color c)`

  Sets the border color.

  `void`

  `setOffset(Point p)`

  Sets the offset.

  `void`

  `setOrientation(int o)`

  Sets the orientation.

  ### Methods inherited from class java.awt.[Window](../../../../java/awt/Window.md "class in java.awt")

  `addNotify, addPropertyChangeListener, addPropertyChangeListener, addWindowFocusListener, addWindowListener, addWindowStateListener, applyResourceBundle, applyResourceBundle, createBufferStrategy, createBufferStrategy, dispose, getAccessibleContext, getBackground, getBufferStrategy, getFocusableWindowState, getFocusCycleRootAncestor, getFocusOwner, getFocusTraversalKeys, getIconImages, getInputContext, getListeners, getLocale, getModalExclusionType, getMostRecentFocusOwner, getOpacity, getOwnedWindows, getOwner, getOwnerlessWindows, getShape, getToolkit, getType, getWarningString, getWindowFocusListeners, getWindowListeners, getWindows, getWindowStateListeners, hide, isActive, isAlwaysOnTop, isAlwaysOnTopSupported, isAutoRequestFocus, isFocusableWindow, isFocusCycleRoot, isFocused, isLocationByPlatform, isOpaque, isShowing, isValidateRoot, pack, postEvent, processEvent, processWindowEvent, processWindowFocusEvent, processWindowStateEvent, removeNotify, removeWindowFocusListener, removeWindowListener, removeWindowStateListener, reshape, setAlwaysOnTop, setAutoRequestFocus, setBackground, setBounds, setBounds, setCursor, setFocusableWindowState, setFocusCycleRoot, setIconImage, setIconImages, setLocation, setLocation, setLocationByPlatform, setLocationRelativeTo, setMinimumSize, setModalExclusionType, setOpacity, setShape, setSize, setSize, setType, setVisible, show, toBack, toFront`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalPolicy, getLayout, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, paramString, preferredSize, print, printComponents, processContainerEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, update, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, resize, resize, revalidate, setComponentOrientation, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setMaximumSize, setMixingCutoutShape, setName, setPreferredSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getOrientation

    public int getOrientation()

    Returns the orientation of the toolbar window when the toolbar is
    floating. The orientation is either one of `JToolBar.HORIZONTAL`
    or `JToolBar.VERTICAL`.

    Returns:
    :   the orientation of the toolbar window

    Since:
    :   1.6
  + ### setOrientation

    public void setOrientation(int o)

    Sets the orientation.

    Parameters:
    :   `o` - the new orientation
  + ### getOffset

    public [Point](../../../../java/awt/Point.md "class in java.awt") getOffset()

    Returns the offset.

    Returns:
    :   the offset
  + ### setOffset

    public void setOffset([Point](../../../../java/awt/Point.md "class in java.awt") p)

    Sets the offset.

    Parameters:
    :   `p` - the new offset
  + ### setBorderColor

    public void setBorderColor([Color](../../../../java/awt/Color.md "class in java.awt") c)

    Sets the border color.

    Parameters:
    :   `c` - the new border color
  + ### getBorderColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") getBorderColor()

    Returns the border color.

    Returns:
    :   the border color
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `Window`

    Paints the container. This forwards the paint to any lightweight
    components that are children of this container. If this method is
    reimplemented, super.paint(g) should be called so that lightweight
    components are properly rendered. If a child component is entirely
    clipped by the current clipping setting in g, paint() will not be
    forwarded to that child.

    Overrides:
    :   `paint` in class `Window`

    Parameters:
    :   `g` - the specified Graphics window

    See Also:
    :   - [`Component.update(Graphics)`](../../../../java/awt/Component.md#update(java.awt.Graphics))
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets()

    Description copied from class: `Container`

    Determines the insets of this container, which indicate the size
    of the container's border.

    A `Frame` object, for example, has a top inset that
    corresponds to the height of the frame's title bar.

    Overrides:
    :   `getInsets` in class `Container`

    Returns:
    :   the insets of this container.

    See Also:
    :   - [`Insets`](../../../../java/awt/Insets.md "class in java.awt")
        - [`LayoutManager`](../../../../java/awt/LayoutManager.md "interface in java.awt")