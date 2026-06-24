Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class AboutEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.AboutEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class AboutEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application is asked to open its about window.

Since:
:   9

See Also:
:   * [`AboutHandler.handleAbout(java.awt.desktop.AboutEvent)`](AboutHandler.md#handleAbout(java.awt.desktop.AboutEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.AboutEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AboutEvent()`

  Constructs an `AboutEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AboutEvent

    public AboutEvent()

    Constructs an `AboutEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())