Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class PushbackInputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.InputStream](InputStream.md "class in java.io")

[java.io.FilterInputStream](FilterInputStream.md "class in java.io")

java.io.PushbackInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class PushbackInputStream
extends [FilterInputStream](FilterInputStream.md "class in java.io")

A `PushbackInputStream` adds
functionality to another input stream, namely
the ability to "push back" or "unread" bytes,
by storing pushed-back bytes in an internal buffer.
This is useful in situations where
it is convenient for a fragment of code
to read an indefinite number of data bytes
that are delimited by a particular byte
value; after reading the terminating byte,
the code fragment can "unread" it, so that
the next read operation on the input stream
will reread the byte that was pushed back.
For example, bytes representing the characters
constituting an identifier might be terminated
by a byte representing an operator character;
a method whose job is to read just an identifier
can read until it sees the operator and
then push the operator back to be re-read.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected byte[]`

  `buf`

  The pushback buffer.

  `protected int`

  `pos`

  The position within the pushback buffer from which the next byte will
  be read.

  ### Fields inherited from class java.io.[FilterInputStream](FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PushbackInputStream(InputStream in)`

  Creates a `PushbackInputStream`
  with a 1-byte pushback buffer, and saves its argument, the input stream
  `in`, for later use.

  `PushbackInputStream(InputStream in,
  int size)`

  Creates a `PushbackInputStream`
  with a pushback buffer of the specified `size`,
  and saves its argument, the input stream
  `in`, for later use.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns an estimate of the number of bytes that can be read (or
  skipped over) from this input stream without blocking by the next
  invocation of a method for this input stream.

  `void`

  `close()`

  Closes this input stream and releases any system resources
  associated with the stream.

  `void`

  `mark(int readlimit)`

  Marks the current position in this input stream.

  `boolean`

  `markSupported()`

  Tests if this input stream supports the `mark` and
  `reset` methods, which it does not.

  `int`

  `read()`

  Reads the next byte of data from this input stream.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads up to `len` bytes of data from this input stream into
  an array of bytes.

  `void`

  `reset()`

  Repositions this stream to the position at the time the
  `mark` method was last called on this input stream.

  `long`

  `skip(long n)`

  Skips over and discards `n` bytes of data from this
  input stream.

  `long`

  `transferTo(OutputStream out)`

  Reads all bytes from this input stream and writes the bytes to the
  given output stream in the order that they are read.

  `void`

  `unread(byte[] b)`

  Pushes back an array of bytes by copying it to the front of the
  pushback buffer.

  `void`

  `unread(byte[] b,
  int off,
  int len)`

  Pushes back a portion of an array of bytes by copying it to the front
  of the pushback buffer.

  `void`

  `unread(int b)`

  Pushes back a byte by copying it to the front of the pushback buffer.

  ### Methods inherited from class java.io.[FilterInputStream](FilterInputStream.md "class in java.io")

  `read`

  ### Methods inherited from class java.io.[InputStream](InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### buf

    protected byte[] buf

    The pushback buffer.

    Since:
    :   1.1
  + ### pos

    protected int pos

    The position within the pushback buffer from which the next byte will
    be read. When the buffer is empty, `pos` is equal to
    `buf.length`; when the buffer is full, `pos` is
    equal to zero.

    Since:
    :   1.1
* ## Constructor Details

  + ### PushbackInputStream

    public PushbackInputStream([InputStream](InputStream.md "class in java.io") in,
    int size)

    Creates a `PushbackInputStream`
    with a pushback buffer of the specified `size`,
    and saves its argument, the input stream
    `in`, for later use. Initially,
    the pushback buffer is empty.

    Parameters:
    :   `in` - the input stream from which bytes will be read.
    :   `size` - the size of the pushback buffer.

    Throws:
    :   `IllegalArgumentException` - if `size <= 0`

    Since:
    :   1.1
  + ### PushbackInputStream

    public PushbackInputStream([InputStream](InputStream.md "class in java.io") in)

    Creates a `PushbackInputStream`
    with a 1-byte pushback buffer, and saves its argument, the input stream
    `in`, for later use. Initially,
    the pushback buffer is empty.

    Parameters:
    :   `in` - the input stream from which bytes will be read.
