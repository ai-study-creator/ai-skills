Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class DeflaterInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

java.util.zip.DeflaterInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class DeflaterInputStream
extends [FilterInputStream](../../io/FilterInputStream.md "class in java.io")

Implements an input stream filter for compressing data in the "deflate"
compression format.

Since:
:   1.6

See Also:
:   * [`DeflaterOutputStream`](DeflaterOutputStream.md "class in java.util.zip")
    * [`InflaterOutputStream`](InflaterOutputStream.md "class in java.util.zip")
    * [`InflaterInputStream`](InflaterInputStream.md "class in java.util.zip")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final byte[]`

  `buf`

  Input buffer for reading compressed data.

  `protected final Deflater`

  `def`

  Compressor for this stream.

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DeflaterInputStream(InputStream in)`

  Creates a new input stream with a default compressor and buffer
  size.

  `DeflaterInputStream(InputStream in,
  Deflater defl)`

  Creates a new input stream with the specified compressor and a
  default buffer size.

  `DeflaterInputStream(InputStream in,
  Deflater defl,
  int bufLen)`

  Creates a new input stream with the specified compressor and buffer
  size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns 0 after EOF has been reached, otherwise always return 1.

  `void`

  `close()`

  Closes this input stream and its underlying input stream, discarding
  any pending uncompressed data.

  `void`

  `mark(int limit)`

  *This operation is not supported*.

  `boolean`

  `markSupported()`

  Always returns `false` because this input stream does not support
  the [`mark()`](#mark(int)) and [`reset()`](#reset()) methods.

  `int`

  `read()`

  Reads a single byte of compressed data from the input stream.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads compressed data into a byte array.

  `void`

  `reset()`

  *This operation is not supported*.

  `long`

  `skip(long n)`

  Skips over and discards data from the input stream.

  ### Methods inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `read`

  ### Methods inherited from class java.io.[InputStream](../../io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### def

    protected final [Deflater](Deflater.md "class in java.util.zip") def

    Compressor for this stream.
  + ### buf

    protected final byte[] buf

    Input buffer for reading compressed data.
* ## Constructor Details

  + ### DeflaterInputStream

    public DeflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in)

    Creates a new input stream with a default compressor and buffer
    size.

    Parameters:
    :   `in` - input stream to read the uncompressed data to

    Throws:
    :   `NullPointerException` - if `in` is null
  + ### DeflaterInputStream

    public DeflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Deflater](Deflater.md "class in java.util.zip") defl)

    Creates a new input stream with the specified compressor and a
    default buffer size.

    Parameters:
    :   `in` - input stream to read the uncompressed data to
    :   `defl` - compressor ("deflater") for this stream

    Throws:
    :   `NullPointerException` - if `in` or `defl` is null
  + ### DeflaterInputStream

    public DeflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Deflater](Deflater.md "class in java.util.zip") defl,
    int bufLen)

    Creates a new input stream with the specified compressor and buffer
    size.

    Parameters:
    :   `in` - input stream to read the uncompressed data to
    :   `defl` - compressor ("deflater") for this stream
    :   `bufLen` - compression buffer size

    Throws:
    :   `IllegalArgumentException` - if `bufLen <= 0`
    :   `NullPointerException` - if `in` or `defl` is null
* ## Method Details

  + ### close

    public void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this input stream and its underlying input stream, discarding
    any pending uncompressed data.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterInputStream`

    Throws:
    :   `IOException` - if an I/O error occurs

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### read

    public int read()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads a single byte of compressed data from the input stream.
    This method will block until some input can be read and compressed.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   a single byte of compressed data, or -1 if the end of the
        uncompressed input stream is reached

    Throws:
    :   `IOException` - if an I/O error occurs or if this stream is
        already closed

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads compressed data into a byte array.
    This method will block until some input can be read and compressed.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - buffer into which the data is read
    :   `off` - starting offset of the data within `b`
    :   `len` - maximum number of compressed bytes to read into `b`

    Returns:
    :   the actual number of bytes read, or -1 if the end of the
        uncompressed input stream is reached

    Throws:
    :   `IndexOutOfBoundsException` - if `len > b.length - off`
    :   `IOException` - if an I/O error occurs or if this input stream is
        already closed

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### skip

    public long skip(long n)
    throws [IOException](../../io/IOException.md "class in java.io")

    Skips over and discards data from the input stream.
    This method may block until the specified number of bytes are read and
    skipped. *Note:* While `n` is given as a `long`,
    the maximum number of bytes which can be skipped is
    `Integer.MAX_VALUE`.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - number of bytes to be skipped

    Returns:
    :   the actual number of bytes skipped

    Throws:
    :   `IOException` - if an I/O error occurs or if this stream is
        already closed

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../io/InputStream.md#skipNBytes(long))
  + ### available

    public int available()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns 0 after EOF has been reached, otherwise always return 1.

    Programs should not count on this method to return the actual number
    of bytes that could be read without blocking

    Overrides:
    :   `available` in class `FilterInputStream`

    Returns:
    :   zero after the end of the underlying input stream has been
        reached, otherwise always returns 1

    Throws:
    :   `IOException` - if an I/O error occurs or if this stream is
        already closed
  + ### markSupported

    public boolean markSupported()

    Always returns `false` because this input stream does not support
    the [`mark()`](#mark(int)) and [`reset()`](#reset()) methods.

    Overrides:
    :   `markSupported` in class `FilterInputStream`

    Returns:
    :   false, always

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
        - [`InputStream.mark(int)`](../../io/InputStream.md#mark(int))
        - [`InputStream.reset()`](../../io/InputStream.md#reset())
  + ### mark

    public void mark(int limit)

    *This operation is not supported*.

    Overrides:
    :   `mark` in class `FilterInputStream`

    Parameters:
    :   `limit` - maximum bytes that can be read before invalidating the position marker

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
        - [`FilterInputStream.reset()`](../../io/FilterInputStream.md#reset())
  + ### reset

    public void reset()
    throws [IOException](../../io/IOException.md "class in java.io")

    *This operation is not supported*.

    Overrides:
    :   `reset` in class `FilterInputStream`

    Throws:
    :   `IOException` - always thrown

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
        - [`FilterInputStream.mark(int)`](../../io/FilterInputStream.md#mark(int))