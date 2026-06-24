Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.stream](package-summary.md)

# Class MemoryCacheImageOutputStream

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.stream.ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

[javax.imageio.stream.ImageOutputStreamImpl](ImageOutputStreamImpl.md "class in javax.imageio.stream")

javax.imageio.stream.MemoryCacheImageOutputStream

All Implemented Interfaces:
:   `Closeable`, `DataInput`, `DataOutput`, `AutoCloseable`, `ImageInputStream`, `ImageOutputStream`

---

public class MemoryCacheImageOutputStream
extends [ImageOutputStreamImpl](ImageOutputStreamImpl.md "class in javax.imageio.stream")

An implementation of `ImageOutputStream` that writes its
output to a regular `OutputStream`. A memory buffer is
used to cache at least the data between the discard position and
the current write position. The only constructor takes an
`OutputStream`, so this class may not be used for
read/modify/write operations. Reading can occur only on parts of
the stream that have already been written to the cache and not
yet flushed.

* ## Field Summary

  ### Fields inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `bitOffset, byteOrder, flushedPos, streamPos`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MemoryCacheImageOutputStream(OutputStream stream)`

  Constructs a `MemoryCacheImageOutputStream` that will write
  to a given `OutputStream`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this `MemoryCacheImageOutputStream`.

  `void`

  `flushBefore(long pos)`

  Discards the initial portion of the stream prior to the
  indicated position.

  `boolean`

  `isCached()`

  Returns `true` since this
  `ImageOutputStream` caches data in order to allow
  seeking backwards.

  `boolean`

  `isCachedFile()`

  Returns `false` since this
  `ImageOutputStream` does not maintain a file cache.

  `boolean`

  `isCachedMemory()`

  Returns `true` since this
  `ImageOutputStream` maintains a main memory cache.

  `long`

  `length()`

  Returns `-1L` to indicate that the stream has unknown
  length.

  `int`

  `read()`

  Reads a single byte from the stream and returns it as an
  `int` between 0 and 255.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads up to `len` bytes from the stream, and stores
  them into `b` starting at index `off`.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes a sequence of bytes to the stream at the current
  position.

  `void`

  `write(int b)`

  Writes a single byte to the stream at the current position.

  ### Methods inherited from class javax.imageio.stream.[ImageOutputStreamImpl](ImageOutputStreamImpl.md "class in javax.imageio.stream")

  `flushBits, write, writeBit, writeBits, writeBoolean, writeByte, writeBytes, writeChar, writeChars, writeChars, writeDouble, writeDoubles, writeFloat, writeFloats, writeInt, writeInts, writeLong, writeLongs, writeShort, writeShorts, writeUTF`

  ### Methods inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `checkClosed, finalize, flush, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, mark, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, seek, setBitOffset, setByteOrder, skipBytes, skipBytes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream")

  `flush, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, mark, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, seek, setBitOffset, setByteOrder, skipBytes, skipBytes`

