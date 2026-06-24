Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioFormat

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.AudioFormat

---

public class AudioFormat
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`AudioFormat` is the class that specifies a particular arrangement of
data in a sound stream. By examining the information stored in the audio
format, you can discover how to interpret the bits in the binary sound data.

Every data line has an audio format associated with its data stream. The
audio format of a source (playback) data line indicates what kind of data the
data line expects to receive for output. For a target (capture) data line,
the audio format specifies the kind of the data that can be read from the
line.

Sound files also have audio formats, of course. The [`AudioFileFormat`](AudioFileFormat.md "class in javax.sound.sampled")
class encapsulates an `AudioFormat` in addition to other, file-specific
information. Similarly, an [`AudioInputStream`](AudioInputStream.md "class in javax.sound.sampled") has an
`AudioFormat`.

The `AudioFormat` class accommodates a number of common sound-file
encoding techniques, including pulse-code modulation (PCM), mu-law encoding,
and a-law encoding. These encoding techniques are predefined, but service
providers can create new encoding types. The encoding that a specific format
uses is named by its `encoding` field.

In addition to the encoding, the audio format includes other properties that
further specify the exact arrangement of the data. These include the number
of channels, sample rate, sample size, byte order, frame rate, and frame
size. Sounds may have different numbers of audio channels: one for mono, two
for stereo. The sample rate measures how many "snapshots" (samples) of the
sound pressure are taken per second, per channel. (If the sound is stereo
rather than mono, two samples are actually measured at each instant of time:
one for the left channel, and another for the right channel; however, the
sample rate still measures the number per channel, so the rate is the same
regardless of the number of channels. This is the standard use of the term.)
The sample size indicates how many bits are used to store each snapshot; 8
and 16 are typical values. For 16-bit samples (or any other sample size
larger than a byte), byte order is important; the bytes in each sample are
arranged in either the "little-endian" or "big-endian" style. For encodings
like PCM, a frame consists of the set of samples for all channels at a given
point in time, and so the size of a frame (in bytes) is always equal to the
size of a sample (in bytes) times the number of channels. However, with some
other sorts of encodings a frame can contain a bundle of compressed data for
a whole series of samples, as well as additional, non-sample data. For such
encodings, the sample rate and sample size refer to the data after it is
decoded into PCM, and so they are completely different from the frame rate
and frame size.

