Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.stream](package-summary.md)

# Class FileCacheImageInputStream

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.stream.ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

javax.imageio.stream.FileCacheImageInputStream

All Implemented Interfaces:
:   `Closeable`, `DataInput`, `AutoCloseable`, `ImageInputStream`

---

public class FileCacheImageInputStream
extends [ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

An implementation of `ImageInputStream` that gets its
input from a regular `InputStream`. A file is used to
cache previously read data.

* ## Field Summary

  ### Fields inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `bitOffset, byteOrder, flushedPos, streamPos`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileCacheImageInputStream(InputStream stream,
  File cacheDir)`

  Constructs a `FileCacheImageInputStream` that will read
  from a given `InputStream`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this `FileCacheImageInputStream`, closing
  and removing the cache file.

  `protected void`

  `finalize()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization has been deprecated for removal.

  `boolean`

  `isCached()`

  Returns `true` since this
  `ImageInputStream` caches data in order to allow
  seeking backwards.

  `boolean`

  `isCachedFile()`

  Returns `true` since this
  `ImageInputStream` maintains a file cache.

  `boolean`

  `isCachedMemory()`

  Returns `false` since this
  `ImageInputStream` does not maintain a main memory
  cache.

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

  ### Methods inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `checkClosed, flush, flushBefore, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, length, mark, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, seek, setBitOffset, setByteOrder, skipBytes, skipBytes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileCacheImageInputStream

    public FileCacheImageInputStream([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream,
    [File](../../../../java.base/java/io/File.md "class in java.io") cacheDir)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a `FileCacheImageInputStream` that will read
    from a given `InputStream`.

    A temporary file is used as a cache. If
    `cacheDir` is non-`null` and is a
    directory, the file will be created there. If it is
    `null`, the system-dependent default temporary-file
    directory will be used (see the documentation for
    `File.createTempFile` for details).

    Parameters:
    :   `stream` - an `InputStream` to read from.
    :   `cacheDir` - a `File` indicating where the
        cache file should be created, or `null` to use the
        system directory.

    Throws:
    :   `IllegalArgumentException` - if `stream` is
        `null`.
    :   `IllegalArgumentException` - if `cacheDir` is
        non-`null` but is not a directory.
    :   `IOException` - if a cache file cannot be created.
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
  + ### isCached

    public boolean isCached()

    Returns `true` since this
    `ImageInputStream` caches data in order to allow
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

    Returns `true` since this
    `ImageInputStream` maintains a file cache.

    Specified by:
    :   `isCachedFile` in interface `ImageInputStream`

    Overrides:
    :   `isCachedFile` in class `ImageInputStreamImpl`

    Returns:
    :   `true`.

    See Also:
    :   - [`isCached()`](#isCached())
        - [`isCachedMemory()`](#isCachedMemory())
  + ### isCachedMemory

    public boolean isCachedMemory()

    Returns `false` since this
    `ImageInputStream` does not maintain a main memory
    cache.

    Specified by:
    :   `isCachedMemory` in interface `ImageInputStream`

    Overrides:
    :   `isCachedMemory` in class `ImageInputStreamImpl`

    Returns:
    :   `false`.

    See Also:
    :   - [`isCached()`](#isCached())
        - [`isCachedFile()`](#isCachedFile())
  + ### close

    public void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Closes this `FileCacheImageInputStream`, closing
    and removing the cache file. The source `InputStream`
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
    :   `IOException` - if an error occurs.
  + ### finalize

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9",
    [forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    protected void finalize()
    throws [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finalization has been deprecated for removal. See
    [`Object.finalize()`](../../../../java.base/java/lang/Object.md#finalize()) for background information and details
    about migration options.

    Finalizes this object prior to garbage collection. The
    `close` method is called to close any open input
    source. This method should not be called from application
    code.

    Overrides:
    :   `finalize` in class `ImageInputStreamImpl`

    Throws:
    :   `Throwable` - if an error occurs during superclass
        finalization.

    See Also:
    :   - [`WeakReference`](../../../../java.base/java/lang/ref/WeakReference.md "class in java.lang.ref")
        - [`PhantomReference`](../../../../java.base/java/lang/ref/PhantomReference.md "class in java.lang.ref")