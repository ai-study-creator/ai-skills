Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface FileAttribute<T>

Type Parameters:
:   `T` - The type of the file attribute value

---

public interface FileAttribute<T>

An object that encapsulates the value of a file attribute that can be set
atomically when creating a new file or directory by invoking the [`createFile`](../Files.md#createFile(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) or [`createDirectory`](../Files.md#createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)) methods.

Since:
:   1.7

See Also:
:   * [`PosixFilePermissions.asFileAttribute(java.util.Set<java.nio.file.attribute.PosixFilePermission>)`](PosixFilePermissions.md#asFileAttribute(java.util.Set))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the attribute name.

  `T`

  `value()`

  Returns the attribute value.

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the attribute name.

    Returns:
    :   The attribute name
  + ### value

    [T](FileAttribute.md "type parameter in FileAttribute") value()

    Returns the attribute value.

    Returns:
    :   The attribute value