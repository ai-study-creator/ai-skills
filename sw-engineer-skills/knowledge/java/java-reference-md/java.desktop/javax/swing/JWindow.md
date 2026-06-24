Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JWindow

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[java.awt.Window](../../java/awt/Window.md "class in java.awt")

javax.swing.JWindow

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `RootPaneContainer`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="accessibleContext",
[description](../../java/beans/JavaBean.md#description())="A toplevel window which has no system border or controls.")
public class JWindow
extends [Window](../../java/awt/Window.md "class in java.awt")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [RootPaneContainer](RootPaneContainer.md "interface in javax.swing")

A `JWindow` is a container that can be displayed anywhere on the
user's desktop. It does not have the title bar, window-management buttons,
or other trimmings associated with a `JFrame`, but it is still a
"first-class citizen" of the user's desktop, and can exist anywhere
on it.

The `JWindow` component contains a `JRootPane`
as its only child. The `contentPane` should be the parent
of any children of the `JWindow`.
As a convenience, the `add`, `remove`, and `setLayout`
methods of this class are overridden, so that they delegate calls
to the corresponding methods of the `ContentPane`.
For example, you can add a child component to a window as follows:

```
       window.add(child);
```

And the child will be added to the contentPane.
The `contentPane` will always be non-`null`.
Attempting to set it to `null` will cause the `JWindow`
to throw an exception. The default `contentPane` will have a
`BorderLayout` manager set on it.
Refer to [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
for details on adding, removing and setting the `LayoutManager`
of a `JWindow`.

Please see the [`JRootPane`](JRootPane.md "class in javax.swing") documentation for a complete description of
the `contentPane`, `glassPane`, and
`layeredPane` components.

In a multi-screen environment, you can create a `JWindow`
on a different screen device. See [`Window`](../../java/awt/Window.md "class in java.awt") for more
information.

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
:   * [`JRootPane`](JRootPane.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JWindow.AccessibleJWindow`

  This class implements accessibility support for the
  `JWindow` class.

  ## Nested classes/interfaces inherited from class java.awt.[Window](../../java/awt/Window.md "class in java.awt")

  `Window.AccessibleAWTWindow, Window.Type`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected AccessibleContext`

  `accessibleContext`

  The accessible context property.

  `protected JRootPane`

  `rootPane`

  The `JRootPane` instance that manages the
  `contentPane`
  and optional `menuBar` for this frame, as well as the
  `glassPane`.

  `protected boolean`

  `rootPaneCheckingEnabled`

  If true then calls to `add` and `setLayout`
  will be forwarded to the `contentPane`.

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JWindow()`

  Creates a window with no specified owner.

  `JWindow(Frame owner)`

  Creates a window with the specified owner frame.

  `JWindow(GraphicsConfiguration gc)`

  Creates a window with the specified `GraphicsConfiguration`
  of a screen device.

  `JWindow(Window owner)`

  Creates a window with the specified owner window.

  `JWindow(Window owner,
  GraphicsConfiguration gc)`

  Creates a window with the specified owner window and
  `GraphicsConfiguration` of a screen device.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  Adds the specified child `Component`.

  `protected JRootPane`

  `createRootPane()`

  Called by the constructor methods to create the default
  `rootPane`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JWindow.

  `Container`

  `getContentPane()`

  Returns the `Container` which is the `contentPane`
  for this window.

  `Component`

  `getGlassPane()`

  Returns the `glassPane Component` for this window.

  `Graphics`

  `getGraphics()`

  Creates a graphics context for this component.

  `JLayeredPane`

  `getLayeredPane()`

  Returns the `layeredPane` object for this window.

  `JRootPane`

  `getRootPane()`

  Returns the `rootPane` object for this window.

  `TransferHandler`

  `getTransferHandler()`

  Gets the `transferHandler` property.

  `protected boolean`

  `isRootPaneCheckingEnabled()`

  Returns whether calls to `add` and
  `setLayout` are forwarded to the `contentPane`.

  `protected String`

  `paramString()`

  Returns a string representation of this `JWindow`.

  `void`

  `remove(Component comp)`

  Removes the specified component from the container.

  `void`

  `repaint(long time,
  int x,
  int y,
  int width,
  int height)`

  Repaints the specified rectangle of this component within
  `time` milliseconds.

  `void`

  `setContentPane(Container contentPane)`

  Sets the `contentPane` property for this window.

  `void`

  `setGlassPane(Component glassPane)`

  Sets the `glassPane` property.

  `void`

  `setLayeredPane(JLayeredPane layeredPane)`

  Sets the `layeredPane` property.

  `void`

  `setLayout(LayoutManager manager)`

  Sets the `LayoutManager`.

  `protected void`

  `setRootPane(JRootPane root)`

  Sets the new `rootPane` object for this window.

  `protected void`

  `setRootPaneCheckingEnabled(boolean enabled)`

  Sets whether calls to `add` and
  `setLayout` are forwarded to the `contentPane`.

  `void`

  `setTransferHandler(TransferHandler newHandler)`

  Sets the `transferHandler` property, which is a mechanism to
  support transfer of data into this component.

  `void`

  `update(Graphics g)`

  Calls `paint(g)`.

  `protected void`

  `windowInit()`

  Called by the constructors to init the `JWindow` properly.

  ### Methods inherited from class java.awt.[Window](../../java/awt/Window.md "class in java.awt")

  `addNotify, addPropertyChangeListener, addPropertyChangeListener, addWindowFocusListener, addWindowListener, addWindowStateListener, applyResourceBundle, applyResourceBundle, createBufferStrategy, createBufferStrategy, dispose, getBackground, getBufferStrategy, getFocusableWindowState, getFocusCycleRootAncestor, getFocusOwner, getFocusTraversalKeys, getIconImages, getInputContext, getListeners, getLocale, getModalExclusionType, getMostRecentFocusOwner, getOpacity, getOwnedWindows, getOwner, getOwnerlessWindows, getShape, getToolkit, getType, getWarningString, getWindowFocusListeners, getWindowListeners, getWindows, getWindowStateListeners, hide, isActive, isAlwaysOnTop, isAlwaysOnTopSupported, isAutoRequestFocus, isFocusableWindow, isFocusCycleRoot, isFocused, isLocationByPlatform, isOpaque, isShowing, isValidateRoot, pack, paint, postEvent, processEvent, processWindowEvent, processWindowFocusEvent, processWindowStateEvent, removeNotify, removeWindowFocusListener, removeWindowListener, removeWindowStateListener, reshape, setAlwaysOnTop, setAutoRequestFocus, setBackground, setBounds, setBounds, setCursor, setFocusableWindowState, setFocusCycleRoot, setIconImage, setIconImages, setLocation, setLocation, setLocationByPlatform, setLocationRelativeTo, setMinimumSize, setModalExclusionType, setOpacity, setShape, setSize, setSize, setType, setVisible, show, toBack, toFront`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalPolicy, getInsets, getLayout, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, print, printComponents, processContainerEvent, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, resize, resize, revalidate, setComponentOrientation, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setMaximumSize, setMixingCutoutShape, setName, setPreferredSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### rootPane

    protected [JRootPane](JRootPane.md "class in javax.swing") rootPane

    The `JRootPane` instance that manages the
    `contentPane`
    and optional `menuBar` for this frame, as well as the
    `glassPane`.

    See Also:
    :   - [`getRootPane()`](#getRootPane())
        - [`setRootPane(javax.swing.JRootPane)`](#setRootPane(javax.swing.JRootPane))
  + ### rootPaneCheckingEnabled

    protected boolean rootPaneCheckingEnabled

    If true then calls to `add` and `setLayout`
    will be forwarded to the `contentPane`. This is initially
    false, but is set to true when the `JWindow` is constructed.

    See Also:
    :   - [`isRootPaneCheckingEnabled()`](#isRootPaneCheckingEnabled())
        - [`setRootPaneCheckingEnabled(boolean)`](#setRootPaneCheckingEnabled(boolean))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### accessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") accessibleContext

    The accessible context property.
* ## Constructor Details

  + ### JWindow

    public JWindow()

    Creates a window with no specified owner. This window will not be
    focusable.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Window.isFocusableWindow()`](../../java/awt/Window.md#isFocusableWindow())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JWindow

    public JWindow([GraphicsConfiguration](../../java/awt/GraphicsConfiguration.md "class in java.awt") gc)

    Creates a window with the specified `GraphicsConfiguration`
    of a screen device. This window will not be focusable.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `gc` - the `GraphicsConfiguration` that is used
        to construct the new window with; if gc is `null`,
        the system default `GraphicsConfiguration`
        is assumed

    Throws:
    :   `HeadlessException` - If
        `GraphicsEnvironment.isHeadless()` returns true.
    :   `IllegalArgumentException` - if `gc` is not from
        a screen device.

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Window.isFocusableWindow()`](../../java/awt/Window.md#isFocusableWindow())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JWindow

    public JWindow([Frame](../../java/awt/Frame.md "class in java.awt") owner)

    Creates a window with the specified owner frame.
    If `owner` is `null`, the shared owner
    will be used and this window will not be focusable. Also,
    this window will not be focusable unless its owner is showing
    on the screen.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `owner` - the frame from which the window is displayed

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Window.isFocusableWindow()`](../../java/awt/Window.md#isFocusableWindow())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JWindow

    public JWindow([Window](../../java/awt/Window.md "class in java.awt") owner)

    Creates a window with the specified owner window. This window
    will not be focusable unless its owner is showing on the screen.
    If `owner` is `null`, the shared owner
    will be used and this window will not be focusable.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `owner` - the window from which the window is displayed

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Window.isFocusableWindow()`](../../java/awt/Window.md#isFocusableWindow())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JWindow

    public JWindow([Window](../../java/awt/Window.md "class in java.awt") owner,
    [GraphicsConfiguration](../../java/awt/GraphicsConfiguration.md "class in java.awt") gc)

    Creates a window with the specified owner window and
    `GraphicsConfiguration` of a screen device. If
    `owner` is `null`, the shared owner will be used
    and this window will not be focusable.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `owner` - the window from which the window is displayed
    :   `gc` - the `GraphicsConfiguration` that is used
        to construct the new window with; if gc is `null`,
        the system default `GraphicsConfiguration`
        is assumed, unless `owner` is also null, in which
        case the `GraphicsConfiguration` from the
        shared owner frame will be used.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns true.
    :   `IllegalArgumentException` - if `gc` is not from
        a screen device.

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Window.isFocusableWindow()`](../../java/awt/Window.md#isFocusableWindow())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
* ## Method Details

  + ### windowInit

    protected void windowInit()

    Called by the constructors to init the `JWindow` properly.
  + ### createRootPane

    protected [JRootPane](JRootPane.md "class in javax.swing") createRootPane()

    Called by the constructor methods to create the default
    `rootPane`.

    Returns:
    :   a new `JRootPane`
  + ### isRootPaneCheckingEnabled

    protected boolean isRootPaneCheckingEnabled()

    Returns whether calls to `add` and
    `setLayout` are forwarded to the `contentPane`.

    Returns:
    :   true if `add` and `setLayout`
        are forwarded; false otherwise

    See Also:
    :   - [`addImpl(java.awt.Component, java.lang.Object, int)`](#addImpl(java.awt.Component,java.lang.Object,int))
        - [`setLayout(java.awt.LayoutManager)`](#setLayout(java.awt.LayoutManager))
        - [`setRootPaneCheckingEnabled(boolean)`](#setRootPaneCheckingEnabled(boolean))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### setTransferHandler

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="Mechanism for transfer of data into the component")
    public void setTransferHandler([TransferHandler](TransferHandler.md "class in javax.swing") newHandler)

    Sets the `transferHandler` property, which is a mechanism to
    support transfer of data into this component. Use `null`
    if the component does not support data transfer operations.

    If the system property `suppressSwingDropSupport` is `false`
    (the default) and the current drop target on this component is either
    `null` or not a user-set drop target, this method will change the
    drop target as follows: If `newHandler` is `null` it will
    clear the drop target. If not `null` it will install a new
    `DropTarget`.

    Note: When used with `JWindow`, `TransferHandler` only
    provides data import capability, as the data export related methods
    are currently typed to `JComponent`.

    Please see
    [How to Use Drag and Drop and Data Transfer](https://docs.oracle.com/javase/tutorial/uiswing/dnd/index.html), a section in
    *The Java Tutorial*, for more information.

    Parameters:
    :   `newHandler` - the new `TransferHandler`

    Since:
    :   1.6

    See Also:
    :   - [`TransferHandler`](TransferHandler.md "class in javax.swing")
        - [`getTransferHandler()`](#getTransferHandler())
        - [`Component.setDropTarget(java.awt.dnd.DropTarget)`](../../java/awt/Component.md#setDropTarget(java.awt.dnd.DropTarget))
  + ### getTransferHandler

    public [TransferHandler](TransferHandler.md "class in javax.swing") getTransferHandler()

    Gets the `transferHandler` property.

    Returns:
    :   the value of the `transferHandler` property

    Since:
    :   1.6

    See Also:
    :   - [`TransferHandler`](TransferHandler.md "class in javax.swing")
        - [`setTransferHandler(javax.swing.TransferHandler)`](#setTransferHandler(javax.swing.TransferHandler))
  + ### update

    public void update([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Calls `paint(g)`. This method was overridden to
    prevent an unnecessary call to clear the background.

    Overrides:
    :   `update` in class `Container`

    Parameters:
    :   `g` - the `Graphics` context in which to paint

    See Also:
    :   - [`Component.update(Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
  + ### setRootPaneCheckingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the add and setLayout methods are forwarded")
    protected void setRootPaneCheckingEnabled(boolean enabled)

    Sets whether calls to `add` and
    `setLayout` are forwarded to the `contentPane`.

    Parameters:
    :   `enabled` - true if `add` and `setLayout`
        are forwarded, false if they should operate directly on the
        `JWindow`.

    See Also:
    :   - [`addImpl(java.awt.Component, java.lang.Object, int)`](#addImpl(java.awt.Component,java.lang.Object,int))
        - [`setLayout(java.awt.LayoutManager)`](#setLayout(java.awt.LayoutManager))
        - [`isRootPaneCheckingEnabled()`](#isRootPaneCheckingEnabled())
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    Adds the specified child `Component`.
    This method is overridden to conditionally forward calls to the
    `contentPane`.
    By default, children are added to the `contentPane` instead
    of the frame, refer to [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing") for
    details.

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `comp` - the component to be enhanced
    :   `constraints` - the constraints to be respected
    :   `index` - the index

    Throws:
    :   `IllegalArgumentException` - if `index` is invalid
    :   `IllegalArgumentException` - if adding the container's parent
        to itself
    :   `IllegalArgumentException` - if adding a window to a container

    See Also:
    :   - [`setRootPaneCheckingEnabled(boolean)`](#setRootPaneCheckingEnabled(boolean))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### remove

    public void remove([Component](../../java/awt/Component.md "class in java.awt") comp)

    Removes the specified component from the container. If
    `comp` is not the `rootPane`, this will forward
    the call to the `contentPane`. This will do nothing if
    `comp` is not a child of the `JWindow` or
    `contentPane`.

    Overrides:
    :   `remove` in class `Container`

    Parameters:
    :   `comp` - the component to be removed

    Throws:
    :   `NullPointerException` - if `comp` is null

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### setLayout

    public void setLayout([LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt") manager)

    Sets the `LayoutManager`.
    Overridden to conditionally forward the call to the
    `contentPane`.
    Refer to [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing") for
    more information.

    Overrides:
    :   `setLayout` in class `Container`

    Parameters:
    :   `manager` - the `LayoutManager`

    See Also:
    :   - [`setRootPaneCheckingEnabled(boolean)`](#setRootPaneCheckingEnabled(boolean))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### getRootPane

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="the RootPane object for this window.")
    public [JRootPane](JRootPane.md "class in javax.swing") getRootPane()

    Returns the `rootPane` object for this window.

    Specified by:
    :   `getRootPane` in interface `RootPaneContainer`

    Returns:
    :   the `rootPane` property for this window

    See Also:
    :   - [`setRootPane(javax.swing.JRootPane)`](#setRootPane(javax.swing.JRootPane))
        - [`RootPaneContainer.getRootPane()`](RootPaneContainer.md#getRootPane())
  + ### setRootPane

    protected void setRootPane([JRootPane](JRootPane.md "class in javax.swing") root)

    Sets the new `rootPane` object for this window.
    This method is called by the constructor.

    Parameters:
    :   `root` - the new `rootPane` property

    See Also:
    :   - [`getRootPane()`](#getRootPane())
  + ### getContentPane

    public [Container](../../java/awt/Container.md "class in java.awt") getContentPane()

    Returns the `Container` which is the `contentPane`
    for this window.

    Specified by:
    :   `getContentPane` in interface `RootPaneContainer`

    Returns:
    :   the `contentPane` property

    See Also:
    :   - [`setContentPane(java.awt.Container)`](#setContentPane(java.awt.Container))
        - [`RootPaneContainer.getContentPane()`](RootPaneContainer.md#getContentPane())
  + ### setContentPane

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The client area of the window where child components are normally inserted.")
    public void setContentPane([Container](../../java/awt/Container.md "class in java.awt") contentPane)

    Sets the `contentPane` property for this window.
    This method is called by the constructor.

    Specified by:
    :   `setContentPane` in interface `RootPaneContainer`

    Parameters:
    :   `contentPane` - the new `contentPane`

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the content pane parameter is `null`

    See Also:
    :   - [`getContentPane()`](#getContentPane())
        - [`RootPaneContainer.setContentPane(java.awt.Container)`](RootPaneContainer.md#setContentPane(java.awt.Container))
  + ### getLayeredPane

    public [JLayeredPane](JLayeredPane.md "class in javax.swing") getLayeredPane()

    Returns the `layeredPane` object for this window.

    Specified by:
    :   `getLayeredPane` in interface `RootPaneContainer`

    Returns:
    :   the `layeredPane` property

    See Also:
    :   - [`setLayeredPane(javax.swing.JLayeredPane)`](#setLayeredPane(javax.swing.JLayeredPane))
        - [`RootPaneContainer.getLayeredPane()`](RootPaneContainer.md#getLayeredPane())
  + ### setLayeredPane

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The pane which holds the various window layers.")
    public void setLayeredPane([JLayeredPane](JLayeredPane.md "class in javax.swing") layeredPane)

    Sets the `layeredPane` property.
    This method is called by the constructor.

    Specified by:
    :   `setLayeredPane` in interface `RootPaneContainer`

    Parameters:
    :   `layeredPane` - the new `layeredPane` object

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the content pane parameter is `null`

    See Also:
    :   - [`getLayeredPane()`](#getLayeredPane())
        - [`RootPaneContainer.setLayeredPane(javax.swing.JLayeredPane)`](RootPaneContainer.md#setLayeredPane(javax.swing.JLayeredPane))
  + ### getGlassPane

    public [Component](../../java/awt/Component.md "class in java.awt") getGlassPane()

    Returns the `glassPane Component` for this window.

    Specified by:
    :   `getGlassPane` in interface `RootPaneContainer`

    Returns:
    :   the `glassPane` property

    See Also:
    :   - [`setGlassPane(java.awt.Component)`](#setGlassPane(java.awt.Component))
        - [`RootPaneContainer.getGlassPane()`](RootPaneContainer.md#getGlassPane())
  + ### setGlassPane

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="A transparent pane used for menu rendering.")
    public void setGlassPane([Component](../../java/awt/Component.md "class in java.awt") glassPane)

    Sets the `glassPane` property.
    This method is called by the constructor.

    Specified by:
    :   `setGlassPane` in interface `RootPaneContainer`

    Parameters:
    :   `glassPane` - the `glassPane` object for this window

    See Also:
    :   - [`getGlassPane()`](#getGlassPane())
        - [`RootPaneContainer.setGlassPane(java.awt.Component)`](RootPaneContainer.md#setGlassPane(java.awt.Component))
  + ### getGraphics

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Graphics](../../java/awt/Graphics.md "class in java.awt") getGraphics()

    Creates a graphics context for this component. This method will
    return `null` if this component is currently not
    displayable.

    Overrides:
    :   `getGraphics` in class `Component`

    Returns:
    :   a graphics context for this component, or `null`
        if it has none

    Since:
    :   1.6

    See Also:
    :   - [`Component.paint(java.awt.Graphics)`](../../java/awt/Component.md#paint(java.awt.Graphics))
  + ### repaint

    public void repaint(long time,
    int x,
    int y,
    int width,
    int height)

    Repaints the specified rectangle of this component within
    `time` milliseconds. Refer to `RepaintManager`
    for details on how the repaint is handled.

    Overrides:
    :   `repaint` in class `Component`

    Parameters:
    :   `time` - maximum time in milliseconds before update
    :   `x` - the *x* coordinate
    :   `y` - the *y* coordinate
    :   `width` - the width
    :   `height` - the height

    Since:
    :   1.6

    See Also:
    :   - [`RepaintManager`](RepaintManager.md "class in javax.swing")
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JWindow`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `Container`

    Returns:
    :   a string representation of this `JWindow`
  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JWindow.
    For JWindows, the AccessibleContext takes the form of an
    AccessibleJWindow.
    A new AccessibleJWindow instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Window`

    Returns:
    :   an AccessibleJWindow that serves as the
        AccessibleContext of this JWindow