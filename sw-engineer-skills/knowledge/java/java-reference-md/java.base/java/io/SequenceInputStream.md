Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class SequenceInputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.InputStream](InputStream.md "class in java.io")

java.io.SequenceInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class SequenceInputStream
extends [InputStream](InputStream.md "class in java.io")

A `SequenceInputStream` represents
the logical concatenation of other input
streams. It starts out with an ordered
collection of input streams and reads from
the first one until end of file is reached,
whereupon it reads from the second one,
and so on, until end of file is reached
on the last of the contained input streams.

Since:
:   1.0

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SequenceInputStream(InputStream s1,
  InputStream s2)`

  Initializes a newly
  created `SequenceInputStream`
  by remembering the two arguments, which
  will be read in order, first `s1`
  and then `s2`, to provide the
  bytes to be read from this `SequenceInputStream`.

  `SequenceInputStream(Enumeration<? extends InputStream> e)`

  Initializes a newly created `SequenceInputStream`
  by remembering the argument, which must
  be an `Enumeration` that produces
  objects whose run-time type is `InputStream`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns an estimate of the number of bytes that can be read (or
  skipped over) from the current underlying input stream without
  blocking by the next invocation of a method for the current
  underlying input stream.

  `void`

  `close()`

  Closes this input stream and releases any system resources associated
  with the stream.

  `int`

  `read()`

  Reads the next byte of data from the input stream.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads up to `len` bytes of data from this input stream into an
  array of bytes.

  `long`

  `transferTo(OutputStream out)`

  Reads all bytes from this input stream and writes the bytes to the
  given output stream in the order that they are read.

  ### Methods inherited from class java.io.[InputStream](InputStream.md "class in java.io")

  `mark, markSupported, nullInputStream, read, readAllBytes, readNBytes, readNBytes, reset, skip, skipNBytes`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SequenceInputStream

    public SequenceInputStream([Enumeration](../util/Enumeration.md "interface in java.util")<? extends [InputStream](InputStream.md "class in java.io")> e)

    Initializes a newly created `SequenceInputStream`
    by remembering the argument, which must
    be an `Enumeration` that produces
    objects whose run-time type is `InputStream`.
    The input streams that are produced by
    the enumeration will be read, in order,
    to provide the bytes to be read from this
    `SequenceInputStream`. After
    each input stream from the enumeration
    is exhausted, it is closed by calling its
    `close` method.

    Parameters:
    :   `e` - an enumeration of input streams.

    See Also:
    :   - [`Enumeration`](../util/Enumeration.md "interface in java.util")
  + ### SequenceInputStream

    public SequenceInputStream([InputStream](InputStream.md "class in java.io") s1,
    [InputStream](InputStream.md "class in java.io") s2)

    Initializes a newly
    created `SequenceInputStream`
    by remembering the two arguments, which
    will be read in order, first `s1`
    and then `s2`, to provide the
    bytes to be read from this `SequenceInputStream`.

    Parameters:
    :   `s1` - the first input stream to read.
    :   `s2` - the second input stream to read.
* ## Method Details

  + ### available

    public int available()
    throws [IOException](IOException.md "class in java.io")

    Returns an estimate of the number of bytes that can be read (or
    skipped over) from the current underlying input stream without
    blocking by the next invocation of a method for the current
    underlying input stream. The next invocation might be
    the same thread or another thread. A single read or skip of this
    many bytes will not block, but may read or skip fewer bytes.

    This method simply calls `available` of the current underlying
    input stream and returns the result.

    Overrides:
    :   `available` in class `InputStream`

    Returns:
    :   an estimate of the number of bytes that can be read (or
        skipped over) from the current underlying input stream
        without blocking or `0` if this input stream
        has been closed by invoking its [`close()`](#close()) method

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1
  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Reads the next byte of data from the input stream. The value byte is
    returned as an `int` in the range `0` to
    `255`. If no byte is available because the end of the stream
    has been reached, the value `-1` is returned. This method
    blocks until input data is available, the end of the stream is detected,
    or an exception is thrown.

    This method
    tries to read one byte from the current substream. If it
    reaches the end of the stream, it calls the `close`
    method of the current substream and begins reading from the next
    substream.

    Specified by:
    :   `read` in class `InputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream is reached.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Reads up to `len` bytes of data from this input stream into an
    array of bytes. If the end of the last contained stream has been reached
    then `-1` is returned. Otherwise, if `len` is not zero, the
    method blocks until at least 1 byte of input is available; if `len`
    is zero, no bytes are read and `0` is returned.

    The `read` method of `SequenceInputStream`
    tries to read the data from the current substream. If it fails to
    read any bytes because the substream has reached the end of
    the stream, it calls the `close` method of the current
    substream and begins reading from the next substream.

    Overrides:
    :   `read` in class `InputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in array `b`
        at which the data is written.
    :   `len` - the maximum number of bytes read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the last contained stream has been reached.

    Throws:
    :   `NullPointerException` - if the end of the last contained
        stream has not been reached and `b` is `null`.
    :   `IndexOutOfBoundsException` - if the end of the last contained
        stream has not been reached and `off` is negative,
        `len` is negative, or `len` is
        greater than `b.length - off`
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`InputStream.read()`](InputStream.md#read())
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this input stream and releases any system resources associated
    with the stream.
    A closed `SequenceInputStream`
    cannot perform input operations and cannot
    be reopened.

    If this stream was created
    from an enumeration, all remaining elements
    are requested from the enumeration and closed
    before the `close` method returns.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `InputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.
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