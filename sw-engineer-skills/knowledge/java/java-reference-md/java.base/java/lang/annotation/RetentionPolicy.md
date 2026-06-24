Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Enum Class RetentionPolicy

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation")>

java.lang.annotation.RetentionPolicy

All Implemented Interfaces:
:   `Serializable`, `Comparable<RetentionPolicy>`, `Constable`

---

public enum RetentionPolicy
extends [Enum](../Enum.md "class in java.lang")<[RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation")>

Annotation retention policy. The constants of this enumerated class
describe the various policies for retaining annotations. They are used
in conjunction with the [`Retention`](Retention.md "annotation interface in java.lang.annotation") meta-annotation interface to
specify how long annotations are to be retained.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CLASS`

  Annotations are to be recorded in the class file by the compiler
  but need not be retained by the VM at run time.

  `RUNTIME`

  Annotations are to be recorded in the class file by the compiler and
  retained by the VM at run time, so they may be read reflectively.

  `SOURCE`

  Annotations are to be discarded by the compiler.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static RetentionPolicy`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static RetentionPolicy[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SOURCE

    public static final [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation") SOURCE

    Annotations are to be discarded by the compiler.
  + ### CLASS

    public static final [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation") CLASS

    Annotations are to be recorded in the class file by the compiler
    but need not be retained by the VM at run time. This is the default
    behavior.
  + ### RUNTIME

    public static final [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation") RUNTIME

    Annotations are to be recorded in the class file by the compiler and
    retained by the VM at run time, so they may be read reflectively.

    See Also:
    :   - [`AnnotatedElement`](../reflect/AnnotatedElement.md "interface in java.lang.reflect")
* ## Method Details

  + ### values

    public static [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation") valueOf([String](../String.md "class in java.lang") name)

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