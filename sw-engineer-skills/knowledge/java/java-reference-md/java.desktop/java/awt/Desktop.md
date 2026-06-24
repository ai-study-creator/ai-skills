Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Desktop

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Desktop

---

public class Desktop
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `Desktop` class allows interact with various desktop capabilities.

Supported operations include:

* launching the user-default browser to show a specified
  URI;
* launching the user-default mail client with an optional
  `mailto` URI;
* launching a registered application to open, edit or print a
  specified file.

This class provides methods corresponding to these
operations. The methods look for the associated application
registered on the current platform, and launch it to handle a URI
or file. If there is no associated application or the associated
application fails to be launched, an exception is thrown.
Please see [`Desktop.Action`](Desktop.Action.md "enum class in java.awt") for the full list of supported operations
and capabilities.

An application is registered to a URI or file type.
The mechanism of registering, accessing, and
launching the associated application is platform-dependent.

Each operation is an action type represented by the [`Desktop.Action`](Desktop.Action.md "enum class in java.awt") class.

Note: when some action is invoked and the associated
application is executed, it will be executed on the same system as
the one on which the Java application was launched.

Since:
:   1.6

See Also:
:   * [`Desktop.Action`](Desktop.Action.md "enum class in java.awt")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `Desktop.Action`

  Represents an action type.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAppEventListener(SystemEventListener listener)`

  Adds sub-types of [`SystemEventListener`](desktop/SystemEventListener.md "interface in java.awt.desktop") to listen for notifications
  from the native system.

  `void`

  `browse(URI uri)`

  Launches the default browser to display a `URI`.

  `void`

  `browseFileDirectory(File file)`

  Opens a folder containing the `file` and selects it
  in a default system file manager.

  `void`

  `disableSuddenTermination()`

  Prevents this application from being suddenly terminated.

  `void`

  `edit(File file)`

  Launches the associated editor application and opens a file for
  editing.

  `void`

  `enableSuddenTermination()`

  Enables this application to be suddenly terminated.

  `static Desktop`

  `getDesktop()`

  Returns the `Desktop` instance of the current
  desktop context.

  `static boolean`

  `isDesktopSupported()`

  Tests whether this class is supported on the current platform.

  `boolean`

  `isSupported(Desktop.Action action)`

  Tests whether an action is supported on the current platform.

  `void`

  `mail()`

  Launches the mail composing window of the user default mail
  client.

  `void`

  `mail(URI mailtoURI)`

  Launches the mail composing window of the user default mail
  client, filling the message fields specified by a `mailto:` URI.

  `boolean`

  `moveToTrash(File file)`

  Moves the specified file to the trash.

  `void`

  `open(File file)`

  Launches the associated application to open the file.

  `void`

  `openHelpViewer()`

  Opens the native help viewer application.

  `void`

  `print(File file)`

  Prints a file with the native desktop printing facility, using
  the associated application's print command.

  `void`

  `removeAppEventListener(SystemEventListener listener)`

  Removes sub-types of [`SystemEventListener`](desktop/SystemEventListener.md "interface in java.awt.desktop") to listen for notifications
  from the native system.

  `void`

  `requestForeground(boolean allWindows)`

  Requests this application to move to the foreground.

  `void`

  `setAboutHandler(AboutHandler aboutHandler)`

  Installs a handler to show a custom About window for your application.

  `void`

  `setDefaultMenuBar(JMenuBar menuBar)`

  Sets the default menu bar to use when there are no active frames.

  `void`

  `setOpenFileHandler(OpenFilesHandler openFileHandler)`

  Installs the handler which is notified when the application is asked to
  open a list of files.

  `void`

  `setOpenURIHandler(OpenURIHandler openURIHandler)`

  Installs the handler which is notified when the application is asked to
  open a URL.

  `void`

  `setPreferencesHandler(PreferencesHandler preferencesHandler)`

  Installs a handler to show a custom Preferences window for your
  application.

  `void`

  `setPrintFileHandler(PrintFilesHandler printFileHandler)`

  Installs the handler which is notified when the application is asked to
  print a list of files.

  `void`

  `setQuitHandler(QuitHandler quitHandler)`

  Installs the handler which determines if the application should quit.

  `void`

  `setQuitStrategy(QuitStrategy strategy)`

  Sets the default strategy used to quit this application.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getDesktop

    public static [Desktop](Desktop.md "class in java.awt") getDesktop()

    Returns the `Desktop` instance of the current
    desktop context. On some platforms the Desktop API may not be
    supported; use the [`isDesktopSupported()`](#isDesktopSupported()) method to
    determine if the current desktop is supported.

    Returns:
    :   the Desktop instance

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless()) returns `true`
    :   `UnsupportedOperationException` - if this class is not
        supported on the current platform

    See Also:
    :   - [`isDesktopSupported()`](#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### isDesktopSupported

    public static boolean isDesktopSupported()

    Tests whether this class is supported on the current platform.
    If it's supported, use [`getDesktop()`](#getDesktop()) to retrieve an
    instance.

    Returns:
    :   `true` if this class is supported on the
        current platform; `false` otherwise

    See Also:
    :   - [`getDesktop()`](#getDesktop())
  + ### isSupported

    public boolean isSupported([Desktop.Action](Desktop.Action.md "enum class in java.awt") action)

    Tests whether an action is supported on the current platform.

    Even when the platform supports an action, a file or URI may
    not have a registered application for the action. For example,
    most of the platforms support the [`Desktop.Action.OPEN`](Desktop.Action.md#OPEN)
    action. But for a specific file, there may not be an
    application registered to open it. In this case, [`isSupported(Action)`](#isSupported(java.awt.Desktop.Action)) may return `true`, but the corresponding
    action method will throw an [`IOException`](../../../java.base/java/io/IOException.md "class in java.io").

    Parameters:
    :   `action` - the specified [`Desktop.Action`](Desktop.Action.md "enum class in java.awt")

    Returns:
    :   `true` if the specified action is supported on
        the current platform; `false` otherwise

    See Also:
    :   - [`Desktop.Action`](Desktop.Action.md "enum class in java.awt")
  + ### open

    public void open([File](../../../java.base/java/io/File.md "class in java.io") file)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Launches the associated application to open the file.

    If the specified file is a directory, the file manager of
    the current platform is launched to open it.

    Parameters:
    :   `file` - the file to be opened with the associated application

    Throws:
    :   `NullPointerException` - if `file` is `null`
    :   `IllegalArgumentException` - if the specified file doesn't
        exist
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.OPEN`](Desktop.Action.md#OPEN) action
    :   `IOException` - if the specified file has no associated
        application or the associated application fails to be launched
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkRead(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        method denies read access to the file, or it denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess

    See Also:
    :   - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### edit

    public void edit([File](../../../java.base/java/io/File.md "class in java.io") file)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Launches the associated editor application and opens a file for
    editing.

    Parameters:
    :   `file` - the file to be opened for editing

    Throws:
    :   `NullPointerException` - if the specified file is `null`
    :   `IllegalArgumentException` - if the specified file doesn't
        exist
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.EDIT`](Desktop.Action.md#EDIT) action
    :   `IOException` - if the specified file has no associated
        editor, or the associated application fails to be launched
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkRead(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        method denies read access to the file, or [`SecurityManager.checkWrite(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String)) method
        denies write access to the file, or it denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess

    See Also:
    :   - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### print

    public void print([File](../../../java.base/java/io/File.md "class in java.io") file)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Prints a file with the native desktop printing facility, using
    the associated application's print command.

    Parameters:
    :   `file` - the file to be printed

    Throws:
    :   `NullPointerException` - if the specified file is `null`
    :   `IllegalArgumentException` - if the specified file doesn't
        exist
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.PRINT`](Desktop.Action.md#PRINT) action
    :   `IOException` - if the specified file has no associated
        application that can be used to print it
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkRead(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        method denies read access to the file, or its [`SecurityManager.checkPrintJobAccess()`](../../../java.base/java/lang/SecurityManager.md#checkPrintJobAccess()) method denies
        the permission to print the file, or the calling thread is not
        allowed to create a subprocess
  + ### browse

    public void browse([URI](../../../java.base/java/net/URI.md "class in java.net") uri)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Launches the default browser to display a `URI`.
    If the default browser is not able to handle the specified
    `URI`, the application registered for handling
    `URIs` of the specified type is invoked. The application
    is determined from the protocol and path of the `URI`, as
    defined by the `URI` class.

    Parameters:
    :   `uri` - the URI to be displayed in the user default browser

    Throws:
    :   `NullPointerException` - if `uri` is `null`
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.BROWSE`](Desktop.Action.md#BROWSE) action
    :   `IOException` - if the user default browser is not found,
        or it fails to be launched, or the default handler application
        failed to be launched
    :   `SecurityException` - if a security manager exists and it
        denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess

    See Also:
    :   - [`URI`](../../../java.base/java/net/URI.md "class in java.net")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### mail

    public void mail()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Launches the mail composing window of the user default mail
    client.

    Throws:
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.MAIL`](Desktop.Action.md#MAIL) action
    :   `IOException` - if the user default mail client is not
        found, or it fails to be launched
    :   `SecurityException` - if a security manager exists and it
        denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess

    See Also:
    :   - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### mail

    public void mail([URI](../../../java.base/java/net/URI.md "class in java.net") mailtoURI)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Launches the mail composing window of the user default mail
    client, filling the message fields specified by a `mailto:` URI.

    A `mailto:` URI can specify message fields
    including *"to"*, *"cc"*, *"subject"*,
    *"body"*, etc. See [The mailto URL
    scheme (RFC 2368)](http://www.ietf.org/rfc/rfc2368.txt) for the `mailto:` URI specification
    details.

    Parameters:
    :   `mailtoURI` - the specified `mailto:` URI

    Throws:
    :   `NullPointerException` - if the specified URI is `null`
    :   `IllegalArgumentException` - if the URI scheme is not
        `"mailto"`
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.MAIL`](Desktop.Action.md#MAIL) action
    :   `IOException` - if the user default mail client is not
        found or fails to be launched
    :   `SecurityException` - if a security manager exists and it
        denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess

    See Also:
    :   - [`URI`](../../../java.base/java/net/URI.md "class in java.net")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### addAppEventListener

    public void addAppEventListener([SystemEventListener](desktop/SystemEventListener.md "interface in java.awt.desktop") listener)

    Adds sub-types of [`SystemEventListener`](desktop/SystemEventListener.md "interface in java.awt.desktop") to listen for notifications
    from the native system.
    Has no effect if SystemEventListener's sub-type is unsupported on the current
    platform.

    Parameters:
    :   `listener` - listener

    Throws:
    :   `SecurityException` - if a security manager exists and it
        denies the
        `RuntimePermission("canProcessApplicationEvents")`
        permission

    Since:
    :   9

    See Also:
    :   - [`AppForegroundListener`](desktop/AppForegroundListener.md "interface in java.awt.desktop")
        - [`AppHiddenListener`](desktop/AppHiddenListener.md "interface in java.awt.desktop")
        - [`AppReopenedListener`](desktop/AppReopenedListener.md "interface in java.awt.desktop")
        - [`ScreenSleepListener`](desktop/ScreenSleepListener.md "interface in java.awt.desktop")
        - [`SystemSleepListener`](desktop/SystemSleepListener.md "interface in java.awt.desktop")
        - [`UserSessionListener`](desktop/UserSessionListener.md "interface in java.awt.desktop")
  + ### removeAppEventListener

    public void removeAppEventListener([SystemEventListener](desktop/SystemEventListener.md "interface in java.awt.desktop") listener)

    Removes sub-types of [`SystemEventListener`](desktop/SystemEventListener.md "interface in java.awt.desktop") to listen for notifications
    from the native system.
    Has no effect if SystemEventListener's sub-type is unsupported on the current
    platform.

    Parameters:
    :   `listener` - listener

    Throws:
    :   `SecurityException` - if a security manager exists and it
        denies the
        `RuntimePermission("canProcessApplicationEvents")`
        permission

    Since:
    :   9

    See Also:
    :   - [`AppForegroundListener`](desktop/AppForegroundListener.md "interface in java.awt.desktop")
        - [`AppHiddenListener`](desktop/AppHiddenListener.md "interface in java.awt.desktop")
        - [`AppReopenedListener`](desktop/AppReopenedListener.md "interface in java.awt.desktop")
        - [`ScreenSleepListener`](desktop/ScreenSleepListener.md "interface in java.awt.desktop")
        - [`SystemSleepListener`](desktop/SystemSleepListener.md "interface in java.awt.desktop")
        - [`UserSessionListener`](desktop/UserSessionListener.md "interface in java.awt.desktop")
  + ### setAboutHandler

    public void setAboutHandler([AboutHandler](desktop/AboutHandler.md "interface in java.awt.desktop") aboutHandler)

    Installs a handler to show a custom About window for your application.

    Setting the [`AboutHandler`](desktop/AboutHandler.md "interface in java.awt.desktop") to `null` reverts it to the
    default behavior.

    Parameters:
    :   `aboutHandler` - the handler to respond to the
        [`AboutHandler.handleAbout(AboutEvent)`](desktop/AboutHandler.md#handleAbout(java.awt.desktop.AboutEvent)) message

    Throws:
    :   `SecurityException` - if a security manager exists and it
        denies the
        `RuntimePermission("canProcessApplicationEvents")`
        permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_ABOUT`](Desktop.Action.md#APP_ABOUT) action

    Since:
    :   9
  + ### setPreferencesHandler

    public void setPreferencesHandler([PreferencesHandler](desktop/PreferencesHandler.md "interface in java.awt.desktop") preferencesHandler)

    Installs a handler to show a custom Preferences window for your
    application.

    Setting the [`PreferencesHandler`](desktop/PreferencesHandler.md "interface in java.awt.desktop") to `null` reverts it to
    the default behavior

    Parameters:
    :   `preferencesHandler` - the handler to respond to the
        [`PreferencesHandler.handlePreferences(PreferencesEvent)`](desktop/PreferencesHandler.md#handlePreferences(java.awt.desktop.PreferencesEvent))

    Throws:
    :   `SecurityException` - if a security manager exists and it
        denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_PREFERENCES`](Desktop.Action.md#APP_PREFERENCES) action

    Since:
    :   9
  + ### setOpenFileHandler

    public void setOpenFileHandler([OpenFilesHandler](desktop/OpenFilesHandler.md "interface in java.awt.desktop") openFileHandler)

    Installs the handler which is notified when the application is asked to
    open a list of files.

    Parameters:
    :   `openFileHandler` - handler

    Throws:
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkRead(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        method denies read access to the files, or it denies the
        `RuntimePermission("canProcessApplicationEvents")`
        permission, or the calling thread is not allowed to create a
        subprocess
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_OPEN_FILE`](Desktop.Action.md#APP_OPEN_FILE) action

    Since:
    :   9
  + ### setPrintFileHandler

    public void setPrintFileHandler([PrintFilesHandler](desktop/PrintFilesHandler.md "interface in java.awt.desktop") printFileHandler)

    Installs the handler which is notified when the application is asked to
    print a list of files.

    Parameters:
    :   `printFileHandler` - handler

    Throws:
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkPrintJobAccess()`](../../../java.base/java/lang/SecurityManager.md#checkPrintJobAccess()) method denies
        the permission to print or it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_PRINT_FILE`](Desktop.Action.md#APP_PRINT_FILE) action

    Since:
    :   9
  + ### setOpenURIHandler

    public void setOpenURIHandler([OpenURIHandler](desktop/OpenURIHandler.md "interface in java.awt.desktop") openURIHandler)

    Installs the handler which is notified when the application is asked to
    open a URL.
    Setting the handler to `null` causes all
    [`OpenURIHandler.openURI(OpenURIEvent)`](desktop/OpenURIHandler.md#openURI(java.awt.desktop.OpenURIEvent)) requests to be
    enqueued until another handler is set.

    Parameters:
    :   `openURIHandler` - handler
        `RuntimePermission("canProcessApplicationEvents")`
        permission, or the calling thread is not allowed to create a
        subprocess

    Throws:
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_OPEN_URI`](Desktop.Action.md#APP_OPEN_URI) action

    Since:
    :   9
  + ### setQuitHandler

    public void setQuitHandler([QuitHandler](desktop/QuitHandler.md "interface in java.awt.desktop") quitHandler)

    Installs the handler which determines if the application should quit. The
    handler is passed a one-shot [`QuitResponse`](desktop/QuitResponse.md "interface in java.awt.desktop") which can cancel or
    proceed with the quit. Setting the handler to `null` causes
    all quit requests to directly perform the default [`QuitStrategy`](desktop/QuitStrategy.md "enum class in java.awt.desktop").

    Parameters:
    :   `quitHandler` - the handler that is called when the application is
        asked to quit

    Throws:
    :   `SecurityException` - if a security manager exists and it
        will not allow the caller to invoke `System.exit` or it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_QUIT_HANDLER`](Desktop.Action.md#APP_QUIT_HANDLER) action

    Since:
    :   9
  + ### setQuitStrategy

    public void setQuitStrategy([QuitStrategy](desktop/QuitStrategy.md "enum class in java.awt.desktop") strategy)

    Sets the default strategy used to quit this application. The default is
    calling SYSTEM\_EXIT\_0.

    Parameters:
    :   `strategy` - the way this application should be shutdown

    Throws:
    :   `SecurityException` - if a security manager exists and it
        will not allow the caller to invoke `System.exit` or it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_QUIT_STRATEGY`](Desktop.Action.md#APP_QUIT_STRATEGY) action

    Since:
    :   9

    See Also:
    :   - [`QuitStrategy`](desktop/QuitStrategy.md "enum class in java.awt.desktop")
  + ### enableSuddenTermination

    public void enableSuddenTermination()

    Enables this application to be suddenly terminated.
    Call this method to indicate your application's state is saved, and
    requires no notification to be terminated. Letting your application
    remain terminatable improves the user experience by avoiding re-paging in
    your application when it's asked to quit.
    **Note: enabling sudden termination will allow your application to be
    quit without notifying your QuitHandler, or running any shutdown
    hooks.**
    E.g. user-initiated Cmd-Q, logout, restart, or shutdown requests will
    effectively "kill -KILL" your application.

    Throws:
    :   `SecurityException` - if a security manager exists and it
        will not allow the caller to invoke `System.exit` or it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_SUDDEN_TERMINATION`](Desktop.Action.md#APP_SUDDEN_TERMINATION) action

    Since:
    :   9

    See Also:
    :   - [`disableSuddenTermination()`](#disableSuddenTermination())
  + ### disableSuddenTermination

    public void disableSuddenTermination()

    Prevents this application from being suddenly terminated.
    Call this method to indicate that your application has unsaved state, and
    may not be terminated without notification.

    Throws:
    :   `SecurityException` - if a security manager exists and it
        will not allow the caller to invoke `System.exit` or it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_SUDDEN_TERMINATION`](Desktop.Action.md#APP_SUDDEN_TERMINATION) action

    Since:
    :   9

    See Also:
    :   - [`enableSuddenTermination()`](#enableSuddenTermination())
  + ### requestForeground

    public void requestForeground(boolean allWindows)

    Requests this application to move to the foreground.

    Parameters:
    :   `allWindows` - if all windows of this application should be moved to
        the foreground, or only the foremost one

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_REQUEST_FOREGROUND`](Desktop.Action.md#APP_REQUEST_FOREGROUND) action

    Since:
    :   9
  + ### openHelpViewer

    public void openHelpViewer()

    Opens the native help viewer application.

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")`
        permission, or it denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_HELP_VIEWER`](Desktop.Action.md#APP_HELP_VIEWER) action

    Since:
    :   9
  + ### setDefaultMenuBar

    public void setDefaultMenuBar([JMenuBar](../../javax/swing/JMenuBar.md "class in javax.swing") menuBar)

    Sets the default menu bar to use when there are no active frames.

    Parameters:
    :   `menuBar` - to use when no other frames are active

    Throws:
    :   `SecurityException` - if a security manager exists and it denies the
        `RuntimePermission("canProcessApplicationEvents")` permission.
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.APP_MENU_BAR`](Desktop.Action.md#APP_MENU_BAR) action

    Since:
    :   9
  + ### browseFileDirectory

    public void browseFileDirectory([File](../../../java.base/java/io/File.md "class in java.io") file)

    Opens a folder containing the `file` and selects it
    in a default system file manager.

    Parameters:
    :   `file` - the file

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`SecurityManager.checkRead(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String)) method
        denies read access to the file or to its parent, or it denies the
        `AWTPermission("showWindowWithoutWarningBanner")`
        permission, or the calling thread is not allowed to create a
        subprocess
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.BROWSE_FILE_DIR`](Desktop.Action.md#BROWSE_FILE_DIR) action
    :   `NullPointerException` - if `file` is `null`
    :   `IllegalArgumentException` - if the specified file or its parent
        doesn't exist

    Since:
    :   9
  + ### moveToTrash

    public boolean moveToTrash([File](../../../java.base/java/io/File.md "class in java.io") file)

    Moves the specified file to the trash.

    Parameters:
    :   `file` - the file

    Returns:
    :   returns true if successfully moved the file to the trash.

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`SecurityManager.checkDelete(java.lang.String)`](../../../java.base/java/lang/SecurityManager.md#checkDelete(java.lang.String)) method
        denies deletion of the file
    :   `UnsupportedOperationException` - if the current platform
        does not support the [`Desktop.Action.MOVE_TO_TRASH`](Desktop.Action.md#MOVE_TO_TRASH) action
    :   `NullPointerException` - if `file` is `null`
    :   `IllegalArgumentException` - if the specified file doesn't exist

    Since:
    :   9