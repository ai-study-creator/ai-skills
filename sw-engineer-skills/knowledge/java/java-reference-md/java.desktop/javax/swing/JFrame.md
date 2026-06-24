Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JFrame

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[java.awt.Window](../../java/awt/Window.md "class in java.awt")

[java.awt.Frame](../../java/awt/Frame.md "class in java.awt")

javax.swing.JFrame

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `RootPaneContainer`, `WindowConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="JMenuBar",
[description](../../java/beans/JavaBean.md#description())="A toplevel window which can be minimized to an icon.")
public class JFrame
extends [Frame](../../java/awt/Frame.md "class in java.awt")
implements [WindowConstants](WindowConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [RootPaneContainer](RootPaneContainer.md "interface in javax.swing")

An extended version of `java.awt.Frame` that adds support for
the JFC/Swing component architecture.
You can find task-oriented documentation about using `JFrame`
in *The Java Tutorial*, in the section
[How to Make Frames](https://docs.oracle.com/javase/tutorial/uiswing/components/frame.html).

The `JFrame` class is slightly incompatible with `Frame`.
Like all other JFC/Swing top-level containers,
a `JFrame` contains a `JRootPane` as its only child.
The **content pane** provided by the root pane should,
as a rule, contain
all the non-menu components displayed by the `JFrame`.
This is different from the AWT `Frame` case.
As a convenience, the `add`, `remove`, and `setLayout`
methods of this class are overridden, so that they delegate calls
to the corresponding methods of the `ContentPane`.
For example, you can add a child component to a frame as follows:

```
       frame.add(child);
