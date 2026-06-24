Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FilterOutputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.OutputStream](OutputStream.md "class in java.io")

java.io.FilterOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

Direct Known Subclasses:
:   `BufferedOutputStream`, `CheckedOutputStream`, `CipherOutputStream`, `DataOutputStream`, `DeflaterOutputStream`, `DigestOutputStream`, `InflaterOutputStream`, `PrintStream`

---

public class FilterOutputStream
extends [OutputStream](OutputStream.md "class in java.io")

This class is the superclass of all classes that filter output
streams. These streams sit on top of an already existing output
stream (the *underlying* output stream) which it uses as its
basic sink of data, but possibly transforming the data along the
way or providing additional functionality.

The class `FilterOutputStream` itself simply overrides
all methods of `OutputStream` with versions that pass
all requests to the underlying output stream. Subclasses of
`FilterOutputStream` may further override some of these
methods as well as provide additional methods and fields.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected OutputStream`

  `out`

  The underlying output stream to be filtered.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FilterOutputStream(OutputStream out)`

  Creates an output stream filter built on top of the specified
  underlying output stream.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this output stream and releases any system resources
  associated with the stream.

  `void`

  `flush()`

  Flushes this output stream and forces any buffered output bytes
  to be written out to the stream.

  `void`

  `write(byte[] b)`

  Writes `b.length` bytes to this output stream.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes `len` bytes from the specified
  `byte` array starting at offset `off` to
  this output stream.

  `void`

  `write(int b)`

  Writes the specified `byte` to this output stream.

  ### Methods inherited from class java.io.[OutputStream](OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### out

    protected [OutputStream](OutputStream.md "class in java.io") out

    The underlying output stream to be filtered.
* ## Constructor Details

  + ### FilterOutputStream

    public FilterOutputStream([OutputStream](OutputStream.md "class in java.io") out)

    Creates an output stream filter built on top of the specified
    underlying output stream.

    Parameters:
    :   `out` - the underlying output stream to be assigned to
        the field `this.out` for later use, or
        `null` if this instance is to be
        created without an underlying stream.
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](IOException.md "class in java.io")

    Writes the specified `byte` to this output stream.

    The `write` method of `FilterOutputStream`
    calls the `write` method of its underlying output stream,
    that is, it performs `out.write(b)`.

    Implements the abstract `write` method of `OutputStream`.

    Specified by:
    :   `write` in class `OutputStream`

    Parameters:
    :   `b` - the `byte`.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b)
    throws [IOException](IOException.md "class in java.io")

    Writes `b.length` bytes to this output stream.

    Overrides:
    :   `write` in class `OutputStream`

    Parameters:
    :   `b` - the data to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`write(byte[], int, int)`](#write(byte%5B%5D,int,int))
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes `len` bytes from the specified
    `byte` array starting at offset `off` to
    this output stream.

    Overrides:
    :   `write` in class `OutputStream`

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
    :   - [`write(int)`](#write(int))
  + ### flush

    public void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes this output stream and forces any buffered output bytes
    to be written out to the stream.

    Specified by:
    :   `flush` in interface `Flushable`

    Overrides:
    :   `flush` in class `OutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`out`](#out)
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this output stream and releases any system resources
    associated with the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `OutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`flush()`](#flush())
        - [`out`](#out)