Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class GZIPOutputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.OutputStream](../../io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

[java.util.zip.DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

java.util.zip.GZIPOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class GZIPOutputStream
extends [DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

This class implements a stream filter for writing compressed data in
the GZIP file format.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected CRC32`

  `crc`

  CRC-32 of uncompressed data.

  ### Fields inherited from class java.util.zip.[DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

  `buf, def`

  ### Fields inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GZIPOutputStream(OutputStream out)`

  Creates a new output stream with a default buffer size.

  `GZIPOutputStream(OutputStream out,
  boolean syncFlush)`

  Creates a new output stream with a default buffer size and
  the specified flush mode.

  `GZIPOutputStream(OutputStream out,
  int size)`

  Creates a new output stream with the specified buffer size.

  `GZIPOutputStream(OutputStream out,
  int size,
  boolean syncFlush)`

  Creates a new output stream with the specified buffer size and
  flush mode.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `finish()`

  Finishes writing compressed data to the output stream without closing
  the underlying stream.

  `void`

  `write(byte[] buf,
  int off,
  int len)`

  Writes array of bytes to the compressed output stream.

  ### Methods inherited from class java.util.zip.[DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

  `close, deflate, flush, write`

  ### Methods inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `write`

  ### Methods inherited from class java.io.[OutputStream](../../io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### crc

    protected [CRC32](CRC32.md "class in java.util.zip") crc

    CRC-32 of uncompressed data.
* ## Constructor Details

  + ### GZIPOutputStream

    public GZIPOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    int size)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new output stream with the specified buffer size.

    The new output stream instance is created as if by invoking
    the 3-argument constructor GZIPOutputStream(out, size, false).

    Parameters:
    :   `out` - the output stream
    :   `size` - the output buffer size

    Throws:
    :   `IOException` - If an I/O error has occurred.
    :   `IllegalArgumentException` - if `size <= 0`
  + ### GZIPOutputStream

    public GZIPOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    int size,
    boolean syncFlush)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new output stream with the specified buffer size and
    flush mode.

    Parameters:
    :   `out` - the output stream
    :   `size` - the output buffer size
    :   `syncFlush` - if `true` invocation of the inherited
        [`flush()`](DeflaterOutputStream.md#flush()) method of
        this instance flushes the compressor with flush mode
        [`Deflater.SYNC_FLUSH`](Deflater.md#SYNC_FLUSH) before flushing the output
        stream, otherwise only flushes the output stream

    Throws:
    :   `IOException` - If an I/O error has occurred.
    :   `IllegalArgumentException` - if `size <= 0`

    Since:
    :   1.7
  + ### GZIPOutputStream

    public GZIPOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new output stream with a default buffer size.

    The new output stream instance is created as if by invoking
    the 2-argument constructor GZIPOutputStream(out, false).

    Parameters:
    :   `out` - the output stream

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### GZIPOutputStream

    public GZIPOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    boolean syncFlush)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new output stream with a default buffer size and
    the specified flush mode.

    Parameters:
    :   `out` - the output stream
    :   `syncFlush` - if `true` invocation of the inherited
        [`flush()`](DeflaterOutputStream.md#flush()) method of
        this instance flushes the compressor with flush mode
        [`Deflater.SYNC_FLUSH`](Deflater.md#SYNC_FLUSH) before flushing the output
        stream, otherwise only flushes the output stream

    Throws:
    :   `IOException` - If an I/O error has occurred.

    Since:
    :   1.7
* ## Method Details

  + ### write

    public void write(byte[] buf,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Writes array of bytes to the compressed output stream. This method
    will block until all the bytes are written.

    Overrides:
    :   `write` in class `DeflaterOutputStream`

    Parameters:
    :   `buf` - the data to be written
    :   `off` - the start offset of the data
    :   `len` - the length of the data

    Throws:
    :   `IOException` - If an I/O error has occurred.

    See Also:
    :   - [`FilterOutputStream.write(int)`](../../io/FilterOutputStream.md#write(int))
  + ### finish

    public void finish()
    throws [IOException](../../io/IOException.md "class in java.io")

    Finishes writing compressed data to the output stream without closing
    the underlying stream. Use this method when applying multiple filters
    in succession to the same output stream.

    Overrides:
    :   `finish` in class `DeflaterOutputStream`

    Throws:
    :   `IOException` - if an I/O error has occurred