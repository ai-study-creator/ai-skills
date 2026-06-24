Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Enum Class PosixFilePermission

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../../lang/Enum.md "class in java.lang")<[PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")>

java.nio.file.attribute.PosixFilePermission

All Implemented Interfaces:
:   `Serializable`, `Comparable<PosixFilePermission>`, `Constable`

---

public enum PosixFilePermission
extends [Enum](../../../lang/Enum.md "class in java.lang")<[PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")>

Defines the bits for use with the [`permissions`](PosixFileAttributes.md#permissions()) attribute.

The [`PosixFilePermissions`](PosixFilePermissions.md "class in java.nio.file.attribute") class defines methods for manipulating
set of permissions.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `GROUP_EXECUTE`

  Execute/search permission, group.

  `GROUP_READ`

  Read permission, group.

  `GROUP_WRITE`

  Write permission, group.

  `OTHERS_EXECUTE`

  Execute/search permission, others.

  `OTHERS_READ`

  Read permission, others.

  `OTHERS_WRITE`

  Write permission, others.

  `OWNER_EXECUTE`

  Execute/search permission, owner.

  `OWNER_READ`

  Read permission, owner.

  `OWNER_WRITE`

  Write permission, owner.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static PosixFilePermission`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static PosixFilePermission[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### OWNER\_READ

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OWNER\_READ

    Read permission, owner.
  + ### OWNER\_WRITE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OWNER\_WRITE

    Write permission, owner.
  + ### OWNER\_EXECUTE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OWNER\_EXECUTE

    Execute/search permission, owner.
  + ### GROUP\_READ

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") GROUP\_READ

    Read permission, group.
  + ### GROUP\_WRITE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") GROUP\_WRITE

    Write permission, group.
  + ### GROUP\_EXECUTE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") GROUP\_EXECUTE

    Execute/search permission, group.
  + ### OTHERS\_READ

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OTHERS\_READ

    Read permission, others.
  + ### OTHERS\_WRITE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OTHERS\_WRITE

    Write permission, others.
  + ### OTHERS\_EXECUTE

    public static final [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") OTHERS\_EXECUTE

    Execute/search permission, others.
* ## Method Details

  + ### values

    public static [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute") valueOf([String](../../../lang/String.md "class in java.lang") name)

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