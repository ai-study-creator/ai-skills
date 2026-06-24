Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class LinkPermission

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.Permission](../../security/Permission.md "class in java.security")

[java.security.BasicPermission](../../security/BasicPermission.md "class in java.security")

java.nio.file.LinkPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class LinkPermission
extends [BasicPermission](../../security/BasicPermission.md "class in java.security")

The `Permission` class for link creation operations.

The following table provides a summary description of what the permission
allows, and discusses the risks of granting code the permission.

Table shows permission target name, what the permission allows, and associated risks

| Permission Target Name | What the Permission Allows | Risks of Allowing this Permission |
| --- | --- | --- |
| hard | Ability to add an existing file to a directory. This is sometimes known as creating a link, or hard link. | Extreme care should be taken when granting this permission. It allows linking to any file or directory in the file system thus allowing the attacker access to all files. |
| symbolic | Ability to create symbolic links. | Extreme care should be taken when granting this permission. It allows linking to any file or directory in the file system thus allowing the attacker to access to all files. |

Since:
:   1.7

See Also:
:   * [`Files.createLink(java.nio.file.Path, java.nio.file.Path)`](Files.md#createLink(java.nio.file.Path,java.nio.file.Path))
    * [`Files.createSymbolicLink(java.nio.file.Path, java.nio.file.Path, java.nio.file.attribute.FileAttribute<?>...)`](Files.md#createSymbolicLink(java.nio.file.Path,java.nio.file.Path,java.nio.file.attribute.FileAttribute...))
    * [Serialized Form](../../../../serialized-form.md#java.nio.file.LinkPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LinkPermission(String name)`

  Constructs a `LinkPermission` with the specified name.

  `LinkPermission(String name,
  String actions)`

  Constructs a `LinkPermission` with the specified name.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LinkPermission

    public LinkPermission([String](../../lang/String.md "class in java.lang") name)

    Constructs a `LinkPermission` with the specified name.

    Parameters:
    :   `name` - the name of the permission. It must be "hard" or "symbolic".

    Throws:
    :   `IllegalArgumentException` - if name is empty or invalid
  + ### LinkPermission

    public LinkPermission([String](../../lang/String.md "class in java.lang") name,
    [String](../../lang/String.md "class in java.lang") actions)

    Constructs a `LinkPermission` with the specified name.

    Parameters:
    :   `name` - the name of the permission; must be "hard" or "symbolic".
    :   `actions` - the actions for the permission; must be the empty string or
        `null`

    Throws:
    :   `IllegalArgumentException` - if name is empty or invalid, or actions is a non-empty string