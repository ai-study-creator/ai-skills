Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class QuitEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.QuitEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class QuitEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application is asked to quit.

Since:
:   9

See Also:
:   * [`QuitHandler.handleQuitRequestWith(QuitEvent, QuitResponse)`](QuitHandler.md#handleQuitRequestWith(java.awt.desktop.QuitEvent,java.awt.desktop.QuitResponse))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.QuitEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `QuitEvent()`

  Constructs a `QuitEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### QuitEvent

    public QuitEvent()

    Constructs a `QuitEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())