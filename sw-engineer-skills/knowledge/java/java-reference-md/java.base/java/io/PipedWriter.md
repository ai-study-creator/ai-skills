Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class PipedWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

java.io.PipedWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

public class PipedWriter
extends [Writer](Writer.md "class in java.io")

Piped character-output streams.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PipedWriter()`

  Creates a piped writer that is not yet connected to a
  piped reader.

  `PipedWriter(PipedReader snk)`

  Creates a piped writer connected to the specified piped
  reader.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this piped output stream and releases any system resources
  associated with this stream.

  `void`

  `connect(PipedReader snk)`

  Connects this piped writer to a receiver.

  `void`

  `flush()`

  Flushes this output stream and forces any buffered output characters
  to be written out.

  `void`

  `write(char[] cbuf,
  int off,
  int len)`

  Writes `len` characters from the specified character array
  starting at offset `off` to this piped output stream.

  `void`

  `write(int c)`

  Writes the specified `char` to the piped output stream.

  ### Methods inherited from class java.io.[Writer](Writer.md "class in java.io")

  `append, append, append, nullWriter, write, write, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PipedWriter

    public PipedWriter([PipedReader](PipedReader.md "class in java.io") snk)
    throws [IOException](IOException.md "class in java.io")

    Creates a piped writer connected to the specified piped
    reader. Data characters written to this stream will then be
    available as input from `snk`.

    Parameters:
    :   `snk` - The piped reader to connect to.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### PipedWriter

    public PipedWriter()

    Creates a piped writer that is not yet connected to a
    piped reader. It must be connected to a piped reader,
    either by the receiver or the sender, before being used.

    See Also:
    :   - [`PipedReader.connect(java.io.PipedWriter)`](PipedReader.md#connect(java.io.PipedWriter))
        - [`connect(java.io.PipedReader)`](#connect(java.io.PipedReader))
* ## Method Details

  + ### connect

    public void connect([PipedReader](PipedReader.md "class in java.io") snk)
    throws [IOException](IOException.md "class in java.io")

    Connects this piped writer to a receiver. If this object
    is already connected to some other piped reader, an
    `IOException` is thrown.

    If `snk` is an unconnected piped reader and
    `src` is an unconnected piped writer, they may
    be connected by either the call:

    Copy![Copy snippet](../../../copy.svg)

    ```
        src.connect(snk)
    ```

    or the call:

    Copy![Copy snippet](../../../copy.svg)

    ```
        snk.connect(src)
    ```

    The two calls have the same effect.

    Parameters:
    :   `snk` - the piped reader to connect to.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(int c)
    throws [IOException](IOException.md "class in java.io")

    Writes the specified `char` to the piped output stream.
    If a thread was reading data characters from the connected piped input
    stream, but the thread is no longer alive, then an
    `IOException` is thrown.

    Implements the `write` method of `Writer`.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `c` - the `char` to be written.

    Throws:
    :   `IOException` - if the pipe is
         [`broken`](PipedOutputStream.md#BROKEN),
        [`unconnected`](#connect(java.io.PipedReader)), closed
        or an I/O error occurs.
  + ### write

    public void write(char[] cbuf,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes `len` characters from the specified character array
    starting at offset `off` to this piped output stream.
    This method blocks until all the characters are written to the output
    stream.
    If a thread was reading data characters from the connected piped input
    stream, but the thread is no longer alive, then an
    `IOException` is thrown.

    Specified by:
    :   `write` in class `Writer`

    Parameters:
    :   `cbuf` - the data.
    :   `off` - the start offset in the data.
    :   `len` - the number of characters to write.

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given array
    :   `IOException` - if the pipe is
        [`broken`](PipedOutputStream.md#BROKEN),
        [`unconnected`](#connect(java.io.PipedReader)), closed
        or an I/O error occurs.
  + ### flush

    public void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes this output stream and forces any buffered output characters
    to be written out.
    This will notify any readers that characters are waiting in the pipe.

    Specified by:
    :   `flush` in interface `Flushable`

    Specified by:
    :   `flush` in class `Writer`

    Throws:
    :   `IOException` - if the pipe is closed, or an I/O error occurs.
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this piped output stream and releases any system resources
    associated with this stream. This stream may no longer be used for
    writing characters.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Writer`

    Throws:
    :   `IOException` - if an I/O error occurs.