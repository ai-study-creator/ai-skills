Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class UnresolvedPermission

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.Permission](Permission.md "class in java.security")

java.security.UnresolvedPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class UnresolvedPermission
extends [Permission](Permission.md "class in java.security")
implements [Serializable](../io/Serializable.md "interface in java.io")

The `UnresolvedPermission` class is used to hold Permissions that
were "unresolved" when the Policy was initialized.
An unresolved permission is one whose actual Permission class
does not yet exist at the time the Policy is initialized (see below).

The policy for a Java runtime (specifying
which permissions are available for code from various principals)
is represented by a Policy object.
Whenever a Policy is initialized or refreshed, Permission objects of
appropriate classes are created for all permissions
allowed by the Policy.

Many permission class types
referenced by the policy configuration are ones that exist
locally (i.e., ones that can be found on CLASSPATH).
Objects for such permissions can be instantiated during
Policy initialization. For example, it is always possible
to instantiate a java.io.FilePermission, since the
FilePermission class is found on the CLASSPATH.

Other permission classes may not yet exist during Policy
initialization. For example, a referenced permission class may
be in a JAR file that will later be loaded.
For each such class, an `UnresolvedPermission` is instantiated.
Thus, an `UnresolvedPermission` is essentially a "placeholder"
containing information about the permission.

