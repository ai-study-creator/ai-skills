Module [java.desktop](../../../module-summary.md)

# Package java.awt.desktop

---

package java.awt.desktop

Provides interfaces and classes for interaction with various desktop
capabilities.

Since:
:   9

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [AboutEvent](AboutEvent.md "class in java.awt.desktop")

  Event sent when the application is asked to open its about window.

  [AboutHandler](AboutHandler.md "interface in java.awt.desktop")

  An implementer receives notification when the app is asked to show its about
  dialog.

  [AppEvent](AppEvent.md "class in java.awt.desktop")

  AppEvents are sent to listeners and handlers installed on the
  [`Desktop`](../Desktop.md "class in java.awt") instance of the current desktop context.

  [AppForegroundEvent](AppForegroundEvent.md "class in java.awt.desktop")

  Event sent when the application has become the foreground app, and when it is
  no longer the foreground app.

  [AppForegroundListener](AppForegroundListener.md "interface in java.awt.desktop")

  Implementors are notified when the app becomes the foreground app and when it
  is no longer the foreground app.

  [AppHiddenEvent](AppHiddenEvent.md "class in java.awt.desktop")

  Event sent when the application has been hidden or shown.

  [AppHiddenListener](AppHiddenListener.md "interface in java.awt.desktop")

  Implementors are notified when the app is hidden or shown by the user.

  [AppReopenedEvent](AppReopenedEvent.md "class in java.awt.desktop")

  Event sent when the application is asked to re-open itself.

  [AppReopenedListener](AppReopenedListener.md "interface in java.awt.desktop")

  Implementors receive notification when the app has been asked to open again.

  [FilesEvent](FilesEvent.md "class in java.awt.desktop")

  Auxiliary event containing a list of files.

  [OpenFilesEvent](OpenFilesEvent.md "class in java.awt.desktop")

  Event sent when the app is asked to open a list of files.

  [OpenFilesHandler](OpenFilesHandler.md "interface in java.awt.desktop")

  An implementor is notified when the application is asked to open a list of
  files.

  [OpenURIEvent](OpenURIEvent.md "class in java.awt.desktop")

  Event sent when the app is asked to open a `URI`.

  [OpenURIHandler](OpenURIHandler.md "interface in java.awt.desktop")

  An implementor is notified when the application is asked to open a URI.

  [PreferencesEvent](PreferencesEvent.md "class in java.awt.desktop")

  Event sent when the application is asked to open its preferences window.

  [PreferencesHandler](PreferencesHandler.md "interface in java.awt.desktop")

  An implementor is notified when the app is asked to show its preferences UI.

  [PrintFilesEvent](PrintFilesEvent.md "class in java.awt.desktop")

  Event sent when the app is asked to print a list of files.

  [PrintFilesHandler](PrintFilesHandler.md "interface in java.awt.desktop")

  An implementor can respond to requests to print documents that the app has
  been registered to handle.

  [QuitEvent](QuitEvent.md "class in java.awt.desktop")

  Event sent when the application is asked to quit.

  [QuitHandler](QuitHandler.md "interface in java.awt.desktop")

  An implementor determines if requests to quit this application should proceed
  or cancel.

  [QuitResponse](QuitResponse.md "interface in java.awt.desktop")

  Used to respond to a request to quit the application.

  [QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop")

  The strategy used to shut down the application, if Sudden Termination is not
  enabled.

  [ScreenSleepEvent](ScreenSleepEvent.md "class in java.awt.desktop")

  Event sent when the displays attached to the system enter and exit power save
  sleep.

  [ScreenSleepListener](ScreenSleepListener.md "interface in java.awt.desktop")

  Implementors receive notification when the displays attached to the system
  have entered power save sleep.

  [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

  Common interface for all event listener sub-types.

  [SystemSleepEvent](SystemSleepEvent.md "class in java.awt.desktop")

  Event sent when the system enters and exits power save sleep.

  [SystemSleepListener](SystemSleepListener.md "interface in java.awt.desktop")

  Implementors receive notification as the system is entering sleep, and after
  the system wakes.

  [UserSessionEvent](UserSessionEvent.md "class in java.awt.desktop")

  Event sent when the user session has been changed.

  [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop")

  Kinds of available reasons of user session change.

  [UserSessionListener](UserSessionListener.md "interface in java.awt.desktop")

  Implementors receive notification when the user session changes.