```

And the child will be added to the contentPane.
The content pane will
always be non-null. Attempting to set it to null will cause the JFrame
to throw an exception. The default content pane will have a BorderLayout
manager set on it.
Refer to [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
for details on adding, removing and setting the `LayoutManager`
of a `JFrame`.

Unlike a `Frame`, a `JFrame` has some notion of how to
respond when the user attempts to close the window. The default behavior
is to simply hide the JFrame when the user closes the window. To change the
default behavior, you invoke the method
[`setDefaultCloseOperation(int)`](#setDefaultCloseOperation(int)).
To make the `JFrame` behave the same as a `Frame`
instance, use
`setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE)`.

For more information on content panes
and other features that root panes provide,
see [Using Top-Level Containers](https://docs.oracle.com/javase/tutorial/uiswing/components/toplevel.html) in *The Java Tutorial*.

In a multi-screen environment, you can create a `JFrame`
on a different screen device. See [`Frame`](../../java/awt/Frame.md "class in java.awt") for more
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
    * [`setDefaultCloseOperation(int)`](#setDefaultCloseOperation(int))
    * [`WindowListener.windowClosing(java.awt.event.WindowEvent)`](../../java/awt/event/WindowListener.md#windowClosing(java.awt.event.WindowEvent))
    * [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JFrame.AccessibleJFrame`

  This class implements accessibility support for the
  `JFrame` class.

  ## Nested classes/interfaces inherited from class java.awt.[Frame](../../java/awt/Frame.md "class in java.awt")

  `Frame.AccessibleAWTFrame`

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

  ### Fields inherited from class java.awt.[Frame](../../java/awt/Frame.md "class in java.awt")

  `CROSSHAIR_CURSOR, DEFAULT_CURSOR, E_RESIZE_CURSOR, HAND_CURSOR, ICONIFIED, MAXIMIZED_BOTH, MAXIMIZED_HORIZ, MAXIMIZED_VERT, MOVE_CURSOR, N_RESIZE_CURSOR, NE_RESIZE_CURSOR, NORMAL, NW_RESIZE_CURSOR, S_RESIZE_CURSOR, SE_RESIZE_CURSOR, SW_RESIZE_CURSOR, TEXT_CURSOR, W_RESIZE_CURSOR, WAIT_CURSOR`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[WindowConstants](WindowConstants.md "interface in javax.swing")

  `DISPOSE_ON_CLOSE, DO_NOTHING_ON_CLOSE, EXIT_ON_CLOSE, HIDE_ON_CLOSE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JFrame()`

  Constructs a new frame that is initially invisible.

  `JFrame(GraphicsConfiguration gc)`

  Creates a `Frame` in the specified
  `GraphicsConfiguration` of
  a screen device and a blank title.

  `JFrame(String title)`

  Creates a new, initially invisible `Frame` with the
  specified title.

  `JFrame(String title,
  GraphicsConfiguration gc)`

  Creates a `JFrame` with the specified title and the
  specified `GraphicsConfiguration` of a screen device.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

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

  `protected void`

  `frameInit()`

  Called by the constructors to init the `JFrame` properly.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JFrame.

  `Container`

  `getContentPane()`

  Returns the `contentPane` object for this frame.

  `int`

  `getDefaultCloseOperation()`

  Returns the operation that occurs when the user
  initiates a "close" on this frame.

  `Component`

  `getGlassPane()`

  Returns the `glassPane` object for this frame.

  `Graphics`

  `getGraphics()`

  Creates a graphics context for this component.

  `JMenuBar`

  `getJMenuBar()`

  Returns the menubar set on this frame.

  `JLayeredPane`

  `getLayeredPane()`

  Returns the `layeredPane` object for this frame.

  `JRootPane`

  `getRootPane()`

  Returns the `rootPane` object for this frame.

  `TransferHandler`

  `getTransferHandler()`

  Gets the `transferHandler` property.

  `static boolean`

  `isDefaultLookAndFeelDecorated()`

  Returns true if newly created `JFrame`s should have their
  Window decorations provided by the current look and feel.

  `protected boolean`

  `isRootPaneCheckingEnabled()`

  Returns whether calls to `add` and
  `setLayout` are forwarded to the `contentPane`.

  `protected String`

  `paramString()`

  Returns a string representation of this `JFrame`.

  `protected void`

  `processWindowEvent(WindowEvent e)`

  Processes window events occurring on this component.

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

  Sets the `contentPane` property.

  `void`

  `setDefaultCloseOperation(int operation)`

  Sets the operation that will happen by default when
  the user initiates a "close" on this frame.

  `static void`

  `setDefaultLookAndFeelDecorated(boolean defaultLookAndFeelDecorated)`

  Provides a hint as to whether or not newly created `JFrame`s
  should have their Window decorations (such as borders, widgets to
  close the window, title...) provided by the current look
  and feel.

  `void`

  `setGlassPane(Component glassPane)`

  Sets the `glassPane` property.

  `void`

  `setIconImage(Image image)`

  Sets the image to be displayed as the icon for this window.

  `void`

  `setJMenuBar(JMenuBar menubar)`

  Sets the menubar for this frame.

  `void`

  `setLayeredPane(JLayeredPane layeredPane)`

  Sets the `layeredPane` property.

  `void`

  `setLayout(LayoutManager manager)`

  Sets the `LayoutManager`.

  `protected void`

  `setRootPane(JRootPane root)`

  Sets the `rootPane` property.

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

  Just calls `paint(g)`.

  ### Methods inherited from class java.awt.[Frame](../../java/awt/Frame.md "class in java.awt")

  `addNotify, getCursorType, getExtendedState, getFrames, getIconImage, getMaximizedBounds, getMenuBar, getState, getTitle, isResizable, isUndecorated, remove, removeNotify, setBackground, setCursor, setExtendedState, setMaximizedBounds, setMenuBar, setOpacity, setResizable, setShape, setState, setTitle, setUndecorated`

  ### Methods inherited from class java.awt.[Window](../../java/awt/Window.md "class in java.awt")

  `addPropertyChangeListener, addPropertyChangeListener, addWindowFocusListener, addWindowListener, addWindowStateListener, applyResourceBundle, applyResourceBundle, createBufferStrategy, createBufferStrategy, dispose, getBackground, getBufferStrategy, getFocusableWindowState, getFocusCycleRootAncestor, getFocusOwner, getFocusTraversalKeys, getIconImages, getInputContext, getListeners, getLocale, getModalExclusionType, getMostRecentFocusOwner, getOpacity, getOwnedWindows, getOwner, getOwnerlessWindows, getShape, getToolkit, getType, getWarningString, getWindowFocusListeners, getWindowListeners, getWindows, getWindowStateListeners, hide, isActive, isAlwaysOnTop, isAlwaysOnTopSupported, isAutoRequestFocus, isFocusableWindow, isFocusCycleRoot, isFocused, isLocationByPlatform, isOpaque, isShowing, isValidateRoot, pack, paint, postEvent, processEvent, processWindowFocusEvent, processWindowStateEvent, removeWindowFocusListener, removeWindowListener, removeWindowStateListener, reshape, setAlwaysOnTop, setAutoRequestFocus, setBounds, setBounds, setCursor, setFocusableWindowState, setFocusCycleRoot, setIconImages, setLocation, setLocation, setLocationByPlatform, setLocationRelativeTo, setMinimumSize, setModalExclusionType, setSize, setSize, setType, setVisible, show, toBack, toFront`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalPolicy, getInsets, getLayout, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, print, printComponents, processContainerEvent, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, resize, resize, revalidate, setComponentOrientation, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setMaximumSize, setMixingCutoutShape, setName, setPreferredSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[MenuContainer](../../java/awt/MenuContainer.md "interface in java.awt")

  `getFont, postEvent`

