Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioInputStream

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.io.InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")

javax.sound.sampled.AudioInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class AudioInputStream
extends [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")

An audio input stream is an input stream with a specified audio format and
length. The length is expressed in sample frames, not bytes. Several methods
are provided for reading a certain number of bytes from the stream, or an
unspecified number of bytes. The audio input stream keeps track of the last
byte that was read. You can skip over an arbitrary number of bytes to get to
a later position for reading. An audio input stream may support marks. When
you set a mark, the current position is remembered so that you can return to
it later.

The `AudioSystem` class includes many methods that manipulate
`AudioInputStream` objects. For example, the methods let you:

* obtain an audio input stream from an external audio file, stream, or
  `URL`* write an external file from an audio input stream* convert an audio input stream to a different audio format

Since:
:   1.3

See Also:
:   * [`AudioSystem`](AudioSystem.md "class in javax.sound.sampled")
    * [`Clip.open(AudioInputStream)`](Clip.md#open(javax.sound.sampled.AudioInputStream))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected AudioFormat`

  `format`

  The format of the audio data contained in the stream.

  `protected long`

  `frameLength`

  This stream's length, in sample frames.

  `protected long`

  `framePos`

  The current position in this stream, in sample frames (zero-based).

  `protected int`

  `frameSize`

  The size of each frame, in bytes.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AudioInputStream(InputStream stream,
  AudioFormat format,
  long length)`

  Constructs an audio input stream that has the requested format and length
  in sample frames, using audio data from the specified input stream.

  `AudioInputStream(TargetDataLine line)`

  Constructs an audio input stream that reads its data from the target data
  line indicated.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns the maximum number of bytes that can be read (or skipped over)
  from this audio input stream without blocking.

  `void`

  `close()`

  Closes this audio input stream and releases any system resources
  associated with the stream.

  `AudioFormat`

  `getFormat()`

  Obtains the audio format of the sound data in this audio input stream.

  `long`

  `getFrameLength()`

  Obtains the length of the stream, expressed in sample frames rather than
  bytes.

  `void`

  `mark(int readlimit)`

  Marks the current position in this audio input stream.

  `boolean`

  `markSupported()`

  Tests whether this audio input stream supports the `mark` and
  `reset` methods.

  `int`

  `read()`

  Reads the next byte of data from the audio input stream.

  `int`

  `read(byte[] b)`

  Reads some number of bytes from the audio input stream and stores them
  into the buffer array `b`.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads up to a specified maximum number of bytes of data from the audio
  stream, putting them into the given byte array.

  `void`

  `reset()`

  Repositions this audio input stream to the position it had at the time
  its `mark` method was last invoked.

  `long`

  `skip(long n)`

  Skips over and discards a specified number of bytes from this audio input
  stream.

  ### Methods inherited from class java.io.[InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### format

    protected [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format

    The format of the audio data contained in the stream.
  + ### frameLength

    protected long frameLength

    This stream's length, in sample frames.
  + ### frameSize

    protected int frameSize

    The size of each frame, in bytes.
  + ### framePos

    protected long framePos

    The current position in this stream, in sample frames (zero-based).
* ## Constructor Details

  + ### AudioInputStream

    public AudioInputStream([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    long length)

    Constructs an audio input stream that has the requested format and length
    in sample frames, using audio data from the specified input stream.

    Parameters:
    :   `stream` - the stream on which this `AudioInputStream` object
        is based
    :   `format` - the format of this stream's audio data
    :   `length` - the length in sample frames of the data in this stream
  + ### AudioInputStream

    public AudioInputStream([TargetDataLine](TargetDataLine.md "interface in javax.sound.sampled") line)

    Constructs an audio input stream that reads its data from the target data
    line indicated. The format of the stream is the same as that of the
    target data line, and the length is `AudioSystem#NOT_SPECIFIED`.

    Parameters:
    :   `line` - the target data line from which this stream obtains its data

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
* ## Method Details

  + ### getFormat

    public [AudioFormat](AudioFormat.md "class in javax.sound.sampled") getFormat()

    Obtains the audio format of the sound data in this audio input stream.

    Returns:
    :   an audio format object describing this stream's format
  + ### getFrameLength

    public long getFrameLength()

    Obtains the length of the stream, expressed in sample frames rather than
    bytes.

    Returns:
    :   the length in sample frames
  + ### read

    public int read()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Reads the next byte of data from the audio input stream. The audio input
    stream's frame size must be one byte, or an `IOException` will be
    thrown.

    Specified by:
    :   `read` in class `InputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream is reached.

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`read(byte[], int, int)`](#read(byte%5B%5D,int,int))
        - [`read(byte[])`](#read(byte%5B%5D))
        - [`available()`](#available())
  + ### read

    public int read(byte[] b)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Reads some number of bytes from the audio input stream and stores them
    into the buffer array `b`. The number of bytes actually read is
    returned as an integer. This method blocks until input data is available,
    the end of the stream is detected, or an exception is thrown.

    This method will always read an integral number of frames. If the length
    of the array is not an integral number of frames, a maximum of
    `b.length - (b.length % frameSize)` bytes will be read.

    Overrides:
    :   `read` in class `InputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`read(byte[], int, int)`](#read(byte%5B%5D,int,int))
        - [`read()`](#read())
        - [`available()`](#available())
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Reads up to a specified maximum number of bytes of data from the audio
    stream, putting them into the given byte array.

    This method will always read an integral number of frames. If `len`
    does not specify an integral number of frames, a maximum of
    `len - (len % frameSize)` bytes will be read.

    Overrides:
    :   `read` in class `InputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in array `b`
        at which the data is written.
    :   `len` - the maximum number of bytes to read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`read(byte[])`](#read(byte%5B%5D))
        - [`read()`](#read())
        - [`skip(long)`](#skip(long))
        - [`available()`](#available())
  + ### skip

    public long skip(long n)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Skips over and discards a specified number of bytes from this audio input
    stream.

    This method will always skip an integral number of frames. If `n`
    does not specify an integral number of frames, a maximum of
    `n - (n % frameSize)` bytes will be skipped.

    Overrides:
    :   `skip` in class `InputStream`

    Parameters:
    :   `n` - the requested number of bytes to be skipped

    Returns:
    :   the actual number of bytes skipped

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`read()`](#read())
        - [`available()`](#available())
  + ### available

    public int available()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns the maximum number of bytes that can be read (or skipped over)
    from this audio input stream without blocking. This limit applies only to
    the next invocation of a `read` or `skip` method for this
    audio input stream; the limit can vary each time these methods are
    invoked. Depending on the underlying stream, an `IOException` may
    be thrown if this stream is closed.

    Overrides:
    :   `available` in class `InputStream`

    Returns:
    :   the number of bytes that can be read from this audio input stream
        without blocking

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`read(byte[], int, int)`](#read(byte%5B%5D,int,int))
        - [`read(byte[])`](#read(byte%5B%5D))
        - [`read()`](#read())
        - [`skip(long)`](#skip(long))
  + ### close

    public void close()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Closes this audio input stream and releases any system resources
    associated with the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `InputStream`

    Throws:
    :   `IOException` - if an input or output error occurs
  + ### mark

    public void mark(int readlimit)

    Marks the current position in this audio input stream.

    Overrides:
    :   `mark` in class `InputStream`

    Parameters:
    :   `readlimit` - the maximum number of bytes that can be read before the
        mark position becomes invalid

    See Also:
    :   - [`reset()`](#reset())
        - [`markSupported()`](#markSupported())
  + ### reset

    public void reset()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Repositions this audio input stream to the position it had at the time
    its `mark` method was last invoked.

    Overrides:
    :   `reset` in class `InputStream`

    Throws:
    :   `IOException` - if an input or output error occurs

    See Also:
    :   - [`mark(int)`](#mark(int))
        - [`markSupported()`](#markSupported())
  + ### markSupported

    public boolean markSupported()

    Tests whether this audio input stream supports the `mark` and
    `reset` methods.

    Overrides:
    :   `markSupported` in class `InputStream`

    Returns:
    :   `true` if this stream supports the `mark` and
        `reset` methods; `false` otherwise

    See Also:
    :   - [`mark(int)`](#mark(int))
        - [`reset()`](#reset())