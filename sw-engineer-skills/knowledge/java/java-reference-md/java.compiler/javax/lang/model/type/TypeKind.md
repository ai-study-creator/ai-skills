Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Enum Class TypeKind

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[TypeKind](TypeKind.md "enum class in javax.lang.model.type")>

javax.lang.model.type.TypeKind

All Implemented Interfaces:
:   `Serializable`, `Comparable<TypeKind>`, `Constable`

---

public enum TypeKind
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[TypeKind](TypeKind.md "enum class in javax.lang.model.type")>

The kind of a type mirror.

Note that it is possible additional type kinds will be added to
accommodate new, currently unknown, language structures added to
future versions of the Java programming language.

Since:
:   1.6

See Also:
:   * [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ARRAY`

  An array type.

  `BOOLEAN`

  The primitive type `boolean`.

  `BYTE`

  The primitive type `byte`.

  `CHAR`

  The primitive type `char`.

  `DECLARED`

  A class or interface type.

  `DOUBLE`

  The primitive type `double`.

  `ERROR`

  A class or interface type that could not be resolved.

  `EXECUTABLE`

  A method, constructor, or initializer.

  `FLOAT`

  The primitive type `float`.

  `INT`

  The primitive type `int`.

  `INTERSECTION`

  An intersection type.

  `LONG`

  The primitive type `long`.

  `MODULE`

  A pseudo-type corresponding to a module element.

  `NONE`

  A pseudo-type used where no actual type is appropriate.

  `NULL`

  The null type.

  `OTHER`

  An implementation-reserved type.

  `PACKAGE`

  A pseudo-type corresponding to a package element.

  `SHORT`

  The primitive type `short`.

  `TYPEVAR`

  A type variable.

  `UNION`

  A union type.

  `VOID`

  The pseudo-type corresponding to the keyword `void`.

  `WILDCARD`

  A wildcard type argument.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isPrimitive()`

  Returns `true` if this kind corresponds to a primitive
  type and `false` otherwise.

  `static TypeKind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static TypeKind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### BOOLEAN

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") BOOLEAN

    The primitive type `boolean`.
  + ### BYTE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") BYTE

    The primitive type `byte`.
  + ### SHORT

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") SHORT

    The primitive type `short`.
  + ### INT

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") INT

    The primitive type `int`.
  + ### LONG

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") LONG

    The primitive type `long`.
  + ### CHAR

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") CHAR

    The primitive type `char`.
  + ### FLOAT

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") FLOAT

    The primitive type `float`.
  + ### DOUBLE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") DOUBLE

    The primitive type `double`.
  + ### VOID

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") VOID

    The pseudo-type corresponding to the keyword `void`.

    See Also:
    :   - [`NoType`](NoType.md "interface in javax.lang.model.type")
  + ### NONE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") NONE

    A pseudo-type used where no actual type is appropriate.

    See Also:
    :   - [`NoType`](NoType.md "interface in javax.lang.model.type")
  + ### NULL

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") NULL

    The null type.
  + ### ARRAY

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") ARRAY

    An array type.
  + ### DECLARED

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") DECLARED

    A class or interface type.
  + ### ERROR

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") ERROR

    A class or interface type that could not be resolved.
  + ### TYPEVAR

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") TYPEVAR

    A type variable.
  + ### WILDCARD

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") WILDCARD

    A wildcard type argument.
  + ### PACKAGE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") PACKAGE

    A pseudo-type corresponding to a package element.

    See Also:
    :   - [`NoType`](NoType.md "interface in javax.lang.model.type")
  + ### EXECUTABLE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") EXECUTABLE

    A method, constructor, or initializer.
  + ### OTHER

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") OTHER

    An implementation-reserved type.
    This is not the type you are looking for.
  + ### UNION

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") UNION

    A union type.

    Since:
    :   1.7
  + ### INTERSECTION

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") INTERSECTION

    An intersection type.

    Since:
    :   1.8
  + ### MODULE

    public static final [TypeKind](TypeKind.md "enum class in javax.lang.model.type") MODULE

    A pseudo-type corresponding to a module element.

    Since:
    :   9

    See Also:
    :   - [`NoType`](NoType.md "interface in javax.lang.model.type")
* ## Method Details

  + ### values

    public static [TypeKind](TypeKind.md "enum class in javax.lang.model.type")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [TypeKind](TypeKind.md "enum class in javax.lang.model.type") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### isPrimitive

    public boolean isPrimitive()

    Returns `true` if this kind corresponds to a primitive
    type and `false` otherwise.

    Returns:
    :   `true` if this kind corresponds to a primitive
        type and `false` otherwise