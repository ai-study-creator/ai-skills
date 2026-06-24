Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class CheckedInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

java.util.zip.CheckedInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class CheckedInputStream
extends [FilterInputStream](../../io/FilterInputStream.md "class in java.io")

An input stream that also maintains a checksum of the data being read.
The checksum can then be used to verify the integrity of the input data.

Since:
:   1.1

See Also:
:   * [`Checksum`](Checksum.md "interface in java.util.zip")

* ## Field Summary

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CheckedInputStream(InputStream in,
  Checksum cksum)`

  Creates an input stream using the specified Checksum.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Checksum`

  `getChecksum()`

  Returns the Checksum for this input stream.

  `int`

  `read()`

  Reads a byte.

  `int`

  `read(byte[] buf,
  int off,
  int len)`

  Reads into an array of bytes.

  `long`

  `skip(long n)`

  Skips specified number of bytes of input.

  ### Methods inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `available, close, mark, markSupported, read, reset`

  ### Methods inherited from class java.io.[InputStream](../../io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CheckedInputStream

    public CheckedInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Checksum](Checksum.md "interface in java.util.zip") cksum)

    Creates an input stream using the specified Checksum.

    Parameters:
    :   `in` - the input stream
    :   `cksum` - the Checksum
* ## Method Details

  + ### read

    public int read()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads a byte. Will block if no input is available.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the byte read, or -1 if the end of the stream is reached.

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### read

    public int read(byte[] buf,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads into an array of bytes. If `len` is not zero, the method
    blocks until some input is available; otherwise, no
    bytes are read and `0` is returned.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `buf` - the buffer into which the data is read
    :   `off` - the start offset in the destination array `b`
    :   `len` - the maximum number of bytes read

    Returns:
    :   the actual number of bytes read, or -1 if the end
        of the stream is reached.

    Throws:
    :   `NullPointerException` - If `buf` is `null`.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `buf.length - off`
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### skip

    public long skip(long n)
    throws [IOException](../../io/IOException.md "class in java.io")

    Skips specified number of bytes of input.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - the number of bytes to skip

    Returns:
    :   the actual number of bytes skipped

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../io/InputStream.md#skipNBytes(long))
  + ### getChecksum

    public [Checksum](Checksum.md "interface in java.util.zip") getChecksum()

    Returns the Checksum for this input stream.

    Returns:
    :   the Checksum value