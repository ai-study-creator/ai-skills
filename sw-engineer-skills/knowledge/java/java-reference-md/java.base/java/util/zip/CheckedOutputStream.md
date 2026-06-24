Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class CheckedOutputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.OutputStream](../../io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

java.util.zip.CheckedOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class CheckedOutputStream
extends [FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

An output stream that also maintains a checksum of the data being
written. The checksum can then be used to verify the integrity of
the output data.

Since:
:   1.1

See Also:
:   * [`Checksum`](Checksum.md "interface in java.util.zip")

* ## Field Summary

  ### Fields inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CheckedOutputStream(OutputStream out,
  Checksum cksum)`

  Creates an output stream with the specified Checksum.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Checksum`

  `getChecksum()`

  Returns the Checksum for this output stream.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes an array of bytes.

  `void`

  `write(int b)`

  Writes a byte.

  ### Methods inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `close, flush, write`

  ### Methods inherited from class java.io.[OutputStream](../../io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CheckedOutputStream

    public CheckedOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    [Checksum](Checksum.md "interface in java.util.zip") cksum)

    Creates an output stream with the specified Checksum.

    Parameters:
    :   `out` - the output stream
    :   `cksum` - the checksum
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](../../io/IOException.md "class in java.io")

    Writes a byte. Will block until the byte is actually written.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the byte to be written

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Writes an array of bytes. Will block until the bytes are
    actually written.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the data to be written
    :   `off` - the start offset of the data
    :   `len` - the number of bytes to be written

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterOutputStream.write(int)`](../../io/FilterOutputStream.md#write(int))
  + ### getChecksum

    public [Checksum](Checksum.md "interface in java.util.zip") getChecksum()

    Returns the Checksum for this output stream.

    Returns:
    :   the Checksum