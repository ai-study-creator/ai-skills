Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.stream](package-summary.md)

# Class FileImageInputStream

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.stream.ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

javax.imageio.stream.FileImageInputStream

All Implemented Interfaces:
:   `Closeable`, `DataInput`, `AutoCloseable`, `ImageInputStream`

---

public class FileImageInputStream
extends [ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

An implementation of `ImageInputStream` that gets its
input from a `File` or `RandomAccessFile`.
The file contents are assumed to be stable during the lifetime of
the object.

* ## Field Summary

  ### Fields inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `bitOffset, byteOrder, flushedPos, streamPos`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileImageInputStream(File f)`

  Constructs a `FileImageInputStream` that will read
  from a given `File`.

  `FileImageInputStream(RandomAccessFile raf)`

  Constructs a `FileImageInputStream` that will read
  from a given `RandomAccessFile`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the stream.

  `protected void`

  `finalize()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization has been deprecated for removal.

  `long`

  `length()`

  Returns the length of the underlying file, or `-1`
  if it is unknown.

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

  `seek(long pos)`

  Sets the current stream position to the desired location.

  ### Methods inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `checkClosed, flush, flushBefore, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, isCached, isCachedFile, isCachedMemory, mark, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, setBitOffset, setByteOrder, skipBytes, skipBytes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileImageInputStream

    public FileImageInputStream([File](../../../../java.base/java/io/File.md "class in java.io") f)
    throws [FileNotFoundException](../../../../java.base/java/io/FileNotFoundException.md "class in java.io"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a `FileImageInputStream` that will read
    from a given `File`.

    The file contents must not change between the time this
    object is constructed and the time of the last call to a read
    method.

    Parameters:
    :   `f` - a `File` to read from.

    Throws:
    :   `IllegalArgumentException` - if `f` is
        `null`.
    :   `SecurityException` - if a security manager exists
        and does not allow read access to the file.
    :   `FileNotFoundException` - if `f` is a
        directory or cannot be opened for reading for any other reason.
    :   `IOException` - if an I/O error occurs.
  + ### FileImageInputStream

    public FileImageInputStream([RandomAccessFile](../../../../java.base/java/io/RandomAccessFile.md "class in java.io") raf)

    Constructs a `FileImageInputStream` that will read
    from a given `RandomAccessFile`.

    The file contents must not change between the time this
    object is constructed and the time of the last call to a read
    method.

    Parameters:
    :   `raf` - a `RandomAccessFile` to read from.

    Throws:
    :   `IllegalArgumentException` - if `raf` is
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
  + ### length

    public long length()

    Returns the length of the underlying file, or `-1`
    if it is unknown.

    Specified by:
    :   `length` in interface `ImageInputStream`

    Overrides:
    :   `length` in class `ImageInputStreamImpl`

    Returns:
    :   the file length as a `long`, or
        `-1`.
  + ### seek

    public void seek(long pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageInputStream`

    Sets the current stream position to the desired location. The
    next read will occur at this location. The bit offset is set
    to 0.

    An `IndexOutOfBoundsException` will be thrown if
    `pos` is smaller than the flushed position (as
    returned by `getflushedPosition`).

    It is legal to seek past the end of the file;
    a `java.io.EOFException` will be thrown only if a read is
    performed.

    Specified by:
    :   `seek` in interface `ImageInputStream`

    Overrides:
    :   `seek` in class `ImageInputStreamImpl`

    Parameters:
    :   `pos` - a `long` containing the desired file
        pointer position.

    Throws:
    :   `IOException` - if any other I/O error occurs.
  + ### close

    public void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageInputStream`

    Closes the stream. Attempts to access a stream that has been
    closed may result in `IOException`s or incorrect
    behavior. Calling this method may allow classes implementing
    this interface to release resources associated with the stream
    such as memory, disk space, or file descriptors.

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