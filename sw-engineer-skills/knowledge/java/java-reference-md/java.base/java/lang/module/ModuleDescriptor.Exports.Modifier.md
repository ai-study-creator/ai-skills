Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Enum Class ModuleDescriptor.Exports.Modifier

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")>

java.lang.module.ModuleDescriptor.Exports.Modifier

All Implemented Interfaces:
:   `Serializable`, `Comparable<ModuleDescriptor.Exports.Modifier>`, `Constable`

Enclosing class:
:   `ModuleDescriptor.Exports`

---

public static enum ModuleDescriptor.Exports.Modifier
extends [Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")>

A modifier on an exported package.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.Exports.modifiers()`](ModuleDescriptor.Exports.md#modifiers())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `MANDATED`

  The export was implicitly declared in the source of the module
  declaration.

  `SYNTHETIC`

  The export was not explicitly or implicitly declared in the
  source of the module declaration.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ModuleDescriptor.Exports.Modifier`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ModuleDescriptor.Exports.Modifier[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SYNTHETIC

    public static final [ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module") SYNTHETIC

    The export was not explicitly or implicitly declared in the
    source of the module declaration.
  + ### MANDATED

    public static final [ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module") MANDATED

    The export was implicitly declared in the source of the module
    declaration.
* ## Method Details

  + ### values

    public static [ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module") valueOf([String](../String.md "class in java.lang") name)

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