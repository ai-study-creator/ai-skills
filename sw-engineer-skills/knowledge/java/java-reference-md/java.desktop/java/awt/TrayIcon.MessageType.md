Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class TrayIcon.MessageType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt")>

java.awt.TrayIcon.MessageType

All Implemented Interfaces:
:   `Serializable`, `Comparable<TrayIcon.MessageType>`, `Constable`

Enclosing class:
:   `TrayIcon`

---

public static enum TrayIcon.MessageType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt")>

The message type determines which icon will be displayed in the
caption of the message, and a possible system sound a message
may generate upon showing.

Since:
:   1.6

See Also:
:   * [`TrayIcon`](TrayIcon.md "class in java.awt")
    * [`TrayIcon.displayMessage(String, String, MessageType)`](TrayIcon.md#displayMessage(java.lang.String,java.lang.String,java.awt.TrayIcon.MessageType))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ERROR`

  An error message

  `INFO`

  An information message

  `NONE`

  Simple message

  `WARNING`

  A warning message
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static TrayIcon.MessageType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static TrayIcon.MessageType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ERROR

    public static final [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") ERROR

    An error message
  + ### WARNING

    public static final [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") WARNING

    A warning message
  + ### INFO

    public static final [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") INFO

    An information message
  + ### NONE

    public static final [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") NONE

    Simple message
* ## Method Details

  + ### values

    public static [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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