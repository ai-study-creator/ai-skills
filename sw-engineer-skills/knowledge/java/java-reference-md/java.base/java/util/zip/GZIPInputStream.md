Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class GZIPInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

[java.util.zip.InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

java.util.zip.GZIPInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class GZIPInputStream
extends [InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

This class implements a stream filter for reading compressed data in
the GZIP file format.

Since:
:   1.1

See Also:
:   * [`InflaterInputStream`](InflaterInputStream.md "class in java.util.zip")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected CRC32`

  `crc`

  CRC-32 for uncompressed data.

  `protected boolean`

  `eos`

  Indicates end of input stream.

  `static final int`

  `GZIP_MAGIC`

  GZIP header magic number.

  ### Fields inherited from class java.util.zip.[InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

  `buf, inf, len`

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GZIPInputStream(InputStream in)`

  Creates a new input stream with a default buffer size.

  `GZIPInputStream(InputStream in,
  int size)`

  Creates a new input stream with the specified buffer size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this input stream and releases any system resources associated
  with the stream.

  `int`

  `read(byte[] buf,
  int off,
  int len)`

  Reads uncompressed data into an array of bytes, returning the number of inflated
  bytes.

  ### Methods inherited from class java.util.zip.[InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

  `available, fill, mark, markSupported, read, reset, skip`

  ### Methods inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `read`

  ### Methods inherited from class java.io.[InputStream](../../io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### crc

    protected [CRC32](CRC32.md "class in java.util.zip") crc

    CRC-32 for uncompressed data.
  + ### eos

    protected boolean eos

    Indicates end of input stream.
  + ### GZIP\_MAGIC

    public static final int GZIP\_MAGIC

    GZIP header magic number.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.GZIPInputStream.GZIP_MAGIC)
* ## Constructor Details

  + ### GZIPInputStream

    public GZIPInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    int size)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new input stream with the specified buffer size.

    Parameters:
    :   `in` - the input stream
    :   `size` - the input buffer size

    Throws:
    :   `ZipException` - if a GZIP format error has occurred or the
        compression method used is unsupported
    :   `IOException` - if an I/O error has occurred
    :   `IllegalArgumentException` - if `size <= 0`
  + ### GZIPInputStream

    public GZIPInputStream([InputStream](../../io/InputStream.md "class in java.io") in)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new input stream with a default buffer size.

    Parameters:
    :   `in` - the input stream

    Throws:
    :   `ZipException` - if a GZIP format error has occurred or the
        compression method used is unsupported
    :   `IOException` - if an I/O error has occurred
* ## Method Details

  + ### read

    public int read(byte[] buf,
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
    :   `read` in class `InflaterInputStream`

    Parameters:
    :   `buf` - the buffer into which the data is read
    :   `off` - the start offset in the destination array `buf`
    :   `len` - the maximum number of bytes read

    Returns:
    :   the actual number of bytes inflated, or -1 if the end of the
        compressed input stream is reached

    Throws:
    :   `NullPointerException` - If `buf` is `null`.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `buf.length - off`
    :   `ZipException` - if the compressed input data is corrupt.
    :   `IOException` - if an I/O error has occurred.

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
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
    :   `close` in class `InflaterInputStream`

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)