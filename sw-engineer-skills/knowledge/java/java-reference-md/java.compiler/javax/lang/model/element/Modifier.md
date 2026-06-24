Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Enum Class Modifier

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[Modifier](Modifier.md "enum class in javax.lang.model.element")>

javax.lang.model.element.Modifier

All Implemented Interfaces:
:   `Serializable`, `Comparable<Modifier>`, `Constable`

---

public enum Modifier
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[Modifier](Modifier.md "enum class in javax.lang.model.element")>

Represents a modifier on a program element such
as a class, method, or field.

Not all modifiers are applicable to all kinds of elements.
When two or more modifiers appear in the source code of an element
then it is customary, though not required, that they appear in the same
order as the constants listed in the detail section below.

Note that it is possible additional modifiers will be added in
future versions of the platform.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ABSTRACT`

  The modifier `abstract`

  `DEFAULT`

  The modifier `default`

  `FINAL`

  The modifier `final`

  `NATIVE`

  The modifier `native`

  `NON_SEALED`

  The modifier `non-sealed`

  `PRIVATE`

  The modifier `private`

  `PROTECTED`

  The modifier `protected`

  `PUBLIC`

  The modifier `public`

  `SEALED`

  The modifier `sealed`

  `STATIC`

  The modifier `static`

  `STRICTFP`

  The modifier `strictfp`

  `SYNCHRONIZED`

  The modifier `synchronized`

  `TRANSIENT`

  The modifier `transient`

  `VOLATILE`

  The modifier `volatile`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns this modifier's name as defined in The
  Java Language Specification.

  `static Modifier`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Modifier[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PUBLIC

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") PUBLIC

    The modifier `public`
  + ### PROTECTED

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") PROTECTED

    The modifier `protected`
  + ### PRIVATE

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") PRIVATE

    The modifier `private`
  + ### ABSTRACT

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") ABSTRACT

    The modifier `abstract`
  + ### DEFAULT

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") DEFAULT

    The modifier `default`

    Since:
    :   1.8
  + ### STATIC

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") STATIC

    The modifier `static`
  + ### SEALED

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") SEALED

    The modifier `sealed`

    Since:
    :   17
  + ### NON\_SEALED

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") NON\_SEALED

    The modifier `non-sealed`

    Since:
    :   17
  + ### FINAL

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") FINAL

    The modifier `final`
  + ### TRANSIENT

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") TRANSIENT

    The modifier `transient`
  + ### VOLATILE

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") VOLATILE

    The modifier `volatile`
  + ### SYNCHRONIZED

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") SYNCHRONIZED

    The modifier `synchronized`
  + ### NATIVE

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") NATIVE

    The modifier `native`
  + ### STRICTFP

    public static final [Modifier](Modifier.md "enum class in javax.lang.model.element") STRICTFP

    The modifier `strictfp`
* ## Method Details

  + ### values

    public static [Modifier](Modifier.md "enum class in javax.lang.model.element")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Modifier](Modifier.md "enum class in javax.lang.model.element") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns this modifier's name as defined in The
    Java Language Specification.
    The modifier name is the [name of the enum
    constant](../../../../../java.base/java/lang/Enum.md#name()) in lowercase and with any underscores ("`_`")
    replaced with hyphens ("`-`").

    Overrides:
    :   `toString` in class `Enum<Modifier>`

    Returns:
    :   the modifier's name