* ## Method Details

  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Reads the next byte of data from this input stream. The value
    byte is returned as an `int` in the range
    `0` to `255`. If no byte is available
    because the end of the stream has been reached, the value
    `-1` is returned. This method blocks until input data
    is available, the end of the stream is detected, or an exception
    is thrown.

    This method returns the most recently pushed-back byte, if there is
    one, and otherwise calls the `read` method of its underlying
    input stream and returns whatever value that method returns.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream has been reached.

    Throws:
    :   `IOException` - if this input stream has been closed by
        invoking its [`close()`](#close()) method,
        or an I/O error occurs.

    See Also:
    :   - [`InputStream.read()`](InputStream.md#read())
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Reads up to `len` bytes of data from this input stream into
    an array of bytes. This method first reads any pushed-back bytes; after
    that, if fewer than `len` bytes have been read then it
    reads from the underlying input stream. If `len` is not zero, the method
    blocks until at least 1 byte of input is available; otherwise, no
    bytes are read and `0` is returned.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in the destination array `b`
    :   `len` - the maximum number of bytes read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `NullPointerException` - If `b` is `null`.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
    :   `IOException` - if this input stream has been closed by
        invoking its [`close()`](#close()) method,
        or an I/O error occurs.

    See Also:
    :   - [`InputStream.read(byte[], int, int)`](InputStream.md#read(byte%5B%5D,int,int))
  + ### unread

    public void unread(int b)
    throws [IOException](IOException.md "class in java.io")

    Pushes back a byte by copying it to the front of the pushback buffer.
    After this method returns, the next byte to be read will have the value
    `(byte)b`.

    Parameters:
    :   `b` - the `int` value whose low-order
        byte is to be pushed back.

    Throws:
    :   `IOException` - If there is not enough room in the pushback
        buffer for the byte, or this input stream has been closed by
        invoking its [`close()`](#close()) method.
  + ### unread

    public void unread(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Pushes back a portion of an array of bytes by copying it to the front
    of the pushback buffer. After this method returns, the next byte to be
    read will have the value `b[off]`, the byte after that will
    have the value `b[off+1]`, and so forth.

    Parameters:
    :   `b` - the byte array to push back.
    :   `off` - the start offset of the data.
    :   `len` - the number of bytes to push back.

    Throws:
    :   `NullPointerException` - If `b` is `null`.
    :   `IOException` - If there is not enough room in the pushback
        buffer for the specified number of bytes,
        or this input stream has been closed by
        invoking its [`close()`](#close()) method.

    Since:
    :   1.1
  + ### unread

    public void unread(byte[] b)
    throws [IOException](IOException.md "class in java.io")

    Pushes back an array of bytes by copying it to the front of the
    pushback buffer. After this method returns, the next byte to be read
    will have the value `b[0]`, the byte after that will have the
    value `b[1]`, and so forth.

    Parameters:
    :   `b` - the byte array to push back

    Throws:
    :   `NullPointerException` - If `b` is `null`.
    :   `IOException` - If there is not enough room in the pushback
        buffer for the specified number of bytes,
        or this input stream has been closed by
        invoking its [`close()`](#close()) method.

    Since:
    :   1.1
  + ### available

    public int available()
    throws [IOException](IOException.md "class in java.io")

    Returns an estimate of the number of bytes that can be read (or
    skipped over) from this input stream without blocking by the next
    invocation of a method for this input stream. The next invocation might be
    the same thread or another thread. A single read or skip of this
    many bytes will not block, but may read or skip fewer bytes.

    The method returns the sum of the number of bytes that have been
    pushed back and the value returned by [`available`](FilterInputStream.md#available()).

    Overrides:
    :   `available` in class `FilterInputStream`

    Returns:
    :   the number of bytes that can be read (or skipped over) from
        the input stream without blocking.

    Throws:
    :   `IOException` - if this input stream has been closed by
        invoking its [`close()`](#close()) method,
        or an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](FilterInputStream.md#in)
        - [`InputStream.available()`](InputStream.md#available())
  + ### skip

    public long skip(long n)
    throws [IOException](IOException.md "class in java.io")

    Skips over and discards `n` bytes of data from this
    input stream. The `skip` method may, for a variety of
    reasons, end up skipping over some smaller number of bytes,
    possibly zero. If `n` is negative, no bytes are skipped.

    The `skip` method of `PushbackInputStream`
    first skips over the bytes in the pushback buffer, if any. It then
    calls the `skip` method of the underlying input stream if
    more bytes need to be skipped. The actual number of bytes skipped
    is returned.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - the number of bytes to be skipped.

    Returns:
    :   the actual number of bytes skipped.

    Throws:
    :   `IOException` - if the stream has been closed by
        invoking its [`close()`](#close()) method,
        `in.skip(n)` throws an IOException,
        or an I/O error occurs.

    Since:
    :   1.2

    See Also:
    :   - [`FilterInputStream.in`](FilterInputStream.md#in)
        - [`InputStream.skip(long n)`](InputStream.md#skip(long))
  + ### markSupported

    public boolean markSupported()

    Tests if this input stream supports the `mark` and
    `reset` methods, which it does not.

    Overrides:
    :   `markSupported` in class `FilterInputStream`

    Returns:
    :   `false`, since this class does not support the
        `mark` and `reset` methods.

    See Also:
    :   - [`InputStream.mark(int)`](InputStream.md#mark(int))
        - [`InputStream.reset()`](InputStream.md#reset())
  + ### mark

    public void mark(int readlimit)

    Marks the current position in this input stream.

    The `mark` method of `PushbackInputStream`
    does nothing.

    Overrides:
    :   `mark` in class `FilterInputStream`

    Parameters:
    :   `readlimit` - the maximum limit of bytes that can be read before
        the mark position becomes invalid.

    See Also:
    :   - [`InputStream.reset()`](InputStream.md#reset())
  + ### reset

    public void reset()
    throws [IOException](IOException.md "class in java.io")

    Repositions this stream to the position at the time the
    `mark` method was last called on this input stream.

    The method `reset` for class
    `PushbackInputStream` does nothing except throw an
    `IOException`.

    Overrides:
    :   `reset` in class `FilterInputStream`

    Throws:
    :   `IOException` - if this method is invoked.

    See Also:
    :   - [`InputStream.mark(int)`](InputStream.md#mark(int))
        - [`IOException`](IOException.md "class in java.io")
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this input stream and releases any system resources
    associated with the stream.
    Once the stream has been closed, further read(), unread(),
    available(), reset(), or skip() invocations will throw an IOException.
    Closing a previously closed stream has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterInputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](FilterInputStream.md#in)
  + ### transferTo

    public long transferTo([OutputStream](OutputStream.md "class in java.io") out)
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `InputStream`

    Reads all bytes from this input stream and writes the bytes to the
    given output stream in the order that they are read. On return, this
    input stream will be at end of stream. This method does not close either
    stream.

    This method may block indefinitely reading from the input stream, or
    writing to the output stream. The behavior for the case where the input
    and/or output stream is *asynchronously closed*, or the thread
    interrupted during the transfer, is highly input and output stream
    specific, and therefore not specified.

    If the total number of bytes transferred is greater than [Long.MAX\_VALUE](../lang/Long.md#MAX_VALUE), then `Long.MAX_VALUE` will be returned.

    If an I/O error occurs reading from the input stream or writing to the
    output stream, then it may do so after some bytes have been read or
    written. Consequently the input stream may not be at end of stream and
    one, or both, streams may be in an inconsistent state. It is strongly
    recommended that both streams be promptly closed if an I/O error occurs.

    Overrides:
    :   `transferTo` in class `InputStream`

    Parameters:
    :   `out` - the output stream, non-null

    Returns:
    :   the number of bytes transferred

    Throws:
    :   `IOException` - if an I/O error occurs when reading or writing