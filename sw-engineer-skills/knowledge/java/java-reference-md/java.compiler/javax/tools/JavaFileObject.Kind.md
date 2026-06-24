Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Enum Class JavaFileObject.Kind

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools")>

javax.tools.JavaFileObject.Kind

All Implemented Interfaces:
:   `Serializable`, `Comparable<JavaFileObject.Kind>`, `Constable`

Enclosing interface:
:   `JavaFileObject`

---

public static enum JavaFileObject.Kind
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools")>

Kinds of JavaFileObjects.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CLASS`

  Class files for the Java Virtual Machine.

  `HTML`

  HTML files.

  `OTHER`

  Any other kind.

  `SOURCE`

  Source files written in the Java programming language.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `final String`

  `extension`

  The extension which (by convention) is normally used for
  this kind of file object.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static JavaFileObject.Kind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static JavaFileObject.Kind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SOURCE

    public static final [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") SOURCE

    Source files written in the Java programming language. For
    example, regular files ending with `.java`.
  + ### CLASS

    public static final [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") CLASS

    Class files for the Java Virtual Machine. For example,
    regular files ending with `.class`.
  + ### HTML

    public static final [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") HTML

    HTML files. For example, regular files ending with `.html`.
  + ### OTHER

    public static final [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") OTHER

    Any other kind.
* ## Field Details

  + ### extension

    public final [String](../../../java.base/java/lang/String.md "class in java.lang") extension

    The extension which (by convention) is normally used for
    this kind of file object. If no convention exists, the
    empty string (`""`) is used.
* ## Method Details

  + ### values

    public static [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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