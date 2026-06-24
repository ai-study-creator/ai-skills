Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class StringBufferInputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.InputStream](InputStream.md "class in java.io")

java.io.StringBufferInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
public class StringBufferInputStream
extends [InputStream](InputStream.md "class in java.io")

Deprecated.

This class does not properly convert characters into bytes. As
of JDK 1.1, the preferred way to create a stream from a
string is via the `StringReader` class.

This class allows an application to create an input stream in
which the bytes read are supplied by the contents of a string.
Applications can also read bytes from a byte array by using a
`ByteArrayInputStream`.

Only the low eight bits of each character in the string are used by
this class.

Since:
:   1.0

See Also:
:   * [`ByteArrayInputStream`](ByteArrayInputStream.md "class in java.io")
    * [`StringReader`](StringReader.md "class in java.io")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `buffer`

  Deprecated.

  The string from which bytes are read.

  `protected int`

  `count`

  Deprecated.

  The number of valid characters in the input stream buffer.

  `protected int`

  `pos`

  Deprecated.

  The index of the next character to read from the input stream buffer.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringBufferInputStream(String s)`

  Deprecated.

  Creates a string input stream to read data from the specified string.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Deprecated.

  Returns the number of bytes that can be read from the input
  stream without blocking.

  `int`

  `read()`

  Deprecated.

  Reads the next byte of data from this input stream.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Deprecated.

  Reads up to `len` bytes of data from this input stream
  into an array of bytes.

  `void`

  `reset()`

  Deprecated.

  Resets the input stream to begin reading from the first character
  of this input stream's underlying buffer.

  `long`

  `skip(long n)`

  Deprecated.

  Skips `n` bytes of input from this input stream.

  ### Methods inherited from class java.io.[InputStream](InputStream.md "class in java.io")

  `close, mark, markSupported, nullInputStream, read, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### buffer

    protected [String](../lang/String.md "class in java.lang") buffer

    Deprecated.

    The string from which bytes are read.
  + ### pos

    protected int pos

    Deprecated.

    The index of the next character to read from the input stream buffer.

    See Also:
    :   - [`buffer`](#buffer)
  + ### count

    protected int count

    Deprecated.

    The number of valid characters in the input stream buffer.

    See Also:
    :   - [`buffer`](#buffer)
* ## Constructor Details

  + ### StringBufferInputStream

    public StringBufferInputStream([String](../lang/String.md "class in java.lang") s)

    Deprecated.

    Creates a string input stream to read data from the specified string.

    Parameters:
    :   `s` - the underlying input buffer.
* ## Method Details

  + ### read

    public int read()

    Deprecated.

    Reads the next byte of data from this input stream. The value
    byte is returned as an `int` in the range
    `0` to `255`. If no byte is available
    because the end of the stream has been reached, the value
    `-1` is returned.

    Specified by:
    :   `read` in class `InputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream is reached.
  + ### read

    public int read(byte[] b,
    int off,
    int len)

    Deprecated.

    Reads up to `len` bytes of data from this input stream
    into an array of bytes.

    Overrides:
    :   `read` in class `InputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in array `b`
        at which the data is written.
    :   `len` - the maximum number of bytes to read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    See Also:
    :   - [`InputStream.read()`](InputStream.md#read())
  + ### skip

    public long skip(long n)

    Deprecated.

    Skips `n` bytes of input from this input stream. Fewer
    bytes might be skipped if the end of the input stream is reached.

    Overrides:
    :   `skip` in class `InputStream`

    Parameters:
    :   `n` - the number of bytes to be skipped.

    Returns:
    :   the actual number of bytes skipped.

    See Also:
    :   - [`InputStream.skipNBytes(long)`](InputStream.md#skipNBytes(long))
  + ### available

    public int available()

    Deprecated.

    Returns the number of bytes that can be read from the input
    stream without blocking.

    Overrides:
    :   `available` in class `InputStream`

    Returns:
    :   the value of `count - pos`, which is the
        number of bytes remaining to be read from the input buffer.
  + ### reset

    public void reset()

    Deprecated.

    Resets the input stream to begin reading from the first character
    of this input stream's underlying buffer.

    Overrides:
    :   `reset` in class `InputStream`

    See Also:
    :   - [`InputStream.mark(int)`](InputStream.md#mark(int))
        - [`IOException`](IOException.md "class in java.io")