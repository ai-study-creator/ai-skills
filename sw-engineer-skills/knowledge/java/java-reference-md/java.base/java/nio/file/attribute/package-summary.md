Module [java.base](../../../../module-summary.md)

# Package java.nio.file.attribute

---

package java.nio.file.attribute

Interfaces and classes providing access to file and file system attributes.

Attribute views

| Attribute views | Description |
| --- | --- |
| *[`AttributeView`](AttributeView.md "interface in java.nio.file.attribute")* | Can read or update non-opaque values associated with objects in a file system |
| *[`FileAttributeView`](FileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update file attributes |
| *[`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update a basic set of file attributes |
| *[`PosixFileAttributeView`](PosixFileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update POSIX defined file attributes |
| *[`DosFileAttributeView`](DosFileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update FAT file attributes |
| *[`FileOwnerAttributeView`](FileOwnerAttributeView.md "interface in java.nio.file.attribute")* | Can read or update the owner of a file |
| *[`AclFileAttributeView`](AclFileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update Access Control Lists |
| *[`UserDefinedFileAttributeView`](UserDefinedFileAttributeView.md "interface in java.nio.file.attribute")* | Can read or update user-defined file attributes |
| *[`FileStoreAttributeView`](FileStoreAttributeView.md "interface in java.nio.file.attribute")* | Can read or update file system attributes |

An attribute view provides a read-only or updatable view of the non-opaque
values, or *metadata*, associated with objects in a file system.
The [`FileAttributeView`](FileAttributeView.md "interface in java.nio.file.attribute") interface is
extended by several other interfaces that provide views to specific sets of file
attributes. `FileAttributeViews` are selected by invoking the [`Files.getFileAttributeView(java.nio.file.Path, java.lang.Class<V>, java.nio.file.LinkOption...)`](../Files.md#getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption...)) method with a
*type-token* to identify the required view. Views can also be identified
by name. The [`FileStoreAttributeView`](FileStoreAttributeView.md "interface in java.nio.file.attribute") interface
provides access to file store attributes. A `FileStoreAttributeView` of
a given type is obtained by invoking the [`FileStore.getFileStoreAttributeView(java.lang.Class<V>)`](../FileStore.md#getFileStoreAttributeView(java.lang.Class)) method.

The [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute")
class defines methods to read and update a *basic* set of file
attributes that are common to many file systems.

The [`PosixFileAttributeView`](PosixFileAttributeView.md "interface in java.nio.file.attribute")
interface extends `BasicFileAttributeView` by defining methods
to access the file attributes commonly used by file systems and operating systems
that implement the Portable Operating System Interface (POSIX) family of
standards.

The [`DosFileAttributeView`](DosFileAttributeView.md "interface in java.nio.file.attribute")
class extends `BasicFileAttributeView` by defining methods to
access the legacy "DOS" file attributes supported on file systems such as File
Allocation Table (FAT), commonly used in consumer devices.

The [`AclFileAttributeView`](AclFileAttributeView.md "interface in java.nio.file.attribute")
class defines methods to read and write the Access Control List (ACL)
file attribute. The ACL model used by this file attribute view is based
on the model defined by [*RFC 3530: Network File System (NFS) version 4 Protocol*](http://www.ietf.org/rfc/rfc3530.txt).

In addition to attribute views, this package also defines classes and
interfaces that are used when accessing attributes:

* The [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") and
  [`GroupPrincipal`](GroupPrincipal.md "interface in java.nio.file.attribute") interfaces represent an
  identity or group identity.
* The [`UserPrincipalLookupService`](UserPrincipalLookupService.md "class in java.nio.file.attribute")
  interface defines methods to lookup user or group principals.
* The [`FileAttribute`](FileAttribute.md "interface in java.nio.file.attribute") interface
  represents the value of an attribute for cases where the attribute value is
  required to be set atomically when creating an object in the file system.

Unless otherwise noted, passing a `null` argument to a constructor
or method in any class or interface in this package will cause a [`NullPointerException`](../../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.7

External Specifications
:   * [RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)

* Related Packages

  Package

  Description

  [java.nio.file](../package-summary.md)

  Defines interfaces and classes for the Java virtual machine to access files,
  file attributes, and file systems.

  [java.nio.file.spi](../spi/package-summary.md)

  Service-provider classes for the [`java.nio.file`](../package-summary.md) package.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [AclEntry](AclEntry.md "class in java.nio.file.attribute")

  An entry in an access control list (ACL).

  [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute")

  A builder of [`AclEntry`](AclEntry.md "class in java.nio.file.attribute") objects.

  [AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")

  Defines the flags for used by the flags component of an ACL [`entry`](AclEntry.md "class in java.nio.file.attribute").

  [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")

  Defines the permissions for use with the permissions component of an ACL
  [`entry`](AclEntry.md "class in java.nio.file.attribute").

  [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute")

  A typesafe enumeration of the access control entry types.

  [AclFileAttributeView](AclFileAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that supports reading or updating a file's Access
  Control Lists (ACL) or file owner attributes.

  [AttributeView](AttributeView.md "interface in java.nio.file.attribute")

  An object that provides a read-only or updatable *view* of non-opaque
  values associated with an object in a filesystem.

  [BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")

  Basic attributes associated with a file in a file system.

  [BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that provides a view of a *basic set* of file
  attributes common to many file systems.

  [DosFileAttributes](DosFileAttributes.md "interface in java.nio.file.attribute")

  File attributes associated with a file in a file system that supports
  legacy "DOS" attributes.

  [DosFileAttributeView](DosFileAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that provides a view of the legacy "DOS" file attributes.

  [FileAttribute](FileAttribute.md "interface in java.nio.file.attribute")<T>

  An object that encapsulates the value of a file attribute that can be set
  atomically when creating a new file or directory by invoking the [`createFile`](../Files.md#createFile(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) or [`createDirectory`](../Files.md#createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) methods.

  [FileAttributeView](FileAttributeView.md "interface in java.nio.file.attribute")

  An attribute view that is a read-only or updatable view of non-opaque
  values associated with a file in a filesystem.

  [FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that supports reading or updating the owner of a file.

  [FileStoreAttributeView](FileStoreAttributeView.md "interface in java.nio.file.attribute")

  An attribute view that is a read-only or updatable view of the attributes of
  a [`FileStore`](../FileStore.md "class in java.nio.file").

  [FileTime](FileTime.md "class in java.nio.file.attribute")

  Represents the value of a file's time stamp attribute.

  [GroupPrincipal](GroupPrincipal.md "interface in java.nio.file.attribute")

  A `UserPrincipal` representing a *group identity*, used to
  determine access rights to objects in a file system.

  [PosixFileAttributes](PosixFileAttributes.md "interface in java.nio.file.attribute")

  File attributes associated with files on file systems used by operating systems
  that implement the Portable Operating System Interface (POSIX) family of
  standards.

  [PosixFileAttributeView](PosixFileAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that provides a view of the file attributes commonly
  associated with files on file systems used by operating systems that implement
  the Portable Operating System Interface (POSIX) family of standards.

  [PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")

  Defines the bits for use with the [`permissions`](PosixFileAttributes.md#permissions()) attribute.

  [PosixFilePermissions](PosixFilePermissions.md "class in java.nio.file.attribute")

  This class consists exclusively of static methods that operate on sets of
  [`PosixFilePermission`](PosixFilePermission.md "enum class in java.nio.file.attribute") objects.

  [UserDefinedFileAttributeView](UserDefinedFileAttributeView.md "interface in java.nio.file.attribute")

  A file attribute view that provides a view of a file's user-defined
  attributes, sometimes known as *extended attributes*.

  [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute")

  A `Principal` representing an identity used to determine access rights
  to objects in a file system.

  [UserPrincipalLookupService](UserPrincipalLookupService.md "class in java.nio.file.attribute")

  An object to lookup user and group principals by name.

  [UserPrincipalNotFoundException](UserPrincipalNotFoundException.md "class in java.nio.file.attribute")

  Checked exception thrown when a lookup of [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") fails because
  the principal does not exist.