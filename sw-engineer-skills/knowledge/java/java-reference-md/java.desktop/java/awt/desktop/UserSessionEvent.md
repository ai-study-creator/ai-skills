Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class UserSessionEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.UserSessionEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class UserSessionEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")

Event sent when the user session has been changed. Some systems may provide a
reason of a user session change.

Since:
:   9

See Also:
:   * [`UserSessionListener.userSessionActivated(UserSessionEvent)`](UserSessionListener.md#userSessionActivated(java.awt.desktop.UserSessionEvent))
    * [`UserSessionListener.userSessionDeactivated(UserSessionEvent)`](UserSessionListener.md#userSessionDeactivated(java.awt.desktop.UserSessionEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.UserSessionEvent)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `UserSessionEvent.Reason`

  Kinds of available reasons of user session change.
* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UserSessionEvent(UserSessionEvent.Reason reason)`

  Constructs a `UserSessionEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `UserSessionEvent.Reason`

  `getReason()`

  Gets a reason of the user session change.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UserSessionEvent

    public UserSessionEvent([UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") reason)

    Constructs a `UserSessionEvent`.

    Parameters:
    :   `reason` - the reason of the user session change

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getReason

    public [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") getReason()

    Gets a reason of the user session change.

    Returns:
    :   reason a reason

    See Also:
    :   - [`UserSessionEvent.Reason.UNSPECIFIED`](UserSessionEvent.Reason.md#UNSPECIFIED)
        - [`UserSessionEvent.Reason.CONSOLE`](UserSessionEvent.Reason.md#CONSOLE)
        - [`UserSessionEvent.Reason.REMOTE`](UserSessionEvent.Reason.md#REMOTE)
        - [`UserSessionEvent.Reason.LOCK`](UserSessionEvent.Reason.md#LOCK)