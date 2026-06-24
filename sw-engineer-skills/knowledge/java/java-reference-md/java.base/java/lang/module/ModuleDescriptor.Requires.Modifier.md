Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Enum Class ModuleDescriptor.Requires.Modifier

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")>

java.lang.module.ModuleDescriptor.Requires.Modifier

All Implemented Interfaces:
:   `Serializable`, `Comparable<ModuleDescriptor.Requires.Modifier>`, `Constable`

Enclosing class:
:   `ModuleDescriptor.Requires`

---

public static enum ModuleDescriptor.Requires.Modifier
extends [Enum](../Enum.md "class in java.lang")<[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")>

A modifier on a module dependence.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.Requires.modifiers()`](ModuleDescriptor.Requires.md#modifiers())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `MANDATED`

  The dependence was implicitly declared in the source of the module
  declaration.

  `STATIC`

  The dependence is mandatory in the static phase, during compilation,
  but is optional in the dynamic phase, during execution.

  `SYNTHETIC`

  The dependence was not explicitly or implicitly declared in the
  source of the module declaration.

  `TRANSITIVE`

  The dependence causes any module which depends on the *current
  module* to have an implicitly declared dependence on the module
  named by the `Requires`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ModuleDescriptor.Requires.Modifier`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ModuleDescriptor.Requires.Modifier[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### TRANSITIVE

    public static final [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module") TRANSITIVE

    The dependence causes any module which depends on the *current
    module* to have an implicitly declared dependence on the module
    named by the `Requires`.
  + ### STATIC

    public static final [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module") STATIC

    The dependence is mandatory in the static phase, during compilation,
    but is optional in the dynamic phase, during execution.
  + ### SYNTHETIC

    public static final [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module") SYNTHETIC

    The dependence was not explicitly or implicitly declared in the
    source of the module declaration.
  + ### MANDATED

    public static final [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module") MANDATED

    The dependence was implicitly declared in the source of the module
    declaration.
* ## Method Details

  + ### values

    public static [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module") valueOf([String](../String.md "class in java.lang") name)

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