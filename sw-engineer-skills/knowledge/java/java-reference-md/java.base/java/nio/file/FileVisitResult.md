Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class FileVisitResult

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[FileVisitResult](FileVisitResult.md "enum class in java.nio.file")>

java.nio.file.FileVisitResult

All Implemented Interfaces:
:   `Serializable`, `Comparable<FileVisitResult>`, `Constable`

---

public enum FileVisitResult
extends [Enum](../../lang/Enum.md "class in java.lang")<[FileVisitResult](FileVisitResult.md "enum class in java.nio.file")>

The result type of a [`FileVisitor`](FileVisitor.md "interface in java.nio.file").

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

  `CONTINUE`

  Continue.

  `SKIP_SIBLINGS`

  Continue without visiting the *siblings* of this file or directory.

  `SKIP_SUBTREE`

  Continue without visiting the entries in this directory.

  `TERMINATE`

  Terminate.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FileVisitResult`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static FileVisitResult[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### CONTINUE

    public static final [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") CONTINUE

    Continue. When returned from a [`preVisitDirectory`](FileVisitor.md#preVisitDirectory(T,java.nio.file.attribute.BasicFileAttributes)) method then the entries in the directory should also
    be visited.
  + ### TERMINATE

    public static final [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") TERMINATE

    Terminate.
  + ### SKIP\_SUBTREE

    public static final [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") SKIP\_SUBTREE

    Continue without visiting the entries in this directory. This result
    is only meaningful when returned from the [`preVisitDirectory`](FileVisitor.md#preVisitDirectory(T,java.nio.file.attribute.BasicFileAttributes)) method; otherwise
    this result type is the same as returning [`CONTINUE`](#CONTINUE).
  + ### SKIP\_SIBLINGS

    public static final [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") SKIP\_SIBLINGS

    Continue without visiting the *siblings* of this file or directory.
    If returned from the [`preVisitDirectory`](FileVisitor.md#preVisitDirectory(T,java.nio.file.attribute.BasicFileAttributes)) method then the entries in the directory are also
    skipped and the [`postVisitDirectory`](FileVisitor.md#postVisitDirectory(T,java.io.IOException))
    method is not invoked.
* ## Method Details

  + ### values

    public static [FileVisitResult](FileVisitResult.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

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