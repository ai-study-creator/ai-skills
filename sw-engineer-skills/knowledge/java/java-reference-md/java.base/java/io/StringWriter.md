Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class StringWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

java.io.StringWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

public class StringWriter
extends [Writer](Writer.md "class in java.io")

A character stream that collects its output in a string buffer, which can
then be used to construct a string.

Closing a `StringWriter` has no effect. The methods in this class
can be called after the stream has been closed without generating an
`IOException`.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringWriter()`

  Create a new string writer using the default initial string-buffer
  size.

  `StringWriter(int initialSize)`

  Create a new string writer using the specified initial string-buffer
  size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `StringWriter`

  `append(char c)`

  Appends the specified character to this writer.

  `StringWriter`

  `append(CharSequence csq)`

  Appends the specified character sequence to this writer.

  `StringWriter`

  `append(CharSequence csq,
  int start,
  int end)`

  Appends a subsequence of the specified character sequence to this writer.

  `void`

  `close()`

  Closing a `StringWriter` has no effect.

  `void`

  `flush()`

  Flush the stream.

  `StringBuffer`

  `getBuffer()`

  Return the string buffer itself.

  `String`

  `toString()`

  Return the buffer's current value as a string.

  `void`

  `write(char[] cbuf,
  int off,
  int len)`

  Write a portion of an array of characters.

  `void`

  `write(int c)`

  Write a single character.

  `void`

  `write(String str)`

  Write a string.

  `void`

  `write(String str,
  int off,
  int len)`

  Write a portion of a string.

  ### Methods inherited from class java.io.[Writer](Writer.md "class in java.io")

  `nullWriter, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringWriter

    public StringWriter()

    Create a new string writer using the default initial string-buffer
    size.
  + ### StringWriter

    public StringWriter(int initialSize)

    Create a new string writer using the specified initial string-buffer
    size.

    Parameters:
    :   `initialSize` - The number of `char` values that will fit into this buffer
        before it is automatically expanded

    Throws:
    :   `IllegalArgumentException` - If `initialSize` is negative
* ## Method Details

  + ### write

    public void write(int c)

    Write a single character.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `c` - int specifying a character to be written
  + ### write

    public void write(char[] cbuf,
    int off,
    int len)

    Write a portion of an array of characters.

    Specified by:
    :   `write` in class `Writer`

    Parameters:
    :   `cbuf` - Array of characters
    :   `off` - Offset from which to start writing characters
    :   `len` - Number of characters to write

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given array
  + ### write

    public void write([String](../lang/String.md "class in java.lang") str)

    Write a string.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `str` - String to be written
  + ### write

    public void write([String](../lang/String.md "class in java.lang") str,
    int off,
    int len)

    Write a portion of a string.

    Overrides:
    :   `write` in class `Writer`

    Parameters:
    :   `str` - String to be written
    :   `off` - Offset from which to start writing characters
    :   `len` - Number of characters to write

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given string
  + ### append

    public [StringWriter](StringWriter.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq)

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

    public [StringWriter](StringWriter.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq,
    int start,
    int end)

    Appends a subsequence of the specified character sequence to this writer.

    An invocation of this method of the form
    `out.append(csq, start, end)` when `csq`
    is not `null`, behaves in
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

    public [StringWriter](StringWriter.md "class in java.io") append(char c)

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
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Return the buffer's current value as a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### getBuffer

    public [StringBuffer](../lang/StringBuffer.md "class in java.lang") getBuffer()

    Return the string buffer itself.

    Returns:
    :   StringBuffer holding the current buffer value.
  + ### flush

    public void flush()

    Flush the stream.

    The `flush` method of `StringWriter` does nothing.

    Specified by:
    :   `flush` in interface `Flushable`

    Specified by:
    :   `flush` in class `Writer`
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closing a `StringWriter` has no effect. The methods in this
    class can be called after the stream has been closed without generating
    an `IOException`.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Writer`

    Throws:
    :   `IOException` - If an I/O error occurs