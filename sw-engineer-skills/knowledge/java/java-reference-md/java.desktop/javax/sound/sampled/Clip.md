Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Interface Clip

All Superinterfaces:
:   `AutoCloseable`, `DataLine`, `Line`

---

public interface Clip
extends [DataLine](DataLine.md "interface in javax.sound.sampled")

The `Clip` interface represents a special kind of data line whose audio
data can be loaded prior to playback, instead of being streamed in real time.

Because the data is pre-loaded and has a known length, you can set a clip to
start playing at any position in its audio data. You can also create a loop,
so that when the clip is played it will cycle repeatedly. Loops are specified
with a starting and ending sample frame, along with the number of times that
the loop should be played.

Clips may be obtained from a [`Mixer`](Mixer.md "interface in javax.sound.sampled") that supports lines of this type.
Data is loaded into a clip when it is opened.

Playback of an audio clip may be started and stopped using the
[`start`](DataLine.md#start()) and [`stop`](DataLine.md#stop()) methods. These methods do not
reset the media position; `start` causes playback to continue from the
position where playback was last stopped. To restart playback from the
beginning of the clip's audio data, simply follow the invocation of
`stop` with `setFramePosition(0)`, which rewinds the media to the
beginning of the clip.

Since:
:   1.3

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.sound.sampled.[DataLine](DataLine.md "interface in javax.sound.sampled")

  `DataLine.Info`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `LOOP_CONTINUOUSLY`

  A value indicating that looping should continue indefinitely rather than
  complete after a specific number of loops.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFrameLength()`

  Obtains the media length in sample frames.

  `long`

  `getMicrosecondLength()`

  Obtains the media duration in microseconds.

  `void`

  `loop(int count)`

  Starts looping playback from the current position.

  `void`

  `open(AudioFormat format,
  byte[] data,
  int offset,
  int bufferSize)`

  Opens the clip, meaning that it should acquire any required system
  resources and become operational.

  `void`

  `open(AudioInputStream stream)`

  Opens the clip with the format and audio data present in the provided
  audio input stream.

  `void`

  `setFramePosition(int frames)`

  Sets the media position in sample frames.

  `void`

  `setLoopPoints(int start,
  int end)`

  Sets the first and last sample frames that will be played in the loop.

  `void`

  `setMicrosecondPosition(long microseconds)`

  Sets the media position in microseconds.

  ### Methods inherited from interface javax.sound.sampled.[DataLine](DataLine.md "interface in javax.sound.sampled")

  `available, drain, flush, getBufferSize, getFormat, getFramePosition, getLevel, getLongFramePosition, getMicrosecondPosition, isActive, isRunning, start, stop`

  ### Methods inherited from interface javax.sound.sampled.[Line](Line.md "interface in javax.sound.sampled")

  `addLineListener, close, getControl, getControls, getLineInfo, isControlSupported, isOpen, open, removeLineListener`

* ## Field Details

  + ### LOOP\_CONTINUOUSLY

    static final int LOOP\_CONTINUOUSLY

    A value indicating that looping should continue indefinitely rather than
    complete after a specific number of loops.

    See Also:
    :   - [`loop(int)`](#loop(int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.sampled.Clip.LOOP_CONTINUOUSLY)
* ## Method Details

  + ### open

    void open([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    byte[] data,
    int offset,
    int bufferSize)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Opens the clip, meaning that it should acquire any required system
    resources and become operational. The clip is opened with the format and
    audio data indicated. If this operation succeeds, the line is marked as
    open and an [`OPEN`](LineEvent.Type.md#OPEN) event is dispatched to the
    line's listeners.

    Invoking this method on a line which is already open is illegal and may
    result in an `IllegalStateException`.

    Note that some lines, once closed, cannot be reopened. Attempts to reopen
    such a line will always result in a `LineUnavailableException`.

    Parameters:
    :   `format` - the format of the supplied audio data
    :   `data` - a byte array containing audio data to load into the clip
    :   `offset` - the point at which to start copying, expressed in
        *bytes* from the beginning of the array
    :   `bufferSize` - the number of *bytes* of data to load into the
        clip from the array

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
    :   - [`Line.close()`](Line.md#close())
        - [`Line.isOpen()`](Line.md#isOpen())
        - [`LineListener`](LineListener.md "interface in javax.sound.sampled")
  + ### open

    void open([AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") stream)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Opens the clip with the format and audio data present in the provided
    audio input stream. Opening a clip means that it should acquire any
    required system resources and become operational. If this operation input
    stream. If this operation succeeds, the line is marked open and an
    [`OPEN`](LineEvent.Type.md#OPEN) event is dispatched to the line's
    listeners.

    Invoking this method on a line which is already open is illegal and may
    result in an `IllegalStateException`.

    Note that some lines, once closed, cannot be reopened. Attempts to reopen
    such a line will always result in a `LineUnavailableException`.

    Parameters:
    :   `stream` - an audio input stream from which audio data will be read
        into the clip

    Throws:
    :   `LineUnavailableException` - if the line cannot be opened due to
        resource restrictions
    :   `IOException` - if an I/O exception occurs during reading of the
        stream
    :   `IllegalArgumentException` - if the stream's audio format is not
        fully specified or invalid
    :   `IllegalStateException` - if the line is already open
    :   `SecurityException` - if the line cannot be opened due to security
        restrictions

    See Also:
    :   - [`Line.close()`](Line.md#close())
        - [`Line.isOpen()`](Line.md#isOpen())
        - [`LineListener`](LineListener.md "interface in javax.sound.sampled")
  + ### getFrameLength

    int getFrameLength()

    Obtains the media length in sample frames.

    Returns:
    :   the media length, expressed in sample frames, or
        `AudioSystem.NOT_SPECIFIED` if the line is not open

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getMicrosecondLength

    long getMicrosecondLength()

    Obtains the media duration in microseconds.

    Returns:
    :   the media duration, expressed in microseconds, or
        `AudioSystem.NOT_SPECIFIED` if the line is not open

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### setFramePosition

    void setFramePosition(int frames)

    Sets the media position in sample frames. The position is zero-based; the
    first frame is frame number zero. When the clip begins playing the next
    time, it will start by playing the frame at this position.

    To obtain the current position in sample frames, use the
    [`getFramePosition`](DataLine.md#getFramePosition()) method of
    `DataLine`.

    Parameters:
    :   `frames` - the desired new media position, expressed in sample frames
  + ### setMicrosecondPosition

    void setMicrosecondPosition(long microseconds)

    Sets the media position in microseconds. When the clip begins playing the
    next time, it will start at this position. The level of precision is not
    guaranteed. For example, an implementation might calculate the
    microsecond position from the current frame position and the audio sample
    frame rate. The precision in microseconds would then be limited to the
    number of microseconds per sample frame.

    To obtain the current position in microseconds, use the
    [`getMicrosecondPosition`](DataLine.md#getMicrosecondPosition()) method of
    `DataLine`.

    Parameters:
    :   `microseconds` - the desired new media position, expressed in
        microseconds
  + ### setLoopPoints

    void setLoopPoints(int start,
    int end)

    Sets the first and last sample frames that will be played in the loop.
    The ending point must be greater than or equal to the starting point, and
    both must fall within the size of the loaded media. A value of 0 for the
    starting point means the beginning of the loaded media. Similarly, a
    value of -1 for the ending point indicates the last frame of the media.

    Parameters:
    :   `start` - the loop's starting position, in sample frames (zero-based)
    :   `end` - the loop's ending position, in sample frames (zero-based), or
        -1 to indicate the final frame

    Throws:
    :   `IllegalArgumentException` - if the requested loop points cannot be
        set, usually because one or both falls outside the media's
        duration or because the ending point is before the starting point
  + ### loop

    void loop(int count)

    Starts looping playback from the current position. Playback will continue
    to the loop's end point, then loop back to the loop start point
    `count` times, and finally continue playback to the end of the
    clip.

    If the current position when this method is invoked is greater than the
    loop end point, playback simply continues to the end of the clip without
    looping.

    A `count` value of 0 indicates that any current looping should
    cease and playback should continue to the end of the clip. The behavior
    is undefined when this method is invoked with any other value during a
    loop operation.

    If playback is stopped during looping, the current loop status is
    cleared; the behavior of subsequent loop and start requests is not
    affected by an interrupted loop operation.

    Parameters:
    :   `count` - the number of times playback should loop back from the
        loop's end position to the loop's start position, or
        [`LOOP_CONTINUOUSLY`](#LOOP_CONTINUOUSLY) to indicate that looping should
        continue until interrupted