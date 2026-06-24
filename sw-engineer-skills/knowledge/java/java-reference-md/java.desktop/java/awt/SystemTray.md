Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class SystemTray

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.SystemTray

---

public class SystemTray
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `SystemTray` class represents the system tray for a
desktop. On Microsoft Windows it is referred to as the "Taskbar
Status Area", on Gnome it is referred to as the "Notification
Area", on KDE it is referred to as the "System Tray". The system
tray is shared by all applications running on the desktop.

On some platforms the system tray may not be present or may not
be supported, in this case [`getSystemTray()`](#getSystemTray())
throws [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang"). To detect whether the
system tray is supported, use [`isSupported()`](#isSupported()).

The `SystemTray` may contain one or more [`TrayIcons`](TrayIcon.md "class in java.awt"), which are added to the tray using the [`add(java.awt.TrayIcon)`](#add(java.awt.TrayIcon)) method, and removed when no longer needed, using the
[`remove(java.awt.TrayIcon)`](#remove(java.awt.TrayIcon)). `TrayIcon` consists of an
image, a popup menu and a set of associated listeners. Please see
the [`TrayIcon`](TrayIcon.md "class in java.awt") class for details.

Every Java application has a single `SystemTray`
instance that allows the app to interface with the system tray of
the desktop while the app is running. The `SystemTray`
instance can be obtained from the [`getSystemTray()`](#getSystemTray()) method.
An application may not create its own instance of
`SystemTray`.

The following code snippet demonstrates how to access
and customize the system tray:

```
     TrayIcon trayIcon = null;
     if (SystemTray.isSupported()) {
         // get the SystemTray instance
         SystemTray tray = SystemTray.getSystemTray();
         // load an image
         Image image = Toolkit.getDefaultToolkit().getImage(...);
         // create a action listener to listen for default action executed on the tray icon
         ActionListener listener = new ActionListener() {
             public void actionPerformed(ActionEvent e) {
                 // execute default action of the application
                 // ...
             }
         };
         // create a popup menu
         PopupMenu popup = new PopupMenu();
         // create menu item for the default action
         MenuItem defaultItem = new MenuItem(...);
         defaultItem.addActionListener(listener);
         popup.add(defaultItem);
         /// ... add other items
         // construct a TrayIcon
         trayIcon = new TrayIcon(image, "Tray Demo", popup);
         // set the TrayIcon properties
         trayIcon.addActionListener(listener);
         // ...
         // add the tray image
         try {
             tray.add(trayIcon);
         } catch (AWTException e) {
             System.err.println(e);
         }
         // ...
     } else {
         // disable tray option in your application or
         // perform other actions
         ...
     }
     // ...
     // some time later
     // the application state has changed - update the image
     if (trayIcon != null) {
         trayIcon.setImage(updatedImage);
     }
     // ...
```

Since:
:   1.6

See Also:
:   * [`TrayIcon`](TrayIcon.md "class in java.awt")

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(TrayIcon trayIcon)`

  Adds a `TrayIcon` to the `SystemTray`.

  `void`

  `addPropertyChangeListener(String propertyName,
  PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the list of listeners for the
  specific property.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners(String propertyName)`

  Returns an array of all the listeners that have been associated
  with the named property.

  `static SystemTray`

  `getSystemTray()`

  Gets the `SystemTray` instance that represents the
  desktop's tray area.

  `TrayIcon[]`

  `getTrayIcons()`

  Returns an array of all icons added to the tray by this
  application.

  `Dimension`

  `getTrayIconSize()`

  Returns the size, in pixels, of the space that a tray icon will
  occupy in the system tray.

  `static boolean`

  `isSupported()`

  Returns whether the system tray is supported on the current
  platform.

  `void`

  `remove(TrayIcon trayIcon)`

  Removes the specified `TrayIcon` from the
  `SystemTray`.

  `void`

  `removePropertyChangeListener(String propertyName,
  PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list
  for a specific property.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getSystemTray

    public static [SystemTray](SystemTray.md "class in java.awt") getSystemTray()

    Gets the `SystemTray` instance that represents the
    desktop's tray area. This always returns the same instance per
    application. On some platforms the system tray may not be
    supported. You may use the [`isSupported()`](#isSupported()) method to
    check if the system tray is supported.

    If a SecurityManager is installed, the AWTPermission
    `accessSystemTray` must be granted in order to get the
    `SystemTray` instance. Otherwise this method will throw a
    SecurityException.

    Returns:
    :   the `SystemTray` instance that represents
        the desktop's tray area

    Throws:
    :   `UnsupportedOperationException` - if the system tray isn't
        supported by the current platform
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless()` returns `true`
    :   `SecurityException` - if `accessSystemTray` permission
        is not granted

    See Also:
    :   - [`add(TrayIcon)`](#add(java.awt.TrayIcon))
        - [`TrayIcon`](TrayIcon.md "class in java.awt")
        - [`isSupported()`](#isSupported())
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### isSupported

    public static boolean isSupported()

    Returns whether the system tray is supported on the current
    platform. In addition to displaying the tray icon, minimal
    system tray support includes either a popup menu (see [`TrayIcon.setPopupMenu(PopupMenu)`](TrayIcon.md#setPopupMenu(java.awt.PopupMenu))) or an action event (see
    [`TrayIcon.addActionListener(ActionListener)`](TrayIcon.md#addActionListener(java.awt.event.ActionListener))).

    Developers should not assume that all of the system tray
    functionality is supported. To guarantee that the tray icon's
    default action is always accessible, add the default action to
    both the action listener and the popup menu. See the [`example`](SystemTray.md "class in java.awt") for an example of how to do this.

    **Note**: When implementing `SystemTray` and
    `TrayIcon` it is *strongly recommended* that
    you assign different gestures to the popup menu and an action
    event. Overloading a gesture for both purposes is confusing
    and may prevent the user from accessing one or the other.

    Returns:
    :   `false` if no system tray access is supported; this
        method returns `true` if the minimal system tray access is
        supported but does not guarantee that all system tray
        functionality is supported for the current platform

    See Also:
    :   - [`getSystemTray()`](#getSystemTray())
  + ### add

    public void add([TrayIcon](TrayIcon.md "class in java.awt") trayIcon)
    throws [AWTException](AWTException.md "class in java.awt")

    Adds a `TrayIcon` to the `SystemTray`.
    The tray icon becomes visible in the system tray once it is
    added. The order in which icons are displayed in a tray is not
    specified - it is platform and implementation-dependent.

    All icons added by the application are automatically
    removed from the `SystemTray` upon application exit
    and also when the desktop system tray becomes unavailable.

    Parameters:
    :   `trayIcon` - the `TrayIcon` to be added

    Throws:
    :   `NullPointerException` - if `trayIcon` is
        `null`
    :   `IllegalArgumentException` - if the same instance of
        a `TrayIcon` is added more than once
    :   `AWTException` - if the desktop system tray is missing

    See Also:
    :   - [`remove(TrayIcon)`](#remove(java.awt.TrayIcon))
        - [`getSystemTray()`](#getSystemTray())
        - [`TrayIcon`](TrayIcon.md "class in java.awt")
        - [`Image`](Image.md "class in java.awt")
  + ### remove

    public void remove([TrayIcon](TrayIcon.md "class in java.awt") trayIcon)

    Removes the specified `TrayIcon` from the
    `SystemTray`.

    All icons added by the application are automatically
    removed from the `SystemTray` upon application exit
    and also when the desktop system tray becomes unavailable.

    If `trayIcon` is `null` or was not
    added to the system tray, no exception is thrown and no action
    is performed.

    Parameters:
    :   `trayIcon` - the `TrayIcon` to be removed

    See Also:
    :   - [`add(TrayIcon)`](#add(java.awt.TrayIcon))
        - [`TrayIcon`](TrayIcon.md "class in java.awt")
  + ### getTrayIcons

    public [TrayIcon](TrayIcon.md "class in java.awt")[] getTrayIcons()

    Returns an array of all icons added to the tray by this
    application. You can't access the icons added by another
    application. Some browsers partition applets in different
    code bases into separate contexts, and establish walls between
    these contexts. In such a scenario, only the tray icons added
    from this context will be returned.

    The returned array is a copy of the actual array and may be
    modified in any way without affecting the system tray. To
    remove a `TrayIcon` from the
    `SystemTray`, use the [`remove(TrayIcon)`](#remove(java.awt.TrayIcon)) method.

    Returns:
    :   an array of all tray icons added to this tray, or an
        empty array if none has been added

    See Also:
    :   - [`add(TrayIcon)`](#add(java.awt.TrayIcon))
        - [`TrayIcon`](TrayIcon.md "class in java.awt")
  + ### getTrayIconSize

    public [Dimension](Dimension.md "class in java.awt") getTrayIconSize()

    Returns the size, in pixels, of the space that a tray icon will
    occupy in the system tray. Developers may use this method to
    acquire the preferred size for the tray icon before it is created.
    For convenience, there is a similar method [`TrayIcon.getSize()`](TrayIcon.md#getSize())
    in the `TrayIcon` class.

    Returns:
    :   the default size of a tray icon, in pixels

    See Also:
    :   - [`TrayIcon.setImageAutoSize(boolean)`](TrayIcon.md#setImageAutoSize(boolean))
        - [`Image`](Image.md "class in java.awt")
        - [`TrayIcon.getSize()`](TrayIcon.md#getSize())
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the list of listeners for the
    specific property. The following properties are currently supported:

    SystemTray properties

    | Property Description | |
    | --- | --- |
    | `trayIcons` The `SystemTray`'s array of `TrayIcon` objects. The array is accessed via the [`getTrayIcons()`](#getTrayIcons()) method. This property is changed when a tray icon is added to (or removed from) the system tray. For example, this property is changed when the system tray becomes unavailable on the desktop and the tray icons are automatically removed.| `systemTray` This property contains `SystemTray` instance when the system tray is available or `null` otherwise. This property is changed when the system tray becomes available or unavailable on the desktop. The property is accessed by the [`getSystemTray()`](#getSystemTray()) method. | | | |

    The `listener` listens to property changes only in this context.

    If `listener` is `null`, no exception is thrown
    and no action is performed.

    Parameters:
    :   `propertyName` - the specified property
    :   `listener` - the property change listener to be added

    See Also:
    :   - [`removePropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)`](#removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))
        - [`getPropertyChangeListeners(java.lang.String)`](#getPropertyChangeListeners(java.lang.String))
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list
    for a specific property.

    The `PropertyChangeListener` must be from this context.

    If `propertyName` or `listener` is `null` or invalid,
    no exception is thrown and no action is taken.

    Parameters:
    :   `propertyName` - the specified property
    :   `listener` - the PropertyChangeListener to be removed

    See Also:
    :   - [`addPropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))
        - [`getPropertyChangeListeners(java.lang.String)`](#getPropertyChangeListeners(java.lang.String))
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Returns an array of all the listeners that have been associated
    with the named property.

    Only the listeners in this context are returned.

    Parameters:
    :   `propertyName` - the specified property

    Returns:
    :   all of the `PropertyChangeListener`s associated with
        the named property; if no such listeners have been added or
        if `propertyName` is `null` or invalid, an empty
        array is returned

    See Also:
    :   - [`addPropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))
        - [`removePropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)`](#removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))