Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Enum Class UserSessionEvent.Reason

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop")>

java.awt.desktop.UserSessionEvent.Reason

All Implemented Interfaces:
:   `Serializable`, `Comparable<UserSessionEvent.Reason>`, `Constable`

Enclosing class:
:   `UserSessionEvent`

---

public static enum UserSessionEvent.Reason
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop")>

Kinds of available reasons of user session change.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CONSOLE`

  The session was connected/disconnected to the console terminal.

  `LOCK`

  The session has been locked/unlocked.

  `REMOTE`

  The session was connected/disconnected to the remote terminal.

  `UNSPECIFIED`

  The system does not provide a reason for a session change.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static UserSessionEvent.Reason`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static UserSessionEvent.Reason[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNSPECIFIED

    public static final [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") UNSPECIFIED

    The system does not provide a reason for a session change.
  + ### CONSOLE

    public static final [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") CONSOLE

    The session was connected/disconnected to the console terminal.
  + ### REMOTE

    public static final [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") REMOTE

    The session was connected/disconnected to the remote terminal.
  + ### LOCK

    public static final [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") LOCK

    The session has been locked/unlocked.
* ## Method Details

  + ### values

    public static [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null