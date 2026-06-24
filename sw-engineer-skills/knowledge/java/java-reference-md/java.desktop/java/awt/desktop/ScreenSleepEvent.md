Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class ScreenSleepEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.ScreenSleepEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class ScreenSleepEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the displays attached to the system enter and exit power save
sleep.

Since:
:   9

See Also:
:   * [`ScreenSleepListener.screenAboutToSleep(ScreenSleepEvent)`](ScreenSleepListener.md#screenAboutToSleep(java.awt.desktop.ScreenSleepEvent))
    * [`ScreenSleepListener.screenAwoke(ScreenSleepEvent)`](ScreenSleepListener.md#screenAwoke(java.awt.desktop.ScreenSleepEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.ScreenSleepEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScreenSleepEvent()`

  Constructs a `ScreenSleepEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ScreenSleepEvent

    public ScreenSleepEvent()

    Constructs a `ScreenSleepEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())