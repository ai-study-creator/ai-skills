Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.stream](package-summary.md)

# Class ImageOutputStreamImpl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.stream.ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

javax.imageio.stream.ImageOutputStreamImpl

All Implemented Interfaces:
:   `Closeable`, `DataInput`, `DataOutput`, `AutoCloseable`, `ImageInputStream`, `ImageOutputStream`

Direct Known Subclasses:
:   `FileCacheImageOutputStream`, `FileImageOutputStream`, `MemoryCacheImageOutputStream`

---

public abstract class ImageOutputStreamImpl
extends [ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")
implements [ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream")

An abstract class implementing the `ImageOutputStream` interface.
This class is designed to reduce the number of methods that must
be implemented by subclasses.

* ## Field Summary

  ### Fields inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `bitOffset, byteOrder, flushedPos, streamPos`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImageOutputStreamImpl()`

  Constructs an `ImageOutputStreamImpl`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final void`

  `flushBits()`

  If the bit offset is non-zero, forces the remaining bits
  in the current byte to 0 and advances the stream position
  by one.

  `void`

  `write(byte[] b)`

  Writes a sequence of bytes to the stream at the current
  position.

  `abstract void`

  `write(byte[] b,
  int off,
  int len)`

  Writes a sequence of bytes to the stream at the current
  position.

  `abstract void`

  `write(int b)`

  Writes a single byte to the stream at the current position.

  `void`

  `writeBit(int bit)`

  Writes a single bit, given by the least significant bit of the
  argument, to the stream at the current bit offset within the
  current byte position.

  `void`

  `writeBits(long bits,
  int numBits)`

  Writes a sequence of bits, given by the `numBits`
  least significant bits of the `bits` argument in
  left-to-right order, to the stream at the current bit offset
  within the current byte position.

  `void`

  `writeBoolean(boolean v)`

  Writes a `boolean` value to the stream.

  `void`

  `writeByte(int v)`

  Writes the 8 low-order bits of `v` to the
  stream.

  `void`

  `writeBytes(String s)`

  Writes a string to the output stream.

  `void`

  `writeChar(int v)`

  This method is a synonym for [`writeShort`](ImageOutputStream.md#writeShort(int)).

  `void`

  `writeChars(char[] c,
  int off,
  int len)`

  Writes a sequence of chars to the stream at the current
  position.

  `void`

  `writeChars(String s)`

  Writes a string to the output stream.

  `void`

  `writeDouble(double v)`

  Writes a `double` value, which is comprised of four
  bytes, to the output stream.

  `void`

  `writeDoubles(double[] d,
  int off,
  int len)`

  Writes a sequence of doubles to the stream at the current
  position.

  `void`

  `writeFloat(float v)`

  Writes a `float` value, which is comprised of four
  bytes, to the output stream.

  `void`

  `writeFloats(float[] f,
  int off,
  int len)`

  Writes a sequence of floats to the stream at the current
  position.

  `void`

  `writeInt(int v)`

  Writes the 32 bits of `v` to the stream.

  `void`

  `writeInts(int[] i,
  int off,
  int len)`

  Writes a sequence of ints to the stream at the current
  position.

  `void`

  `writeLong(long v)`

  Writes the 64 bits of `v` to the stream.

  `void`

  `writeLongs(long[] l,
  int off,
  int len)`

  Writes a sequence of longs to the stream at the current
  position.

  `void`

  `writeShort(int v)`

  Writes the 16 low-order bits of `v` to the
  stream.

  `void`

  `writeShorts(short[] s,
  int off,
  int len)`

  Writes a sequence of shorts to the stream at the current
  position.

  `void`

  `writeUTF(String s)`

  Writes two bytes of length information to the output stream in
  network byte order, followed by the
  [modified UTF-8](../../../../java.base/java/io/DataInput.md#modified-utf-8)
  representation of every character in the string `s`.

  ### Methods inherited from class javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  `checkClosed, close, finalize, flush, flushBefore, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, isCached, isCachedFile, isCachedMemory, length, mark, read, read, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, seek, setBitOffset, setByteOrder, skipBytes, skipBytes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream")

  `close, flush, getBitOffset, getByteOrder, getFlushedPosition, getStreamPosition, isCached, isCachedFile, isCachedMemory, length, mark, read, read, read, readBit, readBits, readBoolean, readByte, readBytes, readChar, readDouble, readFloat, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedInt, readUnsignedShort, readUTF, reset, seek, setBitOffset, setByteOrder, skipBytes, skipBytes`

  ### Methods inherited from interface javax.imageio.stream.[ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream")

  `flushBefore`

* ## Constructor Details

  + ### ImageOutputStreamImpl

    public ImageOutputStreamImpl()

    Constructs an `ImageOutputStreamImpl`.
* ## Method Details

  + ### write

    public abstract void write(int b)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a single byte to the stream at the current position.
    The 24 high-order bits of `b` are ignored.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write. Implementers can use the
    [`flushBits`](#flushBits())
    method of [`ImageOutputStreamImpl`](ImageOutputStreamImpl.md "class in javax.imageio.stream")
    to guarantee this.

    Specified by:
    :   `write` in interface `DataOutput`

    Specified by:
    :   `write` in interface `ImageOutputStream`

    Parameters:
    :   `b` - an `int` whose lower 8 bits are to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of bytes to the stream at the current
    position. If `b.length` is 0, nothing is written.
    The byte `b[0]` is written first, then the byte
    `b[1]`, and so on.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `write` in interface `DataOutput`

    Specified by:
    :   `write` in interface `ImageOutputStream`

    Parameters:
    :   `b` - an array of `byte`s to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public abstract void write(byte[] b,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of bytes to the stream at the current
    position. If `len` is 0, nothing is written.
    The byte `b[off]` is written first, then the byte
    `b[off + 1]`, and so on.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write. Implementers can use the
    [`flushBits`](#flushBits())
    method of [`ImageOutputStreamImpl`](ImageOutputStreamImpl.md "class in javax.imageio.stream")
    to guarantee this.

    Specified by:
    :   `write` in interface `DataOutput`

    Specified by:
    :   `write` in interface `ImageOutputStream`

    Parameters:
    :   `b` - an array of `byte`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `byte`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeBoolean

    public void writeBoolean(boolean v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a `boolean` value to the stream. If
    `v` is true, the value `(byte)1` is
    written; if `v` is false, the value
    `(byte)0` is written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeBoolean` in interface `DataOutput`

    Specified by:
    :   `writeBoolean` in interface `ImageOutputStream`

    Parameters:
    :   `v` - the `boolean` to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeByte

    public void writeByte(int v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes the 8 low-order bits of `v` to the
    stream. The 24 high-order bits of `v` are ignored.
    (This means that `writeByte` does exactly the same
    thing as `write` for an integer argument.)

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeByte` in interface `DataOutput`

    Specified by:
    :   `writeByte` in interface `ImageOutputStream`

    Parameters:
    :   `v` - an `int` containing the byte value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeShort

    public void writeShort(int v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes the 16 low-order bits of `v` to the
    stream. The 16 high-order bits of `v` are ignored.
    If the stream uses network byte order, the bytes written, in
    order, will be:

    ```
     (byte)((v >> 8) & 0xff)
     (byte)(v & 0xff)
    ```

    Otherwise, the bytes written will be:

    ```
     (byte)(v & 0xff)
     (byte)((v >> 8) & 0xff)
    ```

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeShort` in interface `DataOutput`

    Specified by:
    :   `writeShort` in interface `ImageOutputStream`

    Parameters:
    :   `v` - an `int` containing the short value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeChar

    public void writeChar(int v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    This method is a synonym for [`writeShort`](ImageOutputStream.md#writeShort(int)).

    Specified by:
    :   `writeChar` in interface `DataOutput`

    Specified by:
    :   `writeChar` in interface `ImageOutputStream`

    Parameters:
    :   `v` - an `int` containing the char (unsigned
        short) value to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`ImageOutputStream.writeShort(int)`](ImageOutputStream.md#writeShort(int))
  + ### writeInt

    public void writeInt(int v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes the 32 bits of `v` to the stream. If the
    stream uses network byte order, the bytes written, in order,
    will be:

    ```
     (byte)((v >> 24) & 0xff)
     (byte)((v >> 16) & 0xff)
     (byte)((v >> 8) & 0xff)
     (byte)(v & 0xff)
    ```

    Otherwise, the bytes written will be:

    ```
     (byte)(v & 0xff)
     (byte)((v >> 8) & 0xff)
     (byte)((v >> 16) & 0xff)
     (byte)((v >> 24) & 0xff)
    ```

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeInt` in interface `DataOutput`

    Specified by:
    :   `writeInt` in interface `ImageOutputStream`

    Parameters:
    :   `v` - an `int` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeLong

    public void writeLong(long v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes the 64 bits of `v` to the stream. If the
    stream uses network byte order, the bytes written, in order,
    will be:

    ```
     (byte)((v >> 56) & 0xff)
     (byte)((v >> 48) & 0xff)
     (byte)((v >> 40) & 0xff)
     (byte)((v >> 32) & 0xff)
     (byte)((v >> 24) & 0xff)
     (byte)((v >> 16) & 0xff)
     (byte)((v >> 8) & 0xff)
     (byte)(v & 0xff)
    ```

    Otherwise, the bytes written will be:

    ```
     (byte)(v & 0xff)
     (byte)((v >> 8) & 0xff)
     (byte)((v >> 16) & 0xff)
     (byte)((v >> 24) & 0xff)
     (byte)((v >> 32) & 0xff)
     (byte)((v >> 40) & 0xff)
     (byte)((v >> 48) & 0xff)
     (byte)((v >> 56) & 0xff)
    ```

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeLong` in interface `DataOutput`

    Specified by:
    :   `writeLong` in interface `ImageOutputStream`

    Parameters:
    :   `v` - a `long` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeFloat

    public void writeFloat(float v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a `float` value, which is comprised of four
    bytes, to the output stream. It does this as if it first
    converts this `float` value to an `int`
    in exactly the manner of the `Float.floatToIntBits`
    method and then writes the int value in exactly the manner of
    the `writeInt` method.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeFloat` in interface `DataOutput`

    Specified by:
    :   `writeFloat` in interface `ImageOutputStream`

    Parameters:
    :   `v` - a `float` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeDouble

    public void writeDouble(double v)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a `double` value, which is comprised of four
    bytes, to the output stream. It does this as if it first
    converts this `double` value to a `long`
    in exactly the manner of the
    `Double.doubleToLongBits` method and then writes the
    long value in exactly the manner of the `writeLong`
    method.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeDouble` in interface `DataOutput`

    Specified by:
    :   `writeDouble` in interface `ImageOutputStream`

    Parameters:
    :   `v` - a `double` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeBytes

    public void writeBytes([String](../../../../java.base/java/lang/String.md "class in java.lang") s)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a string to the output stream. For every character in
    the string `s`, taken in order, one byte is written
    to the output stream. If `s` is `null`, a
    `NullPointerException` is thrown.

    If `s.length` is zero, then no bytes are
    written. Otherwise, the character `s[0]` is written
    first, then `s[1]`, and so on; the last character
    written is `s[s.length-1]`. For each character, one
    byte is written, the low-order byte, in exactly the manner of
    the `writeByte` method. The high-order eight bits of
    each character in the string are ignored.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeBytes` in interface `DataOutput`

    Specified by:
    :   `writeBytes` in interface `ImageOutputStream`

    Parameters:
    :   `s` - a `String` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeChars

    public void writeChars([String](../../../../java.base/java/lang/String.md "class in java.lang") s)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a string to the output stream. For every character in
    the string `s`, taken in order, two bytes are
    written to the output stream, ordered according to the current
    byte order setting. If network byte order is being used, the
    high-order byte is written first; the order is reversed
    otherwise. If `s` is `null`, a
    `NullPointerException` is thrown.

    If `s.length` is zero, then no bytes are
    written. Otherwise, the character `s[0]` is written
    first, then `s[1]`, and so on; the last character
    written is `s[s.length-1]`.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeChars` in interface `DataOutput`

    Specified by:
    :   `writeChars` in interface `ImageOutputStream`

    Parameters:
    :   `s` - a `String` containing the value to be
        written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeUTF

    public void writeUTF([String](../../../../java.base/java/lang/String.md "class in java.lang") s)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes two bytes of length information to the output stream in
    network byte order, followed by the
    [modified UTF-8](../../../../java.base/java/io/DataInput.md#modified-utf-8)
    representation of every character in the string `s`.
    If `s` is `null`, a
    `NullPointerException` is thrown. Each character in
    the string `s` is converted to a group of one, two,
    or three bytes, depending on the value of the character.

    If a character `c` is in the range
    `\u0001` through `\u007f`, it is
    represented by one byte:

    ```
     (byte)c
    ```

    If a character `c` is `\u0000` or
    is in the range `\u0080` through
    `\u07ff`, then it is represented by two bytes,
    to be written in the order shown:

    ```
     (byte)(0xc0 | (0x1f & (c >> 6)))
     (byte)(0x80 | (0x3f & c))
    ```

    If a character `c` is in the range
    `\u0800` through `uffff`, then it is
    represented by three bytes, to be written in the order shown:

    ```
     (byte)(0xe0 | (0x0f & (c >> 12)))
     (byte)(0x80 | (0x3f & (c >> 6)))
     (byte)(0x80 | (0x3f & c))
    ```

    First, the total number of bytes needed to represent all
    the characters of `s` is calculated. If this number
    is larger than `65535`, then a
    `UTFDataFormatException` is thrown. Otherwise, this
    length is written to the output stream in exactly the manner of
    the `writeShort` method; after this, the one-, two-,
    or three-byte representation of each character in the string
    `s` is written.

    The current byte order setting is ignored.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    **Note:** This method should not be used in
    the implementation of image formats that use standard UTF-8,
    because the modified UTF-8 used here is incompatible with
    standard UTF-8.

    Specified by:
    :   `writeUTF` in interface `DataOutput`

    Specified by:
    :   `writeUTF` in interface `ImageOutputStream`

    Parameters:
    :   `s` - a `String` containing the value to be
        written.

    Throws:
    :   `UTFDataFormatException` - if the modified UTF-8
        representation of `s` requires more than 65536 bytes.
    :   `IOException` - if an I/O error occurs.
  + ### writeShorts

    public void writeShorts(short[] s,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of shorts to the stream at the current
    position. If `len` is 0, nothing is written.
    The short `s[off]` is written first, then the short
    `s[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeShorts` in interface `ImageOutputStream`

    Parameters:
    :   `s` - an array of `short`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `short`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeChars

    public void writeChars(char[] c,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of chars to the stream at the current
    position. If `len` is 0, nothing is written.
    The char `c[off]` is written first, then the char
    `c[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeChars` in interface `ImageOutputStream`

    Parameters:
    :   `c` - an array of `char`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `char`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeInts

    public void writeInts(int[] i,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of ints to the stream at the current
    position. If `len` is 0, nothing is written.
    The int `i[off]` is written first, then the int
    `i[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeInts` in interface `ImageOutputStream`

    Parameters:
    :   `i` - an array of `int`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `int`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeLongs

    public void writeLongs(long[] l,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of longs to the stream at the current
    position. If `len` is 0, nothing is written.
    The long `l[off]` is written first, then the long
    `l[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeLongs` in interface `ImageOutputStream`

    Parameters:
    :   `l` - an array of `long`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `long`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeFloats

    public void writeFloats(float[] f,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of floats to the stream at the current
    position. If `len` is 0, nothing is written.
    The float `f[off]` is written first, then the float
    `f[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeFloats` in interface `ImageOutputStream`

    Parameters:
    :   `f` - an array of `float`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `float`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeDoubles

    public void writeDoubles(double[] d,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of doubles to the stream at the current
    position. If `len` is 0, nothing is written.
    The double `d[off]` is written first, then the double
    `d[off + 1]`, and so on. The byte order of the
    stream is used to determine the order in which the individual
    bytes are written.

    If the bit offset within the stream is non-zero, the
    remainder of the current byte is padded with 0s
    and written out first. The bit offset will be 0 after the
    write.

    Specified by:
    :   `writeDoubles` in interface `ImageOutputStream`

    Parameters:
    :   `d` - an array of `doubles`s to be written.
    :   `off` - the start offset in the data.
    :   `len` - the number of `double`s to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeBit

    public void writeBit(int bit)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a single bit, given by the least significant bit of the
    argument, to the stream at the current bit offset within the
    current byte position. The upper 31 bits of the argument are
    ignored. The given bit replaces the previous bit at that
    position. The bit offset is advanced by one and reduced modulo
    8.

    If any bits of a particular byte have never been set
    at the time the byte is flushed to the destination, those
    bits will be set to 0 automatically.

    Specified by:
    :   `writeBit` in interface `ImageOutputStream`

    Parameters:
    :   `bit` - an `int` whose least significant bit
        is to be written to the stream.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### writeBits

    public void writeBits(long bits,
    int numBits)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `ImageOutputStream`

    Writes a sequence of bits, given by the `numBits`
    least significant bits of the `bits` argument in
    left-to-right order, to the stream at the current bit offset
    within the current byte position. The upper `64 - numBits`
    bits of the argument are ignored. The bit
    offset is advanced by `numBits` and reduced modulo
    8. Note that a bit offset of 0 always indicates the
    most-significant bit of the byte, and bytes of bits are written
    out in sequence as they are encountered. Thus bit writes are
    always effectively in network byte order. The actual stream
    byte order setting is ignored.

    Bit data may be accumulated in memory indefinitely, until
    `flushBefore` is called. At that time, all bit data
    prior to the flushed position will be written.

    If any bits of a particular byte have never been set
    at the time the byte is flushed to the destination, those
    bits will be set to 0 automatically.

    Specified by:
    :   `writeBits` in interface `ImageOutputStream`

    Parameters:
    :   `bits` - a `long` containing the bits to be
        written, starting with the bit in position `numBits - 1`
        down to the least significant bit.
    :   `numBits` - an `int` between 0 and 64, inclusive.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### flushBits

    protected final void flushBits()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    If the bit offset is non-zero, forces the remaining bits
    in the current byte to 0 and advances the stream position
    by one. This method should be called by subclasses at the
    beginning of the `write(int)` and
    `write(byte[], int, int)` methods.

    Throws:
    :   `IOException` - if an I/O error occurs.