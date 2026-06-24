Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class AppEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.desktop.AppEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AboutEvent`, `AppForegroundEvent`, `AppHiddenEvent`, `AppReopenedEvent`, `FilesEvent`, `OpenURIEvent`, `PreferencesEvent`, `QuitEvent`, `ScreenSleepEvent`, `SystemSleepEvent`, `UserSessionEvent`

---

public sealed class AppEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")
permits [AboutEvent](AboutEvent.md "class in java.awt.desktop"), [AppForegroundEvent](AppForegroundEvent.md "class in java.awt.desktop"), [AppHiddenEvent](AppHiddenEvent.md "class in java.awt.desktop"), [AppReopenedEvent](AppReopenedEvent.md "class in java.awt.desktop"), [FilesEvent](FilesEvent.md "class in java.awt.desktop"), [OpenURIEvent](OpenURIEvent.md "class in java.awt.desktop"), [PreferencesEvent](PreferencesEvent.md "class in java.awt.desktop"), [QuitEvent](QuitEvent.md "class in java.awt.desktop"), [ScreenSleepEvent](ScreenSleepEvent.md "class in java.awt.desktop"), [SystemSleepEvent](SystemSleepEvent.md "class in java.awt.desktop"), [UserSessionEvent](UserSessionEvent.md "class in java.awt.desktop")

AppEvents are sent to listeners and handlers installed on the
[`Desktop`](../Desktop.md "class in java.awt") instance of the current desktop context.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.AppEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`