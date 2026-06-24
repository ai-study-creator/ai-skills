Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface FileAttributeView

All Superinterfaces:
:   `AttributeView`

All Known Subinterfaces:
:   `AclFileAttributeView`, `BasicFileAttributeView`, `DosFileAttributeView`, `FileOwnerAttributeView`, `PosixFileAttributeView`, `UserDefinedFileAttributeView`

---

public interface FileAttributeView
extends [AttributeView](AttributeView.md "interface in java.nio.file.attribute")

An attribute view that is a read-only or updatable view of non-opaque
values associated with a file in a filesystem. This interface is extended or
implemented by specific file attribute views that define methods to read
and/or update the attributes of a file.

Since:
:   1.7

See Also:
:   * [`Files.getFileAttributeView(Path,Class,java.nio.file.LinkOption[])`](../Files.md#getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption...))

* ## Method Summary

  ### Methods inherited from interface java.nio.file.attribute.[AttributeView](AttributeView.md "interface in java.nio.file.attribute")

  `name`