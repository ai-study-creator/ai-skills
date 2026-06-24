Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Taskbar.State

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Taskbar.State](Taskbar.State.md "enum class in java.awt")>

java.awt.Taskbar.State

All Implemented Interfaces:
:   `Serializable`, `Comparable<Taskbar.State>`, `Constable`

Enclosing class:
:   `Taskbar`

---

public static enum Taskbar.State
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Taskbar.State](Taskbar.State.md "enum class in java.awt")>

Kinds of available window progress states.

See Also:
:   * [`Taskbar.setWindowProgressState(java.awt.Window, java.awt.Taskbar.State)`](Taskbar.md#setWindowProgressState(java.awt.Window,java.awt.Taskbar.State))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ERROR`

  Shows that an error has occurred.

  `INDETERMINATE`

  The progress indicator displays activity without specifying what
  proportion of the progress is complete.

  `NORMAL`

  The progress indicator displays with normal color and determinate
  mode.

  `OFF`

  Stops displaying the progress.

  `PAUSED`

  Shows progress as paused, progress can be resumed by the user.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Taskbar.State`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Taskbar.State[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### OFF

    public static final [Taskbar.State](Taskbar.State.md "enum class in java.awt") OFF

    Stops displaying the progress.
  + ### NORMAL

    public static final [Taskbar.State](Taskbar.State.md "enum class in java.awt") NORMAL

    The progress indicator displays with normal color and determinate
    mode.
  + ### PAUSED

    public static final [Taskbar.State](Taskbar.State.md "enum class in java.awt") PAUSED

    Shows progress as paused, progress can be resumed by the user.
    Switches to the determinate display.
  + ### INDETERMINATE

    public static final [Taskbar.State](Taskbar.State.md "enum class in java.awt") INDETERMINATE

    The progress indicator displays activity without specifying what
    proportion of the progress is complete.
  + ### ERROR

    public static final [Taskbar.State](Taskbar.State.md "enum class in java.awt") ERROR

    Shows that an error has occurred. Switches to the determinate
    display.
* ## Method Details

  + ### values

    public static [Taskbar.State](Taskbar.State.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Taskbar.State](Taskbar.State.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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