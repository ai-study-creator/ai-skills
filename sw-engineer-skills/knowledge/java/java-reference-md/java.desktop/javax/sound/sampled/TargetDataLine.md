Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Interface TargetDataLine

All Superinterfaces:
:   `AutoCloseable`, `DataLine`, `Line`

---

public interface TargetDataLine
extends [DataLine](DataLine.md "interface in javax.sound.sampled")

A target data line is a type of [`DataLine`](DataLine.md "interface in javax.sound.sampled") from which audio data can be
read. The most common example is a data line that gets its data from an audio
capture device. (The device is implemented as a mixer that writes to the
target data line.)

Note that the naming convention for this interface reflects the relationship
between the line and its mixer. From the perspective of an application, a
target data line may act as a source for audio data.

The target data line can be obtained from a mixer by invoking the
[`getLine`](Mixer.md#getLine(javax.sound.sampled.Line.Info)) method of `Mixer` with an appropriate
[`DataLine.Info`](DataLine.Info.md "class in javax.sound.sampled") object.

The `TargetDataLine` interface provides a method for reading the
captured data from the target data line's buffer. Applications that record
audio should read data from the target data line quickly enough to keep the
buffer from overflowing, which could cause discontinuities in the captured
data that are perceived as clicks. Applications can use the
[`available`](DataLine.md#available()) method defined in the `DataLine`
interface to determine the amount of data currently queued in the data line's
buffer. If the buffer does overflow, the oldest queued data is discarded and
replaced by new data.

Since:
:   1.3

See Also:
:   * [`Mixer`](Mixer.md "interface in javax.sound.sampled")
    * [`DataLine`](DataLine.md "interface in javax.sound.sampled")
    * [`SourceDataLine`](SourceDataLine.md "interface in javax.sound.sampled")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.sound.sampled.[DataLine](DataLine.md "interface in javax.sound.sampled")

  `DataLine.Info`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `open(AudioFormat format)`

  Opens the line with the specified format, causing the line to acquire any
  required system resources and become operational.

  `void`

  `open(AudioFormat format,
  int bufferSize)`

  Opens the line with the specified format and requested buffer size,
  causing the line to acquire any required system resources and become
  operational.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads audio data from the data line's input buffer.

  ### Methods inherited from interface javax.sound.sampled.[DataLine](DataLine.md "interface in javax.sound.sampled")

  `available, drain, flush, getBufferSize, getFormat, getFramePosition, getLevel, getLongFramePosition, getMicrosecondPosition, isActive, isRunning, start, stop`

  ### Methods inherited from interface javax.sound.sampled.[Line](Line.md "interface in javax.sound.sampled")

  `addLineListener, close, getControl, getControls, getLineInfo, isControlSupported, isOpen, open, removeLineListener`

* ## Method Details

  + ### open

    void open([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    int bufferSize)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Opens the line with the specified format and requested buffer size,
    causing the line to acquire any required system resources and become
    operational.

    The buffer size is specified in bytes, but must represent an integral
    number of sample frames. Invoking this method with a requested buffer
    size that does not meet this requirement may result in an
    `IllegalArgumentException`. The actual buffer size for the open
    line may differ from the requested buffer size. The value actually set
    may be queried by subsequently calling [`DataLine.getBufferSize()`](DataLine.md#getBufferSize())

    If this operation succeeds, the line is marked as open, and an
    [`OPEN`](LineEvent.Type.md#OPEN) event is dispatched to the line's
    listeners.

    Invoking this method on a line that is already open is illegal and may
    result in an `IllegalStateException`.

    Some lines, once closed, cannot be reopened. Attempts to reopen such a
    line will always result in a `LineUnavailableException`.

    Parameters:
    :   `format` - the desired audio format
    :   `bufferSize` - the desired buffer size, in bytes

    Throws:
    :   `LineUnavailableException` - if the line cannot be opened due to
        resource restrictions
    :   `IllegalArgumentException` - if the buffer size does not represent an
        integral number of sample frames, or if `format` is not
        fully specified or invalid
    :   `IllegalStateException` - if the line is already open
    :   `SecurityException` - if the line cannot be opened due to security
        restrictions

    See Also:
    :   - [`open(AudioFormat)`](#open(javax.sound.sampled.AudioFormat))
        - [`Line.open()`](Line.md#open())
        - [`Line.close()`](Line.md#close())
        - [`Line.isOpen()`](Line.md#isOpen())
        - [`LineEvent`](LineEvent.md "class in javax.sound.sampled")
  + ### open

    void open([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Opens the line with the specified format, causing the line to acquire any
    required system resources and become operational.

    The implementation chooses a buffer size, which is measured in bytes but
    which encompasses an integral number of sample frames. The buffer size
    that the system has chosen may be queried by subsequently calling
    [`DataLine.getBufferSize()`](DataLine.md#getBufferSize())

    If this operation succeeds, the line is marked as open, and an
    [`OPEN`](LineEvent.Type.md#OPEN) event is dispatched to the line's
    listeners.

    Invoking this method on a line that is already open is illegal and may
    result in an `IllegalStateException`.

    Some lines, once closed, cannot be reopened. Attempts to reopen such a
    line will always result in a `LineUnavailableException`.

    Parameters:
    :   `format` - the desired audio format

    Throws:
    :   `LineUnavailableException` - if the line cannot be opened due to
        resource restrictions
    :   `IllegalArgumentException` - if `format` is not fully specified
        or invalid
    :   `IllegalStateException` - if the line is already open
    :   `SecurityException` - if the line cannot be opened due to security
        restrictions

    See Also:
    :   - [`open(AudioFormat, int)`](#open(javax.sound.sampled.AudioFormat,int))
        - [`Line.open()`](Line.md#open())
        - [`Line.close()`](Line.md#close())
        - [`Line.isOpen()`](Line.md#isOpen())
        - [`LineEvent`](LineEvent.md "class in javax.sound.sampled")
  + ### read

    int read(byte[] b,
    int off,
    int len)

    Reads audio data from the data line's input buffer. The requested number
    of bytes is read into the specified array, starting at the specified
    offset into the array in bytes. This method blocks until the requested
    amount of data has been read. However, if the data line is closed,
    stopped, drained, or flushed before the requested amount has been read,
    the method no longer blocks, but returns the number of bytes read thus
    far.

    The number of bytes that can be read without blocking can be ascertained
    using the [`available`](DataLine.md#available()) method of the
    `DataLine` interface. (While it is guaranteed that this number of
    bytes can be read without blocking, there is no guarantee that attempts
    to read additional data will block.)

    The number of bytes to be read must represent an integral number of
    sample frames, such that:

    `[ bytes read ] % [frame size in bytes ] == 0`

    The return value will always meet this requirement. A request to read a
    number of bytes representing a non-integral number of sample frames
    cannot be fulfilled and may result in an IllegalArgumentException.

    Parameters:
    :   `b` - a byte array that will contain the requested input data when
        this method returns
    :   `off` - the offset from the beginning of the array, in bytes
    :   `len` - the requested number of bytes to read

    Returns:
    :   the number of bytes actually read

    Throws:
    :   `IllegalArgumentException` - if the requested number of bytes does
        not represent an integral number of sample frames, or if
        `len` is negative
    :   `ArrayIndexOutOfBoundsException` - if `off` is negative, or
        `off+len` is greater than the length of the array `b`

    See Also:
    :   - [`SourceDataLine.write(byte[], int, int)`](SourceDataLine.md#write(byte%5B%5D,int,int))
        - [`DataLine.available()`](DataLine.md#available())