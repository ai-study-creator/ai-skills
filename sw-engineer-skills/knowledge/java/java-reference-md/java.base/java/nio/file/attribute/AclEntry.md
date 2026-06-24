Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Class AclEntry

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.file.attribute.AclEntry

---

public final class AclEntry
extends [Object](../../../lang/Object.md "class in java.lang")

An entry in an access control list (ACL).

The ACL entry represented by this class is based on the ACL model
specified in [*RFC 3530:
Network File System (NFS) version 4 Protocol*](http://www.ietf.org/rfc/rfc3530.txt). Each entry has four
components as follows:

1. The [`type`](#type()) component determines if the entry
   grants or denies access.
2. The [`principal`](#principal()) component, sometimes called the
   "who" component, is a [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") corresponding to the identity
   that the entry grants or denies access
3. The [`permissions`](#permissions()) component is a set of
   [`permissions`](AclEntryPermission.md "enum class in java.nio.file.attribute")
4. The [`flags`](#flags()) component is a set of [`flags`](AclEntryFlag.md "enum class in java.nio.file.attribute") to indicate how entries are inherited and propagated

ACL entries are created using an associated [`AclEntry.Builder`](AclEntry.Builder.md "class in java.nio.file.attribute") object by
invoking its [`build`](AclEntry.Builder.md#build()) method.

ACL entries are immutable and are safe for use by multiple concurrent
threads.

Since:
:   1.7

External Specifications
:   * [RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `AclEntry.Builder`

  A builder of [`AclEntry`](AclEntry.md "class in java.nio.file.attribute") objects.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object ob)`

  Compares the specified object with this ACL entry for equality.

  `Set<AclEntryFlag>`

  `flags()`

  Returns a copy of the flags component.

  `int`

  `hashCode()`

  Returns the hash-code value for this ACL entry.

  `static AclEntry.Builder`

  `newBuilder()`

  Constructs a new builder.

  `static AclEntry.Builder`

  `newBuilder(AclEntry entry)`

  Constructs a new builder with the components of an existing ACL entry.

  `Set<AclEntryPermission>`

  `permissions()`

  Returns a copy of the permissions component.

  `UserPrincipal`

  `principal()`

  Returns the principal component.

  `String`

  `toString()`

  Returns the string representation of this ACL entry.

  `AclEntryType`

  `type()`

  Returns the ACL entry type.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### newBuilder

    public static [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") newBuilder()

    Constructs a new builder. The initial value of the type and who
    components is `null`. The initial value of the permissions and
    flags components is the empty set.

    Returns:
    :   a new builder
  + ### newBuilder

    public static [AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute") newBuilder([AclEntry](AclEntry.md "class in java.nio.file.attribute") entry)

    Constructs a new builder with the components of an existing ACL entry.

    Parameters:
    :   `entry` - an ACL entry

    Returns:
    :   a new builder
  + ### type

    public [AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute") type()

    Returns the ACL entry type.

    Returns:
    :   the ACL entry type
  + ### principal

    public [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") principal()

    Returns the principal component.

    Returns:
    :   the principal component
  + ### permissions

    public [Set](../../../util/Set.md "interface in java.util")<[AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")> permissions()

    Returns a copy of the permissions component.

    The returned set is a modifiable copy of the permissions.

    Returns:
    :   the permissions component
  + ### flags

    public [Set](../../../util/Set.md "interface in java.util")<[AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")> flags()

    Returns a copy of the flags component.

    The returned set is a modifiable copy of the flags.

    Returns:
    :   the flags component
  + ### equals

    public boolean equals([Object](../../../lang/Object.md "class in java.lang") ob)

    Compares the specified object with this ACL entry for equality.

    If the given object is not an `AclEntry` then this method
    immediately returns `false`.

    For two ACL entries to be considered equals requires that they are
    both the same type, their who components are equal, their permissions
    components are equal, and their flags components are equal.

    This method satisfies the general contract of the [`Object.equals`](../../../lang/Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `ob` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is an AclEntry that
        is identical to this AclEntry

    See Also:
    :   - [`Object.hashCode()`](../../../lang/Object.md#hashCode())
        - [`HashMap`](../../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash-code value for this ACL entry.

    This method satisfies the general contract of the [`Object.hashCode()`](../../../lang/Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../lang/String.md "class in java.lang") toString()

    Returns the string representation of this ACL entry.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this entry