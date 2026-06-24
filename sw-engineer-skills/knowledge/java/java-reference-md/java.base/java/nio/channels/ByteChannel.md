Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface ByteChannel

All Superinterfaces:
:   `AutoCloseable`, `Channel`, `Closeable`, `ReadableByteChannel`, `WritableByteChannel`

All Known Subinterfaces:
:   `SeekableByteChannel`

All Known Implementing Classes:
:   `DatagramChannel`, `FileChannel`, `SocketChannel`

---

public interface ByteChannel
extends [ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels"), [WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels")

A channel that can read and write bytes. This interface simply unifies
[`ReadableByteChannel`](ReadableByteChannel.md "interface in java.nio.channels") and [`WritableByteChannel`](WritableByteChannel.md "interface in java.nio.channels"); it does not
specify any new operations.

Since:
:   1.4

* ## Method Summary

  ### Methods inherited from interface java.nio.channels.[Channel](Channel.md "interface in java.nio.channels")

  `close, isOpen`

  ### Methods inherited from interface java.nio.channels.[ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels")

  `read`

  ### Methods inherited from interface java.nio.channels.[WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels")

  `write`