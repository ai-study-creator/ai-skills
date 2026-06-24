Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Enum Class ModuleElement.DirectiveKind

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element")>

javax.lang.model.element.ModuleElement.DirectiveKind

All Implemented Interfaces:
:   `Serializable`, `Comparable<ModuleElement.DirectiveKind>`, `Constable`

Enclosing interface:
:   `ModuleElement`

---

public static enum ModuleElement.DirectiveKind
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element")>

The `kind` of a directive.

Note that it is possible additional directive kinds will be added
to accommodate new, currently unknown, language structures added to
future versions of the Java programming language.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `EXPORTS`

  An "exports package-name [to module-name-list]" directive.

  `OPENS`

  An "opens package-name [to module-name-list]" directive.

  `PROVIDES`

  A "provides service-name with implementation-name" directive.

  `REQUIRES`

  A "requires (static|transitive)\* module-name" directive.

  `USES`

  A "uses service-name" directive.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ModuleElement.DirectiveKind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ModuleElement.DirectiveKind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### REQUIRES

    public static final [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") REQUIRES

    A "requires (static|transitive)\* module-name" directive.
  + ### EXPORTS

    public static final [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") EXPORTS

    An "exports package-name [to module-name-list]" directive.
  + ### OPENS

    public static final [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") OPENS

    An "opens package-name [to module-name-list]" directive.
  + ### USES

    public static final [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") USES

    A "uses service-name" directive.
  + ### PROVIDES

    public static final [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") PROVIDES

    A "provides service-name with implementation-name" directive.
* ## Method Details

  + ### values

    public static [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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