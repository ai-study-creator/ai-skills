Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class SystemSleepEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.SystemSleepEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class SystemSleepEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the system enters and exits power save sleep.

Since:
:   9

See Also:
:   * [`SystemSleepListener.systemAboutToSleep(SystemSleepEvent)`](SystemSleepListener.md#systemAboutToSleep(java.awt.desktop.SystemSleepEvent))
    * [`SystemSleepListener.systemAwoke(SystemSleepEvent)`](SystemSleepListener.md#systemAwoke(java.awt.desktop.SystemSleepEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.SystemSleepEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SystemSleepEvent()`

  Constructs a `SystemSleepEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SystemSleepEvent

    public SystemSleepEvent()

    Constructs a `SystemSleepEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())