* ## Constructor Details

  + ### MemoryCacheImageOutputStream

    public MemoryCacheImageOutputStream([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") stream)

    Constructs a `MemoryCacheImageOutputStream` that will write
    to a given `OutputStream`.

    Parameters:
    :   `stream` - an `OutputStream` to write to.

    Throws:
    :   `IllegalArgumentException` - if `stream` is
        `null`.
* ## Method Details

  + ### read

    public int read()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from class: `ImageInputStreamImpl`

    Reads a single byte from the stream and returns it as an
    `int` between 0 and 255. If EOF is reached,
    `-1` is returned.

    Subclasses must provide an implementation for this method.
    The subclass implementation should update the stream position
    before exiting.

    The bit offset within the stream must be reset to zero before
    the read occurs.

    Specified by:
    :   `read` in interface `ImageInputStream`

    Specified by:
    :   `read` in class `ImageInputStreamImpl`

    Returns:
    :   the value of the next byte in the stream, or `-1`
        if EOF is reached.

    Throws:
    :   `IOException` - if the stream has been closed.
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from class: `ImageInputStreamImpl`

    Reads up to `len` bytes from the stream, and stores
    them into `b` starting at index `off`.
    If no bytes can be read because the end of the stream has been
    reached, `-1` is returned.

    The bit offset within the stream must be reset to zero before
    the read occurs.

    Subclasses must provide an implementation for this method.
    The subclass implementation should update the stream position
    before exiting.

    Specified by:
    :   `read` in interface `ImageInputStream`

    Specified by:
    :   `read` in class `ImageInputStreamImpl`

    Parameters:
    :   `b` - an array of bytes to be written to.
    :   `off` - the starting position within `b` to write to.
    :   `len` - the maximum number of bytes to read.

    Returns:
    :   the number of bytes actually read, or `-1`
        to indicate EOF.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(int b)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a single byte to the stream at the current position.
    The 24 high-order bits of `b` are ignored.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write. Implementers can use the
    [`flushBits`](ImageOutputStreamImpl.md#flushBits())
    method of [`ImageOutputStreamImpl`](ImageOutputStreamImpl.md "class in javax.imageio.stream")
    to guarantee this.

    Specified by:
    :   `write` in interface `DataOutput`

    Specified by:
    :   `write` in interface `ImageOutputStream`

    Specified by:
    :   `write` in class `ImageOutputStreamImpl`

    Parameters:
    :   `b` - an `int` whose lower 8 bits are to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of bytes to the stream at the current
    position. If `len` is 0, nothing is written.
    The byte `b[off]` is written first, then the byte
    `b[off + 1]`, and so on.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write. Implementers can use the
    [`flushBits`](ImageOutputStreamImpl.md#flushBits())
    method of [`ImageOutputStreamImpl`](ImageOutputStreamImpl.md "class in javax.imageio.stream")
    to guarantee this.

    Specified by:
    :   `write` in interface `DataOutput`

    Specified by:
    :   `write` in interface `ImageOutputStream`

    Specified by:
    :   `write` in class `ImageOutputStreamImpl`

    Parameters:
    :   `b` - an array of `byte`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `byte`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### length

    public long length()

    Description copied from class: `ImageInputStreamImpl`

    Returns `-1L` to indicate that the stream has unknown
    length. Subclasses must override this method to provide actual
    length information.

    Specified by:
    :   `length` in interface `ImageInputStream`

    Overrides:
    :   `length` in class `ImageInputStreamImpl`

    Returns:
    :   -1L to indicate unknown length.
  + ### isCached

    public boolean isCached()

    Returns `true` since this
    `ImageOutputStream` caches data in order to allow
    seeking backwards.

    Specified by:
    :   `isCached` in interface `ImageInputStream`

    Overrides:
    :   `isCached` in class `ImageInputStreamImpl`

    Returns:
    :   `true`.

    See Also:
    :   - [`isCachedMemory()`](#isCachedMemory())
        - [`isCachedFile()`](#isCachedFile())
  + ### isCachedFile

    public boolean isCachedFile()

    Returns `false` since this
    `ImageOutputStream` does not maintain a file cache.

    Specified by:
    :   `isCachedFile` in interface `ImageInputStream`

    Overrides:
    :   `isCachedFile` in class `ImageInputStreamImpl`

    Returns:
    :   `false`.

    See Also:
    :   - [`isCached()`](#isCached())
        - [`isCachedMemory()`](#isCachedMemory())
  + ### isCachedMemory

    public boolean isCachedMemory()

    Returns `true` since this
    `ImageOutputStream` maintains a main memory cache.

    Specified by:
    :   `isCachedMemory` in interface `ImageInputStream`

    Overrides:
    :   `isCachedMemory` in class `ImageInputStreamImpl`

    Returns:
    :   `true`.

    See Also:
    :   - [`isCached()`](#isCached())
        - [`isCachedFile()`](#isCachedFile())
  + ### close

    public void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Closes this `MemoryCacheImageOutputStream`. All
    pending data is flushed to the output, and the cache
    is released. The destination `OutputStream`
    is not closed.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in interface `ImageInputStream`

    Overrides:
    :   `close` in class `ImageInputStreamImpl`

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### flushBefore

    public void flushBefore(long pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageInputStream`

    Discards the initial portion of the stream prior to the
    indicated position. Attempting to seek to an offset within the
    flushed portion of the stream will result in an
    `IndexOutOfBoundsException`.

    Calling `flushBefore` may allow classes
    implementing this interface to free up resources such as memory
    or disk space that are being used to store data from the
    stream.

    Specified by:
    :   `flushBefore` in interface `ImageInputStream`

    Specified by:
    :   `flushBefore` in interface `ImageOutputStream`

    Overrides:
    :   `flushBefore` in class `ImageInputStreamImpl`

    Parameters:
    :   `pos` - a `long` containing the length of the
        stream prefix that may be flushed.

    Throws:
    :   `IOException` - if an I/O error occurs.