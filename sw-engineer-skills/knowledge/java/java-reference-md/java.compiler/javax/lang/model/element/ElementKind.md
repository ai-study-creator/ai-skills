Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Enum Class ElementKind

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[ElementKind](ElementKind.md "enum class in javax.lang.model.element")>

javax.lang.model.element.ElementKind

All Implemented Interfaces:
:   `Serializable`, `Comparable<ElementKind>`, `Constable`

---

public enum ElementKind
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[ElementKind](ElementKind.md "enum class in javax.lang.model.element")>

The `kind` of an element.

Note that it is possible additional element kinds will be added
to accommodate new, currently unknown, language structures added to
future versions of the Java programming language.

Since:
:   1.6

See Also:
:   * [`Element`](Element.md "interface in javax.lang.model.element")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ANNOTATION_TYPE`

  An annotation interface.

  `BINDING_VARIABLE`

  A binding variable in a pattern.

  `CLASS`

  A class not described by a more specific kind (like `ENUM` or `RECORD`).

  `CONSTRUCTOR`

  A constructor.

  `ENUM`

  An enum class.

  `ENUM_CONSTANT`

  An enum constant.

  `EXCEPTION_PARAMETER`

  A parameter of an exception handler.

  `FIELD`

  A field not described by a more specific kind (like
  `ENUM_CONSTANT`).

  `INSTANCE_INIT`

  An instance initializer.

  `INTERFACE`

  An interface not described by a more specific kind (like
  `ANNOTATION_TYPE`).

  `LOCAL_VARIABLE`

  A local variable.

  `METHOD`

  A method.

  `MODULE`

  A module.

  `OTHER`

  An implementation-reserved element.

  `PACKAGE`

  A package.

  `PARAMETER`

  A parameter of a method or constructor.

  `RECORD`

  A record class.

  `RECORD_COMPONENT`

  A record component of a `record`.

  `RESOURCE_VARIABLE`

  A resource variable.

  `STATIC_INIT`

  A static initializer.

  `TYPE_PARAMETER`

  A type parameter.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isClass()`

  Returns `true` if this is a kind of class:
  either `CLASS` or `ENUM` or `RECORD`.

  `boolean`

  `isDeclaredType()`

  Returns `true` if this is a kind of declared type, a
  [class](#isClass()) or an [interface](#isInterface()), and `false` otherwise.

  `boolean`

  `isExecutable()`

  Returns `true` if this is a kind of executable: either
  `METHOD` or `CONSTRUCTOR` or `STATIC_INIT` or
  `INSTANCE_INIT`.

  `boolean`

  `isField()`

  Returns `true` if this is a kind of field:
  either `FIELD` or `ENUM_CONSTANT`.

  `boolean`

  `isInitializer()`

  Returns `true` if this is a kind of initializer: either
  `STATIC_INIT` or `INSTANCE_INIT`.

  `boolean`

  `isInterface()`

  Returns `true` if this is a kind of interface:
  either `INTERFACE` or `ANNOTATION_TYPE`.

  `boolean`

  `isVariable()`

  Returns `true` if this is a kind of variable: including
  `ENUM_CONSTANT`, `FIELD`, `PARAMETER`,
  `LOCAL_VARIABLE`, `EXCEPTION_PARAMETER`,
  `RESOURCE_VARIABLE`, and `BINDING_VARIABLE`.

  `static ElementKind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ElementKind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PACKAGE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") PACKAGE

    A package.
  + ### ENUM

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") ENUM

    An enum class.
  + ### CLASS

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") CLASS

    A class not described by a more specific kind (like `ENUM` or `RECORD`).
  + ### ANNOTATION\_TYPE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") ANNOTATION\_TYPE

    An annotation interface. (Formerly known as an annotation type.)
  + ### INTERFACE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") INTERFACE

    An interface not described by a more specific kind (like
    `ANNOTATION_TYPE`).
  + ### ENUM\_CONSTANT

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") ENUM\_CONSTANT

    An enum constant.
  + ### FIELD

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") FIELD

    A field not described by a more specific kind (like
    `ENUM_CONSTANT`).
  + ### PARAMETER

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") PARAMETER

    A parameter of a method or constructor.
  + ### LOCAL\_VARIABLE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") LOCAL\_VARIABLE

    A local variable.
  + ### EXCEPTION\_PARAMETER

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") EXCEPTION\_PARAMETER

    A parameter of an exception handler.
  + ### METHOD

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") METHOD

    A method.
  + ### CONSTRUCTOR

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") CONSTRUCTOR

    A constructor.
  + ### STATIC\_INIT

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") STATIC\_INIT

    A static initializer.
  + ### INSTANCE\_INIT

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") INSTANCE\_INIT

    An instance initializer.
  + ### TYPE\_PARAMETER

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") TYPE\_PARAMETER

    A type parameter.
  + ### OTHER

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") OTHER

    An implementation-reserved element. This is not the element
    you are looking for.
  + ### RESOURCE\_VARIABLE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") RESOURCE\_VARIABLE

    A resource variable.

    Since:
    :   1.7
  + ### MODULE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") MODULE

    A module.

    Since:
    :   9
  + ### RECORD

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") RECORD

    A record class.

    Since:
    :   16
  + ### RECORD\_COMPONENT

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") RECORD\_COMPONENT

    A record component of a `record`.

    Since:
    :   16
  + ### BINDING\_VARIABLE

    public static final [ElementKind](ElementKind.md "enum class in javax.lang.model.element") BINDING\_VARIABLE

    A binding variable in a pattern.

    Since:
    :   16
* ## Method Details

  + ### values

    public static [ElementKind](ElementKind.md "enum class in javax.lang.model.element")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ElementKind](ElementKind.md "enum class in javax.lang.model.element") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### isClass

    public boolean isClass()

    Returns `true` if this is a kind of class:
    either `CLASS` or `ENUM` or `RECORD`.

    Returns:
    :   `true` if this is a kind of class
  + ### isInterface

    public boolean isInterface()

    Returns `true` if this is a kind of interface:
    either `INTERFACE` or `ANNOTATION_TYPE`.

    Returns:
    :   `true` if this is a kind of interface
  + ### isDeclaredType

    public boolean isDeclaredType()

    Returns `true` if this is a kind of declared type, a
    [class](#isClass()) or an [interface](#isInterface()), and `false` otherwise.

    Returns:
    :   `true` if this is a kind of declared type, a
        [class](#isClass()) or an [interface](#isInterface()), and `false` otherwise

    Since:
    :   19
  + ### isField

    public boolean isField()

    Returns `true` if this is a kind of field:
    either `FIELD` or `ENUM_CONSTANT`.

    Returns:
    :   `true` if this is a kind of field
  + ### isExecutable

    public boolean isExecutable()

    Returns `true` if this is a kind of executable: either
    `METHOD` or `CONSTRUCTOR` or `STATIC_INIT` or
    `INSTANCE_INIT`.

    Returns:
    :   `true` if this is a kind of executable

    Since:
    :   19
  + ### isInitializer

    public boolean isInitializer()

    Returns `true` if this is a kind of initializer: either
    `STATIC_INIT` or `INSTANCE_INIT`.

    Returns:
    :   `true` if this is a kind of initializer

    Since:
    :   19
  + ### isVariable

    public boolean isVariable()

    Returns `true` if this is a kind of variable: including
    `ENUM_CONSTANT`, `FIELD`, `PARAMETER`,
    `LOCAL_VARIABLE`, `EXCEPTION_PARAMETER`,
    `RESOURCE_VARIABLE`, and `BINDING_VARIABLE`.

    Returns:
    :   `true` if this is a kind of variable

    Since:
    :   19