Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface DosFileAttributeView

All Superinterfaces:
:   `AttributeView`, `BasicFileAttributeView`, `FileAttributeView`

---

public interface DosFileAttributeView
extends [BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute")

A file attribute view that provides a view of the legacy "DOS" file attributes.
These attributes are supported by file systems such as the File Allocation
Table (FAT) format commonly used in *consumer devices*.

A `DosFileAttributeView` is a [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute") that
additionally supports access to the set of DOS attribute flags that are used
to indicate if the file is read-only, hidden, a system file, or archived.

Where dynamic access to file attributes is required, the attributes
supported by this attribute view are as defined by `BasicFileAttributeView`, and in addition, the following attributes are
supported:
> Supported attributes
>
> | Name | Type |
> | --- | --- |
> | readonly | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | hidden | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | system | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | archive | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |

The [`getAttribute`](../Files.md#getAttribute(java.nio.file.Path,java.lang.String,java.nio.file.LinkOption...)) method may
be used to read any of these attributes, or any of the attributes defined by
[`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute") as if by invoking the [`readAttributes()`](#readAttributes()) method.

The [`setAttribute`](../Files.md#setAttribute(java.nio.file.Path,java.lang.String,java.lang.Object,java.nio.file.LinkOption...)) method may
be used to update the file's last modified time, last access time or create
time attributes as defined by [`BasicFileAttributeView`](BasicFileAttributeView.md "interface in java.nio.file.attribute"). It may also be
used to update the DOS attributes as if by invoking the [`setReadOnly`](#setReadOnly(boolean)), [`setHidden`](#setHidden(boolean)), [`setSystem`](#setSystem(boolean)), and
[`setArchive`](#setArchive(boolean)) methods respectively.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the attribute view.

  `DosFileAttributes`

  `readAttributes()`

  Reads the basic file attributes as a bulk operation.

  `void`

  `setArchive(boolean value)`

  Updates the value of the archive attribute.

  `void`

  `setHidden(boolean value)`

  Updates the value of the hidden attribute.

  `void`

  `setReadOnly(boolean value)`

  Updates the value of the read-only attribute.

  `void`

  `setSystem(boolean value)`

  Updates the value of the system attribute.

  ### Methods inherited from interface java.nio.file.attribute.[BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute")

  `setTimes`

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view. Attribute views of this type
    have the name `"dos"`.

    Specified by:
    :   `name` in interface `AttributeView`

    Specified by:
    :   `name` in interface `BasicFileAttributeView`

    Returns:
    :   the name of the attribute view
  + ### readAttributes

    [DosFileAttributes](DosFileAttributes.md "interface in java.nio.file.attribute") readAttributes()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Description copied from interface: `BasicFileAttributeView`

    Reads the basic file attributes as a bulk operation.

    It is implementation specific if all file attributes are read as an
    atomic operation with respect to other file system operations.

    Specified by:
    :   `readAttributes` in interface `BasicFileAttributeView`

    Returns:
    :   the file attributes

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, its [`checkRead`](../../../lang/SecurityManager.md#checkRead(java.lang.String))
        method is invoked to check read access to the file
  + ### setReadOnly

    void setReadOnly(boolean value)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the value of the read-only attribute.

    It is implementation specific if the attribute can be updated as an
    atomic operation with respect to other file system operations. An
    implementation may, for example, require to read the existing value of
    the DOS attribute in order to update this attribute.

    Parameters:
    :   `value` - the new value of the attribute

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default, and a security manager is installed,
        its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String)) method
        is invoked to check write access to the file
  + ### setHidden

    void setHidden(boolean value)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the value of the hidden attribute.

    It is implementation specific if the attribute can be updated as an
    atomic operation with respect to other file system operations. An
    implementation may, for example, require to read the existing value of
    the DOS attribute in order to update this attribute.

    Parameters:
    :   `value` - the new value of the attribute

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default, and a security manager is installed,
        its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String)) method
        is invoked to check write access to the file
  + ### setSystem

    void setSystem(boolean value)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the value of the system attribute.

    It is implementation specific if the attribute can be updated as an
    atomic operation with respect to other file system operations. An
    implementation may, for example, require to read the existing value of
    the DOS attribute in order to update this attribute.

    Parameters:
    :   `value` - the new value of the attribute

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default, and a security manager is installed,
        its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String)) method
        is invoked to check write access to the file
  + ### setArchive

    void setArchive(boolean value)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates the value of the archive attribute.

    It is implementation specific if the attribute can be updated as an
    atomic operation with respect to other file system operations. An
    implementation may, for example, require to read the existing value of
    the DOS attribute in order to update this attribute.

    Parameters:
    :   `value` - the new value of the attribute

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default, and a security manager is installed,
        its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String)) method
        is invoked to check write access to the file