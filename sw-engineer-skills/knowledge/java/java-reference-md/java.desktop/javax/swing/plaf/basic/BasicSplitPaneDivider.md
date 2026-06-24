Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneDivider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

javax.swing.plaf.basic.BasicSplitPaneDivider

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `PropertyChangeListener`, `Serializable`, `EventListener`

---

public class BasicSplitPaneDivider
extends [Container](../../../../java/awt/Container.md "class in java.awt")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Divider used by BasicSplitPaneUI. Subclassers may wish to override
paint to do something more interesting.
The border effect is drawn in BasicSplitPaneUI, so if you don't like
that border, reset it there.
To conditionally drag from certain areas subclass mousePressed and
call super when you wish the dragging to begin.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `BasicSplitPaneDivider.DividerLayout`

  Used to layout a `BasicSplitPaneDivider`.

  `protected class`

  `BasicSplitPaneDivider.DragController`

  Handles the events during a dragging session for a
  HORIZONTAL\_SPLIT oriented split pane.

  `protected class`

  `BasicSplitPaneDivider.MouseHandler`

  MouseHandler is responsible for converting mouse events
  (released, dragged...) into the appropriate DragController
  methods.

  `protected class`

  `BasicSplitPaneDivider.VerticalDragController`

  Handles the events during a dragging session for a
  VERTICAL\_SPLIT oriented split pane.

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `dividerSize`

  Size of the divider.

  `protected BasicSplitPaneDivider.DragController`

  `dragger`

  Handles mouse dragging message to do the actual dragging.

  `protected Component`

  `hiddenDivider`

  Divider that is used for noncontinuous layout mode.

  `protected JButton`

  `leftButton`

  Button for quickly toggling the left component.

  `protected BasicSplitPaneDivider.MouseHandler`

  `mouseHandler`

  Handles mouse events from both this class, and the split pane.

  `protected static final int`

  `ONE_TOUCH_OFFSET`

  The offset of the divider.

  `protected static final int`

  `ONE_TOUCH_SIZE`

  Width or height of the divider based on orientation
  `BasicSplitPaneUI` adds two to this.

  `protected int`

  `orientation`

  Orientation of the JSplitPane.

  `protected JButton`

  `rightButton`

  Button for quickly toggling the right component.

  `protected JSplitPane`

  `splitPane`

  JSplitPane the receiver is contained in.

  `protected BasicSplitPaneUI`

  `splitPaneUI`

  UI this instance was created from.

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicSplitPaneDivider(BasicSplitPaneUI ui)`

  Creates an instance of `BasicSplitPaneDivider`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected JButton`

  `createLeftOneTouchButton()`

  Creates and return an instance of `JButton` that can be used to
  collapse the left component in the split pane.

  `protected JButton`

  `createRightOneTouchButton()`

  Creates and return an instance of `JButton` that can be used to
  collapse the right component in the split pane.

  `protected void`

  `dragDividerTo(int location)`

  Messages the BasicSplitPaneUI with dragDividerTo that this instance
  is contained in.

  `protected void`

  `finishDraggingTo(int location)`

  Messages the BasicSplitPaneUI with finishDraggingTo that this instance
  is contained in.

  `BasicSplitPaneUI`

  `getBasicSplitPaneUI()`

  Returns the `SplitPaneUI` the receiver is currently in.

  `Border`

  `getBorder()`

  Returns the border of this component or null if no border is
  currently set.

  `int`

  `getDividerSize()`

  Returns the size of the divider, that is the width if the splitpane
  is HORIZONTAL\_SPLIT, or the height of VERTICAL\_SPLIT.

  `Insets`

  `getInsets()`

  If a border has been set on this component, returns the
  border's insets, else calls super.getInsets.

  `Dimension`

  `getMinimumSize()`

  Returns the minimum size of the divider.

  `Dimension`

  `getPreferredSize()`

  Returns the preferred size of the divider.

  `boolean`

  `isMouseOver()`

  Returns whether or not the mouse is currently over the divider

  `protected void`

  `oneTouchExpandableChanged()`

  Messaged when the oneTouchExpandable value of the JSplitPane the
  divider is contained in changes.

  `void`

  `paint(Graphics g)`

  Paints the divider.

  `protected void`

  `prepareForDragging()`

  Message to prepare for dragging.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Property change event, presumably from the JSplitPane, will message
  updateOrientation if necessary.

  `void`

  `setBasicSplitPaneUI(BasicSplitPaneUI newUI)`

  Sets the `SplitPaneUI` that is using the receiver.

  `void`

  `setBorder(Border border)`

  Sets the border of this component.

  `void`

  `setDividerSize(int newSize)`

  Sets the size of the divider to `newSize`.

  `protected void`

  `setMouseOver(boolean mouseOver)`

  Sets whether or not the mouse is currently over the divider.

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addNotify, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getListeners, getMaximumSize, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, isValidateRoot, layout, list, list, locate, minimumSize, paintComponents, paramString, preferredSize, print, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, removeNotify, setComponentZOrder, setFocusCycleRoot, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, update, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAccessibleContext, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ONE\_TOUCH\_SIZE

    protected static final int ONE\_TOUCH\_SIZE

    Width or height of the divider based on orientation
    `BasicSplitPaneUI` adds two to this.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicSplitPaneDivider.ONE_TOUCH_SIZE)
  + ### ONE\_TOUCH\_OFFSET

    protected static final int ONE\_TOUCH\_OFFSET

    The offset of the divider.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicSplitPaneDivider.ONE_TOUCH_OFFSET)
  + ### dragger

    protected [BasicSplitPaneDivider.DragController](BasicSplitPaneDivider.DragController.md "class in javax.swing.plaf.basic") dragger

    Handles mouse dragging message to do the actual dragging.
  + ### splitPaneUI

    protected [BasicSplitPaneUI](BasicSplitPaneUI.md "class in javax.swing.plaf.basic") splitPaneUI

    UI this instance was created from.
  + ### dividerSize

    protected int dividerSize

    Size of the divider.
  + ### hiddenDivider

    protected [Component](../../../../java/awt/Component.md "class in java.awt") hiddenDivider

    Divider that is used for noncontinuous layout mode.
  + ### splitPane

    protected [JSplitPane](../../JSplitPane.md "class in javax.swing") splitPane

    JSplitPane the receiver is contained in.
  + ### mouseHandler

    protected [BasicSplitPaneDivider.MouseHandler](BasicSplitPaneDivider.MouseHandler.md "class in javax.swing.plaf.basic") mouseHandler

    Handles mouse events from both this class, and the split pane.
    Mouse events are handled for the splitpane since you want to be able
    to drag when clicking on the border of the divider, which is not
    drawn by the divider.
  + ### orientation

    protected int orientation

    Orientation of the JSplitPane.
  + ### leftButton

    protected [JButton](../../JButton.md "class in javax.swing") leftButton

    Button for quickly toggling the left component.
  + ### rightButton

    protected [JButton](../../JButton.md "class in javax.swing") rightButton

    Button for quickly toggling the right component.
