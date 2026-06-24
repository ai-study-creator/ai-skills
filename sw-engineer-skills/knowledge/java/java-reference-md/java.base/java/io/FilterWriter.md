Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FilterWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

java.io.FilterWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

public abstract class FilterWriter
extends [Writer](Writer.md "class in java.io")

Abstract class for writing filtered character streams.
The abstract class `FilterWriter` itself
provides default methods that pass all requests to the
contained stream. Subclasses of `FilterWriter`
should override some of these methods and may also
provide additional methods and fields.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Writer`

  `out`

  The underlying character-output stream.

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FilterWriter(Writer out)`

  Create a new filtered writer.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the stream, flushing it first.

  `void`

  `flush()`

  Flushes the stream.

  `void`

  `write(char[] cbuf,
  int off,
  int len)`

  Writes a portion of an array of characters.

  `void`

  `write(int c)`

  Writes a single character.

  `void`

  `write(String str,
  int off,
  int len)`

  Writes a portion of a string.

  ### Methods inherited from class java.io.[Writer](Writer.md "class in java.io")

  `append, append, append, nullWriter, write, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### out

    protected [Writer](Writer.md "class in java.io") out

    The underlying character-output stream.
* ## Constructor Details

  + ### FilterWriter

    protected FilterWriter([Writer](Writer.md "class in java.io") out)

    Create a new filtered writer.

    Parameters:
    :   `out` - a Writer object to provide the underlying stream.

    Throws:
    :   `NullPointerException` - if `out` is `null`
* ## Method Details

  + ### write

    public void write(int c)
    throws [IOException](IOException.md "class in java.io")

    Writes a single character.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `c` - int specifying a character to be written

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### write

    public void write(char[] cbuf,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes a portion of an array of characters.

    Specified by:
    :   `write` in class `Writer`

    Parameters:
    :   `cbuf` - Buffer of characters to be written
    :   `off` - Offset from which to start reading characters
    :   `len` - Number of characters to be written

    Throws:
    :   `IndexOutOfBoundsException` - If the values of the `off` and `len` parameters
        cause the corresponding method of the underlying `Writer`
        to throw an `IndexOutOfBoundsException`
    :   `IOException` - If an I/O error occurs
  + ### write

    public void write([String](../lang/String.md "class in java.lang") str,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes a portion of a string.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `str` - String to be written
    :   `off` - Offset from which to start reading characters
    :   `len` - Number of characters to be written

    Throws:
    :   `IndexOutOfBoundsException` - If the values of the `off` and `len` parameters
        cause the corresponding method of the underlying `Writer`
        to throw an `IndexOutOfBoundsException`
    :   `IOException` - If an I/O error occurs
  + ### flush

    public void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes the stream.

    Specified by:
    :   `flush` in interface `Flushable`

    Specified by:
    :   `flush` in class `Writer`

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `Writer`

    Closes the stream, flushing it first. Once the stream has been closed,
    further write() or flush() invocations will cause an IOException to be
    thrown. Closing a previously closed stream has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Writer`

    Throws:
    :   `IOException` - If an I/O error occurs