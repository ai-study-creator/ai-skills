Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Enum Class ModuleDescriptor.Modifier

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")>

java.lang.module.ModuleDescriptor.Modifier

All Implemented Interfaces:
:   `Serializable`, `Comparable<ModuleDescriptor.Modifier>`, `Constable`

Enclosing class:
:   `ModuleDescriptor`

---

public static enum ModuleDescriptor.Modifier
extends [Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")>

A modifier on a module.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.modifiers()`](ModuleDescriptor.md#modifiers())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `AUTOMATIC`

  An automatic module.

  `MANDATED`

  The module was implicitly declared.

  `OPEN`

  An open module.

  `SYNTHETIC`

  The module was not explicitly or implicitly declared.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ModuleDescriptor.Modifier`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ModuleDescriptor.Modifier[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### OPEN

    public static final [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module") OPEN

    An open module. An open module does not declare any open packages
    but the resulting module is treated as if all packages are open.
  + ### AUTOMATIC

    public static final [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module") AUTOMATIC

    An automatic module. An automatic module is treated as if it exports
    and opens all packages.
  + ### SYNTHETIC

    public static final [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module") SYNTHETIC

    The module was not explicitly or implicitly declared.
  + ### MANDATED

    public static final [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module") MANDATED

    The module was implicitly declared.
* ## Method Details

  + ### values

    public static [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module") valueOf([String](../String.md "class in java.lang") name)

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