Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Dialog

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](Component.md "class in java.awt")

[java.awt.Container](Container.md "class in java.awt")

[java.awt.Window](Window.md "class in java.awt")

java.awt.Dialog

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

Direct Known Subclasses:
:   `FileDialog`, `JDialog`

---

public class Dialog
extends [Window](Window.md "class in java.awt")

A Dialog is a top-level window with a title and a border
that is typically used to take some form of input from the user.
The size of the dialog includes any area designated for the
border. The dimensions of the border area can be obtained
using the `getInsets` method, however, since
these dimensions are platform-dependent, a valid insets
value cannot be obtained until the dialog is made displayable
by either calling `pack` or `show`.
Since the border area is included in the overall size of the
dialog, the border effectively obscures a portion of the dialog,
constraining the area available for rendering and/or displaying
subcomponents to the rectangle which has an upper-left corner
location of `(insets.left, insets.top)`, and has a size of
`width - (insets.left + insets.right)` by
`height - (insets.top + insets.bottom)`.

The default layout for a dialog is `BorderLayout`.

A dialog may have its native decorations (i.e. Frame & Titlebar) turned off
with `setUndecorated`. This can only be done while the dialog
is not [`displayable`](Component.md#isDisplayable()).

A dialog may have another window as its owner when it's constructed. When
the owner window of a visible dialog is minimized, the dialog will
automatically be hidden from the user. When the owner window is subsequently
restored, the dialog is made visible to the user again.

In a multi-screen environment, you can create a `Dialog`
on a different screen device than its owner. See [`Frame`](Frame.md "class in java.awt") for
more information.

A dialog can be either modeless (the default) or modal. A modal
dialog is one which blocks input to some other top-level windows
in the application, except for any windows created with the dialog
as their owner. See [AWT Modality](doc-files/Modality.md)
specification for details.

Dialogs are capable of generating the following
`WindowEvents`:
`WindowOpened`, `WindowClosing`,
`WindowClosed`, `WindowActivated`,
`WindowDeactivated`, `WindowGainedFocus`,
`WindowLostFocus`.

Since:
:   1.0

See Also:
:   * [`WindowEvent`](event/WindowEvent.md "class in java.awt.event")
    * [`Window.addWindowListener(java.awt.event.WindowListener)`](Window.md#addWindowListener(java.awt.event.WindowListener))
    * [Serialized Form](../../../serialized-form.md#java.awt.Dialog)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Dialog.AccessibleAWTDialog`

  This class implements accessibility support for the
  `Dialog` class.

  `static enum`

  `Dialog.ModalExclusionType`

  Any top-level window can be marked not to be blocked by modal
  dialogs.

  `static enum`

  `Dialog.ModalityType`

  Modal dialogs block all input to some top-level windows.

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

  `static final Dialog.ModalityType`

  `DEFAULT_MODALITY_TYPE`

  Default modality type for modal dialogs.

  ### Fields inherited from class java.awt.[Component](Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Dialog(Dialog owner)`

  Constructs an initially invisible, modeless `Dialog` with
  the specified owner `Dialog` and an empty title.

  `Dialog(Dialog owner,
  String title)`

  Constructs an initially invisible, modeless `Dialog`
  with the specified owner `Dialog` and title.

  `Dialog(Dialog owner,
  String title,
  boolean modal)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Dialog`, title, and modality.

  `Dialog(Dialog owner,
  String title,
  boolean modal,
  GraphicsConfiguration gc)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Dialog`, title, modality and
  `GraphicsConfiguration`.

  `Dialog(Frame owner)`

  Constructs an initially invisible, modeless `Dialog` with
  the specified owner `Frame` and an empty title.

  `Dialog(Frame owner,
  boolean modal)`

  Constructs an initially invisible `Dialog` with the specified
  owner `Frame` and modality and an empty title.

  `Dialog(Frame owner,
  String title)`

  Constructs an initially invisible, modeless `Dialog` with
  the specified owner `Frame` and title.

  `Dialog(Frame owner,
  String title,
  boolean modal)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Frame`, title and modality.

  `Dialog(Frame owner,
  String title,
  boolean modal,
  GraphicsConfiguration gc)`

  Constructs an initially invisible `Dialog` with the specified owner
  `Frame`, title, modality, and `GraphicsConfiguration`.

  `Dialog(Window owner)`

  Constructs an initially invisible, modeless `Dialog` with the
  specified owner `Window` and an empty title.

  `Dialog(Window owner,
  Dialog.ModalityType modalityType)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Window` and modality and an empty title.

  `Dialog(Window owner,
  String title)`

  Constructs an initially invisible, modeless `Dialog` with
  the specified owner `Window` and title.

  `Dialog(Window owner,
  String title,
  Dialog.ModalityType modalityType)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Window`, title and modality.

  `Dialog(Window owner,
  String title,
  Dialog.ModalityType modalityType,
  GraphicsConfiguration gc)`

  Constructs an initially invisible `Dialog` with the
  specified owner `Window`, title, modality and
  `GraphicsConfiguration`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotify()`

  Makes this Dialog displayable by connecting it to
  a native screen resource.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this Dialog.

  `Dialog.ModalityType`

  `getModalityType()`

  Returns the modality type of this dialog.

  `String`

  `getTitle()`

  Gets the title of the dialog.

  `void`

  `hide()`

  Deprecated.

  As of JDK version 1.5, replaced by
  [`setVisible(boolean)`](#setVisible(boolean)).

  `boolean`

  `isModal()`

  Indicates whether the dialog is modal.

  `boolean`

  `isResizable()`

  Indicates whether this dialog is resizable by the user.

  `boolean`

  `isUndecorated()`

  Indicates whether this dialog is undecorated.

  `protected String`

  `paramString()`

  Returns a string representing the state of this dialog.

  `void`

  `setBackground(Color bgColor)`

  Sets the background color of this window.

  `void`

  `setModal(boolean modal)`

  Specifies whether this dialog should be modal.

  `void`

  `setModalityType(Dialog.ModalityType type)`

  Sets the modality type for this dialog.

  `void`

  `setOpacity(float opacity)`

  Sets the opacity of the window.

  `void`

  `setResizable(boolean resizable)`

  Sets whether this dialog is resizable by the user.

  `void`

  `setShape(Shape shape)`

  Sets the shape of the window.

  `void`

  `setTitle(String title)`

  Sets the title of the Dialog.

  `void`

  `setUndecorated(boolean undecorated)`

  Disables or enables decorations for this dialog.

  `void`

  `setVisible(boolean b)`

  Shows or hides this `Dialog` depending on the value of parameter
  `b`.

  `void`

  `show()`

  Deprecated.

  As of JDK version 1.5, replaced by
  [`setVisible(boolean)`](#setVisible(boolean)).

  `void`

  `toBack()`

  If this Window is visible, sends this Window to the back and may cause
  it to lose focus or activation if it is the focused or active Window.

  ### Methods inherited from class java.awt.[Window](Window.md "class in java.awt")

  `addPropertyChangeListener, addPropertyChangeListener, addWindowFocusListener, addWindowListener, addWindowStateListener, applyResourceBundle, applyResourceBundle, createBufferStrategy, createBufferStrategy, dispose, getBackground, getBufferStrategy, getFocusableWindowState, getFocusCycleRootAncestor, getFocusOwner, getFocusTraversalKeys, getIconImages, getInputContext, getListeners, getLocale, getModalExclusionType, getMostRecentFocusOwner, getOpacity, getOwnedWindows, getOwner, getOwnerlessWindows, getShape, getToolkit, getType, getWarningString, getWindowFocusListeners, getWindowListeners, getWindows, getWindowStateListeners, isActive, isAlwaysOnTop, isAlwaysOnTopSupported, isAutoRequestFocus, isFocusableWindow, isFocusCycleRoot, isFocused, isLocationByPlatform, isOpaque, isShowing, isValidateRoot, pack, paint, postEvent, processEvent, processWindowEvent, processWindowFocusEvent, processWindowStateEvent, removeNotify, removeWindowFocusListener, removeWindowListener, removeWindowStateListener, reshape, setAlwaysOnTop, setAutoRequestFocus, setBounds, setBounds, setCursor, setFocusableWindowState, setFocusCycleRoot, setIconImage, setIconImages, setLocation, setLocation, setLocationByPlatform, setLocationRelativeTo, setMinimumSize, setModalExclusionType, setSize, setSize, setType, toFront`

  ### Methods inherited from class java.awt.[Container](Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalPolicy, getInsets, getLayout, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, print, printComponents, processContainerEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, update, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, resize, resize, revalidate, setComponentOrientation, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setMaximumSize, setMixingCutoutShape, setName, setPreferredSize, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_MODALITY\_TYPE

    public static final [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") DEFAULT\_MODALITY\_TYPE

    Default modality type for modal dialogs. The default modality type is
    `APPLICATION_MODAL`. Calling the oldstyle `setModal(true)`
    is equal to `setModalityType(DEFAULT_MODALITY_TYPE)`.

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`setModal(boolean)`](#setModal(boolean))
* ## Constructor Details

  + ### Dialog

    public Dialog([Frame](Frame.md "class in java.awt") owner)

    Constructs an initially invisible, modeless `Dialog` with
    the specified owner `Frame` and an empty title.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if
        this dialog has no owner

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Dialog

    public Dialog([Frame](Frame.md "class in java.awt") owner,
    boolean modal)

    Constructs an initially invisible `Dialog` with the specified
    owner `Frame` and modality and an empty title.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if
        this dialog has no owner
    :   `modal` - specifies whether dialog blocks user input to other top-level
        windows when shown. If `false`, the dialog is `MODELESS`;
        if `true`, the modality type property is set to
        `DEFAULT_MODALITY_TYPE`

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Frame](Frame.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Constructs an initially invisible, modeless `Dialog` with
    the specified owner `Frame` and title.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if
        this dialog has no owner
    :   `title` - the title of the dialog or `null` if this dialog
        has no title

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Dialog

    public Dialog([Frame](Frame.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean modal)

    Constructs an initially invisible `Dialog` with the
    specified owner `Frame`, title and modality.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if
        this dialog has no owner
    :   `title` - the title of the dialog or `null` if this dialog
        has no title
    :   `modal` - specifies whether dialog blocks user input to other top-level
        windows when shown. If `false`, the dialog is `MODELESS`;
        if `true`, the modality type property is set to
        `DEFAULT_MODALITY_TYPE`

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Dialog

    public Dialog([Frame](Frame.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean modal,
    [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Constructs an initially invisible `Dialog` with the specified owner
    `Frame`, title, modality, and `GraphicsConfiguration`.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if this dialog
        has no owner
    :   `title` - the title of the dialog or `null` if this dialog
        has no title
    :   `modal` - specifies whether dialog blocks user input to other top-level
        windows when shown. If `false`, the dialog is `MODELESS`;
        if `true`, the modality type property is set to
        `DEFAULT_MODALITY_TYPE`
    :   `gc` - the `GraphicsConfiguration` of the target screen device;
        if `null`, the default system `GraphicsConfiguration`
        is assumed

    Throws:
    :   `IllegalArgumentException` - if `gc`
        is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.4

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Dialog

    public Dialog([Dialog](Dialog.md "class in java.awt") owner)

    Constructs an initially invisible, modeless `Dialog` with
    the specified owner `Dialog` and an empty title.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if this
        dialog has no owner

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.2

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Dialog](Dialog.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Constructs an initially invisible, modeless `Dialog`
    with the specified owner `Dialog` and title.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if this
        has no owner
    :   `title` - the title of the dialog or `null` if this dialog
        has no title

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.2

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Dialog](Dialog.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean modal)

    Constructs an initially invisible `Dialog` with the
    specified owner `Dialog`, title, and modality.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if this
        dialog has no owner
    :   `title` - the title of the dialog or `null` if this
        dialog has no title
    :   `modal` - specifies whether dialog blocks user input to other top-level
        windows when shown. If `false`, the dialog is `MODELESS`;
        if `true`, the modality type property is set to
        `DEFAULT_MODALITY_TYPE`

    Throws:
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.2

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Dialog](Dialog.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean modal,
    [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Constructs an initially invisible `Dialog` with the
    specified owner `Dialog`, title, modality and
    `GraphicsConfiguration`.

    Parameters:
    :   `owner` - the owner of the dialog or `null` if this
        dialog has no owner
    :   `title` - the title of the dialog or `null` if this
        dialog has no title
    :   `modal` - specifies whether dialog blocks user input to other top-level
        windows when shown. If `false`, the dialog is `MODELESS`;
        if `true`, the modality type property is set to
        `DEFAULT_MODALITY_TYPE`
    :   `gc` - the `GraphicsConfiguration` of the target screen device;
        if `null`, the default system `GraphicsConfiguration`
        is assumed

    Throws:
    :   `IllegalArgumentException` - if `gc`
        is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.4

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Component.setSize(int, int)`](Component.md#setSize(int,int))
        - [`Component.setVisible(boolean)`](Component.md#setVisible(boolean))
  + ### Dialog

    public Dialog([Window](Window.md "class in java.awt") owner)

    Constructs an initially invisible, modeless `Dialog` with the
    specified owner `Window` and an empty title.

    Parameters:
    :   `owner` - the owner of the dialog. The owner must be an instance of
        [`Dialog`](Dialog.md "class in java.awt"), [`Frame`](Frame.md "class in java.awt"), any
        of their descendants or `null`

    Throws:
    :   `IllegalArgumentException` - if the `owner`
        is not an instance of [`Dialog`](Dialog.md "class in java.awt") or [`Frame`](Frame.md "class in java.awt")
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.6

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Window](Window.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Constructs an initially invisible, modeless `Dialog` with
    the specified owner `Window` and title.

    Parameters:
    :   `owner` - the owner of the dialog. The owner must be an instance of
        [`Dialog`](Dialog.md "class in java.awt"), [`Frame`](Frame.md "class in java.awt"), any
        of their descendants or `null`
    :   `title` - the title of the dialog or `null` if this dialog
        has no title

    Throws:
    :   `IllegalArgumentException` - if the `owner`
        is not an instance of [`Dialog`](Dialog.md "class in java.awt") or [`Frame`](Frame.md "class in java.awt")
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`

    Since:
    :   1.6

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Dialog

    public Dialog([Window](Window.md "class in java.awt") owner,
    [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") modalityType)

    Constructs an initially invisible `Dialog` with the
    specified owner `Window` and modality and an empty title.

    Parameters:
    :   `owner` - the owner of the dialog. The owner must be an instance of
        [`Dialog`](Dialog.md "class in java.awt"), [`Frame`](Frame.md "class in java.awt"), any
        of their descendants or `null`
    :   `modalityType` - specifies whether dialog blocks input to other
        windows when shown. `null` value and unsupported modality
        types are equivalent to `MODELESS`

    Throws:
    :   `IllegalArgumentException` - if the `owner`
        is not an instance of [`Dialog`](Dialog.md "class in java.awt") or [`Frame`](Frame.md "class in java.awt")
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if the calling thread does not have permission
        to create modal dialogs with the given `modalityType`

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Toolkit.isModalityTypeSupported(java.awt.Dialog.ModalityType)`](Toolkit.md#isModalityTypeSupported(java.awt.Dialog.ModalityType))
  + ### Dialog

    public Dialog([Window](Window.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") modalityType)

    Constructs an initially invisible `Dialog` with the
    specified owner `Window`, title and modality.

    Parameters:
    :   `owner` - the owner of the dialog. The owner must be an instance of
        [`Dialog`](Dialog.md "class in java.awt"), [`Frame`](Frame.md "class in java.awt"), any
        of their descendants or `null`
    :   `title` - the title of the dialog or `null` if this dialog
        has no title
    :   `modalityType` - specifies whether dialog blocks input to other
        windows when shown. `null` value and unsupported modality
        types are equivalent to `MODELESS`

    Throws:
    :   `IllegalArgumentException` - if the `owner`
        is not an instance of [`Dialog`](Dialog.md "class in java.awt") or [`Frame`](Frame.md "class in java.awt")
    :   `IllegalArgumentException` - if the `owner`'s
        `GraphicsConfiguration` is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if the calling thread does not have permission
        to create modal dialogs with the given `modalityType`

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Toolkit.isModalityTypeSupported(java.awt.Dialog.ModalityType)`](Toolkit.md#isModalityTypeSupported(java.awt.Dialog.ModalityType))
  + ### Dialog

    public Dialog([Window](Window.md "class in java.awt") owner,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") modalityType,
    [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Constructs an initially invisible `Dialog` with the
    specified owner `Window`, title, modality and
    `GraphicsConfiguration`.

    Parameters:
    :   `owner` - the owner of the dialog. The owner must be an instance of
        [`Dialog`](Dialog.md "class in java.awt"), [`Frame`](Frame.md "class in java.awt"), any
        of their descendants or `null`
    :   `title` - the title of the dialog or `null` if this dialog
        has no title
    :   `modalityType` - specifies whether dialog blocks input to other
        windows when shown. `null` value and unsupported modality
        types are equivalent to `MODELESS`
    :   `gc` - the `GraphicsConfiguration` of the target screen device;
        if `null`, the default system `GraphicsConfiguration`
        is assumed

    Throws:
    :   `IllegalArgumentException` - if the `owner`
        is not an instance of [`Dialog`](Dialog.md "class in java.awt") or [`Frame`](Frame.md "class in java.awt")
    :   `IllegalArgumentException` - if `gc`
        is not from a screen device
    :   `HeadlessException` - when
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if the calling thread does not have permission
        to create modal dialogs with the given `modalityType`

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`setModal(boolean)`](#setModal(boolean))
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Toolkit.isModalityTypeSupported(java.awt.Dialog.ModalityType)`](Toolkit.md#isModalityTypeSupported(java.awt.Dialog.ModalityType))
* ## Method Details

  + ### addNotify

    public void addNotify()

    Makes this Dialog displayable by connecting it to
    a native screen resource. Making a dialog displayable will
    cause any of its children to be made displayable.
    This method is called internally by the toolkit and should
    not be called directly by programs.

    Overrides:
    :   `addNotify` in class `Window`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Window.removeNotify()`](Window.md#removeNotify())
  + ### isModal

    public boolean isModal()

    Indicates whether the dialog is modal.

    This method is obsolete and is kept for backwards compatibility only.
    Use [`getModalityType()`](#getModalityType()) instead.

    Returns:
    :   `true` if this dialog window is modal;
        `false` otherwise

    See Also:
    :   - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`setModal(boolean)`](#setModal(boolean))
        - [`getModalityType()`](#getModalityType())
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
  + ### setModal

    public void setModal(boolean modal)

    Specifies whether this dialog should be modal.

    This method is obsolete and is kept for backwards compatibility only.
    Use [`setModalityType()`](#setModalityType(java.awt.Dialog.ModalityType)) instead.

    Note: changing modality of the visible dialog may have no effect
    until it is hidden and then shown again.

    Parameters:
    :   `modal` - specifies whether dialog blocks input to other windows
        when shown; calling to `setModal(true)` is equivalent to
        `setModalityType(Dialog.DEFAULT_MODALITY_TYPE)`, and
        calling to `setModal(false)` is equivalent to
        `setModalityType(Dialog.ModalityType.MODELESS)`

    Since:
    :   1.1

    See Also:
    :   - [`DEFAULT_MODALITY_TYPE`](#DEFAULT_MODALITY_TYPE)
        - [`Dialog.ModalityType.MODELESS`](Dialog.ModalityType.md#MODELESS)
        - [`isModal()`](#isModal())
        - [`getModalityType()`](#getModalityType())
        - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
  + ### getModalityType

    public [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") getModalityType()

    Returns the modality type of this dialog.

    Returns:
    :   modality type of this dialog

    Since:
    :   1.6

    See Also:
    :   - [`setModalityType(java.awt.Dialog.ModalityType)`](#setModalityType(java.awt.Dialog.ModalityType))
  + ### setModalityType

    public void setModalityType([Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") type)

    Sets the modality type for this dialog. See [`ModalityType`](Dialog.ModalityType.md "enum class in java.awt") for possible modality types.

    If the given modality type is not supported, `MODELESS`
    is used. You may want to call `getModalityType()` after calling
    this method to ensure that the modality type has been set.

    Note: changing modality of the visible dialog may have no effect
    until it is hidden and then shown again.

    Parameters:
    :   `type` - specifies whether dialog blocks input to other
        windows when shown. `null` value and unsupported modality
        types are equivalent to `MODELESS`

    Throws:
    :   `SecurityException` - if the calling thread does not have permission
        to create modal dialogs with the given `modalityType`

    Since:
    :   1.6

    See Also:
    :   - [`getModalityType()`](#getModalityType())
        - [`Toolkit.isModalityTypeSupported(java.awt.Dialog.ModalityType)`](Toolkit.md#isModalityTypeSupported(java.awt.Dialog.ModalityType))
  + ### getTitle

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTitle()

    Gets the title of the dialog. The title is displayed in the
    dialog's border.

    Returns:
    :   the title of this dialog window. The title may be
        `null`.

    See Also:
    :   - [`setTitle(java.lang.String)`](#setTitle(java.lang.String))
  + ### setTitle

    public void setTitle([String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Sets the title of the Dialog.

    Parameters:
    :   `title` - the title displayed in the dialog's border;
        a null value results in an empty title

    See Also:
    :   - [`getTitle()`](#getTitle())
  + ### setVisible

    public void setVisible(boolean b)

    Shows or hides this `Dialog` depending on the value of parameter
    `b`.

    Overrides:
    :   `setVisible` in class `Window`

    Parameters:
    :   `b` - if `true`, makes the `Dialog` visible,
        otherwise hides the `Dialog`.
        If the dialog and/or its owner
        are not yet displayable, both are made displayable. The
        dialog will be validated prior to being made visible.
        If `false`, hides the `Dialog` and then causes `setVisible(true)`
        to return if it is currently blocked.

        **Notes for modal dialogs**.
        - `setVisible(true)`: If the dialog is not already
          visible, this call will not return until the dialog is
          hidden by calling `setVisible(false)` or
          `dispose`.- `setVisible(false)`: Hides the dialog and then
            returns on `setVisible(true)` if it is currently blocked.- It is OK to call this method from the event dispatching
              thread because the toolkit ensures that other events are
              not blocked while this method is blocked.

    See Also:
    :   - [`Window.setVisible(boolean)`](Window.md#setVisible(boolean))
        - [`Window.dispose()`](Window.md#dispose())
        - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Component.validate()`](Component.md#validate())
        - [`isModal()`](#isModal())
  + ### show

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void show()

    Deprecated.

    As of JDK version 1.5, replaced by
    [`setVisible(boolean)`](#setVisible(boolean)).

    Makes the `Dialog` visible. If the dialog and/or its owner
    are not yet displayable, both are made displayable. The
    dialog will be validated prior to being made visible.
    If the dialog is already visible, this will bring the dialog
    to the front.

    If the dialog is modal and is not already visible, this call
    will not return until the dialog is hidden by calling hide or
    dispose. It is permissible to show modal dialogs from the event
    dispatching thread because the toolkit will ensure that another
    event pump runs while the one which invoked this method is blocked.

    Overrides:
    :   `show` in class `Window`

    See Also:
    :   - [`Component.hide()`](Component.md#hide())
        - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Component.validate()`](Component.md#validate())
        - [`isModal()`](#isModal())
        - [`Window.setVisible(boolean)`](Window.md#setVisible(boolean))
  + ### hide

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void hide()

    Deprecated.

    As of JDK version 1.5, replaced by
    [`setVisible(boolean)`](#setVisible(boolean)).

    Hides the Dialog and then causes `show` to return if it is currently
    blocked.

    Overrides:
    :   `hide` in class `Window`

    See Also:
    :   - [`Window.show()`](Window.md#show())
        - [`Window.dispose()`](Window.md#dispose())
        - [`Window.setVisible(boolean)`](Window.md#setVisible(boolean))
  + ### toBack

    public void toBack()

    If this Window is visible, sends this Window to the back and may cause
    it to lose focus or activation if it is the focused or active Window.

    Places this Window at the bottom of the stacking order and shows it
    behind any other Windows in this VM. No action will take place is this
    Window is not visible. Some platforms do not allow Windows which are
    owned by other Windows to appear below their owners. Every attempt will
    be made to move this Window as low as possible in the stacking order;
    however, developers should not assume that this method will move this
    Window below all other windows in every situation.

    Because of variations in native windowing systems, no guarantees about
    changes to the focused and active Windows can be made. Developers must
    never assume that this Window is no longer the focused or active Window
    until this Window receives a WINDOW\_LOST\_FOCUS or WINDOW\_DEACTIVATED
    event. On platforms where the top-most window is the focused window,
    this method will **probably** cause this Window to lose focus. In
    that case, the next highest, focusable Window in this VM will receive
    focus. On platforms where the stacking order does not typically affect
    the focused window, this method will **probably** leave the focused
    and active Windows unchanged.

    If this dialog is modal and blocks some windows, then all of them are
    also sent to the back to keep them below the blocking dialog.

    Overrides:
    :   `toBack` in class `Window`

    See Also:
    :   - [`Window.toBack()`](Window.md#toBack())
  + ### isResizable

    public boolean isResizable()

    Indicates whether this dialog is resizable by the user.
    By default, all dialogs are initially resizable.

    Returns:
    :   `true` if the user can resize the dialog;
        `false` otherwise.

    See Also:
    :   - [`setResizable(boolean)`](#setResizable(boolean))
  + ### setResizable

    public void setResizable(boolean resizable)

    Sets whether this dialog is resizable by the user.

    Parameters:
    :   `resizable` - `true` if the user can
        resize this dialog; `false` otherwise.

    See Also:
    :   - [`isResizable()`](#isResizable())
  + ### setUndecorated

    public void setUndecorated(boolean undecorated)

    Disables or enables decorations for this dialog.

    This method can only be called while the dialog is not displayable. To
    make this dialog decorated, it must be opaque and have the default shape,
    otherwise the `IllegalComponentStateException` will be thrown.
    Refer to [`Window.setShape(java.awt.Shape)`](Window.md#setShape(java.awt.Shape)), [`Window.setOpacity(float)`](Window.md#setOpacity(float)) and [`Window.setBackground(java.awt.Color)`](Window.md#setBackground(java.awt.Color)) for details

    Parameters:
    :   `undecorated` - `true` if no dialog decorations are to be
        enabled; `false` if dialog decorations are to be enabled

    Throws:
    :   `IllegalComponentStateException` - if the dialog is displayable
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and this dialog does not have the default shape
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and this dialog opacity is less than `1.0f`
    :   `IllegalComponentStateException` - if `undecorated` is
        `false`, and the alpha value of this dialog background
        color is less than `1.0f`

    Since:
    :   1.4

    See Also:
    :   - [`isUndecorated()`](#isUndecorated())
        - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Window.getShape()`](Window.md#getShape())
        - [`Window.getOpacity()`](Window.md#getOpacity())
        - [`Window.getBackground()`](Window.md#getBackground())
  + ### isUndecorated

    public boolean isUndecorated()

    Indicates whether this dialog is undecorated.
    By default, all dialogs are initially decorated.

    Returns:
    :   `true` if dialog is undecorated;
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
      translucency must be supported by the underlying system- The window must be undecorated (see [`Frame.setUndecorated(boolean)`](Frame.md#setUndecorated(boolean))
        and [`setUndecorated(boolean)`](#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

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
        - [`Frame.isUndecorated()`](Frame.md#isUndecorated())
        - [`isUndecorated()`](#isUndecorated())
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
      underlying system- The window must be undecorated (see [`Frame.setUndecorated(boolean)`](Frame.md#setUndecorated(boolean))
        and [`setUndecorated(boolean)`](#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

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
        - [`Frame.isUndecorated()`](Frame.md#isUndecorated())
        - [`isUndecorated()`](#isUndecorated())
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
      device where this window is located- The window must be undecorated (see [`Frame.setUndecorated(boolean)`](Frame.md#setUndecorated(boolean))
        and [`setUndecorated(boolean)`](#setUndecorated(boolean)))- The window must not be in full-screen mode (see [`GraphicsDevice.setFullScreenWindow(Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window)))

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
        - [`Frame.isUndecorated()`](Frame.md#isUndecorated())
        - [`isUndecorated()`](#isUndecorated())
        - [`GraphicsDevice.WindowTranslucency`](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")
        - [`GraphicsDevice.isWindowTranslucencySupported(GraphicsDevice.WindowTranslucency)`](GraphicsDevice.md#isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency))
        - [`GraphicsConfiguration.isTranslucencyCapable()`](GraphicsConfiguration.md#isTranslucencyCapable())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this dialog. This
    method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `Container`

    Returns:
    :   the parameter string of this dialog window.
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this Dialog.
    For dialogs, the AccessibleContext takes the form of an
    AccessibleAWTDialog.
    A new AccessibleAWTDialog instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Window`

    Returns:
    :   an AccessibleAWTDialog that serves as the
        AccessibleContext of this Dialog

    Since:
    :   1.3