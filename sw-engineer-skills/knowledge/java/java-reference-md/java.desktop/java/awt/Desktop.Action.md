Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Desktop.Action

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Desktop.Action](Desktop.Action.md "enum class in java.awt")>

java.awt.Desktop.Action

All Implemented Interfaces:
:   `Serializable`, `Comparable<Desktop.Action>`, `Constable`

Enclosing class:
:   `Desktop`

---

public static enum Desktop.Action
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Desktop.Action](Desktop.Action.md "enum class in java.awt")>

Represents an action type. Each platform supports a different
set of actions. You may use the [`Desktop.isSupported(java.awt.Desktop.Action)`](Desktop.md#isSupported(java.awt.Desktop.Action))
method to determine if the given action is supported by the
current platform.

Since:
:   1.6

See Also:
:   * [`Desktop.isSupported(java.awt.Desktop.Action)`](Desktop.md#isSupported(java.awt.Desktop.Action))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APP_ABOUT`

  Represents an AboutHandler

  `APP_EVENT_FOREGROUND`

  Represents an AppForegroundListener

  `APP_EVENT_HIDDEN`

  Represents an AppHiddenListener

  `APP_EVENT_REOPENED`

  Represents an AppReopenedListener

  `APP_EVENT_SCREEN_SLEEP`

  Represents a ScreenSleepListener

  `APP_EVENT_SYSTEM_SLEEP`

  Represents a SystemSleepListener

  `APP_EVENT_USER_SESSION`

  Represents a UserSessionListener

  `APP_HELP_VIEWER`

  Represents a HelpViewer

  `APP_MENU_BAR`

  Represents a menu bar

  `APP_OPEN_FILE`

  Represents an OpenFilesHandler

  `APP_OPEN_URI`

  Represents an OpenURIHandler

  `APP_PREFERENCES`

  Represents a PreferencesHandler

  `APP_PRINT_FILE`

  Represents a PrintFilesHandler

  `APP_QUIT_HANDLER`

  Represents a QuitHandler

  `APP_QUIT_STRATEGY`

  Represents a QuitStrategy

  `APP_REQUEST_FOREGROUND`

  Represents a requestForeground

  `APP_SUDDEN_TERMINATION`

  Represents a SuddenTermination

  `BROWSE`

  Represents a "browse" action.

  `BROWSE_FILE_DIR`

  Represents a browse file directory

  `EDIT`

  Represents an "edit" action.

  `MAIL`

  Represents a "mail" action.

  `MOVE_TO_TRASH`

  Represents a move to trash

  `OPEN`

  Represents an "open" action.

  `PRINT`

  Represents a "print" action.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Desktop.Action`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Desktop.Action[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### OPEN

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") OPEN

    Represents an "open" action.

    See Also:
    :   - [`Desktop.open(java.io.File)`](Desktop.md#open(java.io.File))
  + ### EDIT

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") EDIT

    Represents an "edit" action.

    See Also:
    :   - [`Desktop.edit(java.io.File)`](Desktop.md#edit(java.io.File))
  + ### PRINT

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") PRINT

    Represents a "print" action.

    See Also:
    :   - [`Desktop.print(java.io.File)`](Desktop.md#print(java.io.File))
  + ### MAIL

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") MAIL

    Represents a "mail" action.

    See Also:
    :   - [`Desktop.mail()`](Desktop.md#mail())
        - [`Desktop.mail(java.net.URI)`](Desktop.md#mail(java.net.URI))
  + ### BROWSE

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") BROWSE

    Represents a "browse" action.

    See Also:
    :   - [`Desktop.browse(java.net.URI)`](Desktop.md#browse(java.net.URI))
  + ### APP\_EVENT\_FOREGROUND

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_FOREGROUND

    Represents an AppForegroundListener

    Since:
    :   9

    See Also:
    :   - [`AppForegroundListener`](desktop/AppForegroundListener.md "interface in java.awt.desktop")
  + ### APP\_EVENT\_HIDDEN

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_HIDDEN

    Represents an AppHiddenListener

    Since:
    :   9

    See Also:
    :   - [`AppHiddenListener`](desktop/AppHiddenListener.md "interface in java.awt.desktop")
  + ### APP\_EVENT\_REOPENED

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_REOPENED

    Represents an AppReopenedListener

    Since:
    :   9

    See Also:
    :   - [`AppReopenedListener`](desktop/AppReopenedListener.md "interface in java.awt.desktop")
  + ### APP\_EVENT\_SCREEN\_SLEEP

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_SCREEN\_SLEEP

    Represents a ScreenSleepListener

    Since:
    :   9

    See Also:
    :   - [`ScreenSleepListener`](desktop/ScreenSleepListener.md "interface in java.awt.desktop")
  + ### APP\_EVENT\_SYSTEM\_SLEEP

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_SYSTEM\_SLEEP

    Represents a SystemSleepListener

    Since:
    :   9

    See Also:
    :   - [`SystemSleepListener`](desktop/SystemSleepListener.md "interface in java.awt.desktop")
  + ### APP\_EVENT\_USER\_SESSION

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_EVENT\_USER\_SESSION

    Represents a UserSessionListener

    Since:
    :   9

    See Also:
    :   - [`UserSessionListener`](desktop/UserSessionListener.md "interface in java.awt.desktop")
  + ### APP\_ABOUT

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_ABOUT

    Represents an AboutHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setAboutHandler(java.awt.desktop.AboutHandler)`](Desktop.md#setAboutHandler(java.awt.desktop.AboutHandler))
  + ### APP\_PREFERENCES

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_PREFERENCES

    Represents a PreferencesHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setPreferencesHandler(java.awt.desktop.PreferencesHandler)`](Desktop.md#setPreferencesHandler(java.awt.desktop.PreferencesHandler))
  + ### APP\_OPEN\_FILE

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_OPEN\_FILE

    Represents an OpenFilesHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setOpenFileHandler(java.awt.desktop.OpenFilesHandler)`](Desktop.md#setOpenFileHandler(java.awt.desktop.OpenFilesHandler))
  + ### APP\_PRINT\_FILE

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_PRINT\_FILE

    Represents a PrintFilesHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setPrintFileHandler(java.awt.desktop.PrintFilesHandler)`](Desktop.md#setPrintFileHandler(java.awt.desktop.PrintFilesHandler))
  + ### APP\_OPEN\_URI

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_OPEN\_URI

    Represents an OpenURIHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setOpenURIHandler(java.awt.desktop.OpenURIHandler)`](Desktop.md#setOpenURIHandler(java.awt.desktop.OpenURIHandler))
  + ### APP\_QUIT\_HANDLER

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_QUIT\_HANDLER

    Represents a QuitHandler

    Since:
    :   9

    See Also:
    :   - [`Desktop.setQuitHandler(java.awt.desktop.QuitHandler)`](Desktop.md#setQuitHandler(java.awt.desktop.QuitHandler))
  + ### APP\_QUIT\_STRATEGY

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_QUIT\_STRATEGY

    Represents a QuitStrategy

    Since:
    :   9

    See Also:
    :   - [`Desktop.setQuitStrategy(java.awt.desktop.QuitStrategy)`](Desktop.md#setQuitStrategy(java.awt.desktop.QuitStrategy))
  + ### APP\_SUDDEN\_TERMINATION

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_SUDDEN\_TERMINATION

    Represents a SuddenTermination

    Since:
    :   9

    See Also:
    :   - [`Desktop.enableSuddenTermination()`](Desktop.md#enableSuddenTermination())
  + ### APP\_REQUEST\_FOREGROUND

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_REQUEST\_FOREGROUND

    Represents a requestForeground

    Since:
    :   9

    See Also:
    :   - [`Desktop.requestForeground(boolean)`](Desktop.md#requestForeground(boolean))
  + ### APP\_HELP\_VIEWER

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_HELP\_VIEWER

    Represents a HelpViewer

    Since:
    :   9

    See Also:
    :   - [`Desktop.openHelpViewer()`](Desktop.md#openHelpViewer())
  + ### APP\_MENU\_BAR

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") APP\_MENU\_BAR

    Represents a menu bar

    Since:
    :   9

    See Also:
    :   - [`Desktop.setDefaultMenuBar(javax.swing.JMenuBar)`](Desktop.md#setDefaultMenuBar(javax.swing.JMenuBar))
  + ### BROWSE\_FILE\_DIR

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") BROWSE\_FILE\_DIR

    Represents a browse file directory

    Since:
    :   9

    See Also:
    :   - [`Desktop.browseFileDirectory(java.io.File)`](Desktop.md#browseFileDirectory(java.io.File))
  + ### MOVE\_TO\_TRASH

    public static final [Desktop.Action](Desktop.Action.md "enum class in java.awt") MOVE\_TO\_TRASH

    Represents a move to trash

    Since:
    :   9

    See Also:
    :   - [`Desktop.moveToTrash(java.io.File)`](Desktop.md#moveToTrash(java.io.File))
* ## Method Details

  + ### values

    public static [Desktop.Action](Desktop.Action.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Desktop.Action](Desktop.Action.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null