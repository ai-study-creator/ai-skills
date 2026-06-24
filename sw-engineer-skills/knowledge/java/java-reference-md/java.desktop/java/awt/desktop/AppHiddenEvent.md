Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class AppHiddenEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.AppHiddenEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class AppHiddenEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application has been hidden or shown.

Since:
:   9

See Also:
:   * [`AppHiddenListener.appHidden(AppHiddenEvent)`](AppHiddenListener.md#appHidden(java.awt.desktop.AppHiddenEvent))
    * [`AppHiddenListener.appUnhidden(AppHiddenEvent)`](AppHiddenListener.md#appUnhidden(java.awt.desktop.AppHiddenEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.AppHiddenEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AppHiddenEvent()`

  Constructs an `AppHiddenEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AppHiddenEvent

    public AppHiddenEvent()

    Constructs an `AppHiddenEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())