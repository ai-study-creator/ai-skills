Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class CharArrayWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

java.io.CharArrayWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

public class CharArrayWriter
extends [Writer](Writer.md "class in java.io")

This class implements a character buffer that can be used as a Writer.
The buffer automatically grows when data is written to the stream. The data
can be retrieved using toCharArray() and toString().

Note: Invoking close() on this class has no effect, and methods
of this class can be called after the stream has closed
without generating an IOException.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected char[]`

  `buf`

  The buffer where data is stored.

  `protected int`

  `count`

  The number of chars in the buffer.

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CharArrayWriter()`

  Creates a new CharArrayWriter.

  `CharArrayWriter(int initialSize)`

  Creates a new CharArrayWriter with the specified initial size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CharArrayWriter`

  `append(char c)`

  Appends the specified character to this writer.

  `CharArrayWriter`

  `append(CharSequence csq)`

  Appends the specified character sequence to this writer.

  `CharArrayWriter`

  `append(CharSequence csq,
  int start,
  int end)`

  Appends a subsequence of the specified character sequence to this writer.

  `void`

  `close()`

  Close the stream.

  `void`

  `flush()`

  Flush the stream.

  `void`

  `reset()`

  Resets the buffer so that you can use it again without
  throwing away the already allocated buffer.

  `int`

  `size()`

  Returns the current size of the buffer.

  `char[]`

  `toCharArray()`

  Returns a copy of the input data.

  `String`

  `toString()`

  Converts input data to a string.

  `void`

  `write(char[] c,
  int off,
  int len)`

  Writes characters to the buffer.

  `void`

  `write(int c)`

  Writes a character to the buffer.

  `void`

  `write(String str,
  int off,
  int len)`

  Write a portion of a string to the buffer.

  `void`

  `writeTo(Writer out)`

  Writes the contents of the buffer to another character stream.

  ### Methods inherited from class java.io.[Writer](Writer.md "class in java.io")

  `nullWriter, write, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### buf

    protected char[] buf

    The buffer where data is stored.
  + ### count

    protected int count

    The number of chars in the buffer.
* ## Constructor Details

  + ### CharArrayWriter

    public CharArrayWriter()

    Creates a new CharArrayWriter.
  + ### CharArrayWriter

    public CharArrayWriter(int initialSize)

    Creates a new CharArrayWriter with the specified initial size.

    Parameters:
    :   `initialSize` - an int specifying the initial buffer size.

    Throws:
    :   `IllegalArgumentException` - if initialSize is negative
* ## Method Details

  + ### write

    public void write(int c)

    Writes a character to the buffer.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `c` - int specifying a character to be written
  + ### write

    public void write(char[] c,
    int off,
    int len)

    Writes characters to the buffer.

    Specified by:
    :   `write` in class `Writer`

    Parameters:
    :   `c` - the data to be written
    :   `off` - the start offset in the data
    :   `len` - the number of chars that are written

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given array
  + ### write

    public void write([String](../lang/String.md "class in java.lang") str,
    int off,
    int len)

    Write a portion of a string to the buffer.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `str` - String to be written from
    :   `off` - Offset from which to start reading characters
    :   `len` - Number of characters to be written

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given string
  + ### writeTo

    public void writeTo([Writer](Writer.md "class in java.io") out)
    throws [IOException](IOException.md "class in java.io")

    Writes the contents of the buffer to another character stream.

    Parameters:
    :   `out` - the output stream to write to

    Throws:
    :   `IOException` - If an I/O error occurs.
  + ### append

    public [CharArrayWriter](CharArrayWriter.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq)

    Appends the specified character sequence to this writer.

    An invocation of this method of the form `out.append(csq)`
    behaves in exactly the same way as the invocation

    Copy![Copy snippet](../../../copy.svg)

    ```
        out.write(csq.toString())
    ```

    Depending on the specification of `toString` for the
    character sequence `csq`, the entire sequence may not be
    appended. For instance, invoking the `toString` method of a
    character buffer will return a subsequence whose content depends upon
    the buffer's position and limit.

    Specified by:
    :   `append` in interface `Appendable`

    Overrides:
    :   `append` in class `Writer`

    Parameters:
    :   `csq` - The character sequence to append. If `csq` is
        `null`, then the four characters `"null"` are
        appended to this writer.

    Returns:
    :   This writer

    Since:
    :   1.5
  + ### append

    public [CharArrayWriter](CharArrayWriter.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq,
    int start,
    int end)

    Appends a subsequence of the specified character sequence to this writer.

    An invocation of this method of the form
    `out.append(csq, start, end)` when
    `csq` is not `null`, behaves in
    exactly the same way as the invocation

    Copy![Copy snippet](../../../copy.svg)

    ```
        out.write(csq.subSequence(start, end).toString())
    ```

    Specified by:
    :   `append` in interface `Appendable`

    Overrides:
    :   `append` in class `Writer`

    Parameters:
    :   `csq` - The character sequence from which a subsequence will be
        appended. If `csq` is `null`, then characters
        will be appended as if `csq` contained the four
        characters `"null"`.
    :   `start` - The index of the first character in the subsequence
    :   `end` - The index of the character following the last character in the
        subsequence

    Returns:
    :   This writer

    Throws:
    :   `IndexOutOfBoundsException` - If `start` or `end` are negative, `start`
        is greater than `end`, or `end` is greater than
        `csq.length()`

    Since:
    :   1.5
  + ### append

    public [CharArrayWriter](CharArrayWriter.md "class in java.io") append(char c)

    Appends the specified character to this writer.

    An invocation of this method of the form `out.append(c)`
    behaves in exactly the same way as the invocation

    Copy![Copy snippet](../../../copy.svg)

    ```
        out.write(c)
    ```

    Specified by:
    :   `append` in interface `Appendable`

    Overrides:
    :   `append` in class `Writer`

    Parameters:
    :   `c` - The 16-bit character to append

    Returns:
    :   This writer

    Since:
    :   1.5
  + ### reset

    public void reset()

    Resets the buffer so that you can use it again without
    throwing away the already allocated buffer.
  + ### toCharArray

    public char[] toCharArray()

    Returns a copy of the input data.

    Returns:
    :   an array of chars copied from the input data.
  + ### size

    public int size()

    Returns the current size of the buffer.

    Returns:
    :   an int representing the current size of the buffer.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Converts input data to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string.
  + ### flush

    public void flush()

    Flush the stream.

    The `flush` method of `CharArrayWriter` does nothing.

    Specified by:
    :   `flush` in interface `Flushable`

    Specified by:
    :   `flush` in class `Writer`
  + ### close

    public void close()

    Close the stream. This method does not release the buffer, since its
    contents might still be required. Note: Invoking this method in this class
    will have no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Writer`