Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class PushbackReader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Reader](Reader.md "class in java.io")

[java.io.FilterReader](FilterReader.md "class in java.io")

java.io.PushbackReader

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Readable`

---

public class PushbackReader
extends [FilterReader](FilterReader.md "class in java.io")

A character-stream reader that allows characters to be pushed back into the
stream.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from class java.io.[FilterReader](FilterReader.md "class in java.io")

  `in`

  ### Fields inherited from class java.io.[Reader](Reader.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PushbackReader(Reader in)`

  Creates a new pushback reader with a one-character pushback buffer.

  `PushbackReader(Reader in,
  int size)`

  Creates a new pushback reader with a pushback buffer of the given size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the stream and releases any system resources associated with
  it.

  `void`

  `mark(int readAheadLimit)`

  Marks the present position in the stream.

  `boolean`

  `markSupported()`

  Tells whether this stream supports the mark() operation, which it does
  not.

  `int`

  `read()`

  Reads a single character.

  `int`

  `read(char[] cbuf,
  int off,
  int len)`

  Reads characters into a portion of an array.

  `boolean`

  `ready()`

  Tells whether this stream is ready to be read.

  `void`

  `reset()`

  Resets the stream.

  `long`

  `skip(long n)`

  Skips characters.

  `void`

  `unread(char[] cbuf)`

  Pushes back an array of characters by copying it to the front of the
  pushback buffer.

  `void`

  `unread(char[] cbuf,
  int off,
  int len)`

  Pushes back a portion of an array of characters by copying it to the
  front of the pushback buffer.

  `void`

  `unread(int c)`

  Pushes back a single character by copying it to the front of the
  pushback buffer.

  ### Methods inherited from class java.io.[Reader](Reader.md "class in java.io")

  `nullReader, read, read, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PushbackReader

    public PushbackReader([Reader](Reader.md "class in java.io") in,
    int size)

    Creates a new pushback reader with a pushback buffer of the given size.

    Parameters:
    :   `in` - The reader from which characters will be read
    :   `size` - The size of the pushback buffer

    Throws:
    :   `IllegalArgumentException` - if `size <= 0`
  + ### PushbackReader

    public PushbackReader([Reader](Reader.md "class in java.io") in)

    Creates a new pushback reader with a one-character pushback buffer.

    Parameters:
    :   `in` - The reader from which characters will be read
* ## Method Details

  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Reads a single character.

    Overrides:
    :   `read` in class `FilterReader`

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

    Overrides:
    :   `read` in class `FilterReader`

    Parameters:
    :   `cbuf` - Destination buffer
    :   `off` - Offset at which to start storing characters
    :   `len` - Maximum number of characters to read

    Returns:
    :   The number of characters read, or -1 if the end of the
        stream has been reached

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### unread

    public void unread(int c)
    throws [IOException](IOException.md "class in java.io")

    Pushes back a single character by copying it to the front of the
    pushback buffer. After this method returns, the next character to be read
    will have the value `(char)c`.

    Parameters:
    :   `c` - The int value representing a character to be pushed back

    Throws:
    :   `IOException` - If the pushback buffer is full,
        or if some other I/O error occurs
  + ### unread

    public void unread(char[] cbuf,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Pushes back a portion of an array of characters by copying it to the
    front of the pushback buffer. After this method returns, the next
    character to be read will have the value `cbuf[off]`, the
    character after that will have the value `cbuf[off+1]`, and
    so forth.

    Parameters:
    :   `cbuf` - Character array
    :   `off` - Offset of first character to push back
    :   `len` - Number of characters to push back

    Throws:
    :   `IOException` - If there is insufficient room in the pushback
        buffer, or if some other I/O error occurs
  + ### unread

    public void unread(char[] cbuf)
    throws [IOException](IOException.md "class in java.io")

    Pushes back an array of characters by copying it to the front of the
    pushback buffer. After this method returns, the next character to be
    read will have the value `cbuf[0]`, the character after that
    will have the value `cbuf[1]`, and so forth.

    Parameters:
    :   `cbuf` - Character array to push back

    Throws:
    :   `IOException` - If there is insufficient room in the pushback
        buffer, or if some other I/O error occurs
  + ### ready

    public boolean ready()
    throws [IOException](IOException.md "class in java.io")

    Tells whether this stream is ready to be read.

    Overrides:
    :   `ready` in class `FilterReader`

    Returns:
    :   True if the next read() is guaranteed not to block for input,
        false otherwise. Note that returning false does not guarantee that the
        next read will block.

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### mark

    public void mark(int readAheadLimit)
    throws [IOException](IOException.md "class in java.io")

    Marks the present position in the stream. The `mark`
    for class `PushbackReader` always throws an exception.

    Overrides:
    :   `mark` in class `FilterReader`

    Parameters:
    :   `readAheadLimit` - Limit on the number of characters that may be
        read while still preserving the mark. After
        reading this many characters, attempting to
        reset the stream may fail.

    Throws:
    :   `IOException` - Always, since mark is not supported
  + ### reset

    public void reset()
    throws [IOException](IOException.md "class in java.io")

    Resets the stream. The `reset` method of
    `PushbackReader` always throws an exception.

    Overrides:
    :   `reset` in class `FilterReader`

    Throws:
    :   `IOException` - Always, since reset is not supported
  + ### markSupported

    public boolean markSupported()

    Tells whether this stream supports the mark() operation, which it does
    not.

    Overrides:
    :   `markSupported` in class `FilterReader`

    Returns:
    :   true if and only if this stream supports the mark operation.
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes the stream and releases any system resources associated with
    it. Once the stream has been closed, further read(),
    unread(), ready(), or skip() invocations will throw an IOException.
    Closing a previously closed stream has no effect. This method will block
    while there is another thread blocking on the reader.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterReader`

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### skip

    public long skip(long n)
    throws [IOException](IOException.md "class in java.io")

    Skips characters. This method will block until some characters are
    available, an I/O error occurs, or the end of the stream is reached.
    If the stream is already at its end before this method is invoked,
    then no characters are skipped and zero is returned.

    Overrides:
    :   `skip` in class `FilterReader`

    Parameters:
    :   `n` - The number of characters to skip

    Returns:
    :   The number of characters actually skipped

    Throws:
    :   `IOException` - If an I/O error occurs