Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface AclFileAttributeView

All Superinterfaces:
:   `AttributeView`, `FileAttributeView`, `FileOwnerAttributeView`

---

public interface AclFileAttributeView
extends [FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")

A file attribute view that supports reading or updating a file's Access
Control Lists (ACL) or file owner attributes.

ACLs are used to specify access rights to file system objects. An ACL is
an ordered list of [`access-control-entries`](AclEntry.md "class in java.nio.file.attribute"), each specifying a
[`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") and the level of access for that user principal. This
file attribute view defines the [`getAcl`](#getAcl()), and [`setAcl`](#setAcl(java.util.List)) methods to read and write ACLs based on the ACL
model specified in [*RFC 3530:
Network File System (NFS) version 4 Protocol*](http://www.ietf.org/rfc/rfc3530.txt). This file attribute view
is intended for file system implementations that support the NFSv4 ACL model
or have a *well-defined* mapping between the NFSv4 ACL model and the ACL
model used by the file system. The details of such mapping are implementation
dependent and are therefore unspecified.

This class also extends `FileOwnerAttributeView` so as to define
methods to get and set the file owner.

When a file system provides access to a set of [`file-systems`](../FileStore.md "class in java.nio.file") that are not homogeneous then only some of the file systems may
support ACLs. The [`supportsFileAttributeView`](../FileStore.md#supportsFileAttributeView(java.lang.Class)) method can be used to test if a file system
supports ACLs.

## Interoperability

RFC 3530 allows for special user identities to be used on platforms that
support the POSIX defined access permissions. The special user identities
are "`OWNER@`", "`GROUP@`", and "`EVERYONE@`". When both
the `AclFileAttributeView` and the [`PosixFileAttributeView`](PosixFileAttributeView.md "interface in java.nio.file.attribute")
are supported then these special user identities may be included in ACL [`entries`](AclEntry.md "class in java.nio.file.attribute") that are read or written. The file system's [`UserPrincipalLookupService`](UserPrincipalLookupService.md "class in java.nio.file.attribute") may be used to obtain a [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute")
to represent these special identities by invoking the [`lookupPrincipalByName`](UserPrincipalLookupService.md#lookupPrincipalByName(java.lang.String))
method.

**Usage Example:**
Suppose we wish to add an entry to an existing ACL to grant "joe" access:

Copy![Copy snippet](../../../../../copy.svg)

```
    // lookup "joe"
    UserPrincipal joe = file.getFileSystem().getUserPrincipalLookupService()
        .lookupPrincipalByName("joe");

    // get view
    AclFileAttributeView view = Files.getFileAttributeView(file, AclFileAttributeView.class);

    // create ACE to give "joe" read access
    AclEntry entry = AclEntry.newBuilder()
        .setType(AclEntryType.ALLOW)
        .setPrincipal(joe)
        .setPermissions(AclEntryPermission.READ_DATA, AclEntryPermission.READ_ATTRIBUTES)
        .build();

    // read ACL, insert ACE, re-write ACL
    List<AclEntry> acl = view.getAcl();
    acl.add(0, entry);   // insert before any DENY entries
    view.setAcl(acl);
```

## Dynamic Access

Where dynamic access to file attributes is required, the attributes
supported by this attribute view are as follows:
> Supported attributes
>
> | Name | Type |
> | --- | --- |
> | "acl" | [`List`](../../../util/List.md "interface in java.util")<[`AclEntry`](AclEntry.md "class in java.nio.file.attribute")> |
> | "owner" | [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") |

The [`getAttribute`](../Files.md#getAttribute(java.nio.file.Path,java.lang.String,java.nio.file.LinkOption...)) method may be used to read
the ACL or owner attributes as if by invoking the [`getAcl`](#getAcl()) or
[`getOwner`](FileOwnerAttributeView.md#getOwner()) methods.

The [`setAttribute`](../Files.md#setAttribute(java.nio.file.Path,java.lang.String,java.lang.Object,java.nio.file.LinkOption...)) method may be used to
update the ACL or owner attributes as if by invoking the [`setAcl`](#setAcl(java.util.List))
or [`setOwner`](FileOwnerAttributeView.md#setOwner(java.nio.file.attribute.UserPrincipal)) methods.

## Setting the ACL when creating a file

Implementations supporting this attribute view may also support setting
the initial ACL when creating a file or directory. The initial ACL
may be provided to methods such as [`createFile`](../Files.md#createFile(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) or [`createDirectory`](../Files.md#createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) as an [`FileAttribute`](FileAttribute.md "interface in java.nio.file.attribute") with [`name`](FileAttribute.md#name()) `"acl:acl"` and a [`value`](FileAttribute.md#value()) that is the list of `AclEntry` objects.

Where an implementation supports an ACL model that differs from the NFSv4
defined ACL model then setting the initial ACL when creating the file must
translate the ACL to the model supported by the file system. Methods that
create a file should reject (by throwing [`IOException`](../../../io/IOException.md "class in java.io"))
any attempt to create a file that would be less secure as a result of the
translation.

Since:
:   1.7

External Specifications
:   * [RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<AclEntry>`

  `getAcl()`

  Reads the access control list.

  `String`

  `name()`

  Returns the name of the attribute view.

  `void`

  `setAcl(List<AclEntry> acl)`

  Updates (replace) the access control list.

  ### Methods inherited from interface java.nio.file.attribute.[FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")

  `getOwner, setOwner`

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view. Attribute views of this type
    have the name `"acl"`.

    Specified by:
    :   `name` in interface `AttributeView`

    Specified by:
    :   `name` in interface `FileOwnerAttributeView`

    Returns:
    :   the name of the attribute view
  + ### getAcl

    [List](../../../util/List.md "interface in java.util")<[AclEntry](AclEntry.md "class in java.nio.file.attribute")> getAcl()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Reads the access control list.

    When the file system uses an ACL model that differs from the NFSv4
    defined ACL model, then this method returns an ACL that is the translation
    of the ACL to the NFSv4 ACL model.

    The returned list is modifiable so as to facilitate changes to the
    existing ACL. The [`setAcl`](#setAcl(java.util.List)) method is used to update
    the file's ACL attribute.

    Returns:
    :   an ordered list of [`entries`](AclEntry.md "class in java.nio.file.attribute") representing the
        ACL

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, and it denies [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")`
        or its [`checkRead`](../../../lang/SecurityManager.md#checkRead(java.lang.String)) method
        denies read access to the file.
  + ### setAcl

    void setAcl([List](../../../util/List.md "interface in java.util")<[AclEntry](AclEntry.md "class in java.nio.file.attribute")> acl)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates (replace) the access control list.

    Where the file system supports Access Control Lists, and it uses an
    ACL model that differs from the NFSv4 defined ACL model, then this method
    must translate the ACL to the model supported by the file system. This
    method should reject (by throwing [`IOException`](../../../io/IOException.md "class in java.io")) any
    attempt to write an ACL that would appear to make the file more secure
    than would be the case if the ACL were updated. Where an implementation
    does not support a mapping of [`AclEntryType.AUDIT`](AclEntryType.md#AUDIT) or [`AclEntryType.ALARM`](AclEntryType.md#ALARM) entries, then this method ignores these entries when
    writing the ACL.

    If an ACL entry contains a [`user-principal`](AclEntry.md#principal())
    that is not associated with the same provider as this attribute view then
    [`ProviderMismatchException`](../ProviderMismatchException.md "class in java.nio.file") is thrown. Additional validation, if
    any, is implementation dependent.

    If the file system supports other security related file attributes
    (such as a file [`access-permissions`](PosixFileAttributes.md#permissions()) for example), the updating the access control list
    may also cause these security related attributes to be updated.

    Parameters:
    :   `acl` - the new access control list

    Throws:
    :   `IOException` - if an I/O error occurs or the ACL is invalid
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, it denies [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("accessUserInformation")`
        or its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String))
        method denies write access to the file.