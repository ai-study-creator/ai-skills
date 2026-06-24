Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanTrustPermission

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

javax.management.MBeanTrustPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public class MBeanTrustPermission
extends [BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

This permission represents "trust" in a signer or codebase.

MBeanTrustPermission contains a target name but no actions list.
A single target name, "register", is defined for this permission.
The target "\*" is also allowed, permitting "register" and any future
targets that may be defined.
Only the null value or the empty string are allowed for the action
to allow the policy object to create the permissions specified in
the policy file.

If a signer, or codesource is granted this permission, then it is
considered a trusted source for MBeans. Only MBeans from trusted
sources may be registered in the MBeanServer.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanTrustPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanTrustPermission(String name)`

  Create a new MBeanTrustPermission with the given name.

  `MBeanTrustPermission(String name,
  String actions)`

  Create a new MBeanTrustPermission with the given name.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanTrustPermission

    public MBeanTrustPermission([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Create a new MBeanTrustPermission with the given name.

    This constructor is equivalent to
    `MBeanTrustPermission(name,null)`.

    Parameters:
    :   `name` - the name of the permission. It must be
        "register" or "\*" for this permission.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is neither
        "register" nor "\*".
  + ### MBeanTrustPermission

    public MBeanTrustPermission([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") actions)

    Create a new MBeanTrustPermission with the given name.

    Parameters:
    :   `name` - the name of the permission. It must be
        "register" or "\*" for this permission.
    :   `actions` - the actions for the permission. It must be
        null or `""`.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is neither
        "register" nor "\*"; or if `actions` is a non-null
        non-empty string.