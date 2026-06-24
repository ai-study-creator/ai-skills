Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Frame

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](Component.md "class in java.awt")

[java.awt.Container](Container.md "class in java.awt")

[java.awt.Window](Window.md "class in java.awt")

java.awt.Frame

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

Direct Known Subclasses:
:   `JFrame`

---

public class Frame
extends [Window](Window.md "class in java.awt")
implements [MenuContainer](MenuContainer.md "interface in java.awt")

A `Frame` is a top-level window with a title and a border.

The size of the frame includes any area designated for the
border. The dimensions of the border area may be obtained
using the `getInsets` method, however, since
these dimensions are platform-dependent, a valid insets
value cannot be obtained until the frame is made displayable
by either calling `pack` or `show`.
Since the border area is included in the overall size of the
frame, the border effectively obscures a portion of the frame,
constraining the area available for rendering and/or displaying
subcomponents to the rectangle which has an upper-left corner
location of `(insets.left, insets.top)`, and has a size of
`width - (insets.left + insets.right)` by
`height - (insets.top + insets.bottom)`.

The default layout for a frame is `BorderLayout`.

A frame may have its native decorations (i.e. `Frame`
and `Titlebar`) turned off
with `setUndecorated`. This can only be done while the frame
is not [`displayable`](Component.md#isDisplayable()).

In a multi-screen environment, you can create a `Frame`
on a different screen device by constructing the `Frame`
with [`Frame(GraphicsConfiguration)`](#%3Cinit%3E(java.awt.GraphicsConfiguration)) or
[`Frame(String title, GraphicsConfiguration)`](#%3Cinit%3E(java.lang.String,java.awt.GraphicsConfiguration)). The
`GraphicsConfiguration` object is one of the
`GraphicsConfiguration` objects of the target screen
device.

In a virtual device multi-screen environment in which the desktop
area could span multiple physical screen devices, the bounds of all
configurations are relative to the virtual-coordinate system. The
origin of the virtual-coordinate system is at the upper left-hand
corner of the primary physical screen. Depending on the location
of the primary screen in the virtual device, negative coordinates
are possible, as shown in the following figure.

![Diagram of virtual device
 encompassing three physical screens and one primary physical screen. The
 primary physical screen shows (0,0) coords while a different physical screen
 shows (-80,-100) coords.](doc-files/MultiScreen.gif)

In such an environment, when calling `setLocation`,
you must pass a virtual coordinate to this method. Similarly,
calling `getLocationOnScreen` on a `Frame`
returns virtual device coordinates. Call the `getBounds`
method of a `GraphicsConfiguration` to find its origin in
the virtual coordinate system.

The following code sets the
location of the `Frame` at (10, 10) relative
to the origin of the physical screen of the corresponding
`GraphicsConfiguration`. If the bounds of the
`GraphicsConfiguration` is not taken into account, the
`Frame` location would be set at (10, 10) relative to the
virtual-coordinate system and would appear on the primary physical
screen, which might be different from the physical screen of the
specified `GraphicsConfiguration`.

```
      Frame f = new Frame(GraphicsConfiguration gc);
      Rectangle bounds = gc.getBounds();
      f.setLocation(10 + bounds.x, 10 + bounds.y);
```

Frames are capable of generating the following types of
`WindowEvent`s:

* `WINDOW_OPENED`* `WINDOW_CLOSING`:
      
    If the program doesn't
    explicitly hide or dispose the window while processing
    this event, the window close operation is canceled.* `WINDOW_CLOSED`* `WINDOW_ICONIFIED`* `WINDOW_DEICONIFIED`* `WINDOW_ACTIVATED`* `WINDOW_DEACTIVATED`* `WINDOW_GAINED_FOCUS`* `WINDOW_LOST_FOCUS`* `WINDOW_STATE_CHANGED`

Since:
:   1.0

See Also:
:   * [`WindowEvent`](event/WindowEvent.md "class in java.awt.event")
    * [`Window.addWindowListener(java.awt.event.WindowListener)`](Window.md#addWindowListener(java.awt.event.WindowListener))
    * [Serialized Form](../../../serialized-form.md#java.awt.Frame)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Frame.AccessibleAWTFrame`

  This class implements accessibility support for the
  `Frame` class.

  ## Nested classes/interfaces inherited from class java.awt.[Window](Window.md "class in java.awt")

  `Window.AccessibleAWTWindow, Window.Type`

  ## Nested classes/interfaces inherited from class java.awt.[Container](Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CROSSHAIR_CURSOR`

  Deprecated.

  replaced by `Cursor.CROSSHAIR_CURSOR`.

  `static final int`

  `DEFAULT_CURSOR`

  Deprecated.

  replaced by `Cursor.DEFAULT_CURSOR`.

  `static final int`

  `E_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.E_RESIZE_CURSOR`.

  `static final int`

  `HAND_CURSOR`

  Deprecated.

  replaced by `Cursor.HAND_CURSOR`.

  `static final int`

  `ICONIFIED`

  This state bit indicates that frame is iconified.

  `static final int`

  `MAXIMIZED_BOTH`

  This state bit mask indicates that frame is fully maximized
  (that is both horizontally and vertically).

  `static final int`

  `MAXIMIZED_HORIZ`

  This state bit indicates that frame is maximized in the
  horizontal direction.

  `static final int`

  `MAXIMIZED_VERT`

  This state bit indicates that frame is maximized in the
  vertical direction.

  `static final int`

  `MOVE_CURSOR`

  Deprecated.

  replaced by `Cursor.MOVE_CURSOR`.

  `static final int`

  `N_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.N_RESIZE_CURSOR`.

  `static final int`

  `NE_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.NE_RESIZE_CURSOR`.

  `static final int`

  `NORMAL`

  Frame is in the "normal" state.

  `static final int`

  `NW_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.NW_RESIZE_CURSOR`.

  `static final int`

  `S_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.S_RESIZE_CURSOR`.

  `static final int`

  `SE_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.SE_RESIZE_CURSOR`.

  `static final int`

  `SW_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.SW_RESIZE_CURSOR`.

  `static final int`

  `TEXT_CURSOR`

  Deprecated.

  replaced by `Cursor.TEXT_CURSOR`.

  `static final int`

  `W_RESIZE_CURSOR`

  Deprecated.

  replaced by `Cursor.W_RESIZE_CURSOR`.

  `static final int`

  `WAIT_CURSOR`

  Deprecated.

  replaced by `Cursor.WAIT_CURSOR`.

  ### Fields inherited from class java.awt.[Component](Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Frame()`

  Constructs a new instance of `Frame` that is
  initially invisible.

  `Frame(GraphicsConfiguration gc)`

  Constructs a new, initially invisible `Frame` with the
  specified `GraphicsConfiguration`.

  `Frame(String title)`

  Constructs a new, initially invisible `Frame` object
  with the specified title.

  `Frame(String title,
  GraphicsConfiguration gc)`

  Constructs a new, initially invisible `Frame` object
  with the specified title and a
  `GraphicsConfiguration`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotify()`

  Makes this Frame displayable by connecting it to
  a native screen resource.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this Frame.

  `int`

  `getCursorType()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `Component.getCursor()`.

  `int`

  `getExtendedState()`

  Gets the state of this frame.

  `static Frame[]`

  `getFrames()`

  Returns an array of all `Frame`s created by this application.

  `Image`

  `getIconImage()`

  Returns the image to be displayed as the icon for this frame.

  `Rectangle`

  `getMaximizedBounds()`

  Gets maximized bounds for this frame.

  `MenuBar`

  `getMenuBar()`

  Gets the menu bar for this frame.

  `int`

  `getState()`

  Gets the state of this frame (obsolete).

  `String`

  `getTitle()`

  Gets the title of the frame.

  `boolean`

  `isResizable()`

  Indicates whether this frame is resizable by the user.

  `boolean`

  `isUndecorated()`

  Indicates whether this frame is undecorated.

  `protected String`

  `paramString()`

  Returns a string representing the state of this `Frame`.

  `void`

  `remove(MenuComponent m)`

  Removes the specified menu bar from this frame.

  `void`

  `removeNotify()`

  Makes this Frame undisplayable by removing its connection
  to its native screen resource.

  `void`

  `setBackground(Color bgColor)`

  Sets the background color of this window.

  `void`

  `setCursor(int cursorType)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `Component.setCursor(Cursor)`.

  `void`

  `setExtendedState(int state)`

  Sets the state of this frame.

  `void`

  `setIconImage(Image image)`

  Sets the image to be displayed as the icon for this window.

  `void`

  `setMaximizedBounds(Rectangle bounds)`

  Sets the maximized bounds for this frame.

  `void`

  `setMenuBar(MenuBar mb)`

  Sets the menu bar for this frame to the specified menu bar.

  `void`

  `setOpacity(float opacity)`

  Sets the opacity of the window.

  `void`

  `setResizable(boolean resizable)`

  Sets whether this frame is resizable by the user.

  `void`

  `setShape(Shape shape)`

  Sets the shape of the window.

  `void`

  `setState(int state)`

  Sets the state of this frame (obsolete).

  `void`

  `setTitle(String title)`

  Sets the title for this frame to the specified string.

  `void`

  `setUndecorated(boolean undecorated)`

  Disables or enables decorations for this frame.

  ### Methods inherited from class java.awt.[Window](Window.md "class in java.awt")

  `addPropertyChangeListener, addPropertyChangeListener, addWindowFocusListener, addWindowListener, addWindowStateListener, applyResourceBundle, applyResourceBundle, createBufferStrategy, createBufferStrategy, dispose, getBackground, getBufferStrategy, getFocusableWindowState, getFocusCycleRootAncestor, getFocusOwner, getFocusTraversalKeys, getIconImages, getInputContext, getListeners, getLocale, getModalExclusionType, getMostRecentFocusOwner, getOpacity, getOwnedWindows, getOwner, getOwnerlessWindows, getShape, getToolkit, getType, getWarningString, getWindowFocusListeners, getWindowListeners, getWindows, getWindowStateListeners, hide, isActive, isAlwaysOnTop, isAlwaysOnTopSupported, isAutoRequestFocus, isFocusableWindow, isFocusCycleRoot, isFocused, isLocationByPlatform, isOpaque, isShowing, isValidateRoot, pack, paint, postEvent, processEvent, processWindowEvent, processWindowFocusEvent, processWindowStateEvent, removeWindowFocusListener, removeWindowListener, removeWindowStateListener, reshape, setAlwaysOnTop, setAutoRequestFocus, setBounds, setBounds, setCursor, setFocusableWindowState, setFocusCycleRoot, setIconImages, setLocation, setLocation, setLocationByPlatform, setLocationRelativeTo, setMinimumSize, setModalExclusionType, setSize, setSize, setType, setVisible, show, toBack, toFront`

  ### Methods inherited from class java.awt.[Container](Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalPolicy, getInsets, getLayout, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, print, printComponents, processContainerEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, update, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, resize, resize, revalidate, setComponentOrientation, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setMaximumSize, setMixingCutoutShape, setName, setPreferredSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[MenuContainer](MenuContainer.md "interface in java.awt")

  `getFont, postEvent`

* ## Field Details

  + ### DEFAULT\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int DEFAULT\_CURSOR

    Deprecated.

    replaced by `Cursor.DEFAULT_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.DEFAULT_CURSOR)
  + ### CROSSHAIR\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int CROSSHAIR\_CURSOR

    Deprecated.

    replaced by `Cursor.CROSSHAIR_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.CROSSHAIR_CURSOR)
  + ### TEXT\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int TEXT\_CURSOR

    Deprecated.

    replaced by `Cursor.TEXT_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.TEXT_CURSOR)
  + ### WAIT\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int WAIT\_CURSOR

    Deprecated.

    replaced by `Cursor.WAIT_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.WAIT_CURSOR)
  + ### SW\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int SW\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.SW_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.SW_RESIZE_CURSOR)
  + ### SE\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int SE\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.SE_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.SE_RESIZE_CURSOR)
  + ### NW\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int NW\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.NW_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.NW_RESIZE_CURSOR)
  + ### NE\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int NE\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.NE_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.NE_RESIZE_CURSOR)
  + ### N\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int N\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.N_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.N_RESIZE_CURSOR)
  + ### S\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int S\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.S_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.S_RESIZE_CURSOR)
  + ### W\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int W\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.W_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.W_RESIZE_CURSOR)
  + ### E\_RESIZE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int E\_RESIZE\_CURSOR

    Deprecated.

    replaced by `Cursor.E_RESIZE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.E_RESIZE_CURSOR)
  + ### HAND\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int HAND\_CURSOR

    Deprecated.

    replaced by `Cursor.HAND_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.HAND_CURSOR)
  + ### MOVE\_CURSOR

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final int MOVE\_CURSOR

    Deprecated.

    replaced by `Cursor.MOVE_CURSOR`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Frame.MOVE_CURSOR)
  + ### NORMAL

    public static final int NORMAL

    Frame is in the "normal" state. This symbolic constant names a
    frame state with all state bits cleared.

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`getExtendedState()`](#getExtendedState())
        - [Constant Field Values](../../../constant-values.md#java.awt.Frame.NORMAL)
  + ### ICONIFIED

    public static final int ICONIFIED

    This state bit indicates that frame is iconified.

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`getExtendedState()`](#getExtendedState())
        - [Constant Field Values](../../../constant-values.md#java.awt.Frame.ICONIFIED)
  + ### MAXIMIZED\_HORIZ

    public static final int MAXIMIZED\_HORIZ

    This state bit indicates that frame is maximized in the
    horizontal direction.

    Since:
    :   1.4

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`getExtendedState()`](#getExtendedState())
        - [Constant Field Values](../../../constant-values.md#java.awt.Frame.MAXIMIZED_HORIZ)
  + ### MAXIMIZED\_VERT

    public static final int MAXIMIZED\_VERT

    This state bit indicates that frame is maximized in the
    vertical direction.

    Since:
    :   1.4

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`getExtendedState()`](#getExtendedState())
        - [Constant Field Values](../../../constant-values.md#java.awt.Frame.MAXIMIZED_VERT)
  + ### MAXIMIZED\_BOTH

    public static final int MAXIMIZED\_BOTH

    This state bit mask indicates that frame is fully maximized
    (that is both horizontally and vertically). It is just a
    convenience alias for
    `MAXIMIZED_VERT | MAXIMIZED_HORIZ`.

    Note that the correct test for frame being fully maximized is

    ```
         (state & Frame.MAXIMIZED_BOTH) == Frame.MAXIMIZED_BOTH
    ```

    To test is frame is maximized in *some* direction use

    ```
         (state & Frame.MAXIMIZED_BOTH) != 0
    ```

    Since:
    :   1.4

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`getExtendedState()`](#getExtendedState())
        - [Constant Field Values](../../../constant-values.md#java.awt.Frame.MAXIMIZED_BOTH)
* ## Constructor Details

  + ### Frame

    public Frame()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new instance of `Frame` that is
    initially invisible. The title of the `Frame`
    is empty.

    Throws:
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Frame

    public Frame([GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Constructs a new, initially invisible `Frame` with the
    specified `GraphicsConfiguration`.

    Parameters:
    :   `gc` - the `GraphicsConfiguration`
        of the target screen device. If `gc`
        is `null`, the system default
        `GraphicsConfiguration` is assumed.

    Throws:
    :   `IllegalArgumentException` - if
        `gc` is not from a screen device.
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Frame

    public Frame([String](../../../java.base/java/lang/String.md "class in java.lang") title)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new, initially invisible `Frame` object
    with the specified title.

    Parameters:
    :   `title` - the title to be displayed in the frame's border.
        A `null` value
        is treated as an empty string, "".

    Throws:
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
        - [`GraphicsConfiguration.getBounds()`](GraphicsConfiguration.md#getBounds())
  + ### Frame

    public Frame([String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Constructs a new, initially invisible `Frame` object
    with the specified title and a
    `GraphicsConfiguration`.

    Parameters:
    :   `title` - the title to be displayed in the frame's border.
        A `null` value
        is treated as an empty string, "".
    :   `gc` - the `GraphicsConfiguration`
        of the target screen device. If `gc` is
        `null`, the system default
        `GraphicsConfiguration` is assumed.

    Throws:
    :   `IllegalArgumentException` - if `gc`
        is not from a screen device.
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
        - [`GraphicsConfiguration.getBounds()`](GraphicsConfiguration.md#getBounds())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Makes this Frame displayable by connecting it to
    a native screen resource. Making a frame displayable will
    cause any of its children to be made displayable.
    This method is called internally by the toolkit and should
    not be called directly by programs.

    Overrides:
    :   `addNotify` in class `Window`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`removeNotify()`](#removeNotify())
  + ### getTitle

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTitle()

    Gets the title of the frame. The title is displayed in the
    frame's border.

    Returns:
    :   the title of this frame, or an empty string ("")
        if this frame doesn't have a title.

    See Also:
    :   - [`setTitle(String)`](#setTitle(java.lang.String))
  + ### setTitle

    public void setTitle([String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Sets the title for this frame to the specified string.

    Parameters:
    :   `title` - the title to be displayed in the frame's border.
        A `null` value
        is treated as an empty string, "".

    See Also:
    :   - [`getTitle()`](#getTitle())
  + ### getIconImage

    public [Image](Image.md "class in java.awt") getIconImage()

    Returns the image to be displayed as the icon for this frame.

    This method is obsolete and kept for backward compatibility
    only. Use [`Window.getIconImages()`](Window.md#getIconImages()) instead.

    If a list of several images was specified as a Window's icon,
    this method will return the first item of the list.

    Returns:
    :   the icon image for this frame, or `null`
        if this frame doesn't have an icon image.

    See Also:
    :   - [`setIconImage(Image)`](#setIconImage(java.awt.Image))
        - [`Window.getIconImages()`](Window.md#getIconImages())
        - [`Window.setIconImages(java.util.List<? extends java.awt.Image>)`](Window.md#setIconImages(java.util.List))
  + ### setIconImage

    public void setIconImage([Image](Image.md "class in java.awt") image)

    Sets the image to be displayed as the icon for this window.

    This method can be used instead of [`setIconImages()`](Window.md#setIconImages(java.util.List))
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
    :   `setIconImage` in class `Window`

    Parameters:
    :   `image` - the icon image to be displayed.

    See Also:
    :   - [`Window.setIconImages(java.util.List<? extends java.awt.Image>)`](Window.md#setIconImages(java.util.List))
        - [`Window.getIconImages()`](Window.md#getIconImages())
  + ### getMenuBar

    public [MenuBar](MenuBar.md "class in java.awt") getMenuBar()

    Gets the menu bar for this frame.

    Returns:
    :   the menu bar for this frame, or `null`
        if this frame doesn't have a menu bar.

    See Also:
    :   - [`setMenuBar(MenuBar)`](#setMenuBar(java.awt.MenuBar))
  + ### setMenuBar

    public void setMenuBar([MenuBar](MenuBar.md "class in java.awt") mb)

    Sets the menu bar for this frame to the specified menu bar.

    Parameters:
    :   `mb` - the menu bar being set.
        If this parameter is `null` then any
        existing menu bar on this frame is removed.

    See Also:
    :   - [`getMenuBar()`](#getMenuBar())
  + ### isResizable

    public boolean isResizable()

    Indicates whether this frame is resizable by the user.
    By default, all frames are initially resizable.

    Returns:
    :   `true` if the user can resize this frame;
        `false` otherwise.

    See Also:
    :   - [`setResizable(boolean)`](#setResizable(boolean))
  + ### setResizable

    public void setResizable(boolean resizable)

    Sets whether this frame is resizable by the user.

    Parameters:
    :   `resizable` - `true` if this frame is resizable;
        `false` otherwise.

    See Also:
    :   - [`isResizable()`](#isResizable())
  + ### setState

    public void setState(int state)

    Sets the state of this frame (obsolete).

    In older versions of JDK a frame state could only be NORMAL or
    ICONIFIED. Since JDK 1.4 set of supported frame states is
    expanded and frame state is represented as a bitwise mask.

    For compatibility with applications developed
    earlier this method still accepts
    `Frame.NORMAL` and
    `Frame.ICONIFIED` only. The iconic
    state of the frame is only changed, other aspects
    of frame state are not affected by this method. If
    the state passed to this method is neither `Frame.NORMAL` nor `Frame.ICONIFIED` the
    method performs no actions at all.

    Note that if the state is not supported on a
    given platform, neither the state nor the return
    value of the [`getState()`](#getState()) method will be
    changed. The application may determine whether a
    specific state is supported via the [`Toolkit.isFrameStateSupported(int)`](Toolkit.md#isFrameStateSupported(int)) method.

    **If the frame is currently visible on the
    screen** (the [`Window.isShowing()`](Window.md#isShowing()) method returns
    `true`), the developer should examine the
    return value of the [`WindowEvent.getNewState()`](event/WindowEvent.md#getNewState()) method of
    the `WindowEvent` received through the
    [`WindowStateListener`](event/WindowStateListener.md "interface in java.awt.event") to
    determine that the state has actually been
    changed.

    **If the frame is not visible on the
    screen**, the events may or may not be
    generated. In this case the developer may assume
    that the state changes immediately after this
    method returns. Later, when the `setVisible(true)` method is invoked, the frame
    will attempt to apply this state. Receiving any
    [`WindowEvent.WINDOW_STATE_CHANGED`](event/WindowEvent.md#WINDOW_STATE_CHANGED)
    events is not guaranteed in this case also.

    Parameters:
    :   `state` - either `Frame.NORMAL` or
        `Frame.ICONIFIED`.

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
        - [`Window.addWindowStateListener(java.awt.event.WindowStateListener)`](Window.md#addWindowStateListener(java.awt.event.WindowStateListener))
  + ### setExtendedState

    public void setExtendedState(int state)

    Sets the state of this frame. The state is
    represented as a bitwise mask.
    - `NORMAL`
        
      Indicates that no state bits are set.- `ICONIFIED`- `MAXIMIZED_HORIZ`- `MAXIMIZED_VERT`- `MAXIMIZED_BOTH`
                
              Concatenates `MAXIMIZED_HORIZ`
              and `MAXIMIZED_VERT`.

    Note that if the state is not supported on a
    given platform, neither the state nor the return
    value of the [`getExtendedState()`](#getExtendedState()) method will
    be changed. The application may determine whether
    a specific state is supported via the [`Toolkit.isFrameStateSupported(int)`](Toolkit.md#isFrameStateSupported(int)) method.

    **If the frame is currently visible on the
    screen** (the [`Window.isShowing()`](Window.md#isShowing()) method returns
    `true`), the developer should examine the
    return value of the [`WindowEvent.getNewState()`](event/WindowEvent.md#getNewState()) method of
    the `WindowEvent` received through the
    [`WindowStateListener`](event/WindowStateListener.md "interface in java.awt.event") to
    determine that the state has actually been
    changed.

    **If the frame is not visible on the
    screen**, the events may or may not be
    generated. In this case the developer may assume
    that the state changes immediately after this
    method returns. Later, when the `setVisible(true)` method is invoked, the frame
    will attempt to apply this state. Receiving any
    [`WindowEvent.WINDOW_STATE_CHANGED`](event/WindowEvent.md#WINDOW_STATE_CHANGED)
    events is not guaranteed in this case also.

    Parameters:
    :   `state` - a bitwise mask of frame state constants

    Since:
    :   1.4

    See Also:
    :   - [`Window.addWindowStateListener(java.awt.event.WindowStateListener)`](Window.md#addWindowStateListener(java.awt.event.WindowStateListener))
  + ### getState

    public int getState()

    Gets the state of this frame (obsolete).

    In older versions of JDK a frame state could only be NORMAL or
    ICONIFIED. Since JDK 1.4 set of supported frame states is
    expanded and frame state is represented as a bitwise mask.

    For compatibility with old programs this method still returns
    `Frame.NORMAL` and `Frame.ICONIFIED` but
    it only reports the iconic state of the frame, other aspects of
    frame state are not reported by this method.

    Returns:
    :   `Frame.NORMAL` or `Frame.ICONIFIED`.

    See Also:
    :   - [`setState(int)`](#setState(int))
        - [`getExtendedState()`](#getExtendedState())
  + ### getExtendedState

    public int getExtendedState()

    Gets the state of this frame. The state is
    represented as a bitwise mask.
    - `NORMAL`
        
      Indicates that no state bits are set.- `ICONIFIED`- `MAXIMIZED_HORIZ`- `MAXIMIZED_VERT`- `MAXIMIZED_BOTH`
                
              Concatenates `MAXIMIZED_HORIZ`
              and `MAXIMIZED_VERT`.

    Returns:
    :   a bitwise mask of frame state constants

    Since:
    :   1.4

    See Also:
    :   - [`setExtendedState(int)`](#setExtendedState(int))
  + ### setMaximizedBounds

    public void setMaximizedBounds([Rectangle](Rectangle.md "class in java.awt") bounds)

    Sets the maximized bounds for this frame.

    When a frame is in maximized state the system supplies some
    defaults bounds. This method allows some or all of those
    system supplied values to be overridden.

    If `bounds` is `null`, accept bounds
    supplied by the system. If non-`null` you can
    override some of the system supplied values while accepting
    others by setting those fields you want to accept from system
    to `Integer.MAX_VALUE`.

    Note, the given maximized bounds are used as a hint for the native
    system, because the underlying platform may not support setting the
    location and/or size of the maximized windows. If that is the case, the
    provided values do not affect the appearance of the frame in the
    maximized state.

    Parameters:
    :   `bounds` - bounds for the maximized state

    Since:
    :   1.4

    See Also:
    :   - [`getMaximizedBounds()`](#getMaximizedBounds())
  + ### getMaximizedBounds

    public [Rectangle](Rectangle.md "class in java.awt") getMaximizedBounds()

    Gets maximized bounds for this frame.
    Some fields may contain `Integer.MAX_VALUE` to indicate
    that system supplied values for this field must be used.

    Returns:
    :   maximized bounds for this frame; may be `null`

    Since:
    :   1.4

    See Also:
    :   - [`setMaximizedBounds(Rectangle)`](#setMaximizedBounds(java.awt.Rectangle))
  + ### setUndecorated

    public void setUndecorated(boolean undecorated)

    Disables or enables decorations for this frame.

    This method can only be called while the frame is not displayable. To
    make this frame decorated, it must be opaque and have the default shape,
    otherwise the `IllegalComponentStateException` will be thrown.
    Refer to [`Window.setShape(java.awt.Shape)`](Window.md#setShape(java.awt.Shape)), [`Window.setOpacity(float)`](Window.md#setOpacity(float)) and [`Window.setBackground(java.awt.Color)`](Window.md#setBackground(java.awt.Color)) for details

    Parameters:
    :   `undecorated` - `true` if no frame decorations are to be
        enabled; `false` if frame decorations are to be enabled

    Throws:
    :   `IllegalComponentStateException` - if the frame is displayable
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and this frame does not have the default shape
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and this frame opacity is less than `1.0f`
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and the alpha value of this frame background
        color is less than `1.0f`

    Since:
    :   1.4

    See Also:
    :   - [`isUndecorated()`](#isUndecorated())
        - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Window.getShape()`](Window.md#getShape())
        - [`Window.getOpacity()`](Window.md#getOpacity())
        - [`Window.getBackground()`](Window.md#getBackground())
        - [`JFrame.setDefaultLookAndFeelDecorated(boolean)`](../../javax/swing/JFrame.md#setDefaultLookAndFeelDecorated(boolean))
  + ### isUndecorated

    public boolean isUndecorated()

    Indicates whether this frame is undecorated.
    By default, all frames are initially decorated.

    Returns:
    :   `true` if frame is undecorated;
        `false` otherwise.

    Since:
    :   1.4

    See Also:
    :   - [`setUndecorated(boolean)`](#setUndecorated(boolean))
  + ### setOpacity

    public void setOpacity(float opacity)

    Sets the opacity of the window.

    The opacity value is in the range [0..1]. Note that setting the opacity
    level of 0 may or may not disable the mouse event handling on this
    window. This is a platform-dependent behavior.

    The following conditions must be met in order to set the opacity value
    less than `1.0f`:
    - The [`TRANSLUCENT`](GraphicsDevice.WindowTranslucency.md#TRANSLUCENT)
      translucency must be supported by the underlying system- The window must be undecorated (see [`setUndecorated(boolean)`](#setUndecorated(boolean))
        and [`Dialog.setUndecorated(boolean)`](Dialog.md#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

    If the requested opacity value is less than `1.0f`, and any of the
    above conditions are not met, the window opacity will not change,
    and the `IllegalComponentStateException` will be thrown.

    The translucency levels of individual pixels may also be effected by the
    alpha component of their color (see [`Window.setBackground(Color)`](Window.md#setBackground(java.awt.Color))) and the
    current shape of this window (see [`Window.setShape(Shape)`](Window.md#setShape(java.awt.Shape))).

    Overrides:
    :   `setOpacity` in class `Window`

    Parameters:
    :   `opacity` - the opacity level to set to the window

    See Also:
    :   - [`Window.getOpacity()`](Window.md#getOpacity())
        - [`Window.setBackground(Color)`](Window.md#setBackground(java.awt.Color))
        - [`Window.setShape(Shape)`](Window.md#setShape(java.awt.Shape))
        - [`isUndecorated()`](#isUndecorated())
        - [`Dialog.isUndecorated()`](Dialog.md#isUndecorated())
        - [`GraphicsDevice.WindowTranslucency`](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")
        - [`GraphicsDevice.isWindowTranslucencySupported(GraphicsDevice.WindowTranslucency)`](GraphicsDevice.md#isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency))
  + ### setShape

    public void setShape([Shape](Shape.md "interface in java.awt") shape)

    Sets the shape of the window.

    Setting a shape cuts off some parts of the window. Only the parts that
    belong to the given [`Shape`](Shape.md "interface in java.awt") remain visible and clickable. If
    the shape argument is `null`, this method restores the default
    shape, making the window rectangular on most platforms.

    The following conditions must be met to set a non-null shape:
    - The [`PERPIXEL_TRANSPARENT`](GraphicsDevice.WindowTranslucency.md#PERPIXEL_TRANSPARENT) translucency must be supported by the
      underlying system- The window must be undecorated (see [`setUndecorated(boolean)`](#setUndecorated(boolean))
        and [`Dialog.setUndecorated(boolean)`](Dialog.md#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

    If the requested shape is not `null`, and any of the above
    conditions are not met, the shape of this window will not change,
    and either the `UnsupportedOperationException` or `IllegalComponentStateException` will be thrown.

    The translucency levels of individual pixels may also be effected by the
    alpha component of their color (see [`Window.setBackground(Color)`](Window.md#setBackground(java.awt.Color))) and the
    opacity value (see [`Window.setOpacity(float)`](Window.md#setOpacity(float))). See [`GraphicsDevice.WindowTranslucency`](GraphicsDevice.WindowTranslucency.md "enum class in java.awt") for more details.

    Overrides:
    :   `setShape` in class `Window`

    Parameters:
    :   `shape` - the shape to set to the window

    See Also:
    :   - [`Window.getShape()`](Window.md#getShape())
        - [`Window.setBackground(Color)`](Window.md#setBackground(java.awt.Color))
        - [`Window.setOpacity(float)`](Window.md#setOpacity(float))
        - [`isUndecorated()`](#isUndecorated())
        - [`Dialog.isUndecorated()`](Dialog.md#isUndecorated())
        - [`GraphicsDevice.WindowTranslucency`](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")
        - [`GraphicsDevice.isWindowTranslucencySupported(GraphicsDevice.WindowTranslucency)`](GraphicsDevice.md#isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency))
  + ### setBackground

    public void setBackground([Color](Color.md "class in java.awt") bgColor)

    Sets the background color of this window.

    If the windowing system supports the [`PERPIXEL_TRANSLUCENT`](GraphicsDevice.WindowTranslucency.md#PERPIXEL_TRANSLUCENT)
    translucency, the alpha component of the given background color
    may effect the mode of operation for this window: it indicates whether
    this window must be opaque (alpha equals `1.0f`) or per-pixel translucent
    (alpha is less than `1.0f`). If the given background color is
    `null`, the window is considered completely opaque.

    All the following conditions must be met to enable the per-pixel
    transparency mode for this window:
    - The [`PERPIXEL_TRANSLUCENT`](GraphicsDevice.WindowTranslucency.md#PERPIXEL_TRANSLUCENT) translucency must be supported by the graphics
      device where this window is located- The window must be undecorated (see [`setUndecorated(boolean)`](#setUndecorated(boolean))
        and [`Dialog.setUndecorated(boolean)`](Dialog.md#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

    If the alpha component of the requested background color is less than
    `1.0f`, and any of the above conditions are not met, the background
    color of this window will not change, the alpha component of the given
    background color will not affect the mode of operation for this window,
    and either the `UnsupportedOperationException` or `IllegalComponentStateException` will be thrown.

    When the window is per-pixel translucent, the drawing sub-system
    respects the alpha value of each individual pixel. If a pixel gets
    painted with the alpha color component equal to zero, it becomes
    visually transparent. If the alpha of the pixel is equal to 1.0f, the
    pixel is fully opaque. Interim values of the alpha color component make
    the pixel semi-transparent. In this mode, the background of the window
    gets painted with the alpha value of the given background color. If the
    alpha value of the argument of this method is equal to `0`, the
    background is not painted at all.

    The actual level of translucency of a given pixel also depends on window
    opacity (see [`Window.setOpacity(float)`](Window.md#setOpacity(float))), as well as the current shape of
    this window (see [`Window.setShape(Shape)`](Window.md#setShape(java.awt.Shape))).

    Note that painting a pixel with the alpha value of `0` may or may
    not disable the mouse event handling on this pixel. This is a
    platform-dependent behavior. To make sure the mouse events do not get
    dispatched to a particular pixel, the pixel must be excluded from the
    shape of the window.

    Enabling the per-pixel translucency mode may change the graphics
    configuration of this window due to the native platform requirements.

    Overrides:
    :   `setBackground` in class `Window`

    Parameters:
    :   `bgColor` - the color to become this window's background color.

    See Also:
    :   - [`Window.getBackground()`](Window.md#getBackground())
        - [`Window.isOpaque()`](Window.md#isOpaque())
        - [`Window.setOpacity(float)`](Window.md#setOpacity(float))
        - [`Window.setShape(Shape)`](Window.md#setShape(java.awt.Shape))
        - [`isUndecorated()`](#isUndecorated())
        - [`Dialog.isUndecorated()`](Dialog.md#isUndecorated())
        - [`GraphicsDevice.WindowTranslucency`](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")
        - [`GraphicsDevice.isWindowTranslucencySupported(GraphicsDevice.WindowTranslucency)`](GraphicsDevice.md#isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency))
        - [`GraphicsConfiguration.isTranslucencyCapable()`](GraphicsConfiguration.md#isTranslucencyCapable())
  + ### remove

    public void remove([MenuComponent](MenuComponent.md "class in java.awt") m)

    Removes the specified menu bar from this frame.

    Specified by:
    :   `remove` in interface `MenuContainer`

    Overrides:
    :   `remove` in class `Component`

    Parameters:
    :   `m` - the menu component to remove.
        If `m` is `null`, then
        no action is taken

    See Also:
    :   - [`Component.add(PopupMenu)`](Component.md#add(java.awt.PopupMenu))
  + ### removeNotify

    public void removeNotify()

    Makes this Frame undisplayable by removing its connection
    to its native screen resource. Making a Frame undisplayable
    will cause any of its children to be made undisplayable.
    This method is called by the toolkit internally and should
    not be called directly by programs.

    Overrides:
    :   `removeNotify` in class `Window`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`addNotify()`](#addNotify())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this `Frame`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `Container`

    Returns:
    :   the parameter string of this frame
  + ### setCursor

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setCursor(int cursorType)

    Deprecated.

    As of JDK version 1.1,
    replaced by `Component.setCursor(Cursor)`.

    Sets the cursor for this frame to the specified type.

    Parameters:
    :   `cursorType` - the cursor type
  + ### getCursorType

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public int getCursorType()

    Deprecated.

    As of JDK version 1.1,
    replaced by `Component.getCursor()`.

    Returns:
    :   the cursor type for this frame
  + ### getFrames

    public static [Frame](Frame.md "class in java.awt")[] getFrames()

    Returns an array of all `Frame`s created by this application.
    If called from an applet, the array includes only the `Frame`s
    accessible by that applet.

    **Warning:** this method may return system created frames, such
    as a shared, hidden frame which is used by Swing. Applications
    should not assume the existence of these frames, nor should an
    application assume anything about these frames such as component
    positions, `LayoutManager`s or serialization.

    **Note**: To obtain a list of all ownerless windows, including
    ownerless `Dialog`s (introduced in release 1.6), use [`Window.getOwnerlessWindows`](Window.md#getOwnerlessWindows()).

    Returns:
    :   the array of all `Frame`s created by this application

    Since:
    :   1.2

    See Also:
    :   - [`Window.getWindows()`](Window.md#getWindows())
        - [`Window.getOwnerlessWindows()`](Window.md#getOwnerlessWindows())
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this Frame.
    For frames, the AccessibleContext takes the form of an
    AccessibleAWTFrame.
    A new AccessibleAWTFrame instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Window`

    Returns:
    :   an AccessibleAWTFrame that serves as the
        AccessibleContext of this Frame

    Since:
    :   1.3