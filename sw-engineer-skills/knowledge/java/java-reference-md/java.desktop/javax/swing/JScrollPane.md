Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JScrollPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JScrollPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `ScrollPaneConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A specialized container that manages a viewport, optional scrollbars and headers")
public class JScrollPane
extends [JComponent](JComponent.md "class in javax.swing")
implements [ScrollPaneConstants](ScrollPaneConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

Provides a scrollable view of a lightweight component.
A `JScrollPane` manages a viewport, optional
vertical and horizontal scroll bars, and optional row and
column heading viewports.
You can find task-oriented documentation of `JScrollPane` in
[How to Use Scroll Panes](https://docs.oracle.com/javase/tutorial/uiswing/components/scrollpane.html),
a section in *The Java Tutorial*. Note that
`JScrollPane` does not support heavyweight components.

**Example:**

![The following text describes this image.](doc-files/JScrollPane-1.gif)

The `JViewport` provides a window,
or "viewport" onto a data
source -- for example, a text file. That data source is the
"scrollable client" (aka data model) displayed by the
`JViewport` view.
A `JScrollPane` basically consists of `JScrollBar`s,
a `JViewport`, and the wiring between them,
as shown in the diagram at right.

In addition to the scroll bars and viewport,
a `JScrollPane` can have a
column header and a row header. Each of these is a
`JViewport` object that
you specify with `setRowHeaderView`,
and `setColumnHeaderView`.
The column header viewport automatically scrolls left and right, tracking
the left-right scrolling of the main viewport.
(It never scrolls vertically, however.)
The row header acts in a similar fashion.

Where two scroll bars meet, the row header meets the column header,
or a scroll bar meets one of the headers, both components stop short
of the corner, leaving a rectangular space which is, by default, empty.
These spaces can potentially exist in any number of the four corners.
In the previous diagram, the top right space is present and identified
by the label "corner component".

Any number of these empty spaces can be replaced by using the
`setCorner` method to add a component to a particular corner.
(Note: The same component cannot be added to multiple corners.)
This is useful if there's
some extra decoration or function you'd like to add to the scroll pane.
The size of each corner component is entirely determined by the size of the
headers and/or scroll bars that surround it.

A corner component will only be visible if there is an empty space in that
corner for it to exist in. For example, consider a component set into the
top right corner of a scroll pane with a column header. If the scroll pane's
vertical scrollbar is not present, perhaps because the view component hasn't
grown large enough to require it, then the corner component will not be
shown (since there is no empty space in that corner created by the meeting
of the header and vertical scroll bar). Forcing the scroll bar to always be
shown, using
`setVerticalScrollBarPolicy(VERTICAL_SCROLLBAR_ALWAYS)`,
will ensure that the space for the corner component always exists.

To add a border around the main viewport,
you can use `setViewportBorder`.
(Of course, you can also add a border around the whole scroll pane using
`setBorder`.)

A common operation to want to do is to set the background color that will
be used if the main viewport view is smaller than the viewport, or is
not opaque. This can be accomplished by setting the background color
of the viewport, via `scrollPane.getViewport().setBackground()`.
The reason for setting the color of the viewport and not the scrollpane
is that by default `JViewport` is opaque
which, among other things, means it will completely fill
in its background using its background color. Therefore when
`JScrollPane` draws its background the viewport will
usually draw over it.

By default `JScrollPane` uses `ScrollPaneLayout`
to handle the layout of its child Components. `ScrollPaneLayout`
determines the size to make the viewport view in one of two ways:

1. If the view implements `Scrollable`
   a combination of `getPreferredScrollableViewportSize`,
   `getScrollableTracksViewportWidth` and
   `getScrollableTracksViewportHeight`is used, otherwise- `getPreferredSize` is used.

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
:   * [`JScrollBar`](JScrollBar.md "class in javax.swing")
    * [`JViewport`](JViewport.md "class in javax.swing")
    * [`ScrollPaneLayout`](ScrollPaneLayout.md "class in javax.swing")
    * [`Scrollable`](Scrollable.md "interface in javax.swing")
    * [`Component.getPreferredSize()`](../../java/awt/Component.md#getPreferredSize())
    * [`setViewportView(java.awt.Component)`](#setViewportView(java.awt.Component))
    * [`setRowHeaderView(java.awt.Component)`](#setRowHeaderView(java.awt.Component))
    * [`setColumnHeaderView(java.awt.Component)`](#setColumnHeaderView(java.awt.Component))
    * [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
    * [`setViewportBorder(javax.swing.border.Border)`](#setViewportBorder(javax.swing.border.Border))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JScrollPane.AccessibleJScrollPane`

  This class implements accessibility support for the
  `JScrollPane` class.

  `protected class`

  `JScrollPane.ScrollBar`

  By default `JScrollPane` creates scrollbars
  that are instances
  of this class.

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

  `protected JViewport`

  `columnHeader`

  The column header child.

  `protected JScrollBar`

  `horizontalScrollBar`

  The scrollpane's horizontal scrollbar child.

  `protected int`

  `horizontalScrollBarPolicy`

  The display policy for the horizontal scrollbar.

  `protected Component`

  `lowerLeft`

  The component to display in the lower left corner.

  `protected Component`

  `lowerRight`

  The component to display in the lower right corner.

  `protected JViewport`

  `rowHeader`

  The row header child.

  `protected Component`

  `upperLeft`

  The component to display in the upper left corner.

  `protected Component`

  `upperRight`

  The component to display in the upper right corner.

  `protected JScrollBar`

  `verticalScrollBar`

  The scrollpane's vertical scrollbar child.

  `protected int`

  `verticalScrollBarPolicy`

  The display policy for the vertical scrollbar.

  `protected JViewport`

  `viewport`

  The scrollpane's viewport child.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[ScrollPaneConstants](ScrollPaneConstants.md "interface in javax.swing")

  `COLUMN_HEADER, HORIZONTAL_SCROLLBAR, HORIZONTAL_SCROLLBAR_ALWAYS, HORIZONTAL_SCROLLBAR_AS_NEEDED, HORIZONTAL_SCROLLBAR_NEVER, HORIZONTAL_SCROLLBAR_POLICY, LOWER_LEADING_CORNER, LOWER_LEFT_CORNER, LOWER_RIGHT_CORNER, LOWER_TRAILING_CORNER, ROW_HEADER, UPPER_LEADING_CORNER, UPPER_LEFT_CORNER, UPPER_RIGHT_CORNER, UPPER_TRAILING_CORNER, VERTICAL_SCROLLBAR, VERTICAL_SCROLLBAR_ALWAYS, VERTICAL_SCROLLBAR_AS_NEEDED, VERTICAL_SCROLLBAR_NEVER, VERTICAL_SCROLLBAR_POLICY, VIEWPORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JScrollPane()`

  Creates an empty (no viewport view) `JScrollPane`
  where both horizontal and vertical scrollbars appear when needed.

  `JScrollPane(int vsbPolicy,
  int hsbPolicy)`

  Creates an empty (no viewport view) `JScrollPane`
  with specified
  scrollbar policies.

  `JScrollPane(Component view)`

  Creates a `JScrollPane` that displays the
  contents of the specified
  component, where both horizontal and vertical scrollbars appear
  whenever the component's contents are larger than the view.

  `JScrollPane(Component view,
  int vsbPolicy,
  int hsbPolicy)`

  Creates a `JScrollPane` that displays the view
  component in a viewport
  whose view position can be controlled with a pair of scrollbars.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `JScrollBar`

  `createHorizontalScrollBar()`

  Returns a `JScrollPane.ScrollBar` by default.

  `JScrollBar`

  `createVerticalScrollBar()`

  Returns a `JScrollPane.ScrollBar` by default.

  `protected JViewport`

  `createViewport()`

  Returns a new `JViewport` by default.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JScrollPane.

  `JViewport`

  `getColumnHeader()`

  Returns the column header.

  `Component`

  `getCorner(String key)`

  Returns the component at the specified corner.

  `JScrollBar`

  `getHorizontalScrollBar()`

  Returns the horizontal scroll bar that controls the viewport's
  horizontal view position.

  `int`

  `getHorizontalScrollBarPolicy()`

  Returns the horizontal scroll bar policy value.

  `JViewport`

  `getRowHeader()`

  Returns the row header.

  `ScrollPaneUI`

  `getUI()`

  Returns the look and feel (L&F) object that renders this component.

  `String`

  `getUIClassID()`

  Returns the suffix used to construct the name of the L&F class used to
  render this component.

  `JScrollBar`

  `getVerticalScrollBar()`

  Returns the vertical scroll bar that controls the viewports
  vertical view position.

  `int`

  `getVerticalScrollBarPolicy()`

  Returns the vertical scroll bar policy value.

  `JViewport`

  `getViewport()`

  Returns the current `JViewport`.

  `Border`

  `getViewportBorder()`

  Returns the `Border` object that surrounds the viewport.

  `Rectangle`

  `getViewportBorderBounds()`

  Returns the bounds of the viewport's border.

  `boolean`

  `isValidateRoot()`

  Overridden to return true so that any calls to `revalidate`
  on any descendants of this `JScrollPane` will cause the
  entire tree beginning with this `JScrollPane` to be
  validated.

  `boolean`

  `isWheelScrollingEnabled()`

  Indicates whether or not scrolling will take place in response to the
  mouse wheel.

  `protected String`

  `paramString()`

  Returns a string representation of this `JScrollPane`.

  `void`

  `setColumnHeader(JViewport columnHeader)`

  Removes the old columnHeader, if it exists; if the new columnHeader
  isn't `null`, syncs the x coordinate of its viewPosition
  with the viewport (if there is one) and then adds it to the scroll pane.

  `void`

  `setColumnHeaderView(Component view)`

  Creates a column-header viewport if necessary, sets
  its view, and then adds the column-header viewport
  to the scrollpane.

  `void`

  `setComponentOrientation(ComponentOrientation co)`

  Sets the orientation for the vertical and horizontal
  scrollbars as determined by the
  `ComponentOrientation` argument.

  `void`

  `setCorner(String key,
  Component corner)`

  Adds a child that will appear in one of the scroll panes
  corners, if there's room.

  `void`

  `setHorizontalScrollBar(JScrollBar horizontalScrollBar)`

  Adds the scrollbar that controls the viewport's horizontal view
  position to the scrollpane.

  `void`

  `setHorizontalScrollBarPolicy(int policy)`

  Determines when the horizontal scrollbar appears in the scrollpane.

  `void`

  `setLayout(LayoutManager layout)`

  Sets the layout manager for this `JScrollPane`.

  `void`

  `setRowHeader(JViewport rowHeader)`

  Removes the old rowHeader, if it exists; if the new rowHeader
  isn't `null`, syncs the y coordinate of its
  viewPosition with
  the viewport (if there is one) and then adds it to the scroll pane.

  `void`

  `setRowHeaderView(Component view)`

  Creates a row-header viewport if necessary, sets
  its view and then adds the row-header viewport
  to the scrollpane.

  `void`

  `setUI(ScrollPaneUI ui)`

  Sets the `ScrollPaneUI` object that provides the
  look and feel (L&F) for this component.

  `void`

  `setVerticalScrollBar(JScrollBar verticalScrollBar)`

  Adds the scrollbar that controls the viewports vertical view position
  to the scrollpane.

  `void`

  `setVerticalScrollBarPolicy(int policy)`

  Determines when the vertical scrollbar appears in the scrollpane.

  `void`

  `setViewport(JViewport viewport)`

  Removes the old viewport (if there is one); forces the
  viewPosition of the new viewport to be in the +x,+y quadrant;
  syncs up the row and column headers (if there are any) with the
  new viewport; and finally syncs the scrollbars and
  headers with the new viewport.

  `void`

  `setViewportBorder(Border viewportBorder)`

  Adds a border around the viewport.

  `void`

  `setViewportView(Component view)`

  Creates a viewport if necessary and then sets its view.

  `void`

  `setWheelScrollingEnabled(boolean handleWheel)`

  Enables/disables scrolling in response to movement of the mouse wheel.

  `void`

  `updateUI()`

  Replaces the current `ScrollPaneUI` object with a version
  from the current default look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### verticalScrollBarPolicy

    protected int verticalScrollBarPolicy

    The display policy for the vertical scrollbar.
    The default is
    `ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED`.

    See Also:
    :   - [`setVerticalScrollBarPolicy(int)`](#setVerticalScrollBarPolicy(int))
  + ### horizontalScrollBarPolicy

    protected int horizontalScrollBarPolicy

    The display policy for the horizontal scrollbar.
    The default is
    `ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED`.

    See Also:
    :   - [`setHorizontalScrollBarPolicy(int)`](#setHorizontalScrollBarPolicy(int))
  + ### viewport

    protected [JViewport](JViewport.md "class in javax.swing") viewport

    The scrollpane's viewport child. Default is an empty
    `JViewport`.

    See Also:
    :   - [`setViewport(javax.swing.JViewport)`](#setViewport(javax.swing.JViewport))
  + ### verticalScrollBar

    protected [JScrollBar](JScrollBar.md "class in javax.swing") verticalScrollBar

    The scrollpane's vertical scrollbar child.
    Default is a `JScrollBar`.

    See Also:
    :   - [`setVerticalScrollBar(javax.swing.JScrollBar)`](#setVerticalScrollBar(javax.swing.JScrollBar))
  + ### horizontalScrollBar

    protected [JScrollBar](JScrollBar.md "class in javax.swing") horizontalScrollBar

    The scrollpane's horizontal scrollbar child.
    Default is a `JScrollBar`.

    See Also:
    :   - [`setHorizontalScrollBar(javax.swing.JScrollBar)`](#setHorizontalScrollBar(javax.swing.JScrollBar))
  + ### rowHeader

    protected [JViewport](JViewport.md "class in javax.swing") rowHeader

    The row header child. Default is `null`.

    See Also:
    :   - [`setRowHeader(javax.swing.JViewport)`](#setRowHeader(javax.swing.JViewport))
  + ### columnHeader

    protected [JViewport](JViewport.md "class in javax.swing") columnHeader

    The column header child. Default is `null`.

    See Also:
    :   - [`setColumnHeader(javax.swing.JViewport)`](#setColumnHeader(javax.swing.JViewport))
  + ### lowerLeft

    protected [Component](../../java/awt/Component.md "class in java.awt") lowerLeft

    The component to display in the lower left corner.
    Default is `null`.

    See Also:
    :   - [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
  + ### lowerRight

    protected [Component](../../java/awt/Component.md "class in java.awt") lowerRight

    The component to display in the lower right corner.
    Default is `null`.

    See Also:
    :   - [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
  + ### upperLeft

    protected [Component](../../java/awt/Component.md "class in java.awt") upperLeft

    The component to display in the upper left corner.
    Default is `null`.

    See Also:
    :   - [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
  + ### upperRight

    protected [Component](../../java/awt/Component.md "class in java.awt") upperRight

    The component to display in the upper right corner.
    Default is `null`.

    See Also:
    :   - [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
* ## Constructor Details

  + ### JScrollPane

    public JScrollPane([Component](../../java/awt/Component.md "class in java.awt") view,
    int vsbPolicy,
    int hsbPolicy)

    Creates a `JScrollPane` that displays the view
    component in a viewport
    whose view position can be controlled with a pair of scrollbars.
    The scrollbar policies specify when the scrollbars are displayed,
    For example, if `vsbPolicy` is
    `VERTICAL_SCROLLBAR_AS_NEEDED`
    then the vertical scrollbar only appears if the view doesn't fit
    vertically. The available policy settings are listed at
    [`setVerticalScrollBarPolicy(int)`](#setVerticalScrollBarPolicy(int)) and
    [`setHorizontalScrollBarPolicy(int)`](#setHorizontalScrollBarPolicy(int)).

    Parameters:
    :   `view` - the component to display in the scrollpanes viewport
    :   `vsbPolicy` - an integer that specifies the vertical
        scrollbar policy
    :   `hsbPolicy` - an integer that specifies the horizontal
        scrollbar policy

    See Also:
    :   - [`setViewportView(java.awt.Component)`](#setViewportView(java.awt.Component))
  + ### JScrollPane

    public JScrollPane([Component](../../java/awt/Component.md "class in java.awt") view)

    Creates a `JScrollPane` that displays the
    contents of the specified
    component, where both horizontal and vertical scrollbars appear
    whenever the component's contents are larger than the view.

    Parameters:
    :   `view` - the component to display in the scrollpane's viewport

    See Also:
    :   - [`setViewportView(java.awt.Component)`](#setViewportView(java.awt.Component))
  + ### JScrollPane

    public JScrollPane(int vsbPolicy,
    int hsbPolicy)

    Creates an empty (no viewport view) `JScrollPane`
    with specified
    scrollbar policies. The available policy settings are listed at
    [`setVerticalScrollBarPolicy(int)`](#setVerticalScrollBarPolicy(int)) and
    [`setHorizontalScrollBarPolicy(int)`](#setHorizontalScrollBarPolicy(int)).

    Parameters:
    :   `vsbPolicy` - an integer that specifies the vertical
        scrollbar policy
    :   `hsbPolicy` - an integer that specifies the horizontal
        scrollbar policy

    See Also:
    :   - [`setViewportView(java.awt.Component)`](#setViewportView(java.awt.Component))
  + ### JScrollPane

    public JScrollPane()

    Creates an empty (no viewport view) `JScrollPane`
    where both horizontal and vertical scrollbars appear when needed.
* ## Method Details

  + ### getUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public [ScrollPaneUI](plaf/ScrollPaneUI.md "class in javax.swing.plaf") getUI()

    Returns the look and feel (L&F) object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `ScrollPaneUI` object that renders this
        component

    See Also:
    :   - [`setUI(javax.swing.plaf.ScrollPaneUI)`](#setUI(javax.swing.plaf.ScrollPaneUI))
  + ### setUI

    public void setUI([ScrollPaneUI](plaf/ScrollPaneUI.md "class in javax.swing.plaf") ui)

    Sets the `ScrollPaneUI` object that provides the
    look and feel (L&F) for this component.

    Parameters:
    :   `ui` - the `ScrollPaneUI` L&F object

    See Also:
    :   - [`getUI()`](#getUI())
  + ### updateUI

    public void updateUI()

    Replaces the current `ScrollPaneUI` object with a version
    from the current default look and feel.
    To be called when the default look and feel changes.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
        - [`UIManager.getUI(javax.swing.JComponent)`](UIManager.md#getUI(javax.swing.JComponent))
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the suffix used to construct the name of the L&F class used to
    render this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ScrollPaneUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setLayout

    public void setLayout([LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt") layout)

    Sets the layout manager for this `JScrollPane`.
    This method overrides `setLayout` in
    `java.awt.Container` to ensure that only
    `LayoutManager`s which
    are subclasses of `ScrollPaneLayout` can be used in a
    `JScrollPane`. If `layout` is non-null, this
    will invoke `syncWithScrollPane` on it.

    Overrides:
    :   `setLayout` in class `Container`

    Parameters:
    :   `layout` - the specified layout manager

    Throws:
    :   `ClassCastException` - if layout is not a
        `ScrollPaneLayout`

    See Also:
    :   - [`Container.getLayout()`](../../java/awt/Container.md#getLayout())
        - [`Container.setLayout(java.awt.LayoutManager)`](../../java/awt/Container.md#setLayout(java.awt.LayoutManager))
  + ### isValidateRoot

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true)
    public boolean isValidateRoot()

    Overridden to return true so that any calls to `revalidate`
    on any descendants of this `JScrollPane` will cause the
    entire tree beginning with this `JScrollPane` to be
    validated.

    Overrides:
    :   `isValidateRoot` in class `JComponent`

    Returns:
    :   true

    See Also:
    :   - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`JComponent.revalidate()`](JComponent.md#revalidate())
        - [`JComponent.isValidateRoot()`](JComponent.md#isValidateRoot())
        - [`Container.isValidateRoot()`](../../java/awt/Container.md#isValidateRoot())
  + ### getVerticalScrollBarPolicy

    public int getVerticalScrollBarPolicy()

    Returns the vertical scroll bar policy value.

    Returns:
    :   the `verticalScrollBarPolicy` property

    See Also:
    :   - [`setVerticalScrollBarPolicy(int)`](#setVerticalScrollBarPolicy(int))
  + ### setVerticalScrollBarPolicy

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"ScrollPaneConstants.VERTICAL\_SCROLLBAR\_AS\_NEEDED","ScrollPaneConstants.VERTICAL\_SCROLLBAR\_NEVER","ScrollPaneConstants.VERTICAL\_SCROLLBAR\_ALWAYS"},
    [description](../../java/beans/BeanProperty.md#description())="The scrollpane vertical scrollbar policy")
    public void setVerticalScrollBarPolicy(int policy)

    Determines when the vertical scrollbar appears in the scrollpane.
    Legal values are:
    - `ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED`- `ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER`- `ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS`

    Parameters:
    :   `policy` - one of the three values listed above

    Throws:
    :   `IllegalArgumentException` - if `policy`
        is not one of the legal values shown above

    See Also:
    :   - [`getVerticalScrollBarPolicy()`](#getVerticalScrollBarPolicy())
  + ### getHorizontalScrollBarPolicy

    public int getHorizontalScrollBarPolicy()

    Returns the horizontal scroll bar policy value.

    Returns:
    :   the `horizontalScrollBarPolicy` property

    See Also:
    :   - [`setHorizontalScrollBarPolicy(int)`](#setHorizontalScrollBarPolicy(int))
  + ### setHorizontalScrollBarPolicy

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_AS\_NEEDED","ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_NEVER","ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_ALWAYS"},
    [description](../../java/beans/BeanProperty.md#description())="The scrollpane scrollbar policy")
    public void setHorizontalScrollBarPolicy(int policy)

    Determines when the horizontal scrollbar appears in the scrollpane.
    The options are:
    - `ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED`- `ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER`- `ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS`

    Parameters:
    :   `policy` - one of the three values listed above

    Throws:
    :   `IllegalArgumentException` - if `policy`
        is not one of the legal values shown above

    See Also:
    :   - [`getHorizontalScrollBarPolicy()`](#getHorizontalScrollBarPolicy())
  + ### getViewportBorder

    public [Border](border/Border.md "interface in javax.swing.border") getViewportBorder()

    Returns the `Border` object that surrounds the viewport.

    Returns:
    :   the `viewportBorder` property

    See Also:
    :   - [`setViewportBorder(javax.swing.border.Border)`](#setViewportBorder(javax.swing.border.Border))
  + ### setViewportBorder

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The border around the viewport.")
    public void setViewportBorder([Border](border/Border.md "interface in javax.swing.border") viewportBorder)

    Adds a border around the viewport. Note that the border isn't
    set on the viewport directly, `JViewport` doesn't support
    the `JComponent` border property.
    Similarly setting the `JScrollPane`s
    viewport doesn't affect the `viewportBorder` property.

    The default value of this property is computed by the look
    and feel implementation.

    Parameters:
    :   `viewportBorder` - the border to be added

    See Also:
    :   - [`getViewportBorder()`](#getViewportBorder())
        - [`setViewport(javax.swing.JViewport)`](#setViewport(javax.swing.JViewport))
  + ### getViewportBorderBounds

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getViewportBorderBounds()

    Returns the bounds of the viewport's border.

    Returns:
    :   a `Rectangle` object specifying the viewport border
  + ### createHorizontalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") createHorizontalScrollBar()

    Returns a `JScrollPane.ScrollBar` by default.
    Subclasses may override this method to force `ScrollPaneUI`
    implementations to use a `JScrollBar` subclass.
    Used by `ScrollPaneUI` implementations to
    create the horizontal scrollbar.

    Returns:
    :   a `JScrollBar` with a horizontal orientation

    See Also:
    :   - [`JScrollBar`](JScrollBar.md "class in javax.swing")
  + ### getHorizontalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") getHorizontalScrollBar()

    Returns the horizontal scroll bar that controls the viewport's
    horizontal view position.

    Returns:
    :   the `horizontalScrollBar` property

    See Also:
    :   - [`setHorizontalScrollBar(javax.swing.JScrollBar)`](#setHorizontalScrollBar(javax.swing.JScrollBar))
  + ### setHorizontalScrollBar

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The horizontal scrollbar.")
    public void setHorizontalScrollBar([JScrollBar](JScrollBar.md "class in javax.swing") horizontalScrollBar)

    Adds the scrollbar that controls the viewport's horizontal view
    position to the scrollpane.
    This is usually unnecessary, as `JScrollPane` creates
    horizontal and vertical scrollbars by default.

    Parameters:
    :   `horizontalScrollBar` - the horizontal scrollbar to be added

    See Also:
    :   - [`createHorizontalScrollBar()`](#createHorizontalScrollBar())
        - [`getHorizontalScrollBar()`](#getHorizontalScrollBar())
  + ### createVerticalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") createVerticalScrollBar()

    Returns a `JScrollPane.ScrollBar` by default. Subclasses
    may override this method to force `ScrollPaneUI`
    implementations to use a `JScrollBar` subclass.
    Used by `ScrollPaneUI` implementations to create the
    vertical scrollbar.

    Returns:
    :   a `JScrollBar` with a vertical orientation

    See Also:
    :   - [`JScrollBar`](JScrollBar.md "class in javax.swing")
  + ### getVerticalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") getVerticalScrollBar()

    Returns the vertical scroll bar that controls the viewports
    vertical view position.

    Returns:
    :   the `verticalScrollBar` property

    See Also:
    :   - [`setVerticalScrollBar(javax.swing.JScrollBar)`](#setVerticalScrollBar(javax.swing.JScrollBar))
  + ### setVerticalScrollBar

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The vertical scrollbar.")
    public void setVerticalScrollBar([JScrollBar](JScrollBar.md "class in javax.swing") verticalScrollBar)

    Adds the scrollbar that controls the viewports vertical view position
    to the scrollpane. This is usually unnecessary,
    as `JScrollPane` creates vertical and
    horizontal scrollbars by default.

    Parameters:
    :   `verticalScrollBar` - the new vertical scrollbar to be added

    See Also:
    :   - [`createVerticalScrollBar()`](#createVerticalScrollBar())
        - [`getVerticalScrollBar()`](#getVerticalScrollBar())
  + ### createViewport

    protected [JViewport](JViewport.md "class in javax.swing") createViewport()

    Returns a new `JViewport` by default.
    Used to create the
    viewport (as needed) in `setViewportView`,
    `setRowHeaderView`, and `setColumnHeaderView`.
    Subclasses may override this method to return a subclass of
    `JViewport`.

    Returns:
    :   a new `JViewport`
  + ### getViewport

    public [JViewport](JViewport.md "class in javax.swing") getViewport()

    Returns the current `JViewport`.

    Returns:
    :   the `viewport` property

    See Also:
    :   - [`setViewport(javax.swing.JViewport)`](#setViewport(javax.swing.JViewport))
  + ### setViewport

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The viewport child for this scrollpane")
    public void setViewport([JViewport](JViewport.md "class in javax.swing") viewport)

    Removes the old viewport (if there is one); forces the
    viewPosition of the new viewport to be in the +x,+y quadrant;
    syncs up the row and column headers (if there are any) with the
    new viewport; and finally syncs the scrollbars and
    headers with the new viewport.

    Most applications will find it more convenient to use
    `setViewportView`
    to add a viewport and a view to the scrollpane.

    Parameters:
    :   `viewport` - the new viewport to be used; if viewport is
        `null`, the old viewport is still removed
        and the new viewport is set to `null`

    See Also:
    :   - [`createViewport()`](#createViewport())
        - [`getViewport()`](#getViewport())
        - [`setViewportView(java.awt.Component)`](#setViewportView(java.awt.Component))
  + ### setViewportView

    public void setViewportView([Component](../../java/awt/Component.md "class in java.awt") view)

    Creates a viewport if necessary and then sets its view. Applications
    that don't provide the view directly to the `JScrollPane`
    constructor
    should use this method to specify the scrollable child that's going
    to be displayed in the scrollpane. For example:

    ```
     JScrollPane scrollpane = new JScrollPane();
     scrollpane.setViewportView(myBigComponentToScroll);
    ```

    Applications should not add children directly to the scrollpane.

    Parameters:
    :   `view` - the component to add to the viewport

    See Also:
    :   - [`setViewport(javax.swing.JViewport)`](#setViewport(javax.swing.JViewport))
        - [`JViewport.setView(java.awt.Component)`](JViewport.md#setView(java.awt.Component))
  + ### getRowHeader

    public [JViewport](JViewport.md "class in javax.swing") getRowHeader()

    Returns the row header.

    Returns:
    :   the `rowHeader` property

    See Also:
    :   - [`setRowHeader(javax.swing.JViewport)`](#setRowHeader(javax.swing.JViewport))
  + ### setRowHeader

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The row header child for this scrollpane")
    public void setRowHeader([JViewport](JViewport.md "class in javax.swing") rowHeader)

    Removes the old rowHeader, if it exists; if the new rowHeader
    isn't `null`, syncs the y coordinate of its
    viewPosition with
    the viewport (if there is one) and then adds it to the scroll pane.

    Most applications will find it more convenient to use
    `setRowHeaderView`
    to add a row header component and its viewport to the scroll pane.

    Parameters:
    :   `rowHeader` - the new row header to be used; if `null`
        the old row header is still removed and the new rowHeader
        is set to `null`

    See Also:
    :   - [`getRowHeader()`](#getRowHeader())
        - [`setRowHeaderView(java.awt.Component)`](#setRowHeaderView(java.awt.Component))
  + ### setRowHeaderView

    public void setRowHeaderView([Component](../../java/awt/Component.md "class in java.awt") view)

    Creates a row-header viewport if necessary, sets
    its view and then adds the row-header viewport
    to the scrollpane. For example:

    ```
     JScrollPane scrollpane = new JScrollPane();
     scrollpane.setViewportView(myBigComponentToScroll);
     scrollpane.setRowHeaderView(myBigComponentsRowHeader);
    ```

    Parameters:
    :   `view` - the component to display as the row header

    See Also:
    :   - [`setRowHeader(javax.swing.JViewport)`](#setRowHeader(javax.swing.JViewport))
        - [`JViewport.setView(java.awt.Component)`](JViewport.md#setView(java.awt.Component))
  + ### getColumnHeader

    public [JViewport](JViewport.md "class in javax.swing") getColumnHeader()

    Returns the column header.

    Returns:
    :   the `columnHeader` property

    See Also:
    :   - [`setColumnHeader(javax.swing.JViewport)`](#setColumnHeader(javax.swing.JViewport))
  + ### setColumnHeader

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The column header child for this scrollpane")
    public void setColumnHeader([JViewport](JViewport.md "class in javax.swing") columnHeader)

    Removes the old columnHeader, if it exists; if the new columnHeader
    isn't `null`, syncs the x coordinate of its viewPosition
    with the viewport (if there is one) and then adds it to the scroll pane.

    Most applications will find it more convenient to use
    `setColumnHeaderView`
    to add a column header component and its viewport to the scroll pane.

    Parameters:
    :   `columnHeader` - a `JViewport` which is the new column header

    See Also:
    :   - [`getColumnHeader()`](#getColumnHeader())
        - [`setColumnHeaderView(java.awt.Component)`](#setColumnHeaderView(java.awt.Component))
  + ### setColumnHeaderView

    public void setColumnHeaderView([Component](../../java/awt/Component.md "class in java.awt") view)

    Creates a column-header viewport if necessary, sets
    its view, and then adds the column-header viewport
    to the scrollpane. For example:

    ```
     JScrollPane scrollpane = new JScrollPane();
     scrollpane.setViewportView(myBigComponentToScroll);
     scrollpane.setColumnHeaderView(myBigComponentsColumnHeader);
    ```

    Parameters:
    :   `view` - the component to display as the column header

    See Also:
    :   - [`setColumnHeader(javax.swing.JViewport)`](#setColumnHeader(javax.swing.JViewport))
        - [`JViewport.setView(java.awt.Component)`](JViewport.md#setView(java.awt.Component))
  + ### getCorner

    public [Component](../../java/awt/Component.md "class in java.awt") getCorner([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Returns the component at the specified corner. The
    `key` value specifying the corner is one of:
    - ScrollPaneConstants.LOWER\_LEFT\_CORNER- ScrollPaneConstants.LOWER\_RIGHT\_CORNER- ScrollPaneConstants.UPPER\_LEFT\_CORNER- ScrollPaneConstants.UPPER\_RIGHT\_CORNER- ScrollPaneConstants.LOWER\_LEADING\_CORNER- ScrollPaneConstants.LOWER\_TRAILING\_CORNER- ScrollPaneConstants.UPPER\_LEADING\_CORNER- ScrollPaneConstants.UPPER\_TRAILING\_CORNER

    Parameters:
    :   `key` - one of the values as shown above

    Returns:
    :   the corner component (which may be `null`)
        identified by the given key, or `null`
        if the key is invalid

    See Also:
    :   - [`setCorner(java.lang.String, java.awt.Component)`](#setCorner(java.lang.String,java.awt.Component))
  + ### setCorner

    public void setCorner([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Component](../../java/awt/Component.md "class in java.awt") corner)

    Adds a child that will appear in one of the scroll panes
    corners, if there's room. For example with both scrollbars
    showing (on the right and bottom edges of the scrollpane)
    the lower left corner component will be shown in the space
    between ends of the two scrollbars. Legal values for
    the **key** are:
    - ScrollPaneConstants.LOWER\_LEFT\_CORNER- ScrollPaneConstants.LOWER\_RIGHT\_CORNER- ScrollPaneConstants.UPPER\_LEFT\_CORNER- ScrollPaneConstants.UPPER\_RIGHT\_CORNER- ScrollPaneConstants.LOWER\_LEADING\_CORNER- ScrollPaneConstants.LOWER\_TRAILING\_CORNER- ScrollPaneConstants.UPPER\_LEADING\_CORNER- ScrollPaneConstants.UPPER\_TRAILING\_CORNER

    Although "corner" doesn't match any beans property
    signature, `PropertyChange` events are generated with the
    property name set to the corner key.

    Parameters:
    :   `key` - identifies which corner the component will appear in
    :   `corner` - one of the following components:
        - lowerLeft- lowerRight- upperLeft- upperRight

    Throws:
    :   `IllegalArgumentException` - if corner key is invalid
  + ### setComponentOrientation

    public void setComponentOrientation([ComponentOrientation](../../java/awt/ComponentOrientation.md "class in java.awt") co)

    Sets the orientation for the vertical and horizontal
    scrollbars as determined by the
    `ComponentOrientation` argument.

    Overrides:
    :   `setComponentOrientation` in class `Component`

    Parameters:
    :   `co` - one of the following values:
        - java.awt.ComponentOrientation.LEFT\_TO\_RIGHT- java.awt.ComponentOrientation.RIGHT\_TO\_LEFT- java.awt.ComponentOrientation.UNKNOWN

    See Also:
    :   - [`ComponentOrientation`](../../java/awt/ComponentOrientation.md "class in java.awt")
  + ### isWheelScrollingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Flag for enabling/disabling mouse wheel scrolling")
    public boolean isWheelScrollingEnabled()

    Indicates whether or not scrolling will take place in response to the
    mouse wheel. Wheel scrolling is enabled by default.

    Returns:
    :   true if mouse wheel scrolling is enabled, false otherwise

    Since:
    :   1.4

    See Also:
    :   - [`setWheelScrollingEnabled(boolean)`](#setWheelScrollingEnabled(boolean))
  + ### setWheelScrollingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Flag for enabling/disabling mouse wheel scrolling")
    public void setWheelScrollingEnabled(boolean handleWheel)

    Enables/disables scrolling in response to movement of the mouse wheel.
    Wheel scrolling is enabled by default.

    Parameters:
    :   `handleWheel` - `true` if scrolling should be done
        automatically for a MouseWheelEvent,
        `false` otherwise.

    Since:
    :   1.4

    See Also:
    :   - [`isWheelScrollingEnabled()`](#isWheelScrollingEnabled())
        - [`MouseWheelEvent`](../../java/awt/event/MouseWheelEvent.md "class in java.awt.event")
        - [`MouseWheelListener`](../../java/awt/event/MouseWheelListener.md "interface in java.awt.event")
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JScrollPane`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JScrollPane`.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JScrollPane.
    For scroll panes, the AccessibleContext takes the form of an
    AccessibleJScrollPane.
    A new AccessibleJScrollPane instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJScrollPane that serves as the
        AccessibleContext of this JScrollPane