Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class FileVisitOption

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[FileVisitOption](FileVisitOption.md "enum class in java.nio.file")>

java.nio.file.FileVisitOption

All Implemented Interfaces:
:   `Serializable`, `Comparable<FileVisitOption>`, `Constable`

---

public enum FileVisitOption
extends [Enum](../../lang/Enum.md "class in java.lang")<[FileVisitOption](FileVisitOption.md "enum class in java.nio.file")>

Defines the file tree traversal options.

Since:
:   1.7

See Also:
:   * [`Files.walkFileTree(java.nio.file.Path, java.util.Set<java.nio.file.FileVisitOption>, int, java.nio.file.FileVisitor<? super java.nio.file.Path>)`](Files.md#walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `FOLLOW_LINKS`

  Follow symbolic links.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FileVisitOption`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static FileVisitOption[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### FOLLOW\_LINKS

    public static final [FileVisitOption](FileVisitOption.md "enum class in java.nio.file") FOLLOW\_LINKS

    Follow symbolic links.
* ## Method Details

  + ### values

    public static [FileVisitOption](FileVisitOption.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [FileVisitOption](FileVisitOption.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

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