Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Enum Class ElementType

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[ElementType](ElementType.md "enum class in java.lang.annotation")>

java.lang.annotation.ElementType

All Implemented Interfaces:
:   `Serializable`, `Comparable<ElementType>`, `Constable`

---

public enum ElementType
extends [Enum](../Enum.md "class in java.lang")<[ElementType](ElementType.md "enum class in java.lang.annotation")>

The constants of this enumerated class provide a simple classification of the
syntactic locations where annotations may appear in a Java program. These
constants are used in [`Target`](Target.md "annotation interface in java.lang.annotation")
meta-annotations to specify where it is legal to write annotations of a
given type.

The syntactic locations where annotations may appear are split into
*declaration contexts*, where annotations apply to declarations, and
*type contexts*, where annotations apply to types used in
declarations and expressions.

The constants [`ANNOTATION_TYPE`](#ANNOTATION_TYPE), [`CONSTRUCTOR`](#CONSTRUCTOR), [`FIELD`](#FIELD), [`LOCAL_VARIABLE`](#LOCAL_VARIABLE), [`METHOD`](#METHOD), [`PACKAGE`](#PACKAGE), [`MODULE`](#MODULE), [`PARAMETER`](#PARAMETER), [`TYPE`](#TYPE), and [`TYPE_PARAMETER`](#TYPE_PARAMETER)
correspond to the declaration contexts in JLS .

For example, an annotation whose interface is meta-annotated with
`@Target(ElementType.FIELD)` may only be written as a modifier for a
field declaration.

The constant [`TYPE_USE`](#TYPE_USE) corresponds to the type contexts in JLS
, as well as to two declaration contexts: class and interface
declarations (including annotation declarations) and type parameter
declarations.

For example, an annotation whose interface is meta-annotated with
`@Target(ElementType.TYPE_USE)` may be written on the class or
interface of a field (or within the class or interface of the field, if it
is a nested or parameterized class or interface, or array class), and may
also appear as a modifier for, say, a class declaration.

The `TYPE_USE` constant includes class and interface declarations
and type parameter declarations as a convenience for designers of
type checkers which give semantics to annotation interfaces. For example,
if the annotation interface `NonNull` is meta-annotated with
`@Target(ElementType.TYPE_USE)`, then `@NonNull`
`class C {...}` could be treated by a type checker as indicating that
all variables of class `C` are non-null, while still allowing
variables of other classes to be non-null or not non-null based on whether
`@NonNull` appears at the variable's declaration.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ANNOTATION_TYPE`

  Annotation interface declaration (Formerly known as an annotation type.)

  `CONSTRUCTOR`

  Constructor declaration

  `FIELD`

  Field declaration (includes enum constants)

  `LOCAL_VARIABLE`

  Local variable declaration

  `METHOD`

  Method declaration

  `MODULE`

  Module declaration.

  `PACKAGE`

  Package declaration

  `PARAMETER`

  Formal parameter declaration

  `RECORD_COMPONENT`

  Record component

  `TYPE`

  Class, interface (including annotation interface), enum, or record
  declaration

  `TYPE_PARAMETER`

  Type parameter declaration

  `TYPE_USE`

  Use of a type
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ElementType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ElementType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### TYPE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") TYPE

    Class, interface (including annotation interface), enum, or record
    declaration
  + ### FIELD

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") FIELD

    Field declaration (includes enum constants)
  + ### METHOD

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") METHOD

    Method declaration
  + ### PARAMETER

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") PARAMETER

    Formal parameter declaration
  + ### CONSTRUCTOR

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") CONSTRUCTOR

    Constructor declaration
  + ### LOCAL\_VARIABLE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") LOCAL\_VARIABLE

    Local variable declaration
  + ### ANNOTATION\_TYPE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") ANNOTATION\_TYPE

    Annotation interface declaration (Formerly known as an annotation type.)
  + ### PACKAGE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") PACKAGE

    Package declaration
  + ### TYPE\_PARAMETER

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") TYPE\_PARAMETER

    Type parameter declaration

    Since:
    :   1.8
  + ### TYPE\_USE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") TYPE\_USE

    Use of a type

    Since:
    :   1.8
  + ### MODULE

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") MODULE

    Module declaration.

    Since:
    :   9
  + ### RECORD\_COMPONENT

    public static final [ElementType](ElementType.md "enum class in java.lang.annotation") RECORD\_COMPONENT

    Record component

    Since:
    :   16
* ## Method Details

  + ### values

    public static [ElementType](ElementType.md "enum class in java.lang.annotation")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ElementType](ElementType.md "enum class in java.lang.annotation") valueOf([String](../String.md "class in java.lang") name)

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