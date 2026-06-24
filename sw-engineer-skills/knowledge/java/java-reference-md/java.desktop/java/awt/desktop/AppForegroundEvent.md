Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class AppForegroundEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.AppForegroundEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class AppForegroundEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application has become the foreground app, and when it is
no longer the foreground app.

Since:
:   9

See Also:
:   * [`AppForegroundListener.appRaisedToForeground(AppForegroundEvent)`](AppForegroundListener.md#appRaisedToForeground(java.awt.desktop.AppForegroundEvent))
    * [`AppForegroundListener.appMovedToBackground(AppForegroundEvent)`](AppForegroundListener.md#appMovedToBackground(java.awt.desktop.AppForegroundEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.AppForegroundEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AppForegroundEvent()`

  Constructs an `AppForegroundEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AppForegroundEvent

    public AppForegroundEvent()

    Constructs an `AppForegroundEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())