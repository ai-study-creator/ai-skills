Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class TrayIcon

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.TrayIcon

---

public class TrayIcon
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A `TrayIcon` object represents a tray icon that can be
added to the [`system tray`](SystemTray.md "class in java.awt"). A
`TrayIcon` can have a tooltip (text), an image, a popup
menu, and a set of listeners associated with it.

A `TrayIcon` can generate various [`MouseEvents`](event/MouseEvent.md "class in java.awt.event") and supports adding corresponding listeners to receive
notification of these events. `TrayIcon` processes some
of the events by itself. For example, by default, when the
right-mouse click is performed on the `TrayIcon` it
displays the specified popup menu. When the mouse hovers
over the `TrayIcon` the tooltip is displayed (this behaviour is
platform dependent).

**Note:** When the `MouseEvent` is
dispatched to its registered listeners its `component`
property will be set to `null`. (See [`ComponentEvent.getComponent()`](event/ComponentEvent.md#getComponent())) The
`source` property will be set to this
`TrayIcon`. (See [`EventObject.getSource()`](../../../java.base/java/util/EventObject.md#getSource()))

**Note:** A well-behaved [`TrayIcon`](TrayIcon.md "class in java.awt") implementation
will assign different gestures to showing a popup menu and
selecting a tray icon.

A `TrayIcon` can generate an [`ActionEvent`](event/ActionEvent.md "class in java.awt.event"). On some platforms, this occurs when the user selects
the tray icon using either the mouse or keyboard.

If a SecurityManager is installed, the AWTPermission
`accessSystemTray` must be granted in order to create
a `TrayIcon`. Otherwise the constructor will throw a
SecurityException.

See the [`SystemTray`](SystemTray.md "class in java.awt") class overview for an example on how
to use the `TrayIcon` API.

Since:
:   1.6

See Also:
:   * [`SystemTray.add(java.awt.TrayIcon)`](SystemTray.md#add(java.awt.TrayIcon))
    * [`ComponentEvent.getComponent()`](event/ComponentEvent.md#getComponent())
    * [`EventObject.getSource()`](../../../java.base/java/util/EventObject.md#getSource())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `TrayIcon.MessageType`

  The message type determines which icon will be displayed in the
  caption of the message, and a possible system sound a message
  may generate upon showing.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TrayIcon(Image image)`

  Creates a `TrayIcon` with the specified image.

  `TrayIcon(Image image,
  String tooltip)`

  Creates a `TrayIcon` with the specified image and
  tooltip text.

  `TrayIcon(Image image,
  String tooltip,
  PopupMenu popup)`

  Creates a `TrayIcon` with the specified image,
  tooltip and popup menu.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addActionListener(ActionListener listener)`

  Adds the specified action listener to receive
  `ActionEvent`s from this `TrayIcon`.

  `void`

  `addMouseListener(MouseListener listener)`

  Adds the specified mouse listener to receive mouse events from
  this `TrayIcon`.

  `void`

  `addMouseMotionListener(MouseMotionListener listener)`

  Adds the specified mouse listener to receive mouse-motion
  events from this `TrayIcon`.

  `void`

  `displayMessage(String caption,
  String text,
  TrayIcon.MessageType messageType)`

  Displays a popup message near the tray icon.

  `String`

  `getActionCommand()`

  Returns the command name of the action event fired by this tray icon.

  `ActionListener[]`

  `getActionListeners()`

  Returns an array of all the action listeners
  registered on this `TrayIcon`.

  `Image`

  `getImage()`

  Returns the current image used for this `TrayIcon`.

  `MouseListener[]`

  `getMouseListeners()`

  Returns an array of all the mouse listeners
  registered on this `TrayIcon`.

  `MouseMotionListener[]`

  `getMouseMotionListeners()`

  Returns an array of all the mouse-motion listeners
  registered on this `TrayIcon`.

  `PopupMenu`

  `getPopupMenu()`

  Returns the popup menu associated with this `TrayIcon`.

  `Dimension`

  `getSize()`

  Returns the size, in pixels, of the space that the tray icon
  occupies in the system tray.

  `String`

  `getToolTip()`

  Returns the tooltip string associated with this
  `TrayIcon`.

  `boolean`

  `isImageAutoSize()`

  Returns the value of the auto-size property.

  `void`

  `removeActionListener(ActionListener listener)`

  Removes the specified action listener.

  `void`

  `removeMouseListener(MouseListener listener)`

  Removes the specified mouse listener.

  `void`

  `removeMouseMotionListener(MouseMotionListener listener)`

  Removes the specified mouse-motion listener.

  `void`

  `setActionCommand(String command)`

  Sets the command name for the action event fired by this tray
  icon.

  `void`

  `setImage(Image image)`

  Sets the image for this `TrayIcon`.

  `void`

  `setImageAutoSize(boolean autosize)`

  Sets the auto-size property.

  `void`

  `setPopupMenu(PopupMenu popup)`

  Sets the popup menu for this `TrayIcon`.

  `void`

  `setToolTip(String tooltip)`

  Sets the tooltip string for this `TrayIcon`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TrayIcon

    public TrayIcon([Image](Image.md "class in java.awt") image)

    Creates a `TrayIcon` with the specified image.

    Parameters:
    :   `image` - the `Image` to be used

    Throws:
    :   `IllegalArgumentException` - if `image` is
        `null`
    :   `UnsupportedOperationException` - if the system tray isn't
        supported by the current platform
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if `accessSystemTray` permission
        is not granted

    See Also:
    :   - [`SystemTray.add(TrayIcon)`](SystemTray.md#add(java.awt.TrayIcon))
        - [`TrayIcon(Image, String, PopupMenu)`](#%3Cinit%3E(java.awt.Image,java.lang.String,java.awt.PopupMenu))
        - [`TrayIcon(Image, String)`](#%3Cinit%3E(java.awt.Image,java.lang.String))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### TrayIcon

    public TrayIcon([Image](Image.md "class in java.awt") image,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tooltip)

    Creates a `TrayIcon` with the specified image and
    tooltip text. Tooltip may be not visible on some platforms.

    Parameters:
    :   `image` - the `Image` to be used
    :   `tooltip` - the string to be used as tooltip text; if the
        value is `null` no tooltip is shown

    Throws:
    :   `IllegalArgumentException` - if `image` is
        `null`
    :   `UnsupportedOperationException` - if the system tray isn't
        supported by the current platform
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if `accessSystemTray` permission
        is not granted

    See Also:
    :   - [`SystemTray.add(TrayIcon)`](SystemTray.md#add(java.awt.TrayIcon))
        - [`TrayIcon(Image)`](#%3Cinit%3E(java.awt.Image))
        - [`TrayIcon(Image, String, PopupMenu)`](#%3Cinit%3E(java.awt.Image,java.lang.String,java.awt.PopupMenu))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### TrayIcon

    public TrayIcon([Image](Image.md "class in java.awt") image,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tooltip,
    [PopupMenu](PopupMenu.md "class in java.awt") popup)

    Creates a `TrayIcon` with the specified image,
    tooltip and popup menu. Tooltip may be not visible on some platforms.

    Parameters:
    :   `image` - the `Image` to be used
    :   `tooltip` - the string to be used as tooltip text; if the
        value is `null` no tooltip is shown
    :   `popup` - the menu to be used for the tray icon's popup
        menu; if the value is `null` no popup menu is shown

    Throws:
    :   `IllegalArgumentException` - if `image` is `null`
    :   `UnsupportedOperationException` - if the system tray isn't
        supported by the current platform
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if `accessSystemTray` permission
        is not granted

    See Also:
    :   - [`SystemTray.add(TrayIcon)`](SystemTray.md#add(java.awt.TrayIcon))
        - [`TrayIcon(Image, String)`](#%3Cinit%3E(java.awt.Image,java.lang.String))
        - [`TrayIcon(Image)`](#%3Cinit%3E(java.awt.Image))
        - [`PopupMenu`](PopupMenu.md "class in java.awt")
        - [`MouseListener`](event/MouseListener.md "interface in java.awt.event")
        - [`addMouseListener(MouseListener)`](#addMouseListener(java.awt.event.MouseListener))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
* ## Method Details

  + ### setImage

    public void setImage([Image](Image.md "class in java.awt") image)

    Sets the image for this `TrayIcon`. The previous
    tray icon image is discarded without calling the [`Image.flush()`](Image.md#flush()) method — you will need to call it
    manually.

    If the image represents an animated image, it will be
    animated automatically.

    See the [`setImageAutoSize(boolean)`](#setImageAutoSize(boolean)) property for
    details on the size of the displayed image.

    Calling this method with the same image that is currently
    being used has no effect.

    Parameters:
    :   `image` - the non-null `Image` to be used

    Throws:
    :   `NullPointerException` - if `image` is `null`

    See Also:
    :   - [`getImage()`](#getImage())
        - [`Image`](Image.md "class in java.awt")
        - [`SystemTray.add(TrayIcon)`](SystemTray.md#add(java.awt.TrayIcon))
        - [`TrayIcon(Image, String)`](#%3Cinit%3E(java.awt.Image,java.lang.String))
  + ### getImage

    public [Image](Image.md "class in java.awt") getImage()

    Returns the current image used for this `TrayIcon`.

    Returns:
    :   the image

    See Also:
    :   - [`setImage(Image)`](#setImage(java.awt.Image))
        - [`Image`](Image.md "class in java.awt")
  + ### setPopupMenu

    public void setPopupMenu([PopupMenu](PopupMenu.md "class in java.awt") popup)

    Sets the popup menu for this `TrayIcon`. If
    `popup` is `null`, no popup menu will be
    associated with this `TrayIcon`.

    Note that this `popup` must not be added to any
    parent before or after it is set on the tray icon. If you add
    it to some parent, the `popup` may be removed from
    that parent.

    The `popup` can be set on one `TrayIcon` only.
    Setting the same popup on multiple `TrayIcon`s will cause
    an `IllegalArgumentException`.

    **Note:** Some platforms may not support
    showing the user-specified popup menu component when the user
    right-clicks the tray icon. In this situation, either no menu
    will be displayed or, on some systems, a native version of the
    menu may be displayed.

    Parameters:
    :   `popup` - a `PopupMenu` or `null` to
        remove any popup menu

    Throws:
    :   `IllegalArgumentException` - if the `popup` is already
        set for another `TrayIcon`

    See Also:
    :   - [`getPopupMenu()`](#getPopupMenu())
  + ### getPopupMenu

    public [PopupMenu](PopupMenu.md "class in java.awt") getPopupMenu()

    Returns the popup menu associated with this `TrayIcon`.

    Returns:
    :   the popup menu or `null` if none exists

    See Also:
    :   - [`setPopupMenu(PopupMenu)`](#setPopupMenu(java.awt.PopupMenu))
  + ### setToolTip

    public void setToolTip([String](../../../java.base/java/lang/String.md "class in java.lang") tooltip)

    Sets the tooltip string for this `TrayIcon`. The
    tooltip is displayed automatically when the mouse hovers over
    the icon. Tooltip may be not visible on some platforms.
    Setting the tooltip to `null` removes any tooltip text.
    When displayed, the tooltip string may be truncated on some platforms;
    the number of characters that may be displayed is platform-dependent.

    Parameters:
    :   `tooltip` - the string for the tooltip; if the value is
        `null` no tooltip is shown

    See Also:
    :   - [`getToolTip()`](#getToolTip())
  + ### getToolTip

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getToolTip()

    Returns the tooltip string associated with this
    `TrayIcon`.

    Returns:
    :   the tooltip string or `null` if none exists

    See Also:
    :   - [`setToolTip(String)`](#setToolTip(java.lang.String))
  + ### setImageAutoSize

    public void setImageAutoSize(boolean autosize)

    Sets the auto-size property. Auto-size determines whether the
    tray image is automatically sized to fit the space allocated
    for the image on the tray. By default, the auto-size property
    is set to `false`.

    If auto-size is `false`, and the image size
    doesn't match the tray icon space, the image is painted as-is
    inside that space — if larger than the allocated space, it will
    be cropped.

    If auto-size is `true`, the image is stretched or shrunk to
    fit the tray icon space.

    Parameters:
    :   `autosize` - `true` to auto-size the image,
        `false` otherwise

    See Also:
    :   - [`isImageAutoSize()`](#isImageAutoSize())
  + ### isImageAutoSize

    public boolean isImageAutoSize()

    Returns the value of the auto-size property.

    Returns:
    :   `true` if the image will be auto-sized,
        `false` otherwise

    See Also:
    :   - [`setImageAutoSize(boolean)`](#setImageAutoSize(boolean))
  + ### addMouseListener

    public void addMouseListener([MouseListener](event/MouseListener.md "interface in java.awt.event") listener)

    Adds the specified mouse listener to receive mouse events from
    this `TrayIcon`. Calling this method with a
    `null` value has no effect.

    **Note**: The `MouseEvent`'s coordinates (received
    from the `TrayIcon`) are relative to the screen, not the
    `TrayIcon`.

    **Note:** The `MOUSE_ENTERED` and
    `MOUSE_EXITED` mouse events are not supported.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the mouse listener

    See Also:
    :   - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
        - [`MouseListener`](event/MouseListener.md "interface in java.awt.event")
        - [`removeMouseListener(MouseListener)`](#removeMouseListener(java.awt.event.MouseListener))
        - [`getMouseListeners()`](#getMouseListeners())
  + ### removeMouseListener

    public void removeMouseListener([MouseListener](event/MouseListener.md "interface in java.awt.event") listener)

    Removes the specified mouse listener. Calling this method with
    `null` or an invalid value has no effect.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the mouse listener

    See Also:
    :   - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
        - [`MouseListener`](event/MouseListener.md "interface in java.awt.event")
        - [`addMouseListener(MouseListener)`](#addMouseListener(java.awt.event.MouseListener))
        - [`getMouseListeners()`](#getMouseListeners())
  + ### getMouseListeners

    public [MouseListener](event/MouseListener.md "interface in java.awt.event")[] getMouseListeners()

    Returns an array of all the mouse listeners
    registered on this `TrayIcon`.

    Returns:
    :   all of the `MouseListeners` registered on
        this `TrayIcon` or an empty array if no mouse
        listeners are currently registered

    See Also:
    :   - [`addMouseListener(MouseListener)`](#addMouseListener(java.awt.event.MouseListener))
        - [`removeMouseListener(MouseListener)`](#removeMouseListener(java.awt.event.MouseListener))
        - [`MouseListener`](event/MouseListener.md "interface in java.awt.event")
  + ### addMouseMotionListener

    public void addMouseMotionListener([MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") listener)

    Adds the specified mouse listener to receive mouse-motion
    events from this `TrayIcon`. Calling this method
    with a `null` value has no effect.

    **Note**: The `MouseEvent`'s coordinates (received
    from the `TrayIcon`) are relative to the screen, not the
    `TrayIcon`.

    **Note:** The `MOUSE_DRAGGED` mouse event is not supported.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the mouse listener

    See Also:
    :   - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
        - [`MouseMotionListener`](event/MouseMotionListener.md "interface in java.awt.event")
        - [`removeMouseMotionListener(MouseMotionListener)`](#removeMouseMotionListener(java.awt.event.MouseMotionListener))
        - [`getMouseMotionListeners()`](#getMouseMotionListeners())
  + ### removeMouseMotionListener

    public void removeMouseMotionListener([MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") listener)

    Removes the specified mouse-motion listener. Calling this method with
    `null` or an invalid value has no effect.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the mouse listener

    See Also:
    :   - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
        - [`MouseMotionListener`](event/MouseMotionListener.md "interface in java.awt.event")
        - [`addMouseMotionListener(MouseMotionListener)`](#addMouseMotionListener(java.awt.event.MouseMotionListener))
        - [`getMouseMotionListeners()`](#getMouseMotionListeners())
  + ### getMouseMotionListeners

    public [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event")[] getMouseMotionListeners()

    Returns an array of all the mouse-motion listeners
    registered on this `TrayIcon`.

    Returns:
    :   all of the `MouseInputListeners` registered on
        this `TrayIcon` or an empty array if no mouse
        listeners are currently registered

    See Also:
    :   - [`addMouseMotionListener(MouseMotionListener)`](#addMouseMotionListener(java.awt.event.MouseMotionListener))
        - [`removeMouseMotionListener(MouseMotionListener)`](#removeMouseMotionListener(java.awt.event.MouseMotionListener))
        - [`MouseMotionListener`](event/MouseMotionListener.md "interface in java.awt.event")
  + ### getActionCommand

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getActionCommand()

    Returns the command name of the action event fired by this tray icon.

    Returns:
    :   the action command name, or `null` if none exists

    See Also:
    :   - [`addActionListener(ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`setActionCommand(String)`](#setActionCommand(java.lang.String))
  + ### setActionCommand

    public void setActionCommand([String](../../../java.base/java/lang/String.md "class in java.lang") command)

    Sets the command name for the action event fired by this tray
    icon. By default, this action command is set to
    `null`.

    Parameters:
    :   `command` - a string used to set the tray icon's
        action command.

    See Also:
    :   - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`addActionListener(ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`getActionCommand()`](#getActionCommand())
  + ### addActionListener

    public void addActionListener([ActionListener](event/ActionListener.md "interface in java.awt.event") listener)

    Adds the specified action listener to receive
    `ActionEvent`s from this `TrayIcon`.
    Action events usually occur when a user selects the tray icon,
    using either the mouse or keyboard. The conditions in which
    action events are generated are platform-dependent.

    Calling this method with a `null` value has no
    effect.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the action listener

    See Also:
    :   - [`removeActionListener(java.awt.event.ActionListener)`](#removeActionListener(java.awt.event.ActionListener))
        - [`getActionListeners()`](#getActionListeners())
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
        - [`setActionCommand(String)`](#setActionCommand(java.lang.String))
  + ### removeActionListener

    public void removeActionListener([ActionListener](event/ActionListener.md "interface in java.awt.event") listener)

    Removes the specified action listener. Calling this method with
    `null` or an invalid value has no effect.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `listener` - the action listener

    See Also:
    :   - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
        - [`addActionListener(ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`getActionListeners()`](#getActionListeners())
        - [`setActionCommand(String)`](#setActionCommand(java.lang.String))
  + ### getActionListeners

    public [ActionListener](event/ActionListener.md "interface in java.awt.event")[] getActionListeners()

    Returns an array of all the action listeners
    registered on this `TrayIcon`.

    Returns:
    :   all of the `ActionListeners` registered on
        this `TrayIcon` or an empty array if no action
        listeners are currently registered

    See Also:
    :   - [`addActionListener(ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`removeActionListener(ActionListener)`](#removeActionListener(java.awt.event.ActionListener))
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
  + ### displayMessage

    public void displayMessage([String](../../../java.base/java/lang/String.md "class in java.lang") caption,
    [String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") messageType)

    Displays a popup message near the tray icon. The message will
    disappear after a time or if the user clicks on it. Clicking
    on the message may trigger an `ActionEvent`.

    Either the caption or the text may be `null`, but an
    `NullPointerException` is thrown if both are
    `null`.
    When displayed, the caption or text strings may be truncated on
    some platforms; the number of characters that may be displayed is
    platform-dependent.

    **Note:** Some platforms may not support
    showing a message.

    Parameters:
    :   `caption` - the caption displayed above the text, usually in
        bold; may be `null`
    :   `text` - the text displayed for the particular message; may be
        `null`
    :   `messageType` - an enum indicating the message type

    Throws:
    :   `NullPointerException` - if both `caption`
        and `text` are `null`
  + ### getSize

    public [Dimension](Dimension.md "class in java.awt") getSize()

    Returns the size, in pixels, of the space that the tray icon
    occupies in the system tray. For the tray icon that is not yet
    added to the system tray, the returned size is equal to the
    result of the [`SystemTray.getTrayIconSize()`](SystemTray.md#getTrayIconSize()).

    Returns:
    :   the size of the tray icon, in pixels

    See Also:
    :   - [`setImageAutoSize(boolean)`](#setImageAutoSize(boolean))
        - [`Image`](Image.md "class in java.awt")
        - [`getSize()`](#getSize())