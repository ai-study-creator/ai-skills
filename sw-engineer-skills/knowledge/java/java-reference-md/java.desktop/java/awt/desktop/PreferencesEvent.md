Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class PreferencesEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.PreferencesEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class PreferencesEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the application is asked to open its preferences window.

Since:
:   9

See Also:
:   * [`PreferencesHandler.handlePreferences(java.awt.desktop.PreferencesEvent)`](PreferencesHandler.md#handlePreferences(java.awt.desktop.PreferencesEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.PreferencesEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PreferencesEvent()`

  Constructs a `PreferencesEvent`.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PreferencesEvent

    public PreferencesEvent()

    Constructs a `PreferencesEvent`.

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())