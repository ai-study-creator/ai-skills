Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Enum Class AclEntryType

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute")>

java.nio.file.attribute.AclEntryType

All Implemented Interfaces:
:   `Serializable`, `Comparable<AclEntryType>`, `Constable`

---

public enum AclEntryType
extends [Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute")>

A typesafe enumeration of the access control entry types.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALARM`

  Generate an alarm, in a system dependent way, the access specified in the
  permissions component of the ACL entry.

  `ALLOW`

  Explicitly grants access to a file or directory.

  `AUDIT`

  Log, in a system dependent way, the access specified in the
  permissions component of the ACL entry.

  `DENY`

  Explicitly denies access to a file or directory.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AclEntryType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AclEntryType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ALLOW

    public static final [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") ALLOW

    Explicitly grants access to a file or directory.
  + ### DENY

    public static final [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") DENY

    Explicitly denies access to a file or directory.
  + ### AUDIT

    public static final [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") AUDIT

    Log, in a system dependent way, the access specified in the
    permissions component of the ACL entry.
  + ### ALARM

    public static final [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") ALARM

    Generate an alarm, in a system dependent way, the access specified in the
    permissions component of the ACL entry.
* ## Method Details

  + ### values

    public static [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") valueOf([String](../../../lang/String.md "class in java.lang") name)

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