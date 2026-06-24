Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioSystem

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.AudioSystem

---

public class AudioSystem
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `AudioSystem` class acts as the entry point to the sampled-audio
system resources. This class lets you query and access the mixers that are
installed on the system. `AudioSystem` includes a number of methods for
converting audio data between different formats, and for translating between
audio files and streams. It also provides a method for obtaining a
[`Line`](Line.md "interface in javax.sound.sampled") directly from the `AudioSystem` without dealing explicitly
with mixers.

Properties can be used to specify the default mixer for specific line types.
Both system properties and a properties file are considered. The
"sound.properties" properties file is read from an implementation-specific
location (typically it is the `conf` directory in the Java installation
directory). The optional "javax.sound.config.file" system property can be
used to specify the properties file that will be read as the initial
configuration. If a property exists both as a system property and in the
properties file, the system property takes precedence. If none is specified,
a suitable default is chosen among the available devices. The syntax of the
properties file is specified in
[`Properties.load`](../../../../java.base/java/util/Properties.md#load(java.io.InputStream)). The following table
lists the available property keys and which methods consider them:

Audio System Property Keys

| Property Key Interface Affected Method(s) | | |
| --- | --- | --- |
| `javax.sound.sampled.Clip` [`Clip`](Clip.md "interface in javax.sound.sampled") [`getLine(javax.sound.sampled.Line.Info)`](#getLine(javax.sound.sampled.Line.Info)), [`getClip()`](#getClip())| `javax.sound.sampled.Port` [`Port`](Port.md "interface in javax.sound.sampled") [`getLine(javax.sound.sampled.Line.Info)`](#getLine(javax.sound.sampled.Line.Info))| `javax.sound.sampled.SourceDataLine` [`SourceDataLine`](SourceDataLine.md "interface in javax.sound.sampled") [`getLine(javax.sound.sampled.Line.Info)`](#getLine(javax.sound.sampled.Line.Info)), [`getSourceDataLine(javax.sound.sampled.AudioFormat)`](#getSourceDataLine(javax.sound.sampled.AudioFormat))| `javax.sound.sampled.TargetDataLine` [`TargetDataLine`](TargetDataLine.md "interface in javax.sound.sampled") [`getLine(javax.sound.sampled.Line.Info)`](#getLine(javax.sound.sampled.Line.Info)), [`getTargetDataLine(javax.sound.sampled.AudioFormat)`](#getTargetDataLine(javax.sound.sampled.AudioFormat)) | | | | | | | | | | | |

The property value consists of the provider class name and the mixer name,
separated by the hash mark ("#"). The provider class name is the
fully-qualified name of a concrete [`mixer provider`](spi/MixerProvider.md "class in javax.sound.sampled.spi")
class. The mixer name is matched against the `String` returned by the
`getName` method of `Mixer.Info`. Either the class name, or the
mixer name may be omitted. If only the class name is specified, the trailing
hash mark is optional.

If the provider class is specified, and it can be successfully retrieved from
the installed providers, the list of `Mixer.Info` objects is retrieved
from the provider. Otherwise, or when these mixers do not provide a
subsequent match, the list is retrieved from [`getMixerInfo()`](#getMixerInfo()) to contain
all available `Mixer.Info` objects.

If a mixer name is specified, the resulting list of `Mixer.Info`
objects is searched: the first one with a matching name, and whose
`Mixer` provides the respective line interface, will be returned. If no
matching `Mixer.Info` object is found, or the mixer name is not
specified, the first mixer from the resulting list, which provides the
respective line interface, will be returned.

For example, the property `javax.sound.sampled.Clip` with a value
`"com.sun.media.sound.MixerProvider#SunClip"` will have the following
consequences when `getLine` is called requesting a `Clip`
instance: if the class `com.sun.media.sound.MixerProvider` exists in
the list of installed mixer providers, the first `Clip` from the first
mixer with name `"SunClip"` will be returned. If it cannot be found,
the first `Clip` from the first mixer of the specified provider will be
returned, regardless of name. If there is none, the first `Clip` from
the first `Mixer` with name `"SunClip"` in the list of all mixers
(as returned by `getMixerInfo`) will be returned, or, if not found, the
first `Clip` of the first `Mixer` that can be found in the list
of all mixers is returned. If that fails, too, an
`IllegalArgumentException` is thrown.

Since:
:   1.3

See Also:
:   * [`AudioFormat`](AudioFormat.md "class in javax.sound.sampled")
    * [`AudioInputStream`](AudioInputStream.md "class in javax.sound.sampled")
    * [`Mixer`](Mixer.md "interface in javax.sound.sampled")
    * [`Line`](Line.md "interface in javax.sound.sampled")
    * [`Line.Info`](Line.Info.md "class in javax.sound.sampled")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `NOT_SPECIFIED`

  An integer that stands for an unknown numeric value.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AudioFileFormat`

  `getAudioFileFormat(File file)`

  Obtains the audio file format of the specified `File`.

  `static AudioFileFormat`

  `getAudioFileFormat(InputStream stream)`

  Obtains the audio file format of the provided input stream.

  `static AudioFileFormat`

  `getAudioFileFormat(URL url)`

  Obtains the audio file format of the specified `URL`.

  `static AudioFileFormat.Type[]`

  `getAudioFileTypes()`

  Obtains the file types for which file writing support is provided by the
  system.

  `static AudioFileFormat.Type[]`

  `getAudioFileTypes(AudioInputStream stream)`

  Obtains the file types that the system can write from the audio input
  stream specified.

  `static AudioInputStream`

  `getAudioInputStream(File file)`

  Obtains an audio input stream from the provided `File`.

  `static AudioInputStream`

  `getAudioInputStream(InputStream stream)`

  Obtains an audio input stream from the provided input stream.

  `static AudioInputStream`

  `getAudioInputStream(URL url)`

  Obtains an audio input stream from the `URL` provided.

  `static AudioInputStream`

  `getAudioInputStream(AudioFormat.Encoding targetEncoding,
  AudioInputStream sourceStream)`

  Obtains an audio input stream of the indicated encoding, by converting
  the provided audio input stream.

  `static AudioInputStream`

  `getAudioInputStream(AudioFormat targetFormat,
  AudioInputStream sourceStream)`

  Obtains an audio input stream of the indicated format, by converting the
  provided audio input stream.

  `static Clip`

  `getClip()`

  Obtains a clip that can be used for playing back an audio file or an
  audio stream.

  `static Clip`

  `getClip(Mixer.Info mixerInfo)`

  Obtains a clip from the specified mixer that can be used for playing back
  an audio file or an audio stream.

  `static Line`

  `getLine(Line.Info info)`

  Obtains a line that matches the description in the specified
  `Line.Info` object.

  `static Mixer`

  `getMixer(Mixer.Info info)`

  Obtains the requested audio mixer.

  `static Mixer.Info[]`

  `getMixerInfo()`

  Obtains an array of mixer info objects that represents the set of audio
  mixers that are currently installed on the system.

  `static SourceDataLine`

  `getSourceDataLine(AudioFormat format)`

  Obtains a source data line that can be used for playing back audio data
  in the format specified by the `AudioFormat` object.

  `static SourceDataLine`

  `getSourceDataLine(AudioFormat format,
  Mixer.Info mixerinfo)`

  Obtains a source data line that can be used for playing back audio data
  in the format specified by the `AudioFormat` object, provided by
  the mixer specified by the `Mixer.Info` object.

  `static Line.Info[]`

  `getSourceLineInfo(Line.Info info)`

  Obtains information about all source lines of a particular type that are
  supported by the installed mixers.

  `static TargetDataLine`

  `getTargetDataLine(AudioFormat format)`

  Obtains a target data line that can be used for recording audio data in
  the format specified by the `AudioFormat` object.

  `static TargetDataLine`

  `getTargetDataLine(AudioFormat format,
  Mixer.Info mixerinfo)`

  Obtains a target data line that can be used for recording audio data in
  the format specified by the `AudioFormat` object, provided by the
  mixer specified by the `Mixer.Info` object.

  `static AudioFormat.Encoding[]`

  `getTargetEncodings(AudioFormat sourceFormat)`

  Obtains the encodings that the system can obtain from an audio input
  stream with the specified format using the set of installed format
  converters.

  `static AudioFormat.Encoding[]`

  `getTargetEncodings(AudioFormat.Encoding sourceEncoding)`

  Obtains the encodings that the system can obtain from an audio input
  stream with the specified encoding using the set of installed format
  converters.

  `static AudioFormat[]`

  `getTargetFormats(AudioFormat.Encoding targetEncoding,
  AudioFormat sourceFormat)`

  Obtains the formats that have a particular encoding and that the system
  can obtain from a stream of the specified format using the set of
  installed format converters.

  `static Line.Info[]`

  `getTargetLineInfo(Line.Info info)`

  Obtains information about all target lines of a particular type that are
  supported by the installed mixers.

  `static boolean`

  `isConversionSupported(AudioFormat.Encoding targetEncoding,
  AudioFormat sourceFormat)`

  Indicates whether an audio input stream of the specified encoding can be
  obtained from an audio input stream that has the specified format.

  `static boolean`

  `isConversionSupported(AudioFormat targetFormat,
  AudioFormat sourceFormat)`

  Indicates whether an audio input stream of a specified format can be
  obtained from an audio input stream of another specified format.

  `static boolean`

  `isFileTypeSupported(AudioFileFormat.Type fileType)`

  Indicates whether file writing support for the specified file type is
  provided by the system.

  `static boolean`

  `isFileTypeSupported(AudioFileFormat.Type fileType,
  AudioInputStream stream)`

  Indicates whether an audio file of the specified file type can be written
  from the indicated audio input stream.

  `static boolean`

  `isLineSupported(Line.Info info)`

  Indicates whether the system supports any lines that match the specified
  `Line.Info` object.

  `static int`

  `write(AudioInputStream stream,
  AudioFileFormat.Type fileType,
  File out)`

  Writes a stream of bytes representing an audio file of the specified file
  type to the external file provided.

  `static int`

  `write(AudioInputStream stream,
  AudioFileFormat.Type fileType,
  OutputStream out)`

  Writes a stream of bytes representing an audio file of the specified file
  type to the output stream provided.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NOT\_SPECIFIED

    public static final int NOT\_SPECIFIED

    An integer that stands for an unknown numeric value. This value is
    appropriate only for signed quantities that do not normally take negative
    values. Examples include file sizes, frame sizes, buffer sizes, and
    sample rates. A number of Java Sound constructors accept a value of
    `NOT_SPECIFIED` for such parameters. Other methods may also accept
    or return this value, as documented.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.sampled.AudioSystem.NOT_SPECIFIED)
* ## Method Details

  + ### getMixerInfo

    public static [Mixer.Info](Mixer.Info.md "class in javax.sound.sampled")[] getMixerInfo()

    Obtains an array of mixer info objects that represents the set of audio
    mixers that are currently installed on the system.

    Returns:
    :   an array of info objects for the currently installed mixers. If
        no mixers are available on the system, an array of length 0 is
        returned.

    See Also:
    :   - [`getMixer(javax.sound.sampled.Mixer.Info)`](#getMixer(javax.sound.sampled.Mixer.Info))
  + ### getMixer

    public static [Mixer](Mixer.md "interface in javax.sound.sampled") getMixer([Mixer.Info](Mixer.Info.md "class in javax.sound.sampled") info)

    Obtains the requested audio mixer.

    Parameters:
    :   `info` - a `Mixer.Info` object representing the desired mixer,
        or `null` for the system default mixer

    Returns:
    :   the requested mixer

    Throws:
    :   `SecurityException` - if the requested mixer is unavailable because
        of security restrictions
    :   `IllegalArgumentException` - if the info object does not represent a
        mixer installed on the system

    See Also:
    :   - [`getMixerInfo()`](#getMixerInfo())
  + ### getSourceLineInfo

    public static [Line.Info](Line.Info.md "class in javax.sound.sampled")[] getSourceLineInfo([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Obtains information about all source lines of a particular type that are
    supported by the installed mixers.

    Parameters:
    :   `info` - a `Line.Info` object that specifies the kind of lines
        about which information is requested

    Returns:
    :   an array of `Line.Info` objects describing source lines
        matching the type requested. If no matching source lines are
        supported, an array of length 0 is returned.

    See Also:
    :   - [`Mixer.getSourceLineInfo(Line.Info)`](Mixer.md#getSourceLineInfo(javax.sound.sampled.Line.Info))
  + ### getTargetLineInfo

    public static [Line.Info](Line.Info.md "class in javax.sound.sampled")[] getTargetLineInfo([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Obtains information about all target lines of a particular type that are
    supported by the installed mixers.

    Parameters:
    :   `info` - a `Line.Info` object that specifies the kind of lines
        about which information is requested

    Returns:
    :   an array of `Line.Info` objects describing target lines
        matching the type requested. If no matching target lines are
        supported, an array of length 0 is returned.

    See Also:
    :   - [`Mixer.getTargetLineInfo(Line.Info)`](Mixer.md#getTargetLineInfo(javax.sound.sampled.Line.Info))
  + ### isLineSupported

    public static boolean isLineSupported([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Indicates whether the system supports any lines that match the specified
    `Line.Info` object. A line is supported if any installed mixer
    supports it.

    Parameters:
    :   `info` - a `Line.Info` object describing the line for which
        support is queried

    Returns:
    :   `true` if at least one matching line is supported,
        otherwise `false`

    See Also:
    :   - [`Mixer.isLineSupported(Line.Info)`](Mixer.md#isLineSupported(javax.sound.sampled.Line.Info))
  + ### getLine

    public static [Line](Line.md "interface in javax.sound.sampled") getLine([Line.Info](Line.Info.md "class in javax.sound.sampled") info)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a line that matches the description in the specified
    `Line.Info` object.

    If a `DataLine` is requested, and `info` is an instance of
    `DataLine.Info` specifying at least one fully qualified audio
    format, the last one will be used as the default format of the returned
    `DataLine`.

    If system properties
    `javax.sound.sampled.Clip`,
    `javax.sound.sampled.Port`,
    `javax.sound.sampled.SourceDataLine` and
    `javax.sound.sampled.TargetDataLine` are defined or they are
    defined in the file "sound.properties", they are used to retrieve default
    lines. For details, refer to the [`class description`](AudioSystem.md "class in javax.sound.sampled").
    If the respective property is not set, or the mixer requested in the
    property is not installed or does not provide the requested line, all
    installed mixers are queried for the requested line type. A Line will be
    returned from the first mixer providing the requested line type.

    Parameters:
    :   `info` - a `Line.Info` object describing the desired kind of
        line

    Returns:
    :   a line of the requested kind

    Throws:
    :   `LineUnavailableException` - if a matching line is not available due
        to resource restrictions
    :   `SecurityException` - if a matching line is not available due to
        security restrictions
    :   `IllegalArgumentException` - if the system does not support at least
        one line matching the specified `Line.Info` object through
        any installed mixer
  + ### getClip

    public static [Clip](Clip.md "interface in javax.sound.sampled") getClip()
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a clip that can be used for playing back an audio file or an
    audio stream. The returned clip will be provided by the default system
    mixer, or, if not possible, by any other mixer installed in the system
    that supports a `Clip` object.

    The returned clip must be opened with the `open(AudioFormat)` or
    `open(AudioInputStream)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    If the system property `javax.sound.sampled.Clip` is defined or it
    is defined in the file "sound.properties", it is used to retrieve the
    default clip. For details, refer to the
    [`class description`](AudioSystem.md "class in javax.sound.sampled").

    Returns:
    :   the desired clip object

    Throws:
    :   `LineUnavailableException` - if a clip object is not available due to
        resource restrictions
    :   `SecurityException` - if a clip object is not available due to
        security restrictions
    :   `IllegalArgumentException` - if the system does not support at least
        one clip instance through any installed mixer

    Since:
    :   1.5

    See Also:
    :   - [`getClip(Mixer.Info)`](#getClip(javax.sound.sampled.Mixer.Info))
  + ### getClip

    public static [Clip](Clip.md "interface in javax.sound.sampled") getClip([Mixer.Info](Mixer.Info.md "class in javax.sound.sampled") mixerInfo)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a clip from the specified mixer that can be used for playing back
    an audio file or an audio stream.

    The returned clip must be opened with the `open(AudioFormat)` or
    `open(AudioInputStream)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    Parameters:
    :   `mixerInfo` - a `Mixer.Info` object representing the desired
        mixer, or `null` for the system default mixer

    Returns:
    :   a clip object from the specified mixer

    Throws:
    :   `LineUnavailableException` - if a clip is not available from this
        mixer due to resource restrictions
    :   `SecurityException` - if a clip is not available from this mixer due
        to security restrictions
    :   `IllegalArgumentException` - if the system does not support at least
        one clip through the specified mixer

    Since:
    :   1.5

    See Also:
    :   - [`getClip()`](#getClip())
  + ### getSourceDataLine

    public static [SourceDataLine](SourceDataLine.md "interface in javax.sound.sampled") getSourceDataLine([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a source data line that can be used for playing back audio data
    in the format specified by the `AudioFormat` object. The returned
    line will be provided by the default system mixer, or, if not possible,
    by any other mixer installed in the system that supports a matching
    `SourceDataLine` object.

    The returned line should be opened with the `open(AudioFormat)` or
    `open(AudioFormat, int)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    The returned `SourceDataLine`'s default audio format will be
    initialized with `format`.

    If the system property `javax.sound.sampled.SourceDataLine` is
    defined or it is defined in the file "sound.properties", it is used to
    retrieve the default source data line. For details, refer to the
    [`class description`](AudioSystem.md "class in javax.sound.sampled").

    Parameters:
    :   `format` - an `AudioFormat` object specifying the supported
        audio format of the returned line, or `null` for any audio
        format

    Returns:
    :   the desired `SourceDataLine` object

    Throws:
    :   `LineUnavailableException` - if a matching source data line is not
        available due to resource restrictions
    :   `SecurityException` - if a matching source data line is not available
        due to security restrictions
    :   `IllegalArgumentException` - if the system does not support at least
        one source data line supporting the specified audio format
        through any installed mixer

    Since:
    :   1.5

    See Also:
    :   - [`getSourceDataLine(AudioFormat, Mixer.Info)`](#getSourceDataLine(javax.sound.sampled.AudioFormat,javax.sound.sampled.Mixer.Info))
  + ### getSourceDataLine

    public static [SourceDataLine](SourceDataLine.md "interface in javax.sound.sampled") getSourceDataLine([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    [Mixer.Info](Mixer.Info.md "class in javax.sound.sampled") mixerinfo)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a source data line that can be used for playing back audio data
    in the format specified by the `AudioFormat` object, provided by
    the mixer specified by the `Mixer.Info` object.

    The returned line should be opened with the `open(AudioFormat)` or
    `open(AudioFormat, int)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    The returned `SourceDataLine`'s default audio format will be
    initialized with `format`.

    Parameters:
    :   `format` - an `AudioFormat` object specifying the supported
        audio format of the returned line, or `null` for any audio
        format
    :   `mixerinfo` - a `Mixer.Info` object representing the desired
        mixer, or `null` for the system default mixer

    Returns:
    :   the desired `SourceDataLine` object

    Throws:
    :   `LineUnavailableException` - if a matching source data line is not
        available from the specified mixer due to resource restrictions
    :   `SecurityException` - if a matching source data line is not available
        from the specified mixer due to security restrictions
    :   `IllegalArgumentException` - if the specified mixer does not support
        at least one source data line supporting the specified audio
        format

    Since:
    :   1.5

    See Also:
    :   - [`getSourceDataLine(AudioFormat)`](#getSourceDataLine(javax.sound.sampled.AudioFormat))
  + ### getTargetDataLine

    public static [TargetDataLine](TargetDataLine.md "interface in javax.sound.sampled") getTargetDataLine([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a target data line that can be used for recording audio data in
    the format specified by the `AudioFormat` object. The returned line
    will be provided by the default system mixer, or, if not possible, by any
    other mixer installed in the system that supports a matching
    `TargetDataLine` object.

    The returned line should be opened with the `open(AudioFormat)` or
    `open(AudioFormat, int)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    The returned `TargetDataLine`'s default audio format will be
    initialized with `format`.

    If the system property `javax.sound.sampled.TargetDataLine` is
    defined or it is defined in the file "sound.properties", it is used to
    retrieve the default target data line. For details, refer to the
    [`class description`](AudioSystem.md "class in javax.sound.sampled").

    Parameters:
    :   `format` - an `AudioFormat` object specifying the supported
        audio format of the returned line, or `null` for any audio
        format

    Returns:
    :   the desired `TargetDataLine` object

    Throws:
    :   `LineUnavailableException` - if a matching target data line is not
        available due to resource restrictions
    :   `SecurityException` - if a matching target data line is not available
        due to security restrictions
    :   `IllegalArgumentException` - if the system does not support at least
        one target data line supporting the specified audio format
        through any installed mixer

    Since:
    :   1.5

    See Also:
    :   - [`getTargetDataLine(AudioFormat, Mixer.Info)`](#getTargetDataLine(javax.sound.sampled.AudioFormat,javax.sound.sampled.Mixer.Info))
        - [`AudioPermission`](AudioPermission.md "class in javax.sound.sampled")
  + ### getTargetDataLine

    public static [TargetDataLine](TargetDataLine.md "interface in javax.sound.sampled") getTargetDataLine([AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    [Mixer.Info](Mixer.Info.md "class in javax.sound.sampled") mixerinfo)
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Obtains a target data line that can be used for recording audio data in
    the format specified by the `AudioFormat` object, provided by the
    mixer specified by the `Mixer.Info` object.

    The returned line should be opened with the `open(AudioFormat)` or
    `open(AudioFormat, int)` method.

    This is a high-level method that uses `getMixer` and
    `getLine` internally.

    The returned `TargetDataLine`'s default audio format will be
    initialized with `format`.

    Parameters:
    :   `format` - an `AudioFormat` object specifying the supported
        audio format of the returned line, or `null` for any audio
        format
    :   `mixerinfo` - a `Mixer.Info` object representing the desired
        mixer, or `null` for the system default mixer

    Returns:
    :   the desired `TargetDataLine` object

    Throws:
    :   `LineUnavailableException` - if a matching target data line is not
        available from the specified mixer due to resource restrictions
    :   `SecurityException` - if a matching target data line is not available
        from the specified mixer due to security restrictions
    :   `IllegalArgumentException` - if the specified mixer does not support
        at least one target data line supporting the specified audio
        format

    Since:
    :   1.5

    See Also:
    :   - [`getTargetDataLine(AudioFormat)`](#getTargetDataLine(javax.sound.sampled.AudioFormat))
        - [`AudioPermission`](AudioPermission.md "class in javax.sound.sampled")
  + ### getTargetEncodings

    public static [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled")[] getTargetEncodings([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") sourceEncoding)

    Obtains the encodings that the system can obtain from an audio input
    stream with the specified encoding using the set of installed format
    converters.

    Parameters:
    :   `sourceEncoding` - the encoding for which conversion support is
        queried

    Returns:
    :   array of encodings. If `sourceEncoding` is not supported,
        an array of length 0 is returned. Otherwise, the array will have
        a length of at least 1, representing `sourceEncoding`
        (no conversion).

    Throws:
    :   `NullPointerException` - if `sourceEncoding` is `null`
  + ### getTargetEncodings

    public static [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled")[] getTargetEncodings([AudioFormat](AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Obtains the encodings that the system can obtain from an audio input
    stream with the specified format using the set of installed format
    converters.

    Parameters:
    :   `sourceFormat` - the audio format for which conversion is queried

    Returns:
    :   array of encodings. If `sourceFormat`is not supported, an
        array of length 0 is returned. Otherwise, the array will have a
        length of at least 1, representing the encoding of
        `sourceFormat` (no conversion).

    Throws:
    :   `NullPointerException` - if `sourceFormat` is `null`
  + ### isConversionSupported

    public static boolean isConversionSupported([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Indicates whether an audio input stream of the specified encoding can be
    obtained from an audio input stream that has the specified format.

    Parameters:
    :   `targetEncoding` - the desired encoding after conversion
    :   `sourceFormat` - the audio format before conversion

    Returns:
    :   `true` if the conversion is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `targetEncoding` or
        `sourceFormat` are `null`
  + ### getAudioInputStream

    public static [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") sourceStream)

    Obtains an audio input stream of the indicated encoding, by converting
    the provided audio input stream.

    Parameters:
    :   `targetEncoding` - the desired encoding after conversion
    :   `sourceStream` - the stream to be converted

    Returns:
    :   an audio input stream of the indicated encoding

    Throws:
    :   `IllegalArgumentException` - if the conversion is not supported
    :   `NullPointerException` - if `targetEncoding` or
        `sourceStream` are `null`

    See Also:
    :   - [`getTargetEncodings(AudioFormat.Encoding)`](#getTargetEncodings(javax.sound.sampled.AudioFormat.Encoding))
        - [`getTargetEncodings(AudioFormat)`](#getTargetEncodings(javax.sound.sampled.AudioFormat))
        - [`isConversionSupported(AudioFormat.Encoding, AudioFormat)`](#isConversionSupported(javax.sound.sampled.AudioFormat.Encoding,javax.sound.sampled.AudioFormat))
        - [`getAudioInputStream(AudioFormat, AudioInputStream)`](#getAudioInputStream(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioInputStream))
  + ### getTargetFormats

    public static [AudioFormat](AudioFormat.md "class in javax.sound.sampled")[] getTargetFormats([AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Obtains the formats that have a particular encoding and that the system
    can obtain from a stream of the specified format using the set of
    installed format converters.

    Parameters:
    :   `targetEncoding` - the desired encoding after conversion
    :   `sourceFormat` - the audio format before conversion

    Returns:
    :   array of formats. If no formats of the specified encoding are
        supported, an array of length 0 is returned.

    Throws:
    :   `NullPointerException` - if `targetEncoding` or
        `sourceFormat` are `null`
  + ### isConversionSupported

    public static boolean isConversionSupported([AudioFormat](AudioFormat.md "class in javax.sound.sampled") targetFormat,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Indicates whether an audio input stream of a specified format can be
    obtained from an audio input stream of another specified format.

    Parameters:
    :   `targetFormat` - the desired audio format after conversion
    :   `sourceFormat` - the audio format before conversion

    Returns:
    :   `true` if the conversion is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `targetFormat` or
        `sourceFormat` are `null`
  + ### getAudioInputStream

    public static [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([AudioFormat](AudioFormat.md "class in javax.sound.sampled") targetFormat,
    [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") sourceStream)

    Obtains an audio input stream of the indicated format, by converting the
    provided audio input stream.

    Parameters:
    :   `targetFormat` - the desired audio format after conversion
    :   `sourceStream` - the stream to be converted

    Returns:
    :   an audio input stream of the indicated format

    Throws:
    :   `IllegalArgumentException` - if the conversion is not supported
    :   `NullPointerException` - if `targetFormat` or
        `sourceStream` are `null`

    See Also:
    :   - [`getTargetEncodings(AudioFormat)`](#getTargetEncodings(javax.sound.sampled.AudioFormat))
        - [`getTargetFormats(AudioFormat.Encoding, AudioFormat)`](#getTargetFormats(javax.sound.sampled.AudioFormat.Encoding,javax.sound.sampled.AudioFormat))
        - [`isConversionSupported(AudioFormat, AudioFormat)`](#isConversionSupported(javax.sound.sampled.AudioFormat,javax.sound.sampled.AudioFormat))
        - [`getAudioInputStream(AudioFormat.Encoding, AudioInputStream)`](#getAudioInputStream(javax.sound.sampled.AudioFormat.Encoding,javax.sound.sampled.AudioInputStream))
  + ### getAudioFileFormat

    public static [AudioFileFormat](AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the provided input stream. The stream
    must point to valid audio file data. The implementation of this method
    may require multiple parsers to examine the stream to determine whether
    they support it. These parsers must be able to mark the stream, read
    enough data to determine whether they support the stream, and reset the
    stream's read pointer to its original position. If the input stream does
    not support these operations, this method may fail with an
    `IOException`.

    Parameters:
    :   `stream` - the input stream from which file format information should
        be extracted

    Returns:
    :   an `AudioFileFormat` object describing the stream's audio
        file format

    Throws:
    :   `UnsupportedAudioFileException` - if the stream does not point to
        valid audio file data recognized by the system
    :   `IOException` - if an input/output exception occurs
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getAudioFileFormat

    public static [AudioFileFormat](AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the specified `URL`. The
    `URL` must point to valid audio file data.

    Parameters:
    :   `url` - the `URL` from which file format information should be
        extracted

    Returns:
    :   an `AudioFileFormat` object describing the audio file
        format

    Throws:
    :   `UnsupportedAudioFileException` - if the `URL` does not point
        to valid audio file data recognized by the system
    :   `IOException` - if an input/output exception occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getAudioFileFormat

    public static [AudioFileFormat](AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the specified `File`. The
    `File` must point to valid audio file data.

    Parameters:
    :   `file` - the `File` from which file format information should
        be extracted

    Returns:
    :   an `AudioFileFormat` object describing the audio file
        format

    Throws:
    :   `UnsupportedAudioFileException` - if the `File` does not point
        to valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`
  + ### getAudioInputStream

    public static [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an audio input stream from the provided input stream. The stream
    must point to valid audio file data. The implementation of this method
    may require multiple parsers to examine the stream to determine whether
    they support it. These parsers must be able to mark the stream, read
    enough data to determine whether they support the stream, and reset the
    stream's read pointer to its original position. If the input stream does
    not support these operation, this method may fail with an
    `IOException`.

    Parameters:
    :   `stream` - the input stream from which the `AudioInputStream`
        should be constructed

    Returns:
    :   an `AudioInputStream` object based on the audio file data
        contained in the input stream

    Throws:
    :   `UnsupportedAudioFileException` - if the stream does not point to
        valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getAudioInputStream

    public static [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an audio input stream from the `URL` provided. The
    `URL` must point to valid audio file data.

    Parameters:
    :   `url` - the `URL` for which the `AudioInputStream` should
        be constructed

    Returns:
    :   an `AudioInputStream` object based on the audio file data
        pointed to by the `URL`

    Throws:
    :   `UnsupportedAudioFileException` - if the `URL` does not point
        to valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getAudioInputStream

    public static [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an audio input stream from the provided `File`. The
    `File` must point to valid audio file data.

    Parameters:
    :   `file` - the `File` for which the `AudioInputStream`
        should be constructed

    Returns:
    :   an `AudioInputStream` object based on the audio file data
        pointed to by the `File`

    Throws:
    :   `UnsupportedAudioFileException` - if the `File` does not point
        to valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`
  + ### getAudioFileTypes

    public static [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled")[] getAudioFileTypes()

    Obtains the file types for which file writing support is provided by the
    system.

    Returns:
    :   array of unique file types. If no file types are supported, an
        array of length 0 is returned.
  + ### isFileTypeSupported

    public static boolean isFileTypeSupported([AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") fileType)

    Indicates whether file writing support for the specified file type is
    provided by the system.

    Parameters:
    :   `fileType` - the file type for which write capabilities are queried

    Returns:
    :   `true` if the file type is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `fileType` is `null`
  + ### getAudioFileTypes

    public static [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled")[] getAudioFileTypes([AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") stream)

    Obtains the file types that the system can write from the audio input
    stream specified.

    Parameters:
    :   `stream` - the audio input stream for which audio file type support
        is queried

    Returns:
    :   array of file types. If no file types are supported, an array of
        length 0 is returned.

    Throws:
    :   `NullPointerException` - if `stream` is `null`
  + ### isFileTypeSupported

    public static boolean isFileTypeSupported([AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") fileType,
    [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") stream)

    Indicates whether an audio file of the specified file type can be written
    from the indicated audio input stream.

    Parameters:
    :   `fileType` - the file type for which write capabilities are queried
    :   `stream` - the stream for which file-writing support is queried

    Returns:
    :   `true` if the file type is supported for this audio input
        stream, otherwise `false`

    Throws:
    :   `NullPointerException` - if `fileType` or `stream` are
        `null`
  + ### write

    public static int write([AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") stream,
    [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") fileType,
    [OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing an audio file of the specified file
    type to the output stream provided. Some file types require that the
    length be written into the file header; such files cannot be written from
    start to finish unless the length is known in advance. An attempt to
    write a file of such a type will fail with an `IOException` if the
    length in the audio file type is `AudioSystem.NOT_SPECIFIED`.

    Parameters:
    :   `stream` - the audio input stream containing audio data to be written
        to the file
    :   `fileType` - the kind of audio file to write
    :   `out` - the stream to which the file data should be written

    Returns:
    :   the number of bytes written to the output stream

    Throws:
    :   `IOException` - if an input/output exception occurs
    :   `IllegalArgumentException` - if the file type is not supported by the
        system
    :   `NullPointerException` - if `stream` or `fileType` or
        `out` are `null`

    See Also:
    :   - [`isFileTypeSupported(javax.sound.sampled.AudioFileFormat.Type)`](#isFileTypeSupported(javax.sound.sampled.AudioFileFormat.Type))
        - [`getAudioFileTypes()`](#getAudioFileTypes())
  + ### write

    public static int write([AudioInputStream](AudioInputStream.md "class in javax.sound.sampled") stream,
    [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") fileType,
    [File](../../../../java.base/java/io/File.md "class in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing an audio file of the specified file
    type to the external file provided.

    Parameters:
    :   `stream` - the audio input stream containing audio data to be written
        to the file
    :   `fileType` - the kind of audio file to write
    :   `out` - the external file to which the file data should be written

    Returns:
    :   the number of bytes written to the file

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `IllegalArgumentException` - if the file type is not supported by the
        system
    :   `NullPointerException` - if `stream` or `fileType` or
        `out` are `null`

    See Also:
    :   - [`isFileTypeSupported(javax.sound.sampled.AudioFileFormat.Type)`](#isFileTypeSupported(javax.sound.sampled.AudioFileFormat.Type))
        - [`getAudioFileTypes()`](#getAudioFileTypes())