Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Enum Class AclEntryFlag

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")>

java.nio.file.attribute.AclEntryFlag

All Implemented Interfaces:
:   `Serializable`, `Comparable<AclEntryFlag>`, `Constable`

---

public enum AclEntryFlag
extends [Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")>

Defines the flags for used by the flags component of an ACL [`entry`](AclEntry.md "class in java.nio.file.attribute").

In this release, this class does not define flags related to [`AclEntryType.AUDIT`](AclEntryType.md#AUDIT) and [`AclEntryType.ALARM`](AclEntryType.md#ALARM) entry types.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DIRECTORY_INHERIT`

  Can be placed on a directory and indicates that the ACL entry should be
  added to each new directory created.

  `FILE_INHERIT`

  Can be placed on a directory and indicates that the ACL entry should be
  added to each new non-directory file created.

  `INHERIT_ONLY`

  Can be placed on a directory but does not apply to the directory,
  only to newly created files/directories as specified by the
  [`FILE_INHERIT`](#FILE_INHERIT) and [`DIRECTORY_INHERIT`](#DIRECTORY_INHERIT) flags.

  `NO_PROPAGATE_INHERIT`

  Can be placed on a directory to indicate that the ACL entry should not
  be placed on the newly created directory which is inheritable by
  subdirectories of the created directory.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AclEntryFlag`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AclEntryFlag[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### FILE\_INHERIT

    public static final [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute") FILE\_INHERIT

    Can be placed on a directory and indicates that the ACL entry should be
    added to each new non-directory file created.
  + ### DIRECTORY\_INHERIT

    public static final [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute") DIRECTORY\_INHERIT

    Can be placed on a directory and indicates that the ACL entry should be
    added to each new directory created.
  + ### NO\_PROPAGATE\_INHERIT

    public static final [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute") NO\_PROPAGATE\_INHERIT

    Can be placed on a directory to indicate that the ACL entry should not
    be placed on the newly created directory which is inheritable by
    subdirectories of the created directory.
  + ### INHERIT\_ONLY

    public static final [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute") INHERIT\_ONLY

    Can be placed on a directory but does not apply to the directory,
    only to newly created files/directories as specified by the
    [`FILE_INHERIT`](#FILE_INHERIT) and [`DIRECTORY_INHERIT`](#DIRECTORY_INHERIT) flags.
* ## Method Details

  + ### values

    public static [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute") valueOf([String](../../../lang/String.md "class in java.lang") name)

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