Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Window.Type

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Window.Type](Window.Type.md "enum class in java.awt")>

java.awt.Window.Type

All Implemented Interfaces:
:   `Serializable`, `Comparable<Window.Type>`, `Constable`

Enclosing class:
:   `Window`

---

public static enum Window.Type
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Window.Type](Window.Type.md "enum class in java.awt")>

Enumeration of available *window types*.
A window type defines the generic visual appearance and behavior of a
top-level window. For example, the type may affect the kind of
decorations of a decorated `Frame` or `Dialog` instance.

Some platforms may not fully support a certain window type. Depending on
the level of support, some properties of the window type may be
disobeyed.

Since:
:   1.7

See Also:
:   * [`Window.getType()`](Window.md#getType())
    * [`Window.setType(java.awt.Window.Type)`](Window.md#setType(java.awt.Window.Type))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NORMAL`

  Represents a *normal* window.

  `POPUP`

  Represents a *popup* window.

  `UTILITY`

  Represents a *utility* window.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Window.Type`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Window.Type[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NORMAL

    public static final [Window.Type](Window.Type.md "enum class in java.awt") NORMAL

    Represents a *normal* window.
    This is the default type for objects of the `Window` class or
    its descendants. Use this type for regular top-level windows.
  + ### UTILITY

    public static final [Window.Type](Window.Type.md "enum class in java.awt") UTILITY

    Represents a *utility* window.
    A utility window is usually a small window such as a toolbar or a
    palette. The native system may render the window with smaller
    title-bar if the window is either a `Frame` or a `Dialog` object, and if it has its decorations enabled.
  + ### POPUP

    public static final [Window.Type](Window.Type.md "enum class in java.awt") POPUP

    Represents a *popup* window.
    A popup window is a temporary window such as a drop-down menu or a
    tooltip. On some platforms, windows of that type may be forcibly
    made undecorated even if they are instances of the `Frame` or
    `Dialog` class, and have decorations enabled.
* ## Method Details

  + ### values

    public static [Window.Type](Window.Type.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Window.Type](Window.Type.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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