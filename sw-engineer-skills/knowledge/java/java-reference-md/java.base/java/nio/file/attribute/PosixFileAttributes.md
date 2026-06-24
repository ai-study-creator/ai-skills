Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface PosixFileAttributes

All Superinterfaces:
:   `BasicFileAttributes`

---

public interface PosixFileAttributes
extends [BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")

File attributes associated with files on file systems used by operating systems
that implement the Portable Operating System Interface (POSIX) family of
standards.

The POSIX attributes of a file are retrieved using a [`PosixFileAttributeView`](PosixFileAttributeView.md "interface in java.nio.file.attribute") by invoking its [`readAttributes`](PosixFileAttributeView.md#readAttributes()) method.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `GroupPrincipal`

  `group()`

  Returns the group owner of the file.

  `UserPrincipal`

  `owner()`

  Returns the owner of the file.

  `Set<PosixFilePermission>`

  `permissions()`

  Returns the permissions of the file.

  ### Methods inherited from interface java.nio.file.attribute.[BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")

  `creationTime, fileKey, isDirectory, isOther, isRegularFile, isSymbolicLink, lastAccessTime, lastModifiedTime, size`

* ## Method Details

  + ### owner

    [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") owner()

    Returns the owner of the file.

    Returns:
    :   the file owner

    See Also:
    :   - [`FileOwnerAttributeView.setOwner(java.nio.file.attribute.UserPrincipal)`](FileOwnerAttributeView.md#setOwner(java.nio.file.attribute.UserPrincipal))
  + ### group

    [GroupPrincipal](GroupPrincipal.md "interface in java.nio.file.attribute") group()

    Returns the group owner of the file.

    Returns:
    :   the file group owner

    See Also:
    :   - [`PosixFileAttributeView.setGroup(java.nio.file.attribute.GroupPrincipal)`](PosixFileAttributeView.md#setGroup(java.nio.file.attribute.GroupPrincipal))
  + ### permissions

    [Set](../../../util/Set.md "interface in java.util")<[PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")> permissions()

    Returns the permissions of the file. The file permissions are returned
    as a set of [`PosixFilePermission`](PosixFilePermission.md "enum class in java.nio.file.attribute") elements. The returned set is a
    copy of the file permissions and is modifiable. This allows the result
    to be modified and passed to the [`setPermissions`](PosixFileAttributeView.md#setPermissions(java.util.Set)) method to update the file's permissions.

    Returns:
    :   the file permissions

    See Also:
    :   - [`PosixFileAttributeView.setPermissions(java.util.Set<java.nio.file.attribute.PosixFilePermission>)`](PosixFileAttributeView.md#setPermissions(java.util.Set))