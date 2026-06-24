Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class DataOutputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.OutputStream](OutputStream.md "class in java.io")

[java.io.FilterOutputStream](FilterOutputStream.md "class in java.io")

java.io.DataOutputStream

All Implemented Interfaces:
:   `Closeable`, `DataOutput`, `Flushable`, `AutoCloseable`

---

public class DataOutputStream
extends [FilterOutputStream](FilterOutputStream.md "class in java.io")
implements [DataOutput](DataOutput.md "interface in java.io")

A data output stream lets an application write primitive Java data
types to an output stream in a portable way. An application can
then use a data input stream to read the data back in.

A DataOutputStream is not safe for use by multiple concurrent
threads. If a DataOutputStream is to be used by more than one
thread then access to the data output stream should be controlled
by appropriate synchronization.

Since:
:   1.0

See Also:
:   * [`DataInputStream`](DataInputStream.md "class in java.io")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `written`

  The number of bytes written to the data output stream so far.

  ### Fields inherited from class java.io.[FilterOutputStream](FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DataOutputStream(OutputStream out)`

  Creates a new data output stream to write data to the specified
  underlying output stream.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `flush()`

  Flushes this data output stream.

  `final int`

  `size()`

  Returns the current value of the counter `written`,
  the number of bytes written to this data output stream so far.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes `len` bytes from the specified byte array
  starting at offset `off` to the underlying output stream.

  `void`

  `write(int b)`

  Writes the specified byte (the low eight bits of the argument
  `b`) to the underlying output stream.

  `final void`

  `writeBoolean(boolean v)`

  Writes a `boolean` to the underlying output stream as
  a 1-byte value.

  `final void`

  `writeByte(int v)`

  Writes out a `byte` to the underlying output stream as
  a 1-byte value.

  `final void`

  `writeBytes(String s)`

  Writes out the string to the underlying output stream as a
  sequence of bytes.

  `final void`

  `writeChar(int v)`

  Writes a `char` to the underlying output stream as a
  2-byte value, high byte first.

  `final void`

  `writeChars(String s)`

  Writes a string to the underlying output stream as a sequence of
  characters.

  `final void`

  `writeDouble(double v)`

  Converts the double argument to a `long` using the
  `doubleToLongBits` method in class `Double`,
  and then writes that `long` value to the underlying
  output stream as an 8-byte quantity, high byte first.

  `final void`

  `writeFloat(float v)`

  Converts the float argument to an `int` using the
  `floatToIntBits` method in class `Float`,
  and then writes that `int` value to the underlying
  output stream as a 4-byte quantity, high byte first.

  `final void`

  `writeInt(int v)`

  Writes an `int` to the underlying output stream as four
  bytes, high byte first.

  `final void`

  `writeLong(long v)`

  Writes a `long` to the underlying output stream as eight
  bytes, high byte first.

  `final void`

  `writeShort(int v)`

  Writes a `short` to the underlying output stream as two
  bytes, high byte first.

  `final void`

  `writeUTF(String str)`

  Writes a string to the underlying output stream using
  [modified UTF-8](DataInput.md#modified-utf-8)
  encoding in a machine-independent manner.

  ### Methods inherited from class java.io.[FilterOutputStream](FilterOutputStream.md "class in java.io")

  `close, write`

  ### Methods inherited from class java.io.[OutputStream](OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.io.[DataOutput](DataOutput.md "interface in java.io")

  `write`

* ## Field Details

  + ### written

    protected int written

    The number of bytes written to the data output stream so far.
    If this counter overflows, it will be wrapped to Integer.MAX\_VALUE.
* ## Constructor Details

  + ### DataOutputStream

    public DataOutputStream([OutputStream](OutputStream.md "class in java.io") out)

    Creates a new data output stream to write data to the specified
    underlying output stream. The counter `written` is
    set to zero.

    Parameters:
    :   `out` - the underlying output stream, to be saved for later
        use.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](IOException.md "class in java.io")

    Writes the specified byte (the low eight bits of the argument
    `b`) to the underlying output stream. If no exception
    is thrown, the counter `written` is incremented by
    `1`.

    Implements the `write` method of `OutputStream`.

    Specified by:
    :   `write` in interface `DataOutput`

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the `byte` to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes `len` bytes from the specified byte array
    starting at offset `off` to the underlying output stream.
    If no exception is thrown, the counter `written` is
    incremented by `len`.

    Specified by:
    :   `write` in interface `DataOutput`

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
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### flush

    public void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes this data output stream. This forces any buffered output
    bytes to be written out to the stream.

    The `flush` method of `DataOutputStream`
    calls the `flush` method of its underlying output stream.

    Specified by:
    :   `flush` in interface `Flushable`

    Overrides:
    :   `flush` in class `FilterOutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
        - [`OutputStream.flush()`](OutputStream.md#flush())
  + ### writeBoolean

    public final void writeBoolean(boolean v)
    throws [IOException](IOException.md "class in java.io")

    Writes a `boolean` to the underlying output stream as
    a 1-byte value. The value `true` is written out as the
    value `(byte)1`; the value `false` is
    written out as the value `(byte)0`. If no exception is
    thrown, the counter `written` is incremented by
    `1`.

    Specified by:
    :   `writeBoolean` in interface `DataOutput`

    Parameters:
    :   `v` - a `boolean` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeByte

    public final void writeByte(int v)
    throws [IOException](IOException.md "class in java.io")

    Writes out a `byte` to the underlying output stream as
    a 1-byte value. If no exception is thrown, the counter
    `written` is incremented by `1`.

    Specified by:
    :   `writeByte` in interface `DataOutput`

    Parameters:
    :   `v` - a `byte` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeShort

    public final void writeShort(int v)
    throws [IOException](IOException.md "class in java.io")

    Writes a `short` to the underlying output stream as two
    bytes, high byte first. If no exception is thrown, the counter
    `written` is incremented by `2`.

    Specified by:
    :   `writeShort` in interface `DataOutput`

    Parameters:
    :   `v` - a `short` to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeChar

    public final void writeChar(int v)
    throws [IOException](IOException.md "class in java.io")

    Writes a `char` to the underlying output stream as a
    2-byte value, high byte first. If no exception is thrown, the
    counter `written` is incremented by `2`.

    Specified by:
    :   `writeChar` in interface `DataOutput`

    Parameters:
    :   `v` - a `char` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeInt

    public final void writeInt(int v)
    throws [IOException](IOException.md "class in java.io")

    Writes an `int` to the underlying output stream as four
    bytes, high byte first. If no exception is thrown, the counter
    `written` is incremented by `4`.

    Specified by:
    :   `writeInt` in interface `DataOutput`

    Parameters:
    :   `v` - an `int` to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeLong

    public final void writeLong(long v)
    throws [IOException](IOException.md "class in java.io")

    Writes a `long` to the underlying output stream as eight
    bytes, high byte first. In no exception is thrown, the counter
    `written` is incremented by `8`.

    Specified by:
    :   `writeLong` in interface `DataOutput`

    Parameters:
    :   `v` - a `long` to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeFloat

    public final void writeFloat(float v)
    throws [IOException](IOException.md "class in java.io")

    Converts the float argument to an `int` using the
    `floatToIntBits` method in class `Float`,
    and then writes that `int` value to the underlying
    output stream as a 4-byte quantity, high byte first. If no
    exception is thrown, the counter `written` is
    incremented by `4`.

    Specified by:
    :   `writeFloat` in interface `DataOutput`

    Parameters:
    :   `v` - a `float` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
        - [`Float.floatToIntBits(float)`](../lang/Float.md#floatToIntBits(float))
  + ### writeDouble

    public final void writeDouble(double v)
    throws [IOException](IOException.md "class in java.io")

    Converts the double argument to a `long` using the
    `doubleToLongBits` method in class `Double`,
    and then writes that `long` value to the underlying
    output stream as an 8-byte quantity, high byte first. If no
    exception is thrown, the counter `written` is
    incremented by `8`.

    Specified by:
    :   `writeDouble` in interface `DataOutput`

    Parameters:
    :   `v` - a `double` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
        - [`Double.doubleToLongBits(double)`](../lang/Double.md#doubleToLongBits(double))
  + ### writeBytes

    public final void writeBytes([String](../lang/String.md "class in java.lang") s)
    throws [IOException](IOException.md "class in java.io")

    Writes out the string to the underlying output stream as a
    sequence of bytes. Each character in the string is written out, in
    sequence, by discarding its high eight bits. If no exception is
    thrown, the counter `written` is incremented by the
    length of `s`.

    Specified by:
    :   `writeBytes` in interface `DataOutput`

    Parameters:
    :   `s` - a string of bytes to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeChars

    public final void writeChars([String](../lang/String.md "class in java.lang") s)
    throws [IOException](IOException.md "class in java.io")

    Writes a string to the underlying output stream as a sequence of
    characters. Each character is written to the data output stream as
    if by the `writeChar` method. If no exception is
    thrown, the counter `written` is incremented by twice
    the length of `s`.

    Specified by:
    :   `writeChars` in interface `DataOutput`

    Parameters:
    :   `s` - a `String` value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`writeChar(int)`](#writeChar(int))
        - [`FilterOutputStream.out`](FilterOutputStream.md#out)
  + ### writeUTF

    public final void writeUTF([String](../lang/String.md "class in java.lang") str)
    throws [IOException](IOException.md "class in java.io")

    Writes a string to the underlying output stream using
    [modified UTF-8](DataInput.md#modified-utf-8)
    encoding in a machine-independent manner.

    First, two bytes are written to the output stream as if by the
    `writeShort` method giving the number of bytes to
    follow. This value is the number of bytes actually written out,
    not the length of the string. Following the length, each character
    of the string is output, in sequence, using the modified UTF-8 encoding
    for the character. If no exception is thrown, the counter
    `written` is incremented by the total number of
    bytes written to the output stream. This will be at least two
    plus the length of `str`, and at most two plus
    thrice the length of `str`.

    Specified by:
    :   `writeUTF` in interface `DataOutput`

    Parameters:
    :   `str` - a string to be written.

    Throws:
    :   `UTFDataFormatException` - if the modified UTF-8 encoding of
        `str` would exceed 65535 bytes in length
    :   `IOException` - if some other I/O error occurs.

    See Also:
    :   - [`writeChars(String)`](#writeChars(java.lang.String))
  + ### size

    public final int size()

    Returns the current value of the counter `written`,
    the number of bytes written to this data output stream so far.
    If the counter overflows, it will be wrapped to Integer.MAX\_VALUE.

    Returns:
    :   the value of the `written` field.

    See Also:
    :   - [`written`](#written)