Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Taskbar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Taskbar

---

public class Taskbar
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `Taskbar` class allows a Java application to interact with
the system task area (taskbar, Dock, etc.).

There are a variety of interactions depending on the current platform such as
displaying progress of some task, appending user-specified menu to the application
icon context menu, etc.

Since:
:   9

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `Taskbar.Feature`

  List of provided features.

  `static enum`

  `Taskbar.State`

  Kinds of available window progress states.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Image`

  `getIconImage()`

  Obtains an image of this application's icon.

  `PopupMenu`

  `getMenu()`

  Gets PopupMenu used to add items to this application's icon in system task area.

  `static Taskbar`

  `getTaskbar()`

  Returns the `Taskbar` instance of the current
  taskbar context.

  `boolean`

  `isSupported(Taskbar.Feature feature)`

  Tests whether a `Feature` is supported on the current platform.

  `static boolean`

  `isTaskbarSupported()`

  Tests whether this class is supported on the current platform.

  `void`

  `requestUserAttention(boolean enabled,
  boolean critical)`

  Requests user attention to this application.

  `void`

  `requestWindowUserAttention(Window w)`

  Requests user attention to the specified window.

  `void`

  `setIconBadge(String badge)`

  Affixes a small system-provided badge to this application's icon.

  `void`

  `setIconImage(Image image)`

  Requests the system to change this application's icon to the provided `image`.

  `void`

  `setMenu(PopupMenu menu)`

  Attaches the contents of the provided PopupMenu to the application icon
  in the task area.

  `void`

  `setProgressValue(int value)`

  Affixes a small system-provided progress bar to this application's icon.

  `void`

  `setWindowIconBadge(Window w,
  Image badge)`

  Affixes a small badge to this application's icon in the task area
  for the specified window.

  `void`

  `setWindowProgressState(Window w,
  Taskbar.State state)`

  Sets a progress state for a specified window.

  `void`

  `setWindowProgressValue(Window w,
  int value)`

  Displays a determinate progress bar in the task area for the specified
  window.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### isSupported

    public boolean isSupported([Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") feature)

    Tests whether a `Feature` is supported on the current platform.

    Parameters:
    :   `feature` - the specified [`Taskbar.Feature`](Taskbar.Feature.md "enum class in java.awt")

    Returns:
    :   true if the specified feature is supported on the current platform
  + ### getTaskbar

    public static [Taskbar](Taskbar.md "class in java.awt") getTaskbar()

    Returns the `Taskbar` instance of the current
    taskbar context. On some platforms the Taskbar API may not be
    supported; use the [`isTaskbarSupported()`](#isTaskbarSupported()) method to
    determine if the current taskbar is supported.

    Returns:
    :   the Taskbar instance

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless()) returns `true`
    :   `UnsupportedOperationException` - if this class is not
        supported on the current platform

    See Also:
    :   - [`isTaskbarSupported()`](#isTaskbarSupported())
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### isTaskbarSupported

    public static boolean isTaskbarSupported()

    Tests whether this class is supported on the current platform.
    If it's supported, use [`getTaskbar()`](#getTaskbar()) to retrieve an
    instance.

    Returns:
    :   `true` if this class is supported on the
        current platform; `false` otherwise

    See Also:
    :   - [`getTaskbar()`](#getTaskbar())
  + ### requestUserAttention

    public void requestUserAttention(boolean enabled,
    boolean critical)

    Requests user attention to this application.
    Depending on the platform, this may be visually indicated by a bouncing
    or flashing icon in the task area. It may have no effect on an already active
    application.
    On some platforms (e.g. Mac OS) this effect may disappear upon app activation
    and cannot be dismissed by setting `enabled` to false.
    Other platforms may require an additional call
    [`requestUserAttention(boolean, boolean)`](#requestUserAttention(boolean,boolean)) to dismiss this request
    with `enabled` parameter set to false.

    Parameters:
    :   `enabled` - disables this request if false
    :   `critical` - if this is an important request

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.USER_ATTENTION`](Taskbar.Feature.md#USER_ATTENTION) feature
  + ### requestWindowUserAttention

    public void requestWindowUserAttention([Window](Window.md "class in java.awt") w)

    Requests user attention to the specified window.
    Has no effect if a window representation is not displayable in
    the task area. Whether it is displayable is dependent on all
    of window type, platform, and implementation.

    Parameters:
    :   `w` - window

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.USER_ATTENTION_WINDOW`](Taskbar.Feature.md#USER_ATTENTION_WINDOW) feature
  + ### setMenu

    public void setMenu([PopupMenu](PopupMenu.md "class in java.awt") menu)

    Attaches the contents of the provided PopupMenu to the application icon
    in the task area.

    Parameters:
    :   `menu` - the PopupMenu to attach to this application

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.MENU`](Taskbar.Feature.md#MENU) feature
  + ### getMenu

    public [PopupMenu](PopupMenu.md "class in java.awt") getMenu()

    Gets PopupMenu used to add items to this application's icon in system task area.

    Returns:
    :   the PopupMenu

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.MENU`](Taskbar.Feature.md#MENU) feature
  + ### setIconImage

    public void setIconImage([Image](Image.md "class in java.awt") image)

    Requests the system to change this application's icon to the provided `image`.

    Parameters:
    :   `image` - to change

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.ICON_IMAGE`](Taskbar.Feature.md#ICON_IMAGE) feature
  + ### getIconImage

    public [Image](Image.md "class in java.awt") getIconImage()

    Obtains an image of this application's icon.

    Returns:
    :   an image of this application's icon

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.ICON_IMAGE`](Taskbar.Feature.md#ICON_IMAGE) feature
  + ### setIconBadge

    public void setIconBadge([String](../../../java.base/java/lang/String.md "class in java.lang") badge)

    Affixes a small system-provided badge to this application's icon.
    Usually a number.
    Some platforms do not support string values and accept only integer
    values. In this case, pass an integer represented as a string as parameter.
    This can be tested by `Feature.ICON_BADGE_TEXT` and
    `Feature.ICON_BADGE_NUMBER`.
    Passing `null` as parameter hides the badge.

    Parameters:
    :   `badge` - label to affix to the icon

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.ICON_BADGE_NUMBER`](Taskbar.Feature.md#ICON_BADGE_NUMBER)
        or [`Taskbar.Feature.ICON_BADGE_TEXT`](Taskbar.Feature.md#ICON_BADGE_TEXT) feature
  + ### setWindowIconBadge

    public void setWindowIconBadge([Window](Window.md "class in java.awt") w,
    [Image](Image.md "class in java.awt") badge)

    Affixes a small badge to this application's icon in the task area
    for the specified window.
    It may be disabled by system settings.
    Has no effect if a window representation is not displayable in
    the task area. Whether it is displayable is dependent on all
    of window type, platform, and implementation.

    Parameters:
    :   `w` - window to update
    :   `badge` - image to affix to the icon

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.ICON_BADGE_IMAGE_WINDOW`](Taskbar.Feature.md#ICON_BADGE_IMAGE_WINDOW) feature
  + ### setProgressValue

    public void setProgressValue(int value)

    Affixes a small system-provided progress bar to this application's icon.

    Parameters:
    :   `value` - from 0 to 100, other to disable progress indication

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.PROGRESS_VALUE`](Taskbar.Feature.md#PROGRESS_VALUE) feature
  + ### setWindowProgressValue

    public void setWindowProgressValue([Window](Window.md "class in java.awt") w,
    int value)

    Displays a determinate progress bar in the task area for the specified
    window.
    Has no effect if a window representation is not displayable in
    the task area. Whether it is displayable is dependent on all
    of window type, platform, and implementation.
      
    The visual behavior is platform and [`Taskbar.State`](Taskbar.State.md "enum class in java.awt") dependent.
      
    This call cancels the [`INDETERMINATE`](Taskbar.State.md#INDETERMINATE) state
    of the window.
      
    Note that when multiple windows is grouped in the task area
    the behavior is platform specific.

    Parameters:
    :   `w` - window to update
    :   `value` - from 0 to 100, other to switch to [`Taskbar.State.OFF`](Taskbar.State.md#OFF) state
        and disable progress indication

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.PROGRESS_VALUE_WINDOW`](Taskbar.Feature.md#PROGRESS_VALUE_WINDOW) feature

    See Also:
    :   - [`setWindowProgressState(java.awt.Window, State)`](#setWindowProgressState(java.awt.Window,java.awt.Taskbar.State))
  + ### setWindowProgressState

    public void setWindowProgressState([Window](Window.md "class in java.awt") w,
    [Taskbar.State](Taskbar.State.md "enum class in java.awt") state)

    Sets a progress state for a specified window.
    Has no effect if a window representation is not displayable in
    the task area. Whether it is displayable is dependent on all
    of window type, platform, and implementation.
      
    Each state displays a progress in a platform-dependent way.
      
    Note than switching from [`INDETERMINATE`](Taskbar.State.md#INDETERMINATE) state
    to any of determinate states may reset value set by
    [`setWindowProgressValue`](#setWindowProgressValue(java.awt.Window,int))

    Parameters:
    :   `w` - window
    :   `state` - to change to

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Taskbar.Feature.PROGRESS_STATE_WINDOW`](Taskbar.Feature.md#PROGRESS_STATE_WINDOW) feature

    See Also:
    :   - [`Taskbar.State.OFF`](Taskbar.State.md#OFF)
        - [`Taskbar.State.NORMAL`](Taskbar.State.md#NORMAL)
        - [`Taskbar.State.PAUSED`](Taskbar.State.md#PAUSED)
        - [`Taskbar.State.ERROR`](Taskbar.State.md#ERROR)
        - [`Taskbar.State.INDETERMINATE`](Taskbar.State.md#INDETERMINATE)
        - [`setWindowProgressValue(java.awt.Window, int)`](#setWindowProgressValue(java.awt.Window,int))