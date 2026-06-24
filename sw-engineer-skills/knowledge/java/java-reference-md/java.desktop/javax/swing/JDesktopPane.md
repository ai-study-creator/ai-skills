Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JDesktopPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JLayeredPane](JLayeredPane.md "class in javax.swing")

javax.swing.JDesktopPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI")
public class JDesktopPane
extends [JLayeredPane](JLayeredPane.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A container used to create a multiple-document interface or a virtual desktop.
You create `JInternalFrame` objects and add them to the
`JDesktopPane`. `JDesktopPane` extends
`JLayeredPane` to manage the potentially overlapping internal
frames. It also maintains a reference to an instance of
`DesktopManager` that is set by the UI
class for the current look and feel (L&F). Note that `JDesktopPane`
does not support borders.

This class is normally used as the parent of `JInternalFrames`
to provide a pluggable `DesktopManager` object to the
`JInternalFrames`. The `installUI` of the
L&F specific implementation is responsible for setting the
`desktopManager` variable appropriately.
When the parent of a `JInternalFrame` is a `JDesktopPane`,
it should delegate most of its behavior to the `desktopManager`
(closing, resizing, etc).

For further documentation and examples see
[How to Use Internal Frames](https://docs.oracle.com/javase/tutorial/uiswing/components/internalframe.html),
a section in *The Java Tutorial*.

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`JInternalFrame`](JInternalFrame.md "class in javax.swing")
    * [`JInternalFrame.JDesktopIcon`](JInternalFrame.JDesktopIcon.md "class in javax.swing")
    * [`DesktopManager`](DesktopManager.md "interface in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JDesktopPane.AccessibleJDesktopPane`

  This class implements accessibility support for the
  `JDesktopPane` class.

  ## Nested classes/interfaces inherited from class javax.swing.[JLayeredPane](JLayeredPane.md "class in javax.swing")

  `JLayeredPane.AccessibleJLayeredPane`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `LIVE_DRAG_MODE`

  Indicates that the entire contents of the item being dragged
  should appear inside the desktop pane.

  `static final int`

  `OUTLINE_DRAG_MODE`

  Indicates that an outline only of the item being dragged
  should appear inside the desktop pane.

  ### Fields inherited from class javax.swing.[JLayeredPane](JLayeredPane.md "class in javax.swing")

  `DEFAULT_LAYER, DRAG_LAYER, FRAME_CONTENT_LAYER, LAYER_PROPERTY, MODAL_LAYER, PALETTE_LAYER, POPUP_LAYER`

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

  `JDesktopPane()`

  Creates a new `JDesktopPane`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  Adds the specified component to this container at the specified
  index.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `JDesktopPane`.

  `JInternalFrame[]`

  `getAllFrames()`

  Returns all `JInternalFrames` currently displayed in the
  desktop.

  `JInternalFrame[]`

  `getAllFramesInLayer(int layer)`

  Returns all `JInternalFrames` currently displayed in the
  specified layer of the desktop.

  `DesktopManager`

  `getDesktopManager()`

  Returns the `DesktopManger` that handles
  desktop-specific UI actions.

  `int`

  `getDragMode()`

  Gets the current "dragging style" used by the desktop pane.

  `JInternalFrame`

  `getSelectedFrame()`

  Returns the currently active `JInternalFrame`
  in this `JDesktopPane`, or `null`
  if no `JInternalFrame` is currently active.

  `DesktopPaneUI`

  `getUI()`

  Returns the L&F object that renders this component.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `protected String`

  `paramString()`

  Returns a string representation of this `JDesktopPane`.

  `void`

  `remove(int index)`

  Remove the indexed component from this pane.

  `void`

  `remove(Component comp)`

  Removes the specified component from this container.

  `void`

  `removeAll()`

  Removes all the components from this container.

  `JInternalFrame`

  `selectFrame(boolean forward)`

  Selects the next `JInternalFrame` in this desktop pane.

  `void`

  `setComponentZOrder(Component comp,
  int index)`

  Moves the specified component to the specified z-order index in
  the container.

  `void`

  `setDesktopManager(DesktopManager d)`

  Sets the `DesktopManger` that will handle
  desktop-specific UI actions.

  `void`

  `setDragMode(int dragMode)`

  Sets the "dragging style" used by the desktop pane.

  `void`

  `setSelectedFrame(JInternalFrame f)`

  Sets the currently active `JInternalFrame`
  in this `JDesktopPane`.

  `void`

  `setUI(DesktopPaneUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `updateUI()`

  Notification from the `UIManager` that the L&F has changed.

  ### Methods inherited from class javax.swing.[JLayeredPane](JLayeredPane.md "class in javax.swing")

  `getComponentCountInLayer, getComponentsInLayer, getComponentToLayer, getIndexOf, getLayer, getLayer, getLayeredPaneAbove, getObjectForLayer, getPosition, highestLayer, insertIndexForLayer, isOptimizedDrawingEnabled, lowestLayer, moveToBack, moveToFront, paint, putLayer, setLayer, setLayer, setPosition`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, removeContainerListener, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LIVE\_DRAG\_MODE

    public static final int LIVE\_DRAG\_MODE

    Indicates that the entire contents of the item being dragged
    should appear inside the desktop pane.

    See Also:
    :   - [`OUTLINE_DRAG_MODE`](#OUTLINE_DRAG_MODE)
        - [`setDragMode(int)`](#setDragMode(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JDesktopPane.LIVE_DRAG_MODE)
  + ### OUTLINE\_DRAG\_MODE

    public static final int OUTLINE\_DRAG\_MODE

    Indicates that an outline only of the item being dragged
    should appear inside the desktop pane.

    See Also:
    :   - [`LIVE_DRAG_MODE`](#LIVE_DRAG_MODE)
        - [`setDragMode(int)`](#setDragMode(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JDesktopPane.OUTLINE_DRAG_MODE)
* ## Constructor Details

  + ### JDesktopPane

    public JDesktopPane()

    Creates a new `JDesktopPane`.
* ## Method Details

  + ### getUI

    public [DesktopPaneUI](plaf/DesktopPaneUI.md "class in javax.swing.plaf") getUI()

    Returns the L&F object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `DesktopPaneUI` object that
        renders this component
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([DesktopPaneUI](plaf/DesktopPaneUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the DesktopPaneUI L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setDragMode

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JDesktopPane.LIVE\_DRAG\_MODE","JDesktopPane.OUTLINE\_DRAG\_MODE"},
    [description](../../java/beans/BeanProperty.md#description())="Dragging style for internal frame children.")
    public void setDragMode(int dragMode)

    Sets the "dragging style" used by the desktop pane.
    You may want to change to one mode or another for
    performance or aesthetic reasons.

    Parameters:
    :   `dragMode` - the style of drag to use for items in the Desktop

    Since:
    :   1.3

    See Also:
    :   - [`LIVE_DRAG_MODE`](#LIVE_DRAG_MODE)
        - [`OUTLINE_DRAG_MODE`](#OUTLINE_DRAG_MODE)
  + ### getDragMode

    public int getDragMode()

    Gets the current "dragging style" used by the desktop pane.

    Returns:
    :   either `Live_DRAG_MODE` or
        `OUTLINE_DRAG_MODE`

    Since:
    :   1.3

    See Also:
    :   - [`setDragMode(int)`](#setDragMode(int))
  + ### getDesktopManager

    public [DesktopManager](DesktopManager.md "interface in javax.swing") getDesktopManager()

    Returns the `DesktopManger` that handles
    desktop-specific UI actions.

    Returns:
    :   the `DesktopManger` that handles desktop-specific
        UI actions
  + ### setDesktopManager

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Desktop manager to handle the internal frames in the desktop pane.")
    public void setDesktopManager([DesktopManager](DesktopManager.md "interface in javax.swing") d)

    Sets the `DesktopManger` that will handle
    desktop-specific UI actions. This may be overridden by
    `LookAndFeel`.

    Parameters:
    :   `d` - the `DesktopManager` to use
  + ### updateUI

    public void updateUI()

    Notification from the `UIManager` that the L&F has changed.
    Replaces the current UI object with the latest version from the
    `UIManager`.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "DesktopPaneUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getAllFrames

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [JInternalFrame](JInternalFrame.md "class in javax.swing")[] getAllFrames()

    Returns all `JInternalFrames` currently displayed in the
    desktop. Returns iconified frames as well as expanded frames.

    Returns:
    :   an array of `JInternalFrame` objects
  + ### getSelectedFrame

    public [JInternalFrame](JInternalFrame.md "class in javax.swing") getSelectedFrame()

    Returns the currently active `JInternalFrame`
    in this `JDesktopPane`, or `null`
    if no `JInternalFrame` is currently active.

    Returns:
    :   the currently active `JInternalFrame` or
        `null`

    Since:
    :   1.3
  + ### setSelectedFrame

    public void setSelectedFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Sets the currently active `JInternalFrame`
    in this `JDesktopPane`. This method is used to bridge
    the package gap between JDesktopPane and the platform implementation
    code and should not be called directly. To visually select the frame
    the client must call JInternalFrame.setSelected(true) to activate
    the frame.

    Parameters:
    :   `f` - the internal frame that's currently selected

    Since:
    :   1.3

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](JInternalFrame.md#setSelected(boolean))
  + ### getAllFramesInLayer

    public [JInternalFrame](JInternalFrame.md "class in javax.swing")[] getAllFramesInLayer(int layer)

    Returns all `JInternalFrames` currently displayed in the
    specified layer of the desktop. Returns iconified frames as well
    expanded frames.

    Parameters:
    :   `layer` - an int specifying the desktop layer

    Returns:
    :   an array of `JInternalFrame` objects

    See Also:
    :   - [`JLayeredPane`](JLayeredPane.md "class in javax.swing")
  + ### remove

    public void remove([Component](../../java/awt/Component.md "class in java.awt") comp)

    Removes the specified component from this container.
    This method also notifies the layout manager to remove the
    component from this container's layout via the
    `removeLayoutComponent` method.

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy. If the container has already been
    displayed, the hierarchy must be validated thereafter in order to
    reflect the changes.

    Overrides:
    :   `remove` in class `Container`

    Parameters:
    :   `comp` - the component to be removed

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`Container.remove(int)`](../../java/awt/Container.md#remove(int))
  + ### selectFrame

    public [JInternalFrame](JInternalFrame.md "class in javax.swing") selectFrame(boolean forward)

    Selects the next `JInternalFrame` in this desktop pane.

    Parameters:
    :   `forward` - a boolean indicating which direction to select in;
        `true` for forward, `false` for
        backward

    Returns:
    :   the JInternalFrame that was selected or `null`
        if nothing was selected

    Since:
    :   1.6
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    Adds the specified component to this container at the specified
    index. This method also notifies the layout manager to add
    the component to this container's layout using the specified
    constraints object via the `addLayoutComponent`
    method.

    The constraints are
    defined by the particular layout manager being used. For
    example, the `BorderLayout` class defines five
    constraints: `BorderLayout.NORTH`,
    `BorderLayout.SOUTH`, `BorderLayout.EAST`,
    `BorderLayout.WEST`, and `BorderLayout.CENTER`.

    The `GridBagLayout` class requires a
    `GridBagConstraints` object. Failure to pass
    the correct type of constraints object results in an
    `IllegalArgumentException`.

    If the current layout manager implements `LayoutManager2`, then
    [`LayoutManager2.addLayoutComponent(Component,Object)`](../../java/awt/LayoutManager2.md#addLayoutComponent(java.awt.Component,java.lang.Object)) is invoked on
    it. If the current layout manager does not implement
    `LayoutManager2`, and constraints is a `String`, then
    [`LayoutManager.addLayoutComponent(String,Component)`](../../java/awt/LayoutManager.md#addLayoutComponent(java.lang.String,java.awt.Component)) is invoked on it.

    If the component is not an ancestor of this container and has a non-null
    parent, it is removed from its current parent before it is added to this
    container.

    This is the method to override if a program needs to track
    every add request to a container as all other add methods defer
    to this one. An overriding method should
    usually include a call to the superclass's version of the method:
    > `super.addImpl(comp, constraints, index)`

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy. If the container has already been
    displayed, the hierarchy must be validated thereafter in order to
    display the added component.

    Overrides:
    :   `addImpl` in class `JLayeredPane`

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - an object expressing layout constraints
        for this component
    :   `index` - the position in the container's list at which to
        insert the component, where `-1`
        means append to the end

    Since:
    :   1.6

    See Also:
    :   - [`Container.add(Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.add(Component, int)`](../../java/awt/Container.md#add(java.awt.Component,int))
        - [`Container.add(Component, java.lang.Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### remove

    public void remove(int index)

    Remove the indexed component from this pane.
    This is the absolute index, ignoring layers.

    Overrides:
    :   `remove` in class `JLayeredPane`

    Parameters:
    :   `index` - an int specifying the component to remove

    Since:
    :   1.6

    See Also:
    :   - [`JLayeredPane.getIndexOf(java.awt.Component)`](JLayeredPane.md#getIndexOf(java.awt.Component))
  + ### removeAll

    public void removeAll()

    Removes all the components from this container.

    Overrides:
    :   `removeAll` in class `JLayeredPane`

    Since:
    :   1.6

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.remove(int)`](../../java/awt/Container.md#remove(int))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### setComponentZOrder

    public void setComponentZOrder([Component](../../java/awt/Component.md "class in java.awt") comp,
    int index)

    Moves the specified component to the specified z-order index in
    the container. The z-order determines the order that components
    are painted; the component with the highest z-order paints first
    and the component with the lowest z-order paints last.
    Where components overlap, the component with the lower
    z-order paints over the component with the higher z-order.

    If the component is a child of some other container, it is
    removed from that container before being added to this container.
    The important difference between this method and
    `java.awt.Container.add(Component, int)` is that this method
    doesn't call `removeNotify` on the component while
    removing it from its previous container unless necessary and when
    allowed by the underlying native windowing system. This way, if the
    component has the keyboard focus, it maintains the focus when
    moved to the new position.

    This property is guaranteed to apply only to lightweight
    non-`Container` components.

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy.

    **Note**: Not all platforms support changing the z-order of
    heavyweight components from one container into another without
    the call to `removeNotify`. There is no way to detect
    whether a platform supports this, so developers shouldn't make
    any assumptions.

    Overrides:
    :   `setComponentZOrder` in class `Container`

    Parameters:
    :   `comp` - the component to be moved
    :   `index` - the position in the container's list to
        insert the component, where `getComponentCount()`
        appends to the end

    Since:
    :   1.6

    See Also:
    :   - [`Container.getComponentZOrder(java.awt.Component)`](../../java/awt/Container.md#getComponentZOrder(java.awt.Component))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JDesktopPane`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JLayeredPane`

    Returns:
    :   a string representation of this `JDesktopPane`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `JDesktopPane`. For desktop panes, the
    `AccessibleContext` takes the form of an
    `AccessibleJDesktopPane`.
    A new `AccessibleJDesktopPane` instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JLayeredPane`

    Returns:
    :   an `AccessibleJDesktopPane` that serves as the
        `AccessibleContext` of this `JDesktopPane`