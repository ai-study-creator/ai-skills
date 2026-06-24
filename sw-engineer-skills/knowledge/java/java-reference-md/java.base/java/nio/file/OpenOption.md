Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface OpenOption

All Known Implementing Classes:
:   `LinkOption`, `StandardOpenOption`

---

public interface OpenOption

An object that configures how to open or create a file.

Objects of this type are used by methods such as [`newOutputStream`](Files.md#newOutputStream(java.nio.file.Path,java.nio.file.OpenOption...)), [`newByteChannel`](Files.md#newByteChannel(java.nio.file.Path,java.util.Set,java.nio.file.attribute.FileAttribute...)), [`FileChannel.open`](../channels/FileChannel.md#open(java.nio.file.Path,java.util.Set,java.nio.file.attribute.FileAttribute...)), and [`AsynchronousFileChannel.open`](../channels/AsynchronousFileChannel.md#open(java.nio.file.Path,java.util.Set,java.util.concurrent.ExecutorService,java.nio.file.attribute.FileAttribute...))
when opening or creating a file.

The [`StandardOpenOption`](StandardOpenOption.md "enum class in java.nio.file") enumeration type defines the
*standard* options.

Since:
:   1.7