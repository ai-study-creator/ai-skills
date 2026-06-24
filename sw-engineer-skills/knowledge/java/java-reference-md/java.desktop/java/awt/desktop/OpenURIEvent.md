Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class OpenURIEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.OpenURIEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class OpenURIEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the app is asked to open a `URI`.

Since:
:   9

See Also:
:   * [`OpenURIHandler.openURI(OpenURIEvent)`](OpenURIHandler.md#openURI(java.awt.desktop.OpenURIEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.OpenURIEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenURIEvent(URI uri)`

  Constructs an `OpenURIEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `URI`

  `getURI()`

  Get the `URI` the app was asked to open.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OpenURIEvent

    public OpenURIEvent([URI](../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs an `OpenURIEvent`.

    Parameters:
    :   `uri` - the `URI` the app was asked to open

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getURI

    public [URI](../../../../java.base/java/net/URI.md "class in java.net") getURI()

    Get the `URI` the app was asked to open.

    Returns:
    :   the `URI`