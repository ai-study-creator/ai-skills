Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface GroupPrincipal

All Superinterfaces:
:   `Principal`, `UserPrincipal`

---

public interface GroupPrincipal
extends [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute")

A `UserPrincipal` representing a *group identity*, used to
determine access rights to objects in a file system. The exact definition of
a group is implementation specific, but typically, it represents an identity
created for administrative purposes so as to determine the access rights for
the members of the group. Whether an entity can be a member of multiple
groups, and whether groups can be nested, are implementation specified and
therefore not specified.

Since:
:   1.7

See Also:
:   * [`UserPrincipalLookupService.lookupPrincipalByGroupName(java.lang.String)`](UserPrincipalLookupService.md#lookupPrincipalByGroupName(java.lang.String))

* ## Method Summary

  ### Methods inherited from interface java.security.[Principal](../../../security/Principal.md "interface in java.security")

  `equals, getName, hashCode, implies, toString`