Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Class AclEntry.Builder

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.file.attribute.AclEntry.Builder

Enclosing class:
:   `AclEntry`

---

public static final class AclEntry.Builder
extends [Object](../../../lang/Object.md "class in java.lang")

A builder of [`AclEntry`](AclEntry.md "class in java.nio.file.attribute") objects.

A `Builder` object is obtained by invoking one of the [`newBuilder`](AclEntry.md#newBuilder()) methods defined by the `AclEntry`
class.

Builder objects are mutable and are not safe for use by multiple
concurrent threads without appropriate synchronization.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AclEntry`

  `build()`

  Constructs an [`AclEntry`](AclEntry.md "class in java.nio.file.attribute") from the components of this builder.

  `AclEntry.Builder`

  `setFlags(AclEntryFlag... flags)`

  Sets the flags component of this builder.

  `AclEntry.Builder`

  `setFlags(Set<AclEntryFlag> flags)`

  Sets the flags component of this builder.

  `AclEntry.Builder`

  `setPermissions(AclEntryPermission... perms)`

  Sets the permissions component of this builder.

  `AclEntry.Builder`

  `setPermissions(Set<AclEntryPermission> perms)`

  Sets the permissions component of this builder.

  `AclEntry.Builder`

  `setPrincipal(UserPrincipal who)`

  Sets the principal component of this builder.

  `AclEntry.Builder`

  `setType(AclEntryType type)`

  Sets the type component of this builder.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### build

    public [AclEntry](AclEntry.md "class in java.nio.file.attribute") build()

    Constructs an [`AclEntry`](AclEntry.md "class in java.nio.file.attribute") from the components of this builder.
    The type and who components are required to have been set in order
    to construct an `AclEntry`.

    Returns:
    :   a new ACL entry

    Throws:
    :   `IllegalStateException` - if the type or who component have not been set
  + ### setType

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setType([AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") type)

    Sets the type component of this builder.

    Parameters:
    :   `type` - the component type

    Returns:
    :   this builder
  + ### setPrincipal

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setPrincipal([UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") who)

    Sets the principal component of this builder.

    Parameters:
    :   `who` - the principal component

    Returns:
    :   this builder
  + ### setPermissions

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setPermissions([Set](../../../util/Set.md "interface in java.util")<[AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")> perms)

    Sets the permissions component of this builder. On return, the
    permissions component of this builder is a copy of the given set.

    Parameters:
    :   `perms` - the permissions component

    Returns:
    :   this builder

    Throws:
    :   `ClassCastException` - if the set contains elements that are not of type `AclEntryPermission`
  + ### setPermissions

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setPermissions([AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")... perms)

    Sets the permissions component of this builder. On return, the
    permissions component of this builder is a copy of the permissions in
    the given array.

    Parameters:
    :   `perms` - the permissions component

    Returns:
    :   this builder
  + ### setFlags

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setFlags([Set](../../../util/Set.md "interface in java.util")<[AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")> flags)

    Sets the flags component of this builder. On return, the flags
    component of this builder is a copy of the given set.

    Parameters:
    :   `flags` - the flags component

    Returns:
    :   this builder

    Throws:
    :   `ClassCastException` - if the set contains elements that are not of type `AclEntryFlag`
  + ### setFlags

    public [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") setFlags([AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")... flags)

    Sets the flags component of this builder. On return, the flags
    component of this builder is a copy of the flags in the given
    array.

    Parameters:
    :   `flags` - the flags component

    Returns:
    :   this builder