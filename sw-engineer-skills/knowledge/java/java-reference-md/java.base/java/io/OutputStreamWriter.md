Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class OutputStreamWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

java.io.OutputStreamWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

Direct Known Subclasses:
:   `FileWriter`

---

public class OutputStreamWriter
extends [Writer](Writer.md "class in java.io")

An OutputStreamWriter is a bridge from character streams to byte streams:
Characters written to it are encoded into bytes using a specified [`charset`](../nio/charset/Charset.md "class in java.nio.charset"). The charset that it uses
may be specified by name or may be given explicitly, or the
default charset may be accepted.

Each invocation of a write() method causes the encoding converter to be
invoked on the given character(s). The resulting bytes are accumulated in a
buffer before being written to the underlying output stream. Note that the
characters passed to the write() methods are not buffered.

For top efficiency, consider wrapping an OutputStreamWriter within a
BufferedWriter so as to avoid frequent converter invocations. For example:

Copy![Copy snippet](../../../copy.svg)

```
    Writer out = new BufferedWriter(new OutputStreamWriter(anOutputStream));
```

A *surrogate pair* is a character represented by a sequence of two
`char` values: A *high* surrogate in the range '\uD800' to
'\uDBFF' followed by a *low* surrogate in the range '\uDC00' to
'\uDFFF'.

A *malformed surrogate element* is a high surrogate that is not
followed by a low surrogate or a low surrogate that is not preceded by a
high surrogate.

This class always replaces malformed surrogate elements and unmappable
character sequences with the charset's default *substitution sequence*.
The [CharsetEncoder](../nio/charset/CharsetEncoder.md "class in java.nio.charset") class should be used when more
control over the encoding process is required.

Since:
:   1.1

See Also:
:   * [`BufferedWriter`](BufferedWriter.md "class in java.io")
    * [`OutputStream`](OutputStream.md "class in java.io")
    * [`Charset`](../nio/charset/Charset.md "class in java.nio.charset")

* ## Field Summary

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OutputStreamWriter(OutputStream out)`

  Creates an OutputStreamWriter that uses the default character encoding, or
  where `out` is a `PrintStream`, the charset used by the print
  stream.

  `OutputStreamWriter(OutputStream out,
  String charsetName)`

  Creates an OutputStreamWriter that uses the named charset.

  `OutputStreamWriter(OutputStream out,
  Charset cs)`

  Creates an OutputStreamWriter that uses the given charset.

  `OutputStreamWriter(OutputStream out,
  CharsetEncoder enc)`

  Creates an OutputStreamWriter that uses the given charset encoder.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Writer`

  `append(CharSequence csq)`

  Appends the specified character sequence to this writer.

  `Writer`

  `append(CharSequence csq,
  int start,
  int end)`

  Appends a subsequence of the specified character sequence to this writer.

  `void`

  `close()`

  Closes the stream, flushing it first.

  `void`

  `flush()`

  Flushes the stream.

  `String`

  `getEncoding()`

  Returns the name of the character encoding being used by this stream.

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

  `append, nullWriter, write, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### OutputStreamWriter

    public OutputStreamWriter([OutputStream](OutputStream.md "class in java.io") out,
    [String](../lang/String.md "class in java.lang") charsetName)
    throws [UnsupportedEncodingException](UnsupportedEncodingException.md "class in java.io")

    Creates an OutputStreamWriter that uses the named charset.

    Parameters:
    :   `out` - An OutputStream
    :   `charsetName` - The name of a supported [`charset`](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `UnsupportedEncodingException` - If the named encoding is not supported
  + ### OutputStreamWriter

    public OutputStreamWriter([OutputStream](OutputStream.md "class in java.io") out)

    Creates an OutputStreamWriter that uses the default character encoding, or
    where `out` is a `PrintStream`, the charset used by the print
    stream.

    Parameters:
    :   `out` - An OutputStream

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### OutputStreamWriter

    public OutputStreamWriter([OutputStream](OutputStream.md "class in java.io") out,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") cs)

    Creates an OutputStreamWriter that uses the given charset.

    Parameters:
    :   `out` - An OutputStream
    :   `cs` - A charset

    Since:
    :   1.4
  + ### OutputStreamWriter

    public OutputStreamWriter([OutputStream](OutputStream.md "class in java.io") out,
    [CharsetEncoder](../nio/charset/CharsetEncoder.md "class in java.nio.charset") enc)

    Creates an OutputStreamWriter that uses the given charset encoder.

    Parameters:
    :   `out` - An OutputStream
    :   `enc` - A charset encoder

    Since:
    :   1.4
* ## Method Details

  + ### getEncoding

    public [String](../lang/String.md "class in java.lang") getEncoding()

    Returns the name of the character encoding being used by this stream.

    If the encoding has an historical name then that name is returned;
    otherwise the encoding's canonical name is returned.

    If this instance was created with the [`OutputStreamWriter(OutputStream, String)`](#%3Cinit%3E(java.io.OutputStream,java.lang.String)) constructor then the returned
    name, being unique for the encoding, may differ from the name passed to
    the constructor. This method may return `null` if the stream has
    been closed.

    Returns:
    :   The historical name of this encoding, or possibly
        `null` if the stream has been closed

    See Also:
    :   - [`Charset`](../nio/charset/Charset.md "class in java.nio.charset")
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
    :   `cbuf` - Buffer of characters
    :   `off` - Offset from which to start writing characters
    :   `len` - Number of characters to write

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given array
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
    :   `str` - A String
    :   `off` - Offset from which to start writing characters
    :   `len` - Number of characters to write

    Throws:
    :   `IndexOutOfBoundsException` - If `off` is negative, or `len` is negative,
        or `off + len` is negative or greater than the length
        of the given string
    :   `IOException` - If an I/O error occurs
  + ### append

    public [Writer](Writer.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq,
    int start,
    int end)
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `Writer`

    Appends a subsequence of the specified character sequence to this writer.
    `Appendable`.

    An invocation of this method of the form
    `out.append(csq, start, end)` when `csq`
    is not `null` behaves in exactly the
    same way as the invocation

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
    :   `IOException` - If an I/O error occurs
  + ### append

    public [Writer](Writer.md "class in java.io") append([CharSequence](../lang/CharSequence.md "interface in java.lang") csq)
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `Writer`

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

    Throws:
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