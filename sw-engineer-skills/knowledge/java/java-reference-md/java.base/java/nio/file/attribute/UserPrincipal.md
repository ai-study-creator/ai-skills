Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface UserPrincipal

All Superinterfaces:
:   `Principal`

All Known Subinterfaces:
:   `GroupPrincipal`

---

public interface UserPrincipal
extends [Principal](../../../security/Principal.md "interface in java.security")

A `Principal` representing an identity used to determine access rights
to objects in a file system.

On many platforms and file systems an entity requires appropriate access
rights or permissions in order to access objects in a file system. The
access rights are generally performed by checking the identity of the entity.
For example, on implementations that use Access Control Lists (ACLs) to
enforce privilege separation then a file in the file system may have an
associated ACL that determines the access rights of identities specified in
the ACL.

A `UserPrincipal` object is an abstract representation of an
identity. It has a [`name`](../../../security/Principal.md#getName()) that is typically the username or
account name that it represents. User principal objects may be obtained using
a [`UserPrincipalLookupService`](UserPrincipalLookupService.md "class in java.nio.file.attribute"), or returned by [`FileAttributeView`](FileAttributeView.md "interface in java.nio.file.attribute") implementations that provide access to identity related
attributes. For example, the [`AclFileAttributeView`](AclFileAttributeView.md "interface in java.nio.file.attribute") and [`PosixFileAttributeView`](PosixFileAttributeView.md "interface in java.nio.file.attribute") provide access to a file's [`owner`](PosixFileAttributes.md#owner()).

Since:
:   1.7

* ## Method Summary

  ### Methods inherited from interface java.security.[Principal](../../../security/Principal.md "interface in java.security")

  `equals, getName, hashCode, implies, toString`