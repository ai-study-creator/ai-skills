Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class LinkOption

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[LinkOption](LinkOption.md "enum class in java.nio.file")>

java.nio.file.LinkOption

All Implemented Interfaces:
:   `Serializable`, `Comparable<LinkOption>`, `Constable`, `CopyOption`, `OpenOption`

---

public enum LinkOption
extends [Enum](../../lang/Enum.md "class in java.lang")<[LinkOption](LinkOption.md "enum class in java.nio.file")>
implements [OpenOption](OpenOption.md "interface in java.nio.file"), [CopyOption](CopyOption.md "interface in java.nio.file")

Defines the options as to how symbolic links are handled.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NOFOLLOW_LINKS`

  Do not follow symbolic links.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static LinkOption`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static LinkOption[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NOFOLLOW\_LINKS

    public static final [LinkOption](LinkOption.md "enum class in java.nio.file") NOFOLLOW\_LINKS

    Do not follow symbolic links.

    See Also:
    :   - [`Files.getFileAttributeView(Path,Class,LinkOption[])`](Files.md#getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption...))
        - [`Files.copy(java.nio.file.Path, java.nio.file.Path, java.nio.file.CopyOption...)`](Files.md#copy(java.nio.file.Path,java.nio.file.Path,java.nio.file.CopyOption...))
        - [`SecureDirectoryStream.newByteChannel(T, java.util.Set<? extends java.nio.file.OpenOption>, java.nio.file.attribute.FileAttribute<?>...)`](SecureDirectoryStream.md#newByteChannel(T,java.util.Set,java.nio.file.attribute.FileAttribute...))
* ## Method Details

  + ### values

    public static [LinkOption](LinkOption.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [LinkOption](LinkOption.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

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