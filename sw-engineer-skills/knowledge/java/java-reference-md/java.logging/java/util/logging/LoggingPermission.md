Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Class LoggingPermission

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

java.util.logging.LoggingPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class LoggingPermission
extends [BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

The permission which the SecurityManager will check when code
that is running with a SecurityManager calls one of the logging
control methods (such as Logger.setLevel).

Currently there is only one named LoggingPermission. This is "control"
and it grants the ability to control the logging configuration, for
example by adding or removing Handlers, by adding or removing Filters,
or by changing logging levels.

Programmers do not normally create LoggingPermission objects directly.
Instead they are created by the security policy code based on reading
the security policy file.

Since:
:   1.4

See Also:
:   * [`BasicPermission`](../../../../java.base/java/security/BasicPermission.md "class in java.security")
    * [`Permission`](../../../../java.base/java/security/Permission.md "class in java.security")
    * [`Permissions`](../../../../java.base/java/security/Permissions.md "class in java.security")
    * [`PermissionCollection`](../../../../java.base/java/security/PermissionCollection.md "class in java.security")
    * [`SecurityManager`](../../../../java.base/java/lang/SecurityManager.md "class in java.lang")
    * [Serialized Form](../../../../serialized-form.md#java.util.logging.LoggingPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LoggingPermission(String name,
  String actions)`

  Creates a new LoggingPermission object.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LoggingPermission

    public LoggingPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") actions)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a new LoggingPermission object.

    Parameters:
    :   `name` - Permission name. Must be "control".
    :   `actions` - Must be either null or the empty string.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty or if
        arguments are invalid.