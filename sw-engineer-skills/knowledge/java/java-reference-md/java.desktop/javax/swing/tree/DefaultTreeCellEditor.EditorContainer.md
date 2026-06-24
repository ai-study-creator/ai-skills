Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class DefaultTreeCellEditor.EditorContainer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

javax.swing.tree.DefaultTreeCellEditor.EditorContainer

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`

Enclosing class:
:   `DefaultTreeCellEditor`

---

public class DefaultTreeCellEditor.EditorContainer
extends [Container](../../../java/awt/Container.md "class in java.awt")

Container responsible for placing the `editingComponent`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EditorContainer()`

  Constructs an `EditorContainer` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `doLayout()`

  Lays out this `Container`.

  `void`

  `EditorContainer()`

  Do not use.

  `Dimension`

  `getPreferredSize()`

  Returns the preferred size for the `Container`.

  `void`

  `paint(Graphics g)`

  Overrides `Container.paint` to paint the node's
  icon and use the selection color for the background.

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addNotify, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getInsets, getLayout, getListeners, getMaximumSize, getMinimumSize, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, isValidateRoot, layout, list, list, locate, minimumSize, paintComponents, paramString, preferredSize, print, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, removeNotify, setComponentZOrder, setFocusCycleRoot, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, update, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAccessibleContext, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EditorContainer

    public EditorContainer()

    Constructs an `EditorContainer` object.
* ## Method Details

  + ### EditorContainer

    public void EditorContainer()

    Do not use.
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Overrides `Container.paint` to paint the node's
    icon and use the selection color for the background.

    Overrides:
    :   `paint` in class `Container`

    Parameters:
    :   `g` - the specified Graphics window

    See Also:
    :   - [`Component.update(Graphics)`](../../../java/awt/Component.md#update(java.awt.Graphics))
  + ### doLayout

    public void doLayout()

    Lays out this `Container`. If editing,
    the editor will be placed at
    `offset` in the x direction and 0 for y.

    Overrides:
    :   `doLayout` in class `Container`

    See Also:
    :   - [`LayoutManager.layoutContainer(java.awt.Container)`](../../../java/awt/LayoutManager.md#layoutContainer(java.awt.Container))
        - [`Container.setLayout(java.awt.LayoutManager)`](../../../java/awt/Container.md#setLayout(java.awt.LayoutManager))
        - [`Container.validate()`](../../../java/awt/Container.md#validate())
  + ### getPreferredSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Returns the preferred size for the `Container`.
    This will be at least preferred size of the editor plus
    `offset`.

    Overrides:
    :   `getPreferredSize` in class `Container`

    Returns:
    :   a `Dimension` containing the preferred
        size for the `Container`; if
        `editingComponent` is `null` the
        `Dimension` returned is 0, 0

    See Also:
    :   - [`Container.getMinimumSize()`](../../../java/awt/Container.md#getMinimumSize())
        - [`Container.getMaximumSize()`](../../../java/awt/Container.md#getMaximumSize())
        - [`Container.getLayout()`](../../../java/awt/Container.md#getLayout())
        - [`LayoutManager.preferredLayoutSize(Container)`](../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
        - [`Component.getPreferredSize()`](../../../java/awt/Component.md#getPreferredSize())