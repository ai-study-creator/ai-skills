Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface AppHiddenListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface AppHiddenListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors are notified when the app is hidden or shown by the user. This
notification is helpful for discontinuing a costly animation if it's not
visible to the user.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `appHidden(AppHiddenEvent e)`

  Called when the app is hidden.

  `void`

  `appUnhidden(AppHiddenEvent e)`

  Called when the hidden app is shown again (but not necessarily brought to
  the foreground).

* ## Method Details

  + ### appHidden

    void appHidden([AppHiddenEvent](AppHiddenEvent.md "class in java.awt.desktop") e)

    Called when the app is hidden.

    Parameters:
    :   `e` - event
  + ### appUnhidden

    void appUnhidden([AppHiddenEvent](AppHiddenEvent.md "class in java.awt.desktop") e)

    Called when the hidden app is shown again (but not necessarily brought to
    the foreground).

    Parameters:
    :   `e` - event