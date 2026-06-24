Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface CopyOption

All Known Implementing Classes:
:   `LinkOption`, `StandardCopyOption`

---

public interface CopyOption

An object that configures how to copy or move a file.

Objects of this type may be used with the [`Files.copy(Path,Path,CopyOption...)`](Files.md#copy(java.nio.file.Path,java.nio.file.Path,java.nio.file.CopyOption...)),
[`Files.copy(InputStream,Path,CopyOption...)`](Files.md#copy(java.io.InputStream,java.nio.file.Path,java.nio.file.CopyOption...)) and [`Files.move(Path,Path,CopyOption...)`](Files.md#move(java.nio.file.Path,java.nio.file.Path,java.nio.file.CopyOption...)) methods to configure how a file is
copied or moved.

The [`StandardCopyOption`](StandardCopyOption.md "enum class in java.nio.file") enumeration type defines the
*standard* options.

Since:
:   1.7