Later, when code calls [`AccessController.checkPermission(java.security.Permission)`](AccessController.md#checkPermission(java.security.Permission))
on a permission of a type that was previously unresolved,
but whose class has since been loaded, previously-unresolved
permissions of that type are "resolved". That is,
for each such `UnresolvedPermission`, a new object of
the appropriate class type is instantiated, based on the
information in the `UnresolvedPermission`.

To instantiate the new class, `UnresolvedPermission` assumes
the class provides a zero, one, and/or two-argument constructor.
The zero-argument constructor would be used to instantiate
a permission without a name and without actions.
A one-arg constructor is assumed to take a `String`
name as input, and a two-arg constructor is assumed to take a
`String` name and `String` actions
as input. `UnresolvedPermission` may invoke a
constructor with a `null` name and/or actions.
If an appropriate permission constructor is not available,
the `UnresolvedPermission` is ignored and the relevant permission
will not be granted to executing code.

The newly created permission object replaces the
`UnresolvedPermission`, which is removed.

Note that the `getName` method for an
`UnresolvedPermission` returns the
`type` (class name) for the underlying permission
that has not been resolved.

Since:
:   1.2

See Also:
:   * [`Permission`](Permission.md "class in java.security")
    * [`Permissions`](Permissions.md "class in java.security")
    * [`PermissionCollection`](PermissionCollection.md "class in java.security")
    * [`Policy`](Policy.md "class in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.UnresolvedPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnresolvedPermission(String type,
  String name,
  String actions,
  Certificate[] certs)`

  Creates a new `UnresolvedPermission` containing the permission
  information needed later to actually create a Permission of the
  specified class, when the permission is resolved.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks two `UnresolvedPermission` objects for equality.

  `String`

  `getActions()`

  Returns the canonical string representation of the actions,
  which currently is the empty string "", since there are no actions for
  an `UnresolvedPermission`.

  `String`

  `getUnresolvedActions()`

  Get the actions for the underlying permission that
  has not been resolved.

  `Certificate[]`

  `getUnresolvedCerts()`

  Get the signer certificates (without any supporting chain)
  for the underlying permission that has not been resolved.

  `String`

  `getUnresolvedName()`

  Get the target name of the underlying permission that
  has not been resolved.

  `String`

  `getUnresolvedType()`

  Get the type (class name) of the underlying permission that
  has not been resolved.

  `int`

  `hashCode()`

  Returns the hash code value for this object.

  `boolean`

  `implies(Permission p)`

  This method always returns `false` for unresolved permissions.

  `PermissionCollection`

  `newPermissionCollection()`

  Returns a new PermissionCollection object for storing
  `UnresolvedPermission` objects.

  `String`

  `toString()`

  Returns a string describing this `UnresolvedPermission`.

  ### Methods inherited from class java.security.[Permission](Permission.md "class in java.security")

  `checkGuard, getName`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnresolvedPermission

    public UnresolvedPermission([String](../lang/String.md "class in java.lang") type,
    [String](../lang/String.md "class in java.lang") name,
    [String](../lang/String.md "class in java.lang") actions,
    [Certificate](cert/Certificate.md "class in java.security.cert")[] certs)

    Creates a new `UnresolvedPermission` containing the permission
    information needed later to actually create a Permission of the
    specified class, when the permission is resolved.

    Parameters:
    :   `type` - the class name of the Permission class that will be
        created when this unresolved permission is resolved.
    :   `name` - the name of the permission.
    :   `actions` - the actions of the permission.
    :   `certs` - the certificates the permission's class was signed with.
        This is a list of certificate chains, where each chain is composed of a
        signer certificate and optionally its supporting certificate chain.
        Each chain is ordered bottom-to-top (i.e., with the signer certificate
        first and the (root) certificate authority last). The signer
        certificates are copied from the array. Subsequent changes to
        the array will not affect this UnresolvedPermission.
* ## Method Details

  + ### implies

    public boolean implies([Permission](Permission.md "class in java.security") p)

    This method always returns `false` for unresolved permissions.
    That is, an `UnresolvedPermission` is never considered to
    imply another permission.

    Specified by:
    :   `implies` in class `Permission`

    Parameters:
    :   `p` - the permission to check against.

    Returns:
    :   `false`.
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Checks two `UnresolvedPermission` objects for equality.
    Checks that `obj` is an `UnresolvedPermission`, and has
    the same type (class) name, permission name, actions, and
    certificates as this object.

    To determine certificate equality, this method only compares
    actual signer certificates. Supporting certificate chains
    are not taken into consideration by this method.

    Specified by:
    :   `equals` in class `Permission`

    Parameters:
    :   `obj` - the object we are testing for equality with this object.

    Returns:
    :   true if `obj` is an `UnresolvedPermission`,
        and has the same type (class) name, permission name, actions, and
        certificates as this object.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this object.

    Specified by:
    :   `hashCode` in class `Permission`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### getActions

    public [String](../lang/String.md "class in java.lang") getActions()

    Returns the canonical string representation of the actions,
    which currently is the empty string "", since there are no actions for
    an `UnresolvedPermission`. That is, the actions for the
    permission that will be created when this `UnresolvedPermission`
    is resolved may be non-null, but an `UnresolvedPermission`
    itself is never considered to have any actions.

    Specified by:
    :   `getActions` in class `Permission`

    Returns:
    :   the empty string "".
  + ### getUnresolvedType

    public [String](../lang/String.md "class in java.lang") getUnresolvedType()

    Get the type (class name) of the underlying permission that
    has not been resolved.

    Returns:
    :   the type (class name) of the underlying permission that
        has not been resolved

    Since:
    :   1.5
  + ### getUnresolvedName

    public [String](../lang/String.md "class in java.lang") getUnresolvedName()

    Get the target name of the underlying permission that
    has not been resolved.

    Returns:
    :   the target name of the underlying permission that
        has not been resolved, or `null`,
        if there is no target name

    Since:
    :   1.5
  + ### getUnresolvedActions

    public [String](../lang/String.md "class in java.lang") getUnresolvedActions()

    Get the actions for the underlying permission that
    has not been resolved.

    Returns:
    :   the actions for the underlying permission that
        has not been resolved, or `null`
        if there are no actions

    Since:
    :   1.5
  + ### getUnresolvedCerts

    public [Certificate](cert/Certificate.md "class in java.security.cert")[] getUnresolvedCerts()

    Get the signer certificates (without any supporting chain)
    for the underlying permission that has not been resolved.

    Returns:
    :   the signer certificates for the underlying permission that
        has not been resolved, or `null`, if there are no signer
        certificates.
        Returns a new array each time this method is called.

    Since:
    :   1.5
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string describing this `UnresolvedPermission`.
    The convention is to specify the class name, the permission name,
    and the actions, in the following format:
    '(unresolved "ClassName" "name" "actions")'.

    Overrides:
    :   `toString` in class `Permission`

    Returns:
    :   information about this `UnresolvedPermission`.
  + ### newPermissionCollection

    public [PermissionCollection](PermissionCollection.md "class in java.security") newPermissionCollection()

    Returns a new PermissionCollection object for storing
    `UnresolvedPermission` objects.

    Overrides:
    :   `newPermissionCollection` in class `Permission`

    Returns:
    :   a new PermissionCollection object suitable for
        storing `UnresolvedPermissions`.