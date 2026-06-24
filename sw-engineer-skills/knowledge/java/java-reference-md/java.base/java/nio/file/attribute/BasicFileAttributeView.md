Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface BasicFileAttributeView

All Superinterfaces:
:   `AttributeView`, `FileAttributeView`

All Known Subinterfaces:
:   `DosFileAttributeView`, `PosixFileAttributeView`

---

public interface BasicFileAttributeView
extends [FileAttributeView](FileAttributeView.md "interface in java.nio.file.attribute")

A file attribute view that provides a view of a *basic set* of file
attributes common to many file systems. The basic set of file attributes
consist of *mandatory* and *optional* file attributes as
defined by the [`BasicFileAttributes`](BasicFileAttributes.md "interface in java.nio.file.attribute") interface.

The file attributes are retrieved from the file system as a *bulk
operation* by invoking the [`readAttributes`](#readAttributes()) method.
This class also defines the [`setTimes`](#setTimes(java.nio.file.attribute.FileTime,java.nio.file.attribute.FileTime,java.nio.file.attribute.FileTime)) method to update the
file's time attributes.

Where dynamic access to file attributes is required, the attributes
supported by this attribute view have the following names and types:
> Supported attributes
>
> | Name | Type |
> | --- | --- |
> | "lastModifiedTime" | [`FileTime`](FileTime.md "class in java.nio.file.attribute") |
> | "lastAccessTime" | [`FileTime`](FileTime.md "class in java.nio.file.attribute") |
> | "creationTime" | [`FileTime`](FileTime.md "class in java.nio.file.attribute") |
> | "size" | [`Long`](../../../lang/Long.md "class in java.lang") |
> | "isRegularFile" | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | "isDirectory" | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | "isSymbolicLink" | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | "isOther" | [`Boolean`](../../../lang/Boolean.md "class in java.lang") |
> | "fileKey" | [`Object`](../../../lang/Object.md "class in java.lang") |

The [`getAttribute`](../Files.md#getAttribute(java.nio.file.Path,java.lang.String,java.nio.file.LinkOption...)) method may be
used to read any of these attributes as if by invoking the [`readAttributes()`](#readAttributes()) method.

The [`setAttribute`](../Files.md#setAttribute(java.nio.file.Path,java.lang.String,java.lang.Object,java.nio.file.LinkOption...)) method may be
used to update the file's last modified time, last access time or create time
attributes as if by invoking the [`setTimes`](#setTimes(java.nio.file.attribute.FileTime,java.nio.file.attribute.FileTime,java.nio.file.attribute.FileTime)) method.

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

  `BasicFileAttributes`

  `readAttributes()`

  Reads the basic file attributes as a bulk operation.

  `void`

  `setTimes(FileTime lastModifiedTime,
  FileTime lastAccessTime,
  FileTime createTime)`

  Updates any or all of the file's last modified time, last access time,
  and create time attributes.

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view. Attribute views of this type
    have the name `"basic"`.

    Specified by:
    :   `name` in interface `AttributeView`

    Returns:
    :   the name of the attribute view
  + ### readAttributes

    [BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute") readAttributes()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Reads the basic file attributes as a bulk operation.

    It is implementation specific if all file attributes are read as an
    atomic operation with respect to other file system operations.

    Returns:
    :   the file attributes

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, its [`checkRead`](../../../lang/SecurityManager.md#checkRead(java.lang.String))
        method is invoked to check read access to the file
  + ### setTimes

    void setTimes([FileTime](FileTime.md "class in java.nio.file.attribute") lastModifiedTime,
    [FileTime](FileTime.md "class in java.nio.file.attribute") lastAccessTime,
    [FileTime](FileTime.md "class in java.nio.file.attribute") createTime)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Updates any or all of the file's last modified time, last access time,
    and create time attributes.

    This method updates the file's timestamp attributes. The values are
    converted to the epoch and precision supported by the file system.
    Converting from finer to coarser granularities results in precision loss.
    The behavior of this method when attempting to set a timestamp that is
    not supported or to a value that is outside the range supported by the
    underlying file store is not defined. It may or not fail by throwing an
    `IOException`.

    If any of the `lastModifiedTime`, `lastAccessTime`,
    or `createTime` parameters has the value `null` then the
    corresponding timestamp is not changed. An implementation may require to
    read the existing values of the file attributes when only some, but not
    all, of the timestamp attributes are updated. Consequently, this method
    may not be an atomic operation with respect to other file system
    operations. Reading and re-writing existing values may also result in
    precision loss. If all of the `lastModifiedTime`, `lastAccessTime` and `createTime` parameters are `null` then
    this method has no effect.

    **Usage Example:**
    Suppose we want to change a file's last access time.

    Copy![Copy snippet](../../../../../copy.svg)

    ```
        Path path = ...
        FileTime time = ...
        Files.getFileAttributeView(path, BasicFileAttributeView.class).setTimes(null, time, null);
    ```

    Parameters:
    :   `lastModifiedTime` - the new last modified time, or `null` to not change the
        value
    :   `lastAccessTime` - the last access time, or `null` to not change the value
    :   `createTime` - the file's create time, or `null` to not change the value

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, a security manager is
        installed, its [`checkWrite`](../../../lang/SecurityManager.md#checkWrite(java.lang.String))
        method is invoked to check write access to the file

    See Also:
    :   - [`Files.setLastModifiedTime(java.nio.file.Path, java.nio.file.attribute.FileTime)`](../Files.md#setLastModifiedTime(java.nio.file.Path,java.nio.file.attribute.FileTime))