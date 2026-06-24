Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Enum Class AclEntryPermission

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")>

java.nio.file.attribute.AclEntryPermission

All Implemented Interfaces:
:   `Serializable`, `Comparable<AclEntryPermission>`, `Constable`

---

public enum AclEntryPermission
extends [Enum](../../../lang/Enum.md "class in java.lang")<[AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")>

Defines the permissions for use with the permissions component of an ACL
[`entry`](AclEntry.md "class in java.nio.file.attribute").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APPEND_DATA`

  Permission to append data to a file.

  `DELETE`

  Permission to delete the file.

  `DELETE_CHILD`

  Permission to delete a file or directory within a directory.

  `EXECUTE`

  Permission to execute a file.

  `READ_ACL`

  Permission to read the ACL attribute.

  `READ_ATTRIBUTES`

  The ability to read (non-acl) file attributes.

  `READ_DATA`

  Permission to read the data of the file.

  `READ_NAMED_ATTRS`

  Permission to read the named attributes of a file.

  `SYNCHRONIZE`

  Permission to access file locally at the server with synchronous reads
  and writes.

  `WRITE_ACL`

  Permission to write the ACL attribute.

  `WRITE_ATTRIBUTES`

  The ability to write (non-acl) file attributes.

  `WRITE_DATA`

  Permission to modify the file's data.

  `WRITE_NAMED_ATTRS`

  Permission to write the named attributes of a file.

  `WRITE_OWNER`

  Permission to change the owner.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AclEntryPermission`

  `ADD_FILE`

  Permission to add a new file to a directory (equal to [`WRITE_DATA`](#WRITE_DATA))

  `static final AclEntryPermission`

  `ADD_SUBDIRECTORY`

  Permission to create a subdirectory to a directory (equal to [`APPEND_DATA`](#APPEND_DATA))

  `static final AclEntryPermission`

  `LIST_DIRECTORY`

  Permission to list the entries of a directory (equal to [`READ_DATA`](#READ_DATA))
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AclEntryPermission`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AclEntryPermission[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### READ\_DATA

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") READ\_DATA

    Permission to read the data of the file.
  + ### WRITE\_DATA

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") WRITE\_DATA

    Permission to modify the file's data.
  + ### APPEND\_DATA

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") APPEND\_DATA

    Permission to append data to a file.
  + ### READ\_NAMED\_ATTRS

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") READ\_NAMED\_ATTRS

    Permission to read the named attributes of a file.

    [RFC 3530: Network
    File System (NFS) version 4 Protocol](http://www.ietf.org/rfc/rfc3530.txt) defines *named attributes*
    as opaque files associated with a file in the file system.

    External Specifications
    :   - [RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)
  + ### WRITE\_NAMED\_ATTRS

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") WRITE\_NAMED\_ATTRS

    Permission to write the named attributes of a file.

    [RFC 3530: Network
    File System (NFS) version 4 Protocol](http://www.ietf.org/rfc/rfc3530.txt) defines *named attributes*
    as opaque files associated with a file in the file system.

    External Specifications
    :   - [RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)
  + ### EXECUTE

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") EXECUTE

    Permission to execute a file.
  + ### DELETE\_CHILD

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") DELETE\_CHILD

    Permission to delete a file or directory within a directory.
  + ### READ\_ATTRIBUTES

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") READ\_ATTRIBUTES

    The ability to read (non-acl) file attributes.
  + ### WRITE\_ATTRIBUTES

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") WRITE\_ATTRIBUTES

    The ability to write (non-acl) file attributes.
  + ### DELETE

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") DELETE

    Permission to delete the file.
  + ### READ\_ACL

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") READ\_ACL

    Permission to read the ACL attribute.
  + ### WRITE\_ACL

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") WRITE\_ACL

    Permission to write the ACL attribute.
  + ### WRITE\_OWNER

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") WRITE\_OWNER

    Permission to change the owner.
  + ### SYNCHRONIZE

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") SYNCHRONIZE

    Permission to access file locally at the server with synchronous reads
    and writes.
* ## Field Details

  + ### LIST\_DIRECTORY

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") LIST\_DIRECTORY

    Permission to list the entries of a directory (equal to [`READ_DATA`](#READ_DATA))
  + ### ADD\_FILE

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") ADD\_FILE

    Permission to add a new file to a directory (equal to [`WRITE_DATA`](#WRITE_DATA))
  + ### ADD\_SUBDIRECTORY

    public static final [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") ADD\_SUBDIRECTORY

    Permission to create a subdirectory to a directory (equal to [`APPEND_DATA`](#APPEND_DATA))
* ## Method Details

  + ### values

    public static [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute") valueOf([String](../../../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null