Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class BufferedOutputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.OutputStream](OutputStream.md "class in java.io")

[java.io.FilterOutputStream](FilterOutputStream.md "class in java.io")

java.io.BufferedOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class BufferedOutputStream
extends [FilterOutputStream](FilterOutputStream.md "class in java.io")

The class implements a buffered output stream. By setting up such
an output stream, an application can write bytes to the underlying
output stream without necessarily causing a call to the underlying
system for each byte written.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected byte[]`

  `buf`

  The internal buffer where data is stored.

  `protected int`

  `count`

  The number of valid bytes in the buffer.

  ### Fields inherited from class java.io.[FilterOutputStream](FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BufferedOutputStream(OutputStream out)`

  Creates a new buffered output stream to write data to the
  specified underlying output stream.

  `BufferedOutputStream(OutputStream out,
  int size)`

  Creates a new buffered output stream to write data to the
  specified underlying output stream with the specified buffer
  size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `flush()`

  Flushes this buffered output stream.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes `len` bytes from the specified byte array
  starting at offset `off` to this buffered output stream.

  `void`

  `write(int b)`

  Writes the specified byte to this buffered output stream.

  ### Methods inherited from class java.io.[FilterOutputStream](FilterOutputStream.md "class in java.io")

  `close, write`

  ### Methods inherited from class java.io.[OutputStream](OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### buf

    protected byte[] buf

    The internal buffer where data is stored.
  + ### count

    protected int count

    The number of valid bytes in the buffer. This value is always
    in the range `0` through `buf.length`; elements
    `buf[0]` through `buf[count-1]` contain valid
    byte data.
* ## Constructor Details

  + ### BufferedOutputStream

    public BufferedOutputStream([OutputStream](OutputStream.md "class in java.io") out)

    Creates a new buffered output stream to write data to the
    specified underlying output stream.

    Parameters:
    :   `out` - the underlying output stream.
  + ### BufferedOutputStream

    public BufferedOutputStream([OutputStream](OutputStream.md "class in java.io") out,
    int size)

    Creates a new buffered output stream to write data to the
    specified underlying output stream with the specified buffer
    size.

    Parameters:
    :   `out` - the underlying output stream.
    :   `size` - the buffer size.

    Throws:
    :   `IllegalArgumentException` - if size <= 0.
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](IOException.md "class in java.io")

    Writes the specified byte to this buffered output stream.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the byte to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes `len` bytes from the specified byte array
    starting at offset `off` to this buffered output stream.

    Ordinarily this method stores bytes from the given array into this
    stream's buffer, flushing the buffer to the underlying output stream as
    needed. If the requested length is at least as large as this stream's
    buffer, however, then this method will flush the buffer and write the
    bytes directly to the underlying output stream. Thus redundant
    `BufferedOutputStream`s will not copy data unnecessarily.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the data.
    :   `off` - the start offset in the data.
    :   `len` - the number of bytes to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`

    See Also:
    :   - [`FilterOutputStream.write(int)`](FilterOutputStream.md#write(int))
  + ### flush

    public void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes this buffered output stream. This forces any buffered
    output bytes to be written out to the underlying output stream.

    Specified by:
    :   `flush` in interface `Flushable`

    Overrides:
    :   `flush` in class `FilterOutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)