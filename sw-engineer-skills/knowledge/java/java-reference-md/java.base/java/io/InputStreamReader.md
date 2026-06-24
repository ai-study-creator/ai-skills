Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class InputStreamReader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Reader](Reader.md "class in java.io")

java.io.InputStreamReader

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Readable`

Direct Known Subclasses:
:   `FileReader`

---

public class InputStreamReader
extends [Reader](Reader.md "class in java.io")

An InputStreamReader is a bridge from byte streams to character streams: It
reads bytes and decodes them into characters using a specified [`charset`](../nio/charset/Charset.md "class in java.nio.charset"). The charset that it uses
may be specified by name or may be given explicitly, or the
[`default charset`](../nio/charset/Charset.md#defaultCharset()) may be used.

Each invocation of one of an InputStreamReader's read() methods may
cause one or more bytes to be read from the underlying byte-input stream.
To enable the efficient conversion of bytes to characters, more bytes may
be read ahead from the underlying stream than are necessary to satisfy the
current read operation.

For top efficiency, consider wrapping an InputStreamReader within a
BufferedReader. For example:

Copy![Copy snippet](../../../copy.svg)

```
    BufferedReader in = new BufferedReader(new InputStreamReader(anInputStream));
```

Since:
:   1.1

See Also:
:   * [`BufferedReader`](BufferedReader.md "class in java.io")
    * [`InputStream`](InputStream.md "class in java.io")
    * [`Charset`](../nio/charset/Charset.md "class in java.nio.charset")

* ## Field Summary

  ### Fields inherited from class java.io.[Reader](Reader.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InputStreamReader(InputStream in)`

  Creates an InputStreamReader that uses the
  [`default charset`](../nio/charset/Charset.md#defaultCharset()).

  `InputStreamReader(InputStream in,
  String charsetName)`

  Creates an InputStreamReader that uses the named charset.

  `InputStreamReader(InputStream in,
  Charset cs)`

  Creates an InputStreamReader that uses the given charset.

  `InputStreamReader(InputStream in,
  CharsetDecoder dec)`

  Creates an InputStreamReader that uses the given charset decoder.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the stream and releases any system resources associated with
  it.

  `String`

  `getEncoding()`

  Returns the name of the character encoding being used by this stream.

  `int`

  `read()`

  Reads a single character.

  `int`

  `read(char[] cbuf,
  int off,
  int len)`

  Reads characters into a portion of an array.

  `int`

  `read(CharBuffer target)`

  Attempts to read characters into the specified character buffer.

  `boolean`

  `ready()`

  Tells whether this stream is ready to be read.

  ### Methods inherited from class java.io.[Reader](Reader.md "class in java.io")

  `mark, markSupported, nullReader, read, reset, skip, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InputStreamReader

    public InputStreamReader([InputStream](InputStream.md "class in java.io") in)

    Creates an InputStreamReader that uses the
    [`default charset`](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `in` - An InputStream

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### InputStreamReader

    public InputStreamReader([InputStream](InputStream.md "class in java.io") in,
    [String](../lang/String.md "class in java.lang") charsetName)
    throws [UnsupportedEncodingException](UnsupportedEncodingException.md "class in java.io")

    Creates an InputStreamReader that uses the named charset.

    Parameters:
    :   `in` - An InputStream
    :   `charsetName` - The name of a supported [`charset`](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `UnsupportedEncodingException` - If the named charset is not supported
  + ### InputStreamReader

    public InputStreamReader([InputStream](InputStream.md "class in java.io") in,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") cs)

    Creates an InputStreamReader that uses the given charset.

    Parameters:
    :   `in` - An InputStream
    :   `cs` - A charset

    Since:
    :   1.4
  + ### InputStreamReader

    public InputStreamReader([InputStream](InputStream.md "class in java.io") in,
    [CharsetDecoder](../nio/charset/CharsetDecoder.md "class in java.nio.charset") dec)

    Creates an InputStreamReader that uses the given charset decoder.

    Parameters:
    :   `in` - An InputStream
    :   `dec` - A charset decoder

    Since:
    :   1.4
* ## Method Details

  + ### getEncoding

    public [String](../lang/String.md "class in java.lang") getEncoding()

    Returns the name of the character encoding being used by this stream.

    If the encoding has an historical name then that name is returned;
    otherwise the encoding's canonical name is returned.

    If this instance was created with the [`InputStreamReader(InputStream, String)`](#%3Cinit%3E(java.io.InputStream,java.lang.String)) constructor then the returned
    name, being unique for the encoding, may differ from the name passed to
    the constructor. This method will return `null` if the
    stream has been closed.

    Returns:
    :   The historical name of this encoding, or
        `null` if the stream has been closed

    See Also:
    :   - [`Charset`](../nio/charset/Charset.md "class in java.nio.charset")
  + ### read

    public int read([CharBuffer](../nio/CharBuffer.md "class in java.nio") target)
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `Reader`

    Attempts to read characters into the specified character buffer.
    The buffer is used as a repository of characters as-is: the only
    changes made are the results of a put operation. No flipping or
    rewinding of the buffer is performed.

    Specified by:
    :   `read` in interface `Readable`

    Overrides:
    :   `read` in class `Reader`

    Parameters:
    :   `target` - the buffer to read characters into

    Returns:
    :   The number of characters added to the buffer, or
        -1 if this source of characters is at its end

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### read

    public int read()
    throws [IOException](IOException.md "class in java.io")

    Reads a single character.

    Overrides:
    :   `read` in class `Reader`

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
    :   `IOException` - If an I/O error occurs
  + ### ready

    public boolean ready()
    throws [IOException](IOException.md "class in java.io")

    Tells whether this stream is ready to be read. An InputStreamReader is
    ready if its input buffer is not empty, or if bytes are available to be
    read from the underlying byte stream.

    Overrides:
    :   `ready` in class `Reader`

    Returns:
    :   True if the next read() is guaranteed not to block for input,
        false otherwise. Note that returning false does not guarantee that the
        next read will block.

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Description copied from class: `Reader`

    Closes the stream and releases any system resources associated with
    it. Once the stream has been closed, further read(), ready(),
    mark(), reset(), or skip() invocations will throw an IOException.
    Closing a previously closed stream has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Reader`

    Throws:
    :   `IOException` - If an I/O error occurs