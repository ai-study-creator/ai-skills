Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface PosixFileAttributeView

All Superinterfaces:
:   `AttributeView`, `BasicFileAttributeView`, `FileAttributeView`, `FileOwnerAttributeView`

---

public interface PosixFileAttributeView
extends [BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute"), [FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")

A file attribute view that provides a view of the file attributes commonly
associated with files on file systems used by operating systems that implement
the Portable Operating System Interface (POSIX) family of standards.

Operating systems that implement the [POSIX](http://www.opengroup.org) family of standards commonly use file systems that have a
file *owner*, *group-owner*, and related *access
permissions*. This file attribute view provides read and write access
to these attributes.

The [`readAttributes`](#readAttributes()) method is used to read the
file's attributes. The file [`owner`](PosixFileAttributes.md#owner()) is
represented by a [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") that is the identity of the file owner
for the purposes of access control. The [`group-owner`](PosixFileAttributes.md#group()), represented by a [`GroupPrincipal`](GroupPrincipal.md "interface in java.nio.file.attribute"), is the identity of the
group owner, where a group is an identity created for administrative purposes
so as to determine the access rights for the members of the group.

The [`permissions`](PosixFileAttributes.md#permissions()) attribute is a
set of access permissions. This file attribute view provides access to the nine
permission bits defined by the [`PosixFilePermission`](PosixFilePermission.md "enum class in java.nio.file.attribute") class.
These nine permission bits determine the *read*, *write*, and
*execute* access for the file owner, group, and others (others
meaning identities other than the owner and members of the group). Some
operating systems and file systems may provide additional permission bits
but access to these other bits is not defined by this class in this release.

**Usage Example:**
Suppose we need to print out the owner and access permissions of a file:

Copy![Copy snippet](../../../../../copy.svg)

```
    Path file = ...
    PosixFileAttributes attrs = Files.getFileAttributeView(file, PosixFileAttributeView.class)
        .readAttributes();
    System.out.format("%s %s%n",
        attrs.owner().getName(),
        PosixFilePermissions.toString(attrs.permissions()));
```

## Dynamic Access

Where dynamic access to file attributes is required, the attributes
supported by this attribute view are as defined by [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute") and [`FileOwnerAttributeView`](FileOwnerAttributeView.md "interface in java.nio.file.attribute"), and in addition,
the following attributes are supported:
> Supported attributes
>
> | Name | Type |
> | --- | --- |
> | "permissions" | [`Set`](../../../util/Set.md "interface in java.util")<[`PosixFilePermission`](PosixFilePermission.md "enum class in java.nio.file.attribute")> |
> | "group" | [`GroupPrincipal`](GroupPrincipal.md "interface in java.nio.file.attribute") |

The [`getAttribute`](../Files.md#getAttribute(java.nio.file.Path,java.lang.String,java.nio.file.LinkOption...)) method may be used to read
any of these attributes, or any of the attributes defined by [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute") as if by invoking the [`readAttributes()`](#readAttributes()) method.

The [`setAttribute`](../Files.md#setAttribute(java.nio.file.Path,java.lang.String,java.lang.Object,java.nio.file.LinkOption...)) method may be used to update
the file's last modified time, last access time or create time attributes as
defined by [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute"). It may also be used to update
the permissions, owner, or group-owner as if by invoking the [`setPermissions`](#setPermissions(java.util.Set)), [`setOwner`](FileOwnerAttributeView.md#setOwner(java.nio.file.attribute.UserPrincipal)), and [`setGroup`](#setGroup(java.nio.file.attribute.GroupPrincipal)) methods respectively.

## Setting Initial Permissions

Implementations supporting this attribute view may also support setting
the initial permissions when creating a file or directory. The
initial permissions are provided to the [`createFile`](../Files.md#createFile(java.nio.file.Path,java.nio.file.attribute.FileAttribute...))
or [`createDirectory`](../Files.md#createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) methods as a [`FileAttribute`](FileAttribute.md "interface in java.nio.file.attribute") with [`name`](FileAttribute.md#name()) `"posix:permissions"`
and a [`value`](FileAttribute.md#value()) that is the set of permissions. The
following example uses the [`asFileAttribute`](PosixFilePermissions.md#asFileAttribute(java.util.Set)) method to construct a `FileAttribute` when creating a
file:

Copy![Copy snippet](../../../../../copy.svg)

```
    Path path = ...
    Set<PosixFilePermission> perms =
        EnumSet.of(OWNER_READ, OWNER_WRITE, OWNER_EXECUTE, GROUP_READ);
    Files.createFile(path, PosixFilePermissions.asFileAttribute(perms));
```

When the access permissions are set at file creation time then the actual
value of the permissions may differ from the value of the attribute object.
The reasons for this are implementation specific. On UNIX systems, for
example, a process has a *umask* that impacts the permission bits
of newly created files. Where an implementation supports the setting of
the access permissions, and the underlying file system supports access
permissions, then it is required that the value of the actual access
permissions will be equal or less than the value of the attribute
provided to the [`createFile`](../Files.md#createFile(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) or [`createDirectory`](../Files.md#createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) methods. In other words, the file may
be more secure than requested.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the attribute view.

  `PosixFileAttributes`

  `readAttributes()`

  Reads the basic file attributes as a bulk operation.

  `void`

  `setGroup(GroupPrincipal group)`

  Updates the file group-owner.

  `void`

  `setPermissions(Set<PosixFilePermission> perms)`

  Updates the file permissions.

  ### Methods inherited from interface java.nio.file.attribute.[BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute")

  `setTimes`

  ### Methods inherited from interface java.nio.file.attribute.[FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")

  `getOwner, setOwner`

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view. Attribute views of this type
    have the name `"posix"`.

    Specified by:
    :   `name` in interface `AttributeView`

    Specified by:
    :   `name` in interface `BasicFileAttributeView`

    Specified by:
    :   `name` in interface `FileOwnerAttributeView`

    Returns:
    :   the name of the attribute view
  + ### readAttributes

    [PosixFileAttributes](PosixFileAttributes.md "interface in java.nio.file.attribute") readAttributes()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Description copied from interface: `BasicFileAttributeView`

    Reads the basic file attributes as a bulk operation.

    It is implementation specific if all file attributes are read as an
    atomic operation with respect to other file system operations.

    Specified by:
    :   `readAttributes` in interface `BasicFileAttributeView`

    Returns:
    :   the file attributes

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")`
        or its [`checkRead`](../../../lang/SecurityManager.md#checkRead(java.lang.String)) method
        denies read access to the file.
  + ### setPermissions

    void setPermissions([Set](../../../util/Set.md "interface in java.util")<[PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")> perms)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the file permissions.

    Parameters:
    :   `perms` - the new set of permissions

    Throws:
    :   `ClassCastException` - if the sets contains elements that are not of type `PosixFilePermission`
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")`
        or its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String))
        method denies write access to the file.
  + ### setGroup

    void setGroup([GroupPrincipal](GroupPrincipal.md "interface in java.nio.file.attribute") group)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the file group-owner.

    Parameters:
    :   `group` - the new file group-owner

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, and a security manager is
        installed, it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")`
        or its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String))
        method denies write access to the file.