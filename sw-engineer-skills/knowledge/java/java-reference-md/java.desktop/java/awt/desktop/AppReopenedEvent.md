Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class AppReopenedEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.AppReopenedEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class AppReopenedEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application is asked to re-open itself.

Since:
:   9

See Also:
:   * [`AppReopenedListener.appReopened(AppReopenedEvent)`](AppReopenedListener.md#appReopened(java.awt.desktop.AppReopenedEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.AppReopenedEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AppReopenedEvent()`

  Constructs an `AppReopenedEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AppReopenedEvent

    public AppReopenedEvent()

    Constructs an `AppReopenedEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())