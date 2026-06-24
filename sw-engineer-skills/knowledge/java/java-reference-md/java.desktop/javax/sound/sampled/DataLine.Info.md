Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class DataLine.Info

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Line.Info](Line.Info.md "class in javax.sound.sampled")

javax.sound.sampled.DataLine.Info

Enclosing interface:
:   `DataLine`

---

public static class DataLine.Info
extends [Line.Info](Line.Info.md "class in javax.sound.sampled")

Besides the class information inherited from its superclass,
`DataLine.Info` provides additional information specific to data
lines. This information includes:

* the audio formats supported by the data line* the minimum and maximum sizes of its internal buffer

Because a `Line.Info` knows the class of the line its describes, a
`DataLine.Info` object can describe `DataLine` subinterfaces
such as [`SourceDataLine`](SourceDataLine.md "interface in javax.sound.sampled"), [`TargetDataLine`](TargetDataLine.md "interface in javax.sound.sampled"), and [`Clip`](Clip.md "interface in javax.sound.sampled").
You can query a mixer for lines of any of these types, passing an
appropriate instance of `DataLine.Info` as the argument to a method
such as [`Mixer.getLine(Line.Info)`](Mixer.md#getLine(javax.sound.sampled.Line.Info)).

Since:
:   1.3

See Also:
:   * [`Line.Info`](Line.Info.md "class in javax.sound.sampled")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Info(Class<?> lineClass,
  AudioFormat format)`

  Constructs a data line's info object from the specified information,
  which includes a single audio format.

  `Info(Class<?> lineClass,
  AudioFormat[] formats,
  int minBufferSize,
  int maxBufferSize)`

  Constructs a data line's info object from the specified information,
  which includes a set of supported audio formats and a range for the
  buffer size.

  `Info(Class<?> lineClass,
  AudioFormat format,
  int bufferSize)`

  Constructs a data line's info object from the specified information,
  which includes a single audio format and a desired buffer size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AudioFormat[]`

  `getFormats()`

  Obtains a set of audio formats supported by the data line.

  `int`

  `getMaxBufferSize()`

  Obtains the maximum buffer size supported by the data line.

  `int`

  `getMinBufferSize()`

  Obtains the minimum buffer size supported by the data line.

  `boolean`

  `isFormatSupported(AudioFormat format)`

  Indicates whether this data line supports a particular audio format.

  `boolean`

  `matches(Line.Info info)`

  Determines whether the specified info object matches this one.

  `String`

  `toString()`

  Returns a string representation of the info object.

  ### Methods inherited from class javax.sound.sampled.[Line.Info](Line.Info.md "class in javax.sound.sampled")

  `getLineClass`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Info

    public Info([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> lineClass,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled")[] formats,
    int minBufferSize,
    int maxBufferSize)

    Constructs a data line's info object from the specified information,
    which includes a set of supported audio formats and a range for the
    buffer size. This constructor is typically used by mixer
    implementations when returning information about a supported line.

    Parameters:
    :   `lineClass` - the class of the data line described by the info
        object
    :   `formats` - set of formats supported
    :   `minBufferSize` - minimum buffer size supported by the data line,
        in bytes
    :   `maxBufferSize` - maximum buffer size supported by the data line,
        in bytes
  + ### Info

    public Info([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> lineClass,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    int bufferSize)

    Constructs a data line's info object from the specified information,
    which includes a single audio format and a desired buffer size. This
    constructor is typically used by an application to describe a desired
    line.

    Parameters:
    :   `lineClass` - the class of the data line described by the info
        object
    :   `format` - desired format
    :   `bufferSize` - desired buffer size, in bytes
  + ### Info

    public Info([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> lineClass,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)

    Constructs a data line's info object from the specified information,
    which includes a single audio format. This constructor is typically
    used by an application to describe a desired line.

    Parameters:
    :   `lineClass` - the class of the data line described by the info
        object
    :   `format` - desired format
* ## Method Details

  + ### getFormats

    public [AudioFormat](AudioFormat.md "class in javax.sound.sampled")[] getFormats()

    Obtains a set of audio formats supported by the data line. Note that
    `isFormatSupported(AudioFormat)` might return `true` for
    certain additional formats that are missing from the set returned by
    `getFormats()`. The reverse is not the case:
    `isFormatSupported(AudioFormat)` is guaranteed to return
    `true` for all formats returned by `getFormats()`.

    Some fields in the `AudioFormat` instances can be set to
    [`NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED) if that field does
    not apply to the format, or if the format supports a wide range of
    values for that field. For example, a multi-channel device supporting
    up to 64 channels, could set the channel field in the
    `AudioFormat` instances returned by this method to
    `NOT_SPECIFIED`.

    Returns:
    :   a set of supported audio formats

    See Also:
    :   - [`isFormatSupported(AudioFormat)`](#isFormatSupported(javax.sound.sampled.AudioFormat))
  + ### isFormatSupported

    public boolean isFormatSupported([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)

    Indicates whether this data line supports a particular audio format.
    The default implementation of this method simply returns `true`
    if the specified format matches any of the supported formats.

    Parameters:
    :   `format` - the audio format for which support is queried

    Returns:
    :   `true` if the format is supported, otherwise
        `false`

    See Also:
    :   - [`getFormats()`](#getFormats())
        - [`AudioFormat.matches(javax.sound.sampled.AudioFormat)`](AudioFormat.md#matches(javax.sound.sampled.AudioFormat))
  + ### getMinBufferSize

    public int getMinBufferSize()

    Obtains the minimum buffer size supported by the data line.

    Returns:
    :   minimum buffer size in bytes, or
        `AudioSystem.NOT_SPECIFIED`
  + ### getMaxBufferSize

    public int getMaxBufferSize()

    Obtains the maximum buffer size supported by the data line.

    Returns:
    :   maximum buffer size in bytes, or
        `AudioSystem.NOT_SPECIFIED`
  + ### matches

    public boolean matches([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Determines whether the specified info object matches this one. To
    match, the superclass match requirements must be met. In addition,
    this object's minimum buffer size must be at least as large as that
    of the object specified, its maximum buffer size must be at most as
    large as that of the object specified, and all of its formats must
    match formats supported by the object specified.

    Overrides:
    :   `matches` in class `Line.Info`

    Parameters:
    :   `info` - the info object which is being compared to this one

    Returns:
    :   `true` if this object matches the one specified,
        otherwise `false`
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the info object.

    Overrides:
    :   `toString` in class `Line.Info`

    Returns:
    :   a string representation of the info object