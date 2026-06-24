Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Class ManagementPermission

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

java.lang.management.ManagementPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class ManagementPermission
extends [BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

The permission which the SecurityManager will check when code
that is running with a SecurityManager calls methods defined
in the management interface for the Java platform.

The following table
provides a summary description of what the permission allows,
and discusses the risks of granting code the permission.

Table shows permission target name, what the permission allows, and associated risks

| Permission Target Name | What the Permission Allows | Risks of Allowing this Permission |
| --- | --- | --- |
| control | Ability to control the runtime characteristics of the Java virtual machine, for example, enabling and disabling the verbose output for the class loading or memory system, setting the threshold of a memory pool, and enabling and disabling the thread contention monitoring support. Some actions controlled by this permission can disclose information about the running application, like the -verbose:class flag. | This allows an attacker to control the runtime characteristics of the Java virtual machine and cause the system to misbehave. An attacker can also access some information related to the running application. |
| monitor | Ability to retrieve runtime information about the Java virtual machine such as thread stack trace, a list of all loaded class names, and input arguments to the Java virtual machine. | This allows malicious code to monitor runtime information and uncover vulnerabilities. |

Programmers do not normally create ManagementPermission objects directly.
Instead they are created by the security policy code based on reading
the security policy file.

Since:
:   1.5

See Also:
:   * [`BasicPermission`](../../../../java.base/java/security/BasicPermission.md "class in java.security")
    * [`Permission`](../../../../java.base/java/security/Permission.md "class in java.security")
    * [`Permissions`](../../../../java.base/java/security/Permissions.md "class in java.security")
    * [`PermissionCollection`](../../../../java.base/java/security/PermissionCollection.md "class in java.security")
    * [`SecurityManager`](../../../../java.base/java/lang/SecurityManager.md "class in java.lang")
    * [Serialized Form](../../../../serialized-form.md#java.lang.management.ManagementPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ManagementPermission(String name)`

  Constructs a ManagementPermission with the specified name.

  `ManagementPermission(String name,
  String actions)`

  Constructs a new ManagementPermission object.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ManagementPermission

    public ManagementPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a ManagementPermission with the specified name.

    Parameters:
    :   `name` - Permission name. Must be either "monitor" or "control".

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty or invalid.
  + ### ManagementPermission

    public ManagementPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") actions)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Constructs a new ManagementPermission object.

    Parameters:
    :   `name` - Permission name. Must be either "monitor" or "control".
    :   `actions` - Must be either null or the empty string.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty or
        if arguments are invalid.