An `AudioFormat` object can include a set of properties. A property is
a pair of key and value: the key is of type `String`, the associated
property value is an arbitrary object. Properties specify additional format
specifications, like the bit rate for compressed formats. Properties are
mainly used as a means to transport additional information of the audio
format to and from the service providers. Therefore, properties are ignored
in the [`matches(AudioFormat)`](#matches(javax.sound.sampled.AudioFormat)) method. However, methods which rely on
the installed service providers, like
[`(AudioFormat, AudioFormat)
isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat.Encoding,javax.sound.sampled.AudioFormat)) may consider properties, depending on the respective
service provider implementation.

The following table lists some common properties which service providers
should use, if applicable:

Audio Format Properties

| Property key Value type Description | | |
| --- | --- | --- |
| "bitrate" [`Integer`](../../../../java.base/java/lang/Integer.md "class in java.lang") average bit rate in bits per second|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | "vbr" [`Boolean`](../../../../java.base/java/lang/Boolean.md "class in java.lang") `true`, if the file is encoded in variable bit rate (VBR)| "quality" [`Integer`](../../../../java.base/java/lang/Integer.md "class in java.lang") encoding/conversion quality, 1..100 | | | | | | | | |

Vendors of service providers (plugins) are encouraged to seek information
about other already established properties in third party plugins, and follow
the same conventions.

Since:
:   1.3

See Also:
:   * [`DataLine.getFormat()`](DataLine.md#getFormat())
    * [`AudioInputStream.getFormat()`](AudioInputStream.md#getFormat())
    * [`AudioFileFormat`](AudioFileFormat.md "class in javax.sound.sampled")
    * [`FormatConversionProvider`](spi/FormatConversionProvider.md "class in javax.sound.sampled.spi")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `AudioFormat.Encoding`

  The `Encoding` class names the specific type of data representation
  used for an audio stream.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `bigEndian`

  Indicates whether the audio data is stored in big-endian or little-endian
  order.

  `protected int`

  `channels`

  The number of audio channels in this format (1 for mono, 2 for stereo).

  `protected AudioFormat.Encoding`

  `encoding`

  The audio encoding technique used by this format.

  `protected float`

  `frameRate`

  The number of frames played or recorded per second, for sounds that have
  this format.

  `protected int`

  `frameSize`

  The number of bytes in each frame of a sound that has this format.

  `protected float`

  `sampleRate`

  The number of samples played or recorded per second, for sounds that have
  this format.

  `protected int`

  `sampleSizeInBits`

  The number of bits in each sample of a sound that has this format.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AudioFormat(float sampleRate,
  int sampleSizeInBits,
  int channels,
  boolean signed,
  boolean bigEndian)`

  Constructs an `AudioFormat` with a linear PCM encoding and the
  given parameters.

  `AudioFormat(AudioFormat.Encoding encoding,
  float sampleRate,
  int sampleSizeInBits,
  int channels,
  int frameSize,
  float frameRate,
  boolean bigEndian)`

  Constructs an `AudioFormat` with the given parameters.

  `AudioFormat(AudioFormat.Encoding encoding,
  float sampleRate,
  int sampleSizeInBits,
  int channels,
  int frameSize,
  float frameRate,
  boolean bigEndian,
  Map<String,Object> properties)`

  Constructs an `AudioFormat` with the given parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getChannels()`

  Obtains the number of channels.

  `AudioFormat.Encoding`

  `getEncoding()`

  Obtains the type of encoding for sounds in this format.

  `float`

  `getFrameRate()`

  Obtains the frame rate in frames per second.

  `int`

  `getFrameSize()`

  Obtains the frame size in bytes.

  `Object`

  `getProperty(String key)`

  Obtain the property value specified by the key.

  `float`

  `getSampleRate()`

  Obtains the sample rate.

  `int`

  `getSampleSizeInBits()`

  Obtains the size of a sample.

  `boolean`

  `isBigEndian()`

  Indicates whether the audio data is stored in big-endian or little-endian
  byte order.

  `boolean`

  `matches(AudioFormat format)`

  Indicates whether this format matches the one specified.

  `Map<String,Object>`

  `properties()`

  Obtain an unmodifiable map of properties.

  `String`

  `toString()`

  Returns a string that describes the audio format, such as: "PCM SIGNED
  22050 Hz 16 bit mono big-endian".

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### encoding

    protected [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") encoding

    The audio encoding technique used by this format.
  + ### sampleRate

    protected float sampleRate

    The number of samples played or recorded per second, for sounds that have
    this format.
  + ### sampleSizeInBits

    protected int sampleSizeInBits

    The number of bits in each sample of a sound that has this format.
  + ### channels

    protected int channels

    The number of audio channels in this format (1 for mono, 2 for stereo).
  + ### frameSize

    protected int frameSize

    The number of bytes in each frame of a sound that has this format.
  + ### frameRate

    protected float frameRate

    The number of frames played or recorded per second, for sounds that have
    this format.
  + ### bigEndian

    protected boolean bigEndian

    Indicates whether the audio data is stored in big-endian or little-endian
    order.
* ## Constructor Details

  + ### AudioFormat

    public AudioFormat([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") encoding,
    float sampleRate,
    int sampleSizeInBits,
    int channels,
    int frameSize,
    float frameRate,
    boolean bigEndian)

    Constructs an `AudioFormat` with the given parameters. The encoding
    specifies the convention used to represent the data. The other parameters
    are further explained in the [`class description`](AudioFormat.md "class in javax.sound.sampled").

    Parameters:
    :   `encoding` - the audio encoding technique
    :   `sampleRate` - the number of samples per second
    :   `sampleSizeInBits` - the number of bits in each sample
    :   `channels` - the number of channels (1 for mono, 2 for stereo, and so
        on)
    :   `frameSize` - the number of bytes in each frame
    :   `frameRate` - the number of frames per second
    :   `bigEndian` - indicates whether the data for a single sample is
        stored in big-endian byte order (`false` means
        little-endian)
  + ### AudioFormat

    public AudioFormat([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") encoding,
    float sampleRate,
    int sampleSizeInBits,
    int channels,
    int frameSize,
    float frameRate,
    boolean bigEndian,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> properties)

    Constructs an `AudioFormat` with the given parameters. The encoding
    specifies the convention used to represent the data. The other parameters
    are further explained in the [`class description`](AudioFormat.md "class in javax.sound.sampled").

    Parameters:
    :   `encoding` - the audio encoding technique
    :   `sampleRate` - the number of samples per second
    :   `sampleSizeInBits` - the number of bits in each sample
    :   `channels` - the number of channels (1 for mono, 2 for stereo, and so
        on)
    :   `frameSize` - the number of bytes in each frame
    :   `frameRate` - the number of frames per second
    :   `bigEndian` - indicates whether the data for a single sample is
        stored in big-endian byte order (`false` means
        little-endian)
    :   `properties` - a `Map<String, Object>` object containing format
        properties

    Since:
    :   1.5
  + ### AudioFormat

    public AudioFormat(float sampleRate,
    int sampleSizeInBits,
    int channels,
    boolean signed,
    boolean bigEndian)

    Constructs an `AudioFormat` with a linear PCM encoding and the
    given parameters. The frame size is set to the number of bytes required
    to contain one sample from each channel, and the frame rate is set to the
    sample rate.

    Parameters:
    :   `sampleRate` - the number of samples per second
    :   `sampleSizeInBits` - the number of bits in each sample
    :   `channels` - the number of channels (1 for mono, 2 for stereo, and so
        on)
    :   `signed` - indicates whether the data is signed or unsigned
    :   `bigEndian` - indicates whether the data for a single sample is
        stored in big-endian byte order (`false` means
        little-endian)
* ## Method Details

  + ### getEncoding

    public [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") getEncoding()

    Obtains the type of encoding for sounds in this format.

    Returns:
    :   the encoding type

    See Also:
    :   - [`AudioFormat.Encoding.PCM_SIGNED`](AudioFormat.Encoding.md#PCM_SIGNED)
        - [`AudioFormat.Encoding.PCM_UNSIGNED`](AudioFormat.Encoding.md#PCM_UNSIGNED)
        - [`AudioFormat.Encoding.ULAW`](AudioFormat.Encoding.md#ULAW)
        - [`AudioFormat.Encoding.ALAW`](AudioFormat.Encoding.md#ALAW)
  + ### getSampleRate

    public float getSampleRate()

    Obtains the sample rate. For compressed formats, the return value is the
    sample rate of the uncompressed audio data. When this `AudioFormat`
    is used for queries (e.g.
    [`AudioSystem.isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))) or capabilities (e.g.
    [`DataLine.Info.getFormats`](DataLine.Info.md#getFormats())), a sample rate
    of `AudioSystem.NOT_SPECIFIED` means that any sample rate is
    acceptable. `AudioSystem.NOT_SPECIFIED` is also returned when the
    sample rate is not defined for this audio format.

    Returns:
    :   the number of samples per second, or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`getFrameRate()`](#getFrameRate())
        - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getSampleSizeInBits

    public int getSampleSizeInBits()

    Obtains the size of a sample. For compressed formats, the return value is
    the sample size of the uncompressed audio data. When this
    `AudioFormat` is used for queries (e.g.
    [`AudioSystem.isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))) or capabilities (e.g.
    [`DataLine.Info.getFormats`](DataLine.Info.md#getFormats())), a sample size
    of `AudioSystem.NOT_SPECIFIED` means that any sample size is
    acceptable. `AudioSystem.NOT_SPECIFIED` is also returned when the
    sample size is not defined for this audio format.

    Returns:
    :   the number of bits in each sample, or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`getFrameSize()`](#getFrameSize())
        - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getChannels

    public int getChannels()

    Obtains the number of channels. When this `AudioFormat` is used for
    queries (e.g. [`AudioSystem.isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))) or capabilities (e.g.
    [`DataLine.Info.getFormats`](DataLine.Info.md#getFormats())), a return
    value of `AudioSystem.NOT_SPECIFIED` means that any (positive)
    number of channels is acceptable.

    Returns:
    :   The number of channels (1 for mono, 2 for stereo, etc.), or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getFrameSize

    public int getFrameSize()

    Obtains the frame size in bytes. When this `AudioFormat` is used
    for queries (e.g. [`AudioSystem.isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))) or capabilities (e.g.
    [`DataLine.Info.getFormats`](DataLine.Info.md#getFormats())), a frame size
    of `AudioSystem.NOT_SPECIFIED` means that any frame size is
    acceptable. `AudioSystem.NOT_SPECIFIED` is also returned when the
    frame size is not defined for this audio format.

    Returns:
    :   the number of bytes per frame, or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`getSampleSizeInBits()`](#getSampleSizeInBits())
        - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getFrameRate

    public float getFrameRate()

    Obtains the frame rate in frames per second. When this
    `AudioFormat` is used for queries (e.g.
    [`AudioSystem.isConversionSupported`](AudioSystem.md#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))) or capabilities (e.g.
    [`DataLine.Info.getFormats`](DataLine.Info.md#getFormats())), a frame rate
    of `AudioSystem.NOT_SPECIFIED` means that any frame rate is
    acceptable. `AudioSystem.NOT_SPECIFIED` is also returned when the
    frame rate is not defined for this audio format.

    Returns:
    :   the number of frames per second, or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`getSampleRate()`](#getSampleRate())
        - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### isBigEndian

    public boolean isBigEndian()

    Indicates whether the audio data is stored in big-endian or little-endian
    byte order. If the sample size is not more than one byte, the return
    value is irrelevant.

    Returns:
    :   `true` if the data is stored in big-endian byte order,
        `false` if little-endian
  + ### properties

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> properties()

    Obtain an unmodifiable map of properties. The concept of properties is
    further explained in the [`class description`](AudioFileFormat.md "class in javax.sound.sampled").

    Returns:
    :   a `Map<String, Object>` object containing all properties.
        If no properties are recognized, an empty map is returned.

    Since:
    :   1.5

    See Also:
    :   - [`getProperty(String)`](#getProperty(java.lang.String))
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") key)

    Obtain the property value specified by the key. The concept of properties
    is further explained in the [`class description`](AudioFileFormat.md "class in javax.sound.sampled").

    If the specified property is not defined for a particular file format,
    this method returns `null`.

    Parameters:
    :   `key` - the key of the desired property

    Returns:
    :   the value of the property with the specified key, or `null`
        if the property does not exist

    Since:
    :   1.5

    See Also:
    :   - [`properties()`](#properties())
  + ### matches

    public boolean matches([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)

    Indicates whether this format matches the one specified. To match, two
    formats must have the same encoding, and consistent values of the number
    of channels, sample rate, sample size, frame rate, and frame size. The
    values of the property are consistent if they are equal or the specified
    format has the property value `AudioSystem.NOT_SPECIFIED`. The byte
    order (big-endian or little-endian) must be the same if the sample size
    is greater than one byte.

    Parameters:
    :   `format` - format to test for match

    Returns:
    :   `true` if this format matches the one specified,
        `false` otherwise
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that describes the audio format, such as: "PCM SIGNED
    22050 Hz 16 bit mono big-endian". The contents of the string may vary
    between implementations of Java Sound.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the audio format