Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Taskbar.Feature

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt")>

java.awt.Taskbar.Feature

All Implemented Interfaces:
:   `Serializable`, `Comparable<Taskbar.Feature>`, `Constable`

Enclosing class:
:   `Taskbar`

---

public static enum Taskbar.Feature
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt")>

List of provided features. Each platform supports a different
set of features. You may use the [`Taskbar.isSupported(java.awt.Taskbar.Feature)`](Taskbar.md#isSupported(java.awt.Taskbar.Feature))
method to determine if the given feature is supported by the
current platform.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ICON_BADGE_IMAGE_WINDOW`

  Represents a graphical icon badge feature for a window.

  `ICON_BADGE_NUMBER`

  Represents a numerical icon badge feature.

  `ICON_BADGE_TEXT`

  Represents a textual icon badge feature.

  `ICON_IMAGE`

  Represents an icon feature.

  `MENU`

  Represents a menu feature.

  `PROGRESS_STATE_WINDOW`

  Represents a progress state feature for a specified window.

  `PROGRESS_VALUE`

  Represents a progress value feature.

  `PROGRESS_VALUE_WINDOW`

  Represents a progress value feature for a specified window.

  `USER_ATTENTION`

  Represents a user attention request feature.

  `USER_ATTENTION_WINDOW`

  Represents a user attention request feature for a specified window.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Taskbar.Feature`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Taskbar.Feature[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ICON\_BADGE\_TEXT

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") ICON\_BADGE\_TEXT

    Represents a textual icon badge feature.

    See Also:
    :   - [`Taskbar.setIconBadge(java.lang.String)`](Taskbar.md#setIconBadge(java.lang.String))
  + ### ICON\_BADGE\_NUMBER

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") ICON\_BADGE\_NUMBER

    Represents a numerical icon badge feature.

    See Also:
    :   - [`Taskbar.setIconBadge(java.lang.String)`](Taskbar.md#setIconBadge(java.lang.String))
  + ### ICON\_BADGE\_IMAGE\_WINDOW

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") ICON\_BADGE\_IMAGE\_WINDOW

    Represents a graphical icon badge feature for a window.

    See Also:
    :   - [`Taskbar.setWindowIconBadge(java.awt.Window, java.awt.Image)`](Taskbar.md#setWindowIconBadge(java.awt.Window,java.awt.Image))
  + ### ICON\_IMAGE

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") ICON\_IMAGE

    Represents an icon feature.

    See Also:
    :   - [`Taskbar.setIconImage(java.awt.Image)`](Taskbar.md#setIconImage(java.awt.Image))
  + ### MENU

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") MENU

    Represents a menu feature.

    See Also:
    :   - [`Taskbar.setMenu(java.awt.PopupMenu)`](Taskbar.md#setMenu(java.awt.PopupMenu))
        - [`Taskbar.getMenu()`](Taskbar.md#getMenu())
  + ### PROGRESS\_STATE\_WINDOW

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") PROGRESS\_STATE\_WINDOW

    Represents a progress state feature for a specified window.

    See Also:
    :   - [`Taskbar.setWindowProgressState(java.awt.Window, State)`](Taskbar.md#setWindowProgressState(java.awt.Window,java.awt.Taskbar.State))
  + ### PROGRESS\_VALUE

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") PROGRESS\_VALUE

    Represents a progress value feature.

    See Also:
    :   - [`Taskbar.setProgressValue(int)`](Taskbar.md#setProgressValue(int))
  + ### PROGRESS\_VALUE\_WINDOW

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") PROGRESS\_VALUE\_WINDOW

    Represents a progress value feature for a specified window.

    See Also:
    :   - [`Taskbar.setWindowProgressValue(java.awt.Window, int)`](Taskbar.md#setWindowProgressValue(java.awt.Window,int))
  + ### USER\_ATTENTION

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") USER\_ATTENTION

    Represents a user attention request feature.

    See Also:
    :   - [`Taskbar.requestUserAttention(boolean, boolean)`](Taskbar.md#requestUserAttention(boolean,boolean))
  + ### USER\_ATTENTION\_WINDOW

    public static final [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") USER\_ATTENTION\_WINDOW

    Represents a user attention request feature for a specified window.

    See Also:
    :   - [`Taskbar.requestWindowUserAttention(java.awt.Window)`](Taskbar.md#requestWindowUserAttention(java.awt.Window))
* ## Method Details

  + ### values

    public static [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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