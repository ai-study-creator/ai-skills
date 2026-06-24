Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Enum Class QuitStrategy

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop")>

java.awt.desktop.QuitStrategy

All Implemented Interfaces:
:   `Serializable`, `Comparable<QuitStrategy>`, `Constable`

---

public enum QuitStrategy
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop")>

The strategy used to shut down the application, if Sudden Termination is not
enabled.

Since:
:   9

See Also:
:   * [`Desktop.setQuitHandler(QuitHandler)`](../Desktop.md#setQuitHandler(java.awt.desktop.QuitHandler))
    * [`Desktop.setQuitStrategy(QuitStrategy)`](../Desktop.md#setQuitStrategy(java.awt.desktop.QuitStrategy))
    * [`Desktop.enableSuddenTermination()`](../Desktop.md#enableSuddenTermination())
    * [`Desktop.disableSuddenTermination()`](../Desktop.md#disableSuddenTermination())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CLOSE_ALL_WINDOWS`

  Shuts down the application by closing each window from back-to-front.

  `NORMAL_EXIT`

  Shuts down the application by calling `System.exit(0)`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static QuitStrategy`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static QuitStrategy[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NORMAL\_EXIT

    public static final [QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop") NORMAL\_EXIT

    Shuts down the application by calling `System.exit(0)`. This is the
    default strategy.
  + ### CLOSE\_ALL\_WINDOWS

    public static final [QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop") CLOSE\_ALL\_WINDOWS

    Shuts down the application by closing each window from back-to-front.
* ## Method Details

  + ### values

    public static [QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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