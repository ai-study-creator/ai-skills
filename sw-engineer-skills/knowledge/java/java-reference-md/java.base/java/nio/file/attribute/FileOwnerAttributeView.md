Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface FileOwnerAttributeView

All Superinterfaces:
:   `AttributeView`, `FileAttributeView`

All Known Subinterfaces:
:   `AclFileAttributeView`, `PosixFileAttributeView`

---

public interface FileOwnerAttributeView
extends [FileAttributeView](FileAttributeView.md "interface in java.nio.file.attribute")

A file attribute view that supports reading or updating the owner of a file.
This file attribute view is intended for file system implementations that
support a file attribute that represents an identity that is the owner of
the file. Often the owner of a file is the identity of the entity that
created the file.

The [`getOwner`](#getOwner()) or [`setOwner`](#setOwner(java.nio.file.attribute.UserPrincipal)) methods may
be used to read or update the owner of the file.

The [`getAttribute`](../Files.md#getAttribute(java.nio.file.Path,java.lang.String,java.nio.file.LinkOption...)) and
[`setAttribute`](../Files.md#setAttribute(java.nio.file.Path,java.lang.String,java.lang.Object,java.nio.file.LinkOption...)) methods may also be
used to read or update the owner. In that case, the owner attribute is
identified by the name `"owner"`, and the value of the attribute is
a [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute").

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `UserPrincipal`

  `getOwner()`

  Read the file owner.

  `String`

  `name()`

  Returns the name of the attribute view.

  `void`

  `setOwner(UserPrincipal owner)`

  Updates the file owner.

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view. Attribute views of this type
    have the name `"owner"`.

    Specified by:
    :   `name` in interface `AttributeView`

    Returns:
    :   the name of the attribute view
  + ### getOwner

    [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") getOwner()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Read the file owner.

    It is implementation specific if the file owner can be a [`group`](GroupPrincipal.md "interface in java.nio.file.attribute").

    Returns:
    :   the file owner

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, and it denies [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")` or its
        [`checkRead`](../../../lang/SecurityManager.md#checkRead(java.lang.String)) method
        denies read access to the file.
  + ### setOwner

    void setOwner([UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") owner)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the file owner.

    It is implementation specific if the file owner can be a [`group`](GroupPrincipal.md "interface in java.nio.file.attribute"). To ensure consistent and correct behavior
    across platforms it is recommended that this method should only be used
    to set the file owner to a user principal that is not a group.

    Parameters:
    :   `owner` - the new file owner

    Throws:
    :   `IOException` - if an I/O error occurs, or the `owner` parameter is a
        group and this implementation does not support setting the owner
        to a group
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, and it denies [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")` or its
        [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String)) method
        denies write access to the file.