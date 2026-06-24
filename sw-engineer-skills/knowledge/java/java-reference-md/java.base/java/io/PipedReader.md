Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class PipedReader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Reader](Reader.md "class in java.io")

java.io.PipedReader

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Readable`

---

public class PipedReader
extends [Reader](Reader.md "class in java.io")

Piped character-input streams.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from class java.io.[Reader](Reader.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PipedReader()`

  Creates a `PipedReader` so
  that it is not yet [connected](#connect(java.io.PipedWriter)).

  `PipedReader(int pipeSize)`

  Creates a `PipedReader` so that it is not yet
  [`connected`](#connect(java.io.PipedWriter)) and uses
  the specified pipe size for the pipe's buffer.

  `PipedReader(PipedWriter src)`

  Creates a `PipedReader` so
  that it is connected to the piped writer
  `src`.

  `PipedReader(PipedWriter src,
  int pipeSize)`

  Creates a `PipedReader` so that it is connected
  to the piped writer `src` and uses the specified
  pipe size for the pipe's buffer.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this piped stream and releases any system resources
  associated with the stream.

  `void`

  `connect(PipedWriter src)`

  Causes this piped reader to be connected
  to the piped writer `src`.

  `int`

  `read()`

  Reads the next character of data from this piped stream.

  `int`

  `read(char[] cbuf,
  int off,
  int len)`

  Reads characters into a portion of an array.

  `boolean`

  `ready()`

  Tell whether this stream is ready to be read.

  ### Methods inherited from class java.io.[Reader](Reader.md "class in java.io")

  `mark, markSupported, nullReader, read, read, reset, skip, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PipedReader

    public PipedReader([PipedWriter](PipedWriter.md "class in java.io") src)
    throws [IOException](IOException.md "class in java.io")

    Creates a `PipedReader` so
    that it is connected to the piped writer
    `src`. Data written to `src`
    will then be available as input from this stream.

    Parameters:
    :   `src` - the stream to connect to.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### PipedReader

    public PipedReader([PipedWriter](PipedWriter.md "class in java.io") src,
    int pipeSize)
    throws [IOException](IOException.md "class in java.io")

    Creates a `PipedReader` so that it is connected
    to the piped writer `src` and uses the specified
    pipe size for the pipe's buffer. Data written to `src`
    will then be available as input from this stream.

    Parameters:
    :   `src` - the stream to connect to.
    :   `pipeSize` - the size of the pipe's buffer.

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `IllegalArgumentException` - if `pipeSize <= 0`.

    Since:
    :   1.6
  + ### PipedReader

    public PipedReader()

    Creates a `PipedReader` so
    that it is not yet [connected](#connect(java.io.PipedWriter)). It must be [connected](PipedWriter.md#connect(java.io.PipedReader)) to a `PipedWriter`
    before being used.
  + ### PipedReader

    public PipedReader(int pipeSize)

    Creates a `PipedReader` so that it is not yet
    [`connected`](#connect(java.io.PipedWriter)) and uses
    the specified pipe size for the pipe's buffer.
    It must be [connected](PipedWriter.md#connect(java.io.PipedReader)) to a `PipedWriter`
    before being used.

    Parameters:
    :   `pipeSize` - the size of the pipe's buffer.

    Throws:
    :   `IllegalArgumentException` - if `pipeSize <= 0`.

    Since:
    :   1.6
* ## Method Details

  + ### connect

    public void connect([PipedWriter](PipedWriter.md "class in java.io") src)
    throws [IOException](IOException.md "class in java.io")

    Causes this piped reader to be connected
    to the piped writer `src`.
    If this object is already connected to some
    other piped writer, an `IOException`
    is thrown.

    If `src` is an
    unconnected piped writer and `snk`
    is an unconnected piped reader, they
    may be connected by either the call:

    Copy![Copy snippet](../../../copy.svg)

    ```
        snk.connect(src)
    ```

    or the call:

    Copy![Copy snippet](../../../copy.svg)

    ```
        src.connect(snk)
    ```

    The two calls have the same effect.

    Parameters:
    :   `src` - The piped writer to connect to.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Reads the next character of data from this piped stream.
    If no character is available because the end of the stream
    has been reached, the value `-1` is returned.
    This method blocks until input data is available, the end of
    the stream is detected, or an exception is thrown.

    Overrides:
    :   `read` in class `Reader`

    Returns:
    :   the next character of data, or `-1` if the end of the
        stream is reached.

    Throws:
    :   `IOException` - if the pipe is
         [`broken`](PipedInputStream.md#BROKEN),
        [`unconnected`](#connect(java.io.PipedWriter)), closed,
        or an I/O error occurs.
  + ### read

    public int read(char[] cbuf,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Reads characters into a portion of an array. This method will block
    until some input is available, an I/O error occurs, or the end of the
    stream is reached.

    If `len` is zero, then no characters are read and `0` is
    returned; otherwise, there is an attempt to read at least one character.
    If no character is available because the stream is at its end, the value
    `-1` is returned; otherwise, at least one character is read and
    stored into `cbuf`.

    Fewer than `len` characters will be read if
    `len` exceeds the pipe's buffer size.

    Specified by:
    :   `read` in class `Reader`

    Parameters:
    :   `cbuf` - Destination buffer
    :   `off` - Offset at which to start storing characters
    :   `len` - Maximum number of characters to read

    Returns:
    :   The number of characters read, or -1 if the end of the
        stream has been reached

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `len` is greater than `cbuf.length - off`
    :   `IOException` - if the pipe is
         [`broken`](PipedInputStream.md#BROKEN),
        [`unconnected`](#connect(java.io.PipedWriter)), closed,
        or an I/O error occurs.
  + ### ready

    public boolean ready()
    throws [IOException](IOException.md "class in java.io")

    Tell whether this stream is ready to be read. A piped character
    stream is ready if the circular buffer is not empty.

    Overrides:
    :   `ready` in class `Reader`

    Returns:
    :   True if the next read() is guaranteed not to block for input,
        false otherwise. Note that returning false does not guarantee that the
        next read will block.

    Throws:
    :   `IOException` - if the pipe is
         [`broken`](PipedInputStream.md#BROKEN),
        [`unconnected`](#connect(java.io.PipedWriter)), or closed.
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this piped stream and releases any system resources
    associated with the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Reader`

    Throws:
    :   `IOException` - if an I/O error occurs.