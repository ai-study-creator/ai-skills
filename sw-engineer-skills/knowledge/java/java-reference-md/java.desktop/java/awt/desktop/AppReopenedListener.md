Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface AppReopenedListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface AppReopenedListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors receive notification when the app has been asked to open again.

This notification is useful for showing a new document when your app has no
open windows.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `appReopened(AppReopenedEvent e)`

  Called when the app has been reopened.

* ## Method Details

  + ### appReopened

    void appReopened([AppReopenedEvent](AppReopenedEvent.md "class in java.awt.desktop") e)

    Called when the app has been reopened.

    Parameters:
    :   `e` - the request to reopen the app