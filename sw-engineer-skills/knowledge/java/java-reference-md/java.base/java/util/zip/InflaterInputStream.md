Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class InflaterInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

java.util.zip.InflaterInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

Direct Known Subclasses:
:   `GZIPInputStream`, `ZipInputStream`

---

public class InflaterInputStream
extends [FilterInputStream](../../io/FilterInputStream.md "class in java.io")

This class implements a stream filter for uncompressing data in the
"deflate" compression format. It is also used as the basis for other
decompression filters, such as GZIPInputStream.

Since:
:   1.1

See Also:
:   * [`Inflater`](Inflater.md "class in java.util.zip")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected byte[]`

  `buf`

  Input buffer for decompression.

  `protected Inflater`

  `inf`

  Decompressor for this stream.

  `protected int`

  `len`

  The total number of bytes read into the input buffer.

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InflaterInputStream(InputStream in)`

  Creates a new input stream with a default decompressor and buffer size.

  `InflaterInputStream(InputStream in,
  Inflater inf)`

  Creates a new input stream with the specified decompressor and a
  default buffer size.

  `InflaterInputStream(InputStream in,
  Inflater inf,
  int size)`

  Creates a new input stream with the specified decompressor and
  buffer size.
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

  Closes this input stream and releases any system resources associated
  with the stream.

  `protected void`

  `fill()`

  Fills input buffer with more data to decompress.

  `void`

  `mark(int readlimit)`

  Marks the current position in this input stream.

  `boolean`

  `markSupported()`

  Tests if this input stream supports the `mark` and
  `reset` methods.

  `int`

  `read()`

  Reads a byte of uncompressed data.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads uncompressed data into an array of bytes, returning the number of inflated
  bytes.

  `void`

  `reset()`

  Repositions this stream to the position at the time the
  `mark` method was last called on this input stream.

  `long`

  `skip(long n)`

  Skips specified number of bytes of uncompressed data.

  ### Methods inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `read`

  ### Methods inherited from class java.io.[InputStream](../../io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### inf

    protected [Inflater](Inflater.md "class in java.util.zip") inf

    Decompressor for this stream.
  + ### buf

    protected byte[] buf

    Input buffer for decompression.
  + ### len

    protected int len

    The total number of bytes read into the input buffer.
* ## Constructor Details

  + ### InflaterInputStream

    public InflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Inflater](Inflater.md "class in java.util.zip") inf,
    int size)

    Creates a new input stream with the specified decompressor and
    buffer size.

    Parameters:
    :   `in` - the input stream
    :   `inf` - the decompressor ("inflater")
    :   `size` - the input buffer size

    Throws:
    :   `IllegalArgumentException` - if `size <= 0`
  + ### InflaterInputStream

    public InflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Inflater](Inflater.md "class in java.util.zip") inf)

    Creates a new input stream with the specified decompressor and a
    default buffer size.

    Parameters:
    :   `in` - the input stream
    :   `inf` - the decompressor ("inflater")
  + ### InflaterInputStream

    public InflaterInputStream([InputStream](../../io/InputStream.md "class in java.io") in)

    Creates a new input stream with a default decompressor and buffer size.

    Parameters:
    :   `in` - the input stream
* ## Method Details

  + ### read

    public int read()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads a byte of uncompressed data. This method will block until
    enough input is available for decompression.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the byte read, or -1 if end of compressed input is reached

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads uncompressed data into an array of bytes, returning the number of inflated
    bytes. If `len` is not zero, the method will block until some input can be
    decompressed; otherwise, no bytes are read and `0` is returned.

    If this method returns a nonzero integer *n* then `buf[off]`
    through `buf[off+`*n*`-1]` contain the uncompressed
    data. The content of elements `buf[off+`*n*`]` through
    `buf[off+`*len*`-1]` is undefined, contrary to the
    specification of the [`InputStream`](../../io/InputStream.md "class in java.io") superclass,
    so an implementation is free to modify these elements during the inflate
    operation. If this method returns `-1` or throws an exception then
    the content of `buf[off]` through `buf[off+`*len*`-1]` is undefined.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read
    :   `off` - the start offset in the destination array `b`
    :   `len` - the maximum number of bytes read

    Returns:
    :   the actual number of bytes inflated, or -1 if the end of the
        compressed input is reached or a preset dictionary is needed

    Throws:
    :   `NullPointerException` - If `b` is `null`.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### available

    public int available()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns 0 after EOF has been reached, otherwise always return 1.

    Programs should not count on this method to return the actual number
    of bytes that could be read without blocking.

    Overrides:
    :   `available` in class `FilterInputStream`

    Returns:
    :   1 before EOF and 0 after EOF.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### skip

    public long skip(long n)
    throws [IOException](../../io/IOException.md "class in java.io")

    Skips specified number of bytes of uncompressed data.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - the number of bytes to skip

    Returns:
    :   the actual number of bytes skipped.

    Throws:
    :   `IOException` - if an I/O error has occurred
    :   `IllegalArgumentException` - if `n < 0`

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../io/InputStream.md#skipNBytes(long))
  + ### close

    public void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this input stream and releases any system resources associated
    with the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterInputStream`

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### fill

    protected void fill()
    throws [IOException](../../io/IOException.md "class in java.io")

    Fills input buffer with more data to decompress.

    Throws:
    :   `IOException` - if an I/O error has occurred
    :   `EOFException` - if the end of input stream has been reached
        unexpectedly
  + ### markSupported

    public boolean markSupported()

    Tests if this input stream supports the `mark` and
    `reset` methods. The `markSupported`
    method of `InflaterInputStream` returns
    `false`.

    Overrides:
    :   `markSupported` in class `FilterInputStream`

    Returns:
    :   a `boolean` indicating if this stream type supports
        the `mark` and `reset` methods.

    See Also:
    :   - [`InputStream.mark(int)`](../../io/InputStream.md#mark(int))
        - [`InputStream.reset()`](../../io/InputStream.md#reset())
  + ### mark

    public void mark(int readlimit)

    Marks the current position in this input stream.

    Overrides:
    :   `mark` in class `FilterInputStream`

    Parameters:
    :   `readlimit` - the maximum limit of bytes that can be read before
        the mark position becomes invalid.

    See Also:
    :   - [`InputStream.reset()`](../../io/InputStream.md#reset())
  + ### reset

    public void reset()
    throws [IOException](../../io/IOException.md "class in java.io")

    Repositions this stream to the position at the time the
    `mark` method was last called on this input stream.

    Overrides:
    :   `reset` in class `FilterInputStream`

    Throws:
    :   `IOException` - if this method is invoked.

    See Also:
    :   - [`InputStream.mark(int)`](../../io/InputStream.md#mark(int))
        - [`IOException`](../../io/IOException.md "class in java.io")