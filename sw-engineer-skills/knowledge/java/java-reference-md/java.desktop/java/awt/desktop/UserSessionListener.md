Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface UserSessionListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface UserSessionListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors receive notification when the user session changes.

This notification is useful for discontinuing a costly animation, or
indicating that the user is no longer present on a network service.

Some systems may provide a reason of the user session change.

Since:
:   9

See Also:
:   * [`UserSessionEvent.Reason.UNSPECIFIED`](UserSessionEvent.Reason.md#UNSPECIFIED)
    * [`UserSessionEvent.Reason.CONSOLE`](UserSessionEvent.Reason.md#CONSOLE)
    * [`UserSessionEvent.Reason.REMOTE`](UserSessionEvent.Reason.md#REMOTE)
    * [`UserSessionEvent.Reason.LOCK`](UserSessionEvent.Reason.md#LOCK)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `userSessionActivated(UserSessionEvent e)`

  Called when the user session has been switched to.

  `void`

  `userSessionDeactivated(UserSessionEvent e)`

  Called when the user session has been switched away.

* ## Method Details

  + ### userSessionDeactivated

    void userSessionDeactivated([UserSessionEvent](UserSessionEvent.md "class in java.awt.desktop") e)

    Called when the user session has been switched away.

    Parameters:
    :   `e` - the user session switch event
  + ### userSessionActivated

    void userSessionActivated([UserSessionEvent](UserSessionEvent.md "class in java.awt.desktop") e)

    Called when the user session has been switched to.

    Parameters:
    :   `e` - the user session switch event