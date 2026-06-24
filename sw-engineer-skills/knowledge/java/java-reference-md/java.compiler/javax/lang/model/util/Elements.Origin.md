Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Enum Class Elements.Origin

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util")>

javax.lang.model.util.Elements.Origin

All Implemented Interfaces:
:   `Serializable`, `Comparable<Elements.Origin>`, `Constable`

Enclosing interface:
:   `Elements`

---

public static enum Elements.Origin
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util")>

The *origin* of an element or other language model
item. The origin of an element or item models how a construct
in a program is declared in the source code, explicitly,
implicitly, etc.

Note that it is possible additional kinds of origin values
will be added in future versions of the platform.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `EXPLICIT`

  Describes a construct explicitly declared in source code.

  `MANDATED`

  A mandated construct is one that is not explicitly declared
  in the source code, but whose presence is mandated by the
  specification.

  `SYNTHETIC`

  A synthetic construct is one that is neither implicitly nor
  explicitly declared in the source code.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isDeclared()`

  Returns `true` for values corresponding to constructs
  that are implicitly or explicitly declared, `false`
  otherwise.

  `static Elements.Origin`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Elements.Origin[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### EXPLICIT

    public static final [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") EXPLICIT

    Describes a construct explicitly declared in source code.
  + ### MANDATED

    public static final [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") MANDATED

    A mandated construct is one that is not explicitly declared
    in the source code, but whose presence is mandated by the
    specification. Such a construct is said to be implicitly
    declared.
    One example of a mandated element is a *default
    constructor* in a class that contains no explicit
    constructor declarations.
    Another example of a mandated construct is an implicitly
    declared *container annotation* used to hold
    multiple annotations of a repeatable annotation interface.
  + ### SYNTHETIC

    public static final [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") SYNTHETIC

    A synthetic construct is one that is neither implicitly nor
    explicitly declared in the source code. Such a construct is
    typically a translation artifact created by a compiler.
* ## Method Details

  + ### values

    public static [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### isDeclared

    public boolean isDeclared()

    Returns `true` for values corresponding to constructs
    that are implicitly or explicitly declared, `false`
    otherwise.

    Returns:
    :   `true` for [`EXPLICIT`](#EXPLICIT) and [`MANDATED`](#MANDATED),
        `false` otherwise.