* ## Field Details

  + ### rootPane

    protected [JRootPane](JRootPane.md "class in javax.swing") rootPane

    The `JRootPane` instance that manages the
    `contentPane`
    and optional `menuBar` for this frame, as well as the
    `glassPane`.

    See Also:
    :   - [`JRootPane`](JRootPane.md "class in javax.swing")
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### rootPaneCheckingEnabled

    protected boolean rootPaneCheckingEnabled

    If true then calls to `add` and `setLayout`
    will be forwarded to the `contentPane`. This is initially
    false, but is set to true when the `JFrame` is constructed.

    See Also:
    :   - [`isRootPaneCheckingEnabled()`](#isRootPaneCheckingEnabled())
        - [`setRootPaneCheckingEnabled(boolean)`](#setRootPaneCheckingEnabled(boolean))
        - [`RootPaneContainer`](RootPaneContainer.md "interface in javax.swing")
  + ### accessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") accessibleContext

    The accessible context property.
* ## Constructor Details

  + ### JFrame

    public JFrame()
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Constructs a new frame that is initially invisible.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](../../java/awt/Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](../../java/awt/Component.md#setVisible(boolean))
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JFrame

    public JFrame([GraphicsConfiguration](../../java/awt/GraphicsConfiguration.md "class in java.awt") gc)

    Creates a `Frame` in the specified
    `GraphicsConfiguration` of
    a screen device and a blank title.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `gc` - the `GraphicsConfiguration` that is used
        to construct the new `Frame`;
        if `gc` is `null`, the system
        default `GraphicsConfiguration` is assumed

    Throws:
    :   `IllegalArgumentException` - if `gc` is not from
        a screen device. This exception is always thrown when
        GraphicsEnvironment.isHeadless() returns true.

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JFrame

    public JFrame([String](../../../java.base/java/lang/String.md "class in java.lang") title)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Creates a new, initially invisible `Frame` with the
    specified title.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `title` - the title for the frame

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](../../java/awt/Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](../../java/awt/Component.md#setVisible(boolean))
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
  + ### JFrame

    public JFrame([String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [GraphicsConfiguration](../../java/awt/GraphicsConfiguration.md "class in java.awt") gc)

    Creates a `JFrame` with the specified title and the
    specified `GraphicsConfiguration` of a screen device.

    This constructor sets the component's locale property to the value
    returned by `JComponent.getDefaultLocale`.

    Parameters:
    :   `title` - the title to be displayed in the
        frame's border. A `null` value is treated as
        an empty string, "".
    :   `gc` - the `GraphicsConfiguration` that is used
        to construct the new `JFrame` with;
        if `gc` is `null`, the system
        default `GraphicsConfiguration` is assumed

    Throws:
    :   `IllegalArgumentException` - if `gc` is not from
        a screen device. This exception is always thrown when
        GraphicsEnvironment.isHeadless() returns true.

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`JComponent.getDefaultLocale()`](JComponent.md#getDefaultLocale())
* ## Method Details

  + ### frameInit

    protected void frameInit()

    Called by the constructors to init the `JFrame` properly.
  + ### createRootPane

    protected [JRootPane](JRootPane.md "class in javax.swing") createRootPane()

    Called by the constructor methods to create the default
    `rootPane`.

    Returns:
    :   a new `JRootPane`
  + ### processWindowEvent

    protected void processWindowEvent([WindowEvent](../../java/awt/event/WindowEvent.md "class in java.awt.event") e)

    Processes window events occurring on this component.
    Hides the window or disposes of it, as specified by the setting
    of the `defaultCloseOperation` property.

    Overrides:
    :   `processWindowEvent` in class `Window`

    Parameters:
    :   `e` - the window event

    See Also:
    :   - [`setDefaultCloseOperation(int)`](#setDefaultCloseOperation(int))
        - [`Window.processWindowEvent(java.awt.event.WindowEvent)`](../../java/awt/Window.md#processWindowEvent(java.awt.event.WindowEvent))
  + ### setDefaultCloseOperation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"WindowConstants.DO\_NOTHING\_ON\_CLOSE","WindowConstants.HIDE\_ON\_CLOSE","WindowConstants.DISPOSE\_ON\_CLOSE","WindowConstants.EXIT\_ON\_CLOSE"},
    [description](../../java/beans/BeanProperty.md#description())="The frame\'s default close operation.")
    public void setDefaultCloseOperation(int operation)

    Sets the operation that will happen by default when
    the user initiates a "close" on this frame.
    You must specify one of the following choices:
      
      
    - `DO_NOTHING_ON_CLOSE`
      (defined in `WindowConstants`):
      Don't do anything; require the
      program to handle the operation in the `windowClosing`
      method of a registered `WindowListener` object.- `HIDE_ON_CLOSE`
        (defined in `WindowConstants`):
        Automatically hide the frame after
        invoking any registered `WindowListener`
        objects.- `DISPOSE_ON_CLOSE`
          (defined in `WindowConstants`):
          Automatically hide and dispose the
          frame after invoking any registered `WindowListener`
          objects.- `EXIT_ON_CLOSE`
            (defined in `WindowConstants`):
            Exit the application using the `System`
            `exit` method. Use this only in applications.

    The value is set to `HIDE_ON_CLOSE` by default. Changes
    to the value of this property cause the firing of a property
    change event, with property name "defaultCloseOperation".

    **Note**: When the last displayable window within the
    Java virtual machine (VM) is disposed of, the VM may
    terminate. See [AWT Threading Issues](../../java/awt/doc-files/AWTThreadIssues.md) for more information.

    Parameters:
    :   `operation` - the operation which should be performed when the
        user closes the frame

    Throws:
    :   `IllegalArgumentException` - if defaultCloseOperation value
        isn't one of the above valid values
    :   `SecurityException` - if `EXIT_ON_CLOSE` has been specified and the
        `SecurityManager` will
        not allow the caller to invoke `System.exit`

    See Also:
    :   - [`Window.addWindowListener(java.awt.event.WindowListener)`](../../java/awt/Window.md#addWindowListener(java.awt.event.WindowListener))
        - [`getDefaultCloseOperation()`](#getDefaultCloseOperation())
        - [`WindowConstants`](WindowConstants.md "interface in javax.swing")
        - [`Runtime.exit(int)`](../../../java.base/java/lang/Runtime.md#exit(int))
  + ### getDefaultCloseOperation

    public int getDefaultCloseOperation()

    Returns the operation that occurs when the user
    initiates a "close" on this frame.

    Returns:
    :   an integer indicating the window-close operation

    See Also:
    :   - [`setDefaultCloseOperation(int)`](#setDefaultCloseOperation(int))
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

    Note: When used with `JFrame`, `TransferHandler` only
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

    Just calls `paint(g)`. This method was overridden to
    prevent an unnecessary call to clear the background.

    Overrides:
    :   `update` in class `Container`

    Parameters:
    :   `g` - the Graphics context in which to paint

    See Also:
    :   - [`Component.update(Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
  + ### setJMenuBar

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The menubar for accessing pulldown menus from this frame.")
    public void setJMenuBar([JMenuBar](JMenuBar.md "class in javax.swing") menubar)

    Sets the menubar for this frame.

    Parameters:
    :   `menubar` - the menubar being placed in the frame

    See Also:
    :   - [`getJMenuBar()`](#getJMenuBar())
  + ### getJMenuBar

    public [JMenuBar](JMenuBar.md "class in javax.swing") getJMenuBar()

    Returns the menubar set on this frame.

    Returns:
    :   the menubar for this frame

    See Also:
    :   - [`setJMenuBar(javax.swing.JMenuBar)`](#setJMenuBar(javax.swing.JMenuBar))
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
  + ### setRootPaneCheckingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the add and setLayout methods are forwarded")
    protected void setRootPaneCheckingEnabled(boolean enabled)

    Sets whether calls to `add` and
    `setLayout` are forwarded to the `contentPane`.

    Parameters:
    :   `enabled` - true if `add` and `setLayout`
        are forwarded, false if they should operate directly on the
        `JFrame`.

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
    `comp` is not a child of the `JFrame` or
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
    [description](../../java/beans/BeanProperty.md#description())="the RootPane object for this frame.")
    public [JRootPane](JRootPane.md "class in javax.swing") getRootPane()

    Returns the `rootPane` object for this frame.

    Specified by:
    :   `getRootPane` in interface `RootPaneContainer`

    Returns:
    :   the `rootPane` property

    See Also:
    :   - [`setRootPane(javax.swing.JRootPane)`](#setRootPane(javax.swing.JRootPane))
        - [`RootPaneContainer.getRootPane()`](RootPaneContainer.md#getRootPane())
  + ### setRootPane

    protected void setRootPane([JRootPane](JRootPane.md "class in javax.swing") root)

    Sets the `rootPane` property.
    This method is called by the constructor.

    Parameters:
    :   `root` - the `rootPane` object for this frame

    See Also:
    :   - [`getRootPane()`](#getRootPane())
  + ### setIconImage

    public void setIconImage([Image](../../java/awt/Image.md "class in java.awt") image)

    Sets the image to be displayed as the icon for this window.

    This method can be used instead of [`setIconImages()`](../../java/awt/Window.md#setIconImages(java.util.List))
    to specify a single image as a window's icon.

    The following statement:

    ```
         setIconImage(image);
    ```

    is equivalent to:

    ```
         ArrayList<Image> imageList = new ArrayList<Image>();
         imageList.add(image);
         setIconImages(imageList);
    ```

    Note : Native windowing systems may use different images of differing
    dimensions to represent a window, depending on the context (e.g.
    window decoration, window list, taskbar, etc.). They could also use
    just a single image for all contexts or no image at all.

    Overrides:
    :   `setIconImage` in class `Frame`

    Parameters:
    :   `image` - the icon image to be displayed.

    See Also:
    :   - [`Window.setIconImages(java.util.List<? extends java.awt.Image>)`](../../java/awt/Window.md#setIconImages(java.util.List))
        - [`Window.getIconImages()`](../../java/awt/Window.md#getIconImages())
  + ### getContentPane

    public [Container](../../java/awt/Container.md "class in java.awt") getContentPane()

    Returns the `contentPane` object for this frame.

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
    [description](../../java/beans/BeanProperty.md#description())="The client area of the frame where child components are normally inserted.")
    public void setContentPane([Container](../../java/awt/Container.md "class in java.awt") contentPane)

    Sets the `contentPane` property.
    This method is called by the constructor.

    Swing's painting architecture requires an opaque `JComponent`
    in the containment hierarchy. This is typically provided by the
    content pane. If you replace the content pane it is recommended you
    replace it with an opaque `JComponent`.

    Specified by:
    :   `setContentPane` in interface `RootPaneContainer`

    Parameters:
    :   `contentPane` - the `contentPane` object for this frame

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the content pane parameter is `null`

    See Also:
    :   - [`getContentPane()`](#getContentPane())
        - [`RootPaneContainer.setContentPane(java.awt.Container)`](RootPaneContainer.md#setContentPane(java.awt.Container))
        - [`JRootPane`](JRootPane.md "class in javax.swing")
  + ### getLayeredPane

    public [JLayeredPane](JLayeredPane.md "class in javax.swing") getLayeredPane()

    Returns the `layeredPane` object for this frame.

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
    [description](../../java/beans/BeanProperty.md#description())="The pane that holds the various frame layers.")
    public void setLayeredPane([JLayeredPane](JLayeredPane.md "class in javax.swing") layeredPane)

    Sets the `layeredPane` property.
    This method is called by the constructor.

    Specified by:
    :   `setLayeredPane` in interface `RootPaneContainer`

    Parameters:
    :   `layeredPane` - the `layeredPane` object for this frame

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the layered pane parameter is `null`

    See Also:
    :   - [`getLayeredPane()`](#getLayeredPane())
        - [`RootPaneContainer.setLayeredPane(javax.swing.JLayeredPane)`](RootPaneContainer.md#setLayeredPane(javax.swing.JLayeredPane))
  + ### getGlassPane

    public [Component](../../java/awt/Component.md "class in java.awt") getGlassPane()

    Returns the `glassPane` object for this frame.

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
    :   `glassPane` - the `glassPane` object for this frame

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
  + ### setDefaultLookAndFeelDecorated

    public static void setDefaultLookAndFeelDecorated(boolean defaultLookAndFeelDecorated)

    Provides a hint as to whether or not newly created `JFrame`s
    should have their Window decorations (such as borders, widgets to
    close the window, title...) provided by the current look
    and feel. If `defaultLookAndFeelDecorated` is true,
    the current `LookAndFeel` supports providing window
    decorations, and the current window manager supports undecorated
    windows, then newly created `JFrame`s will have their
    Window decorations provided by the current `LookAndFeel`.
    Otherwise, newly created `JFrame`s will have their
    Window decorations provided by the current window manager.

    You can get the same effect on a single JFrame by doing the following:

    ```
        JFrame frame = new JFrame();
        frame.setUndecorated(true);
        frame.getRootPane().setWindowDecorationStyle(JRootPane.FRAME);
    ```

    Parameters:
    :   `defaultLookAndFeelDecorated` - A hint as to whether or not current
        look and feel should provide window decorations

    Since:
    :   1.4

    See Also:
    :   - [`LookAndFeel.getSupportsWindowDecorations()`](LookAndFeel.md#getSupportsWindowDecorations())
  + ### isDefaultLookAndFeelDecorated

    public static boolean isDefaultLookAndFeelDecorated()

    Returns true if newly created `JFrame`s should have their
    Window decorations provided by the current look and feel. This is only
    a hint, as certain look and feels may not support this feature.

    Returns:
    :   true if look and feel should provide Window decorations.

    Since:
    :   1.4
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JFrame`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `Frame`

    Returns:
    :   a string representation of this `JFrame`
  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JFrame.
    For JFrames, the AccessibleContext takes the form of an
    AccessibleJFrame.
    A new AccessibleJFrame instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Frame`

    Returns:
    :   an AccessibleJFrame that serves as the
        AccessibleContext of this JFrame