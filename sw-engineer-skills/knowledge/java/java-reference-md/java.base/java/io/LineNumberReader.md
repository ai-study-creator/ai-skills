Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class LineNumberReader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Reader](Reader.md "class in java.io")

[java.io.BufferedReader](BufferedReader.md "class in java.io")

java.io.LineNumberReader

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Readable`

---

public class LineNumberReader
extends [BufferedReader](BufferedReader.md "class in java.io")

A buffered character-input stream that keeps track of line numbers. This
class defines methods [`setLineNumber(int)`](#setLineNumber(int)) and [`getLineNumber()`](#getLineNumber()) for setting and getting the current line number
respectively.

By default, line numbering begins at 0. This number increments at every
[line terminator](#lt) as the data is read, and at the end of the
stream if the last character in the stream is not a line terminator. This
number can be changed with a call to `setLineNumber(int)`. Note
however, that `setLineNumber(int)` does not actually change the current
position in the stream; it only changes the value that will be returned by
`getLineNumber()`.

A line is considered to be terminated by any one of a
line feed ('\n'), a carriage return ('\r'), or a carriage return followed
immediately by a linefeed, or any of the previous terminators followed by
end of stream, or end of stream not preceded by another terminator.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from class java.io.[Reader](Reader.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LineNumberReader(Reader in)`

  Create a new line-numbering reader, using the default input-buffer
  size.

  `LineNumberReader(Reader in,
  int sz)`

  Create a new line-numbering reader, reading characters into a buffer of
  the given size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getLineNumber()`

  Get the current line number.

  `void`

  `mark(int readAheadLimit)`

  Mark the present position in the stream.

  `int`

  `read()`

  Read a single character.

  `int`

  `read(char[] cbuf,
  int off,
  int len)`

  Reads characters into a portion of an array.

  `String`

  `readLine()`

  Read a line of text.

  `void`

  `reset()`

  Reset the stream to the most recent mark.

  `void`

  `setLineNumber(int lineNumber)`

  Set the current line number.

  `long`

  `skip(long n)`

  Skips characters.

  ### Methods inherited from class java.io.[BufferedReader](BufferedReader.md "class in java.io")

  `close, lines, markSupported, ready`

  ### Methods inherited from class java.io.[Reader](Reader.md "class in java.io")

  `nullReader, read, read, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LineNumberReader

    public LineNumberReader([Reader](Reader.md "class in java.io") in)

    Create a new line-numbering reader, using the default input-buffer
    size.

    Parameters:
    :   `in` - A Reader object to provide the underlying stream
  + ### LineNumberReader

    public LineNumberReader([Reader](Reader.md "class in java.io") in,
    int sz)

    Create a new line-numbering reader, reading characters into a buffer of
    the given size.

    Parameters:
    :   `in` - A Reader object to provide the underlying stream
    :   `sz` - An int specifying the size of the buffer
* ## Method Details

  + ### setLineNumber

    public void setLineNumber(int lineNumber)

    Set the current line number.

    Parameters:
    :   `lineNumber` - An int specifying the line number

    See Also:
    :   - [`getLineNumber()`](#getLineNumber())
  + ### getLineNumber

    public int getLineNumber()

    Get the current line number.

    Returns:
    :   The current line number

    See Also:
    :   - [`setLineNumber(int)`](#setLineNumber(int))
  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Read a single character. [Line terminators](#lt) are
    compressed into single newline ('\n') characters. The current line
    number is incremented whenever a line terminator is read, or when the
    end of the stream is reached and the last character in the stream is
    not a line terminator.

    Overrides:
    :   `read` in class `BufferedReader`

    Returns:
    :   The character read, or -1 if the end of the stream has been
        reached

    Throws:
    :   `IOException` - If an I/O error occurs
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

    [Line terminators](#lt) are compressed into single newline
    ('\n') characters. The current line number is incremented whenever a
    line terminator is read, or when the end of the stream is reached and
    the last character in the stream is not a line terminator.

    Overrides:
    :   `read` in class `BufferedReader`

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
    :   `IOException` - If an I/O error occurs
  + ### readLine

    public [String](../lang/String.md "class in java.lang") readLine()
    throws [IOException](IOException.md "class in java.io")

    Read a line of text. [Line terminators](#lt) are compressed
    into single newline ('\n') characters. The current line number is
    incremented whenever a line terminator is read, or when the end of the
    stream is reached and the last character in the stream is not a line
    terminator.

    Overrides:
    :   `readLine` in class `BufferedReader`

    Returns:
    :   A String containing the contents of the line, not including
        any [line termination characters](#lt), or
        `null` if the end of the stream has been reached

    Throws:
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`Files.readAllLines(java.nio.file.Path, java.nio.charset.Charset)`](../nio/file/Files.md#readAllLines(java.nio.file.Path,java.nio.charset.Charset))
  + ### skip

    public long skip(long n)
    throws [IOException](IOException.md "class in java.io")

    Skips characters. This method will block until some characters are
    available, an I/O error occurs, or the end of the stream is reached.
    If the stream is already at its end before this method is invoked,
    then no characters are skipped and zero is returned.

    Overrides:
    :   `skip` in class `BufferedReader`

    Parameters:
    :   `n` - The number of characters to skip

    Returns:
    :   The number of characters actually skipped

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### mark

    public void mark(int readAheadLimit)
    throws [IOException](IOException.md "class in java.io")

    Mark the present position in the stream. Subsequent calls to reset()
    will attempt to reposition the stream to this point, and will also reset
    the line number appropriately.

    Overrides:
    :   `mark` in class `BufferedReader`

    Parameters:
    :   `readAheadLimit` - Limit on the number of characters that may be read while still
        preserving the mark. After reading this many characters,
        attempting to reset the stream may fail.

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### reset

    public void reset()
    throws [IOException](IOException.md "class in java.io")

    Reset the stream to the most recent mark.

    Overrides:
    :   `reset` in class `BufferedReader`

    Throws:
    :   `IOException` - If the stream has not been marked, or if the mark has been
        invalidated