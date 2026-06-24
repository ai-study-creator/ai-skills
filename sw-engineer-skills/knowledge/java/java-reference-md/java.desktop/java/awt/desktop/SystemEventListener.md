Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface SystemEventListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `AppForegroundListener`, `AppHiddenListener`, `AppReopenedListener`, `ScreenSleepListener`, `SystemSleepListener`, `UserSessionListener`

---

public interface SystemEventListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Common interface for all event listener sub-types. Implementors may implement
multiple sub-types, but only need to call
[`Desktop.addAppEventListener(SystemEventListener)`](../Desktop.md#addAppEventListener(java.awt.desktop.SystemEventListener)) once to
receive all notifications.

Since:
:   9