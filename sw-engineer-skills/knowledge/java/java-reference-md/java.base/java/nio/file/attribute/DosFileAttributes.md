Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface DosFileAttributes

All Superinterfaces:
:   `BasicFileAttributes`

---

public interface DosFileAttributes
extends [BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")

File attributes associated with a file in a file system that supports
legacy "DOS" attributes.

**Usage Example:**

Copy![Copy snippet](../../../../../copy.svg)

```
    Path file = ...
    DosFileAttributes attrs = Files.readAttributes(file, DosFileAttributes.class);
```

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isArchive()`

  Returns the value of the archive attribute.

  `boolean`

  `isHidden()`

  Returns the value of the hidden attribute.

  `boolean`

  `isReadOnly()`

  Returns the value of the read-only attribute.

  `boolean`

  `isSystem()`

  Returns the value of the system attribute.

  ### Methods inherited from interface java.nio.file.attribute.[BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")

  `creationTime, fileKey, isDirectory, isOther, isRegularFile, isSymbolicLink, lastAccessTime, lastModifiedTime, size`

* ## Method Details

  + ### isReadOnly

    boolean isReadOnly()

    Returns the value of the read-only attribute.

    This attribute is often used as a simple access control mechanism
    to prevent files from being deleted or updated. Whether the file system
    or platform does any enforcement to prevent *read-only* files
    from being updated is implementation specific.

    Returns:
    :   the value of the read-only attribute
  + ### isHidden

    boolean isHidden()

    Returns the value of the hidden attribute.

    This attribute is often used to indicate if the file is visible to
    users.

    Returns:
    :   the value of the hidden attribute
  + ### isArchive

    boolean isArchive()

    Returns the value of the archive attribute.

    This attribute is typically used by backup programs.

    Returns:
    :   the value of the archive attribute
  + ### isSystem

    boolean isSystem()

    Returns the value of the system attribute.

    This attribute is often used to indicate that the file is a component
    of the operating system.

    Returns:
    :   the value of the system attribute