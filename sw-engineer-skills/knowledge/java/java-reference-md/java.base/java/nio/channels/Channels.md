Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class Channels

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.Channels

---

public final class Channels
extends [Object](../../lang/Object.md "class in java.lang")

Utility methods for channels and streams.

This class defines static methods that support the interoperation of the
stream classes of the [`java.io`](../../io/package-summary.md) package with the channel classes
of this package.

Since:
:   1.4

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ReadableByteChannel`

  `newChannel(InputStream in)`

  Constructs a channel that reads bytes from the given stream.

  `static WritableByteChannel`

  `newChannel(OutputStream out)`

  Constructs a channel that writes bytes to the given stream.

  `static InputStream`

  `newInputStream(AsynchronousByteChannel ch)`

  Constructs a stream that reads bytes from the given channel.

  `static InputStream`

  `newInputStream(ReadableByteChannel ch)`

  Constructs a stream that reads bytes from the given channel.

  `static OutputStream`

  `newOutputStream(AsynchronousByteChannel ch)`

  Constructs a stream that writes bytes to the given channel.

  `static OutputStream`

  `newOutputStream(WritableByteChannel ch)`

  Constructs a stream that writes bytes to the given channel.

  `static Reader`

  `newReader(ReadableByteChannel ch,
  String csName)`

  Constructs a reader that decodes bytes from the given channel according
  to the named charset.

  `static Reader`

  `newReader(ReadableByteChannel ch,
  Charset charset)`

  Constructs a reader that decodes bytes from the given channel according
  to the given charset.

  `static Reader`

  `newReader(ReadableByteChannel ch,
  CharsetDecoder dec,
  int minBufferCap)`

  Constructs a reader that decodes bytes from the given channel using the
  given decoder.

  `static Writer`

  `newWriter(WritableByteChannel ch,
  String csName)`

  Constructs a writer that encodes characters according to the named
  charset and writes the resulting bytes to the given channel.

  `static Writer`

  `newWriter(WritableByteChannel ch,
  Charset charset)`

  Constructs a writer that encodes characters according to the given
  charset and writes the resulting bytes to the given channel.

  `static Writer`

  `newWriter(WritableByteChannel ch,
  CharsetEncoder enc,
  int minBufferCap)`

  Constructs a writer that encodes characters using the given encoder and
  writes the resulting bytes to the given channel.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### newInputStream

    public static [InputStream](../../io/InputStream.md "class in java.io") newInputStream([ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels") ch)

    Constructs a stream that reads bytes from the given channel.

    The `read` and `transferTo` methods of the resulting stream
    will throw an [`IllegalBlockingModeException`](IllegalBlockingModeException.md "class in java.nio.channels") if invoked while the
    underlying channel is in non-blocking mode. The `transferTo` method
    will also throw an `IllegalBlockingModeException` if invoked to
    transfer bytes to an output stream that writes to an underlying channel in
    non-blocking mode. The stream will not be buffered, and
    it will not support the [`mark`](../../io/InputStream.md#mark(int)) or [`reset`](../../io/InputStream.md#reset()) methods. The stream will be safe for access by
    multiple concurrent threads. Closing the stream will in turn cause the
    channel to be closed.

    Parameters:
    :   `ch` - The channel from which bytes will be read

    Returns:
    :   A new input stream
  + ### newOutputStream

    public static [OutputStream](../../io/OutputStream.md "class in java.io") newOutputStream([WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels") ch)

    Constructs a stream that writes bytes to the given channel.

    The `write` methods of the resulting stream will throw an
    [`IllegalBlockingModeException`](IllegalBlockingModeException.md "class in java.nio.channels") if invoked while the underlying
    channel is in non-blocking mode. The stream will not be buffered. The
    stream will be safe for access by multiple concurrent threads. Closing
    the stream will in turn cause the channel to be closed.

    Parameters:
    :   `ch` - The channel to which bytes will be written

    Returns:
    :   A new output stream
  + ### newInputStream

    public static [InputStream](../../io/InputStream.md "class in java.io") newInputStream([AsynchronousByteChannel](AsynchronousByteChannel.md "interface in java.nio.channels") ch)

    Constructs a stream that reads bytes from the given channel.

    The stream will not be buffered, and it will not support the [`mark`](../../io/InputStream.md#mark(int)) or [`reset`](../../io/InputStream.md#reset()) methods. The
    stream will be safe for access by multiple concurrent threads. Closing
    the stream will in turn cause the channel to be closed.

    Parameters:
    :   `ch` - The channel from which bytes will be read

    Returns:
    :   A new input stream

    Since:
    :   1.7
  + ### newOutputStream

    public static [OutputStream](../../io/OutputStream.md "class in java.io") newOutputStream([AsynchronousByteChannel](AsynchronousByteChannel.md "interface in java.nio.channels") ch)

    Constructs a stream that writes bytes to the given channel.

    The stream will not be buffered. The stream will be safe for access
    by multiple concurrent threads. Closing the stream will in turn cause
    the channel to be closed.

    Parameters:
    :   `ch` - The channel to which bytes will be written

    Returns:
    :   A new output stream

    Since:
    :   1.7
  + ### newChannel

    public static [ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels") newChannel([InputStream](../../io/InputStream.md "class in java.io") in)

    Constructs a channel that reads bytes from the given stream.

    The resulting channel will not be buffered; it will simply redirect
    its I/O operations to the given stream. Closing the channel will in
    turn cause the stream to be closed.

    Parameters:
    :   `in` - The stream from which bytes are to be read

    Returns:
    :   A new readable byte channel
  + ### newChannel

    public static [WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels") newChannel([OutputStream](../../io/OutputStream.md "class in java.io") out)

    Constructs a channel that writes bytes to the given stream.

    The resulting channel will not be buffered; it will simply redirect
    its I/O operations to the given stream. Closing the channel will in
    turn cause the stream to be closed.

    Parameters:
    :   `out` - The stream to which bytes are to be written

    Returns:
    :   A new writable byte channel
  + ### newReader

    public static [Reader](../../io/Reader.md "class in java.io") newReader([ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels") ch,
    [CharsetDecoder](../charset/CharsetDecoder.md "class in java.nio.charset") dec,
    int minBufferCap)

    Constructs a reader that decodes bytes from the given channel using the
    given decoder.

    The resulting stream will contain an internal input buffer of at
    least `minBufferCap` bytes. The stream's `read` methods
    will, as needed, fill the buffer by reading bytes from the underlying
    channel; if the channel is in non-blocking mode when bytes are to be
    read then an [`IllegalBlockingModeException`](IllegalBlockingModeException.md "class in java.nio.channels") will be thrown. The
    resulting stream will not otherwise be buffered, and it will not support
    the [`mark`](../../io/Reader.md#mark(int)) or [`reset`](../../io/Reader.md#reset()) methods.
    Closing the stream will in turn cause the channel to be closed.

    Parameters:
    :   `ch` - The channel from which bytes will be read
    :   `dec` - The charset decoder to be used
    :   `minBufferCap` - The minimum capacity of the internal byte buffer,
        or `-1` if an implementation-dependent
        default capacity is to be used

    Returns:
    :   A new reader
  + ### newReader

    public static [Reader](../../io/Reader.md "class in java.io") newReader([ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels") ch,
    [String](../../lang/String.md "class in java.lang") csName)

    Constructs a reader that decodes bytes from the given channel according
    to the named charset.

    An invocation of this method of the form

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newReader(ch, csname)
    ```

    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newReader(ch, Charset.forName(csName))
    ```

    Parameters:
    :   `ch` - The channel from which bytes will be read
    :   `csName` - The name of the charset to be used

    Returns:
    :   A new reader

    Throws:
    :   `UnsupportedCharsetException` - If no support for the named charset is available
        in this instance of the Java virtual machine
  + ### newReader

    public static [Reader](../../io/Reader.md "class in java.io") newReader([ReadableByteChannel](ReadableByteChannel.md "interface in java.nio.channels") ch,
    [Charset](../charset/Charset.md "class in java.nio.charset") charset)

    Constructs a reader that decodes bytes from the given channel according
    to the given charset.

    An invocation of this method of the form

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newReader(ch, charset)
    ```

    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newReader(ch, charset.newDecoder(), -1)
    ```

    The reader's default action for malformed-input and unmappable-character
    errors is to [report](../charset/CodingErrorAction.md#REPORT)
    them. When more control over the error handling is required, the constructor
    that takes a [CharsetDecoder](../charset/CharsetDecoder.md "class in java.nio.charset") should be used.

    Parameters:
    :   `ch` - The channel from which bytes will be read
    :   `charset` - The charset to be used

    Returns:
    :   A new reader
  + ### newWriter

    public static [Writer](../../io/Writer.md "class in java.io") newWriter([WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels") ch,
    [CharsetEncoder](../charset/CharsetEncoder.md "class in java.nio.charset") enc,
    int minBufferCap)

    Constructs a writer that encodes characters using the given encoder and
    writes the resulting bytes to the given channel.

    The resulting stream will contain an internal output buffer of at
    least `minBufferCap` bytes. The stream's `write` methods
    will, as needed, flush the buffer by writing bytes to the underlying
    channel; if the channel is in non-blocking mode when bytes are to be
    written then an [`IllegalBlockingModeException`](IllegalBlockingModeException.md "class in java.nio.channels") will be thrown.
    The resulting stream will not otherwise be buffered. Closing the stream
    will in turn cause the channel to be closed.

    Parameters:
    :   `ch` - The channel to which bytes will be written
    :   `enc` - The charset encoder to be used
    :   `minBufferCap` - The minimum capacity of the internal byte buffer,
        or `-1` if an implementation-dependent
        default capacity is to be used

    Returns:
    :   A new writer
  + ### newWriter

    public static [Writer](../../io/Writer.md "class in java.io") newWriter([WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels") ch,
    [String](../../lang/String.md "class in java.lang") csName)

    Constructs a writer that encodes characters according to the named
    charset and writes the resulting bytes to the given channel.

    An invocation of this method of the form

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newWriter(ch, csname)
    ```

    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newWriter(ch, Charset.forName(csName))
    ```

    Parameters:
    :   `ch` - The channel to which bytes will be written
    :   `csName` - The name of the charset to be used

    Returns:
    :   A new writer

    Throws:
    :   `UnsupportedCharsetException` - If no support for the named charset is available
        in this instance of the Java virtual machine
  + ### newWriter

    public static [Writer](../../io/Writer.md "class in java.io") newWriter([WritableByteChannel](WritableByteChannel.md "interface in java.nio.channels") ch,
    [Charset](../charset/Charset.md "class in java.nio.charset") charset)

    Constructs a writer that encodes characters according to the given
    charset and writes the resulting bytes to the given channel.

    An invocation of this method of the form

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newWriter(ch, charset)
    ```

    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        Channels.newWriter(ch, charset.newEncoder(), -1)
    ```

    The writer's default action for malformed-input and unmappable-character
    errors is to [report](../charset/CodingErrorAction.md#REPORT)
    them. When more control over the error handling is required, the constructor
    that takes a [CharsetEncoder](../charset/CharsetEncoder.md "class in java.nio.charset") should be used.

    Parameters:
    :   `ch` - The channel to which bytes will be written
    :   `charset` - The charset to be used

    Returns:
    :   A new writer