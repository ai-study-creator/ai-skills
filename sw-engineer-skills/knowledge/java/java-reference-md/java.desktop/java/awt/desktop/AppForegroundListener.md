Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface AppForegroundListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface AppForegroundListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors are notified when the app becomes the foreground app and when it
is no longer the foreground app. This notification is useful for hiding and
showing transient UI like palette windows which should be hidden when the app
is in the background.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `appMovedToBackground(AppForegroundEvent e)`

  Called when the app becomes the background app and another app becomes
  the foreground app.

  `void`

  `appRaisedToForeground(AppForegroundEvent e)`

  Called when the app becomes the foreground app.

* ## Method Details

  + ### appRaisedToForeground

    void appRaisedToForeground([AppForegroundEvent](AppForegroundEvent.md "class in java.awt.desktop") e)

    Called when the app becomes the foreground app.

    Parameters:
    :   `e` - event
  + ### appMovedToBackground

    void appMovedToBackground([AppForegroundEvent](AppForegroundEvent.md "class in java.awt.desktop") e)

    Called when the app becomes the background app and another app becomes
    the foreground app.

    Parameters:
    :   `e` - event