* ## Constructor Details

  + ### BasicSplitPaneDivider

    public BasicSplitPaneDivider([BasicSplitPaneUI](BasicSplitPaneUI.md "class in javax.swing.plaf.basic") ui)

    Creates an instance of `BasicSplitPaneDivider`. Registers this
    instance for mouse events and mouse dragged events.

    Parameters:
    :   `ui` - an instance of `BasicSplitPaneUI`
* ## Method Details

  + ### setBasicSplitPaneUI

    public void setBasicSplitPaneUI([BasicSplitPaneUI](BasicSplitPaneUI.md "class in javax.swing.plaf.basic") newUI)

    Sets the `SplitPaneUI` that is using the receiver.

    Parameters:
    :   `newUI` - the new `SplitPaneUI`
  + ### getBasicSplitPaneUI

    public [BasicSplitPaneUI](BasicSplitPaneUI.md "class in javax.swing.plaf.basic") getBasicSplitPaneUI()

    Returns the `SplitPaneUI` the receiver is currently in.

    Returns:
    :   the `SplitPaneUI` the receiver is currently in
  + ### setDividerSize

    public void setDividerSize(int newSize)

    Sets the size of the divider to `newSize`. That is
    the width if the splitpane is `HORIZONTAL_SPLIT`, or
    the height of `VERTICAL_SPLIT`.
    Divider sizes `newSize < 0` are ignored.

    Parameters:
    :   `newSize` - a new size
  + ### getDividerSize

    public int getDividerSize()

    Returns the size of the divider, that is the width if the splitpane
    is HORIZONTAL\_SPLIT, or the height of VERTICAL\_SPLIT.

    Returns:
    :   the size of the divider
  + ### setBorder

    public void setBorder([Border](../../border/Border.md "interface in javax.swing.border") border)

    Sets the border of this component.

    Parameters:
    :   `border` - a new border

    Since:
    :   1.3
  + ### getBorder

    public [Border](../../border/Border.md "interface in javax.swing.border") getBorder()

    Returns the border of this component or null if no border is
    currently set.

    Returns:
    :   the border object for this component

    Since:
    :   1.3

    See Also:
    :   - [`setBorder(javax.swing.border.Border)`](#setBorder(javax.swing.border.Border))
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets()

    If a border has been set on this component, returns the
    border's insets, else calls super.getInsets.

    Overrides:
    :   `getInsets` in class `Container`

    Returns:
    :   the value of the insets property.

    See Also:
    :   - [`setBorder(javax.swing.border.Border)`](#setBorder(javax.swing.border.Border))
  + ### setMouseOver

    protected void setMouseOver(boolean mouseOver)

    Sets whether or not the mouse is currently over the divider.

    Parameters:
    :   `mouseOver` - whether or not the mouse is currently over the divider

    Since:
    :   1.5
  + ### isMouseOver

    public boolean isMouseOver()

    Returns whether or not the mouse is currently over the divider

    Returns:
    :   whether or not the mouse is currently over the divider

    Since:
    :   1.5
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Returns the preferred size of the divider.

    Overrides:
    :   `getPreferredSize` in class `Container`

    Returns:
    :   a `Dimension` object containing the preferred size of
        `BasicSplitPaneDivider`

    See Also:
    :   - [`Container.getMinimumSize()`](../../../../java/awt/Container.md#getMinimumSize())
        - [`Container.getMaximumSize()`](../../../../java/awt/Container.md#getMaximumSize())
        - [`Container.getLayout()`](../../../../java/awt/Container.md#getLayout())
        - [`LayoutManager.preferredLayoutSize(Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
        - [`Component.getPreferredSize()`](../../../../java/awt/Component.md#getPreferredSize())
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize()

    Returns the minimum size of the divider.

    Overrides:
    :   `getMinimumSize` in class `Container`

    Returns:
    :   a `Dimension` object containing the minimum size of
        `BasicSplitPaneDivider`

    See Also:
    :   - [`Container.getPreferredSize()`](../../../../java/awt/Container.md#getPreferredSize())
        - [`Container.getMaximumSize()`](../../../../java/awt/Container.md#getMaximumSize())
        - [`Container.getLayout()`](../../../../java/awt/Container.md#getLayout())
        - [`LayoutManager.minimumLayoutSize(Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`Component.getMinimumSize()`](../../../../java/awt/Component.md#getMinimumSize())
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Property change event, presumably from the JSplitPane, will message
    updateOrientation if necessary.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the divider.

    Overrides:
    :   `paint` in class `Container`

    Parameters:
    :   `g` - the specified Graphics window

    See Also:
    :   - [`Component.update(Graphics)`](../../../../java/awt/Component.md#update(java.awt.Graphics))
  + ### oneTouchExpandableChanged

    protected void oneTouchExpandableChanged()

    Messaged when the oneTouchExpandable value of the JSplitPane the
    divider is contained in changes. Will create the
    `leftButton` and `rightButton` if they are null
    and corresponding JSplitPane supports oneTouchExpandable property.
    Invalidates the corresponding JSplitPane as well.
  + ### createLeftOneTouchButton

    protected [JButton](../../JButton.md "class in javax.swing") createLeftOneTouchButton()

    Creates and return an instance of `JButton` that can be used to
    collapse the left component in the split pane.

    Returns:
    :   an instance of `JButton`
  + ### createRightOneTouchButton

    protected [JButton](../../JButton.md "class in javax.swing") createRightOneTouchButton()

    Creates and return an instance of `JButton` that can be used to
    collapse the right component in the split pane.

    Returns:
    :   an instance of `JButton`
  + ### prepareForDragging

    protected void prepareForDragging()

    Message to prepare for dragging. This messages the BasicSplitPaneUI
    with startDragging.
  + ### dragDividerTo

    protected void dragDividerTo(int location)

    Messages the BasicSplitPaneUI with dragDividerTo that this instance
    is contained in.

    Parameters:
    :   `location` - a location
  + ### finishDraggingTo

    protected void finishDraggingTo(int location)

    Messages the BasicSplitPaneUI with finishDraggingTo that this instance
    is contained in.

    Parameters:
    :   `location` - a location