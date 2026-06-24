Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioFileFormat

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.AudioFileFormat

---

public class AudioFileFormat
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An instance of the `AudioFileFormat` class describes an audio file,
including the file type, the file's length in bytes, the length in sample
frames of the audio data contained in the file, and the format of the audio
data.

The [`AudioSystem`](AudioSystem.md "class in javax.sound.sampled") class includes methods for determining the format of
an audio file, obtaining an audio input stream from an audio file, and
writing an audio file from an audio input stream.

An `AudioFileFormat` object can include a set of properties. A property
is a pair of key and value: the key is of type `String`, the associated
property value is an arbitrary object. Properties specify additional
informational meta data (like a author, copyright, or file duration).
Properties are optional information, and file reader and file writer
implementations are not required to provide or recognize properties.

The following table lists some common properties that should be used in
implementations:

Audio File Format Properties

| Property key Value type Description | | |
| --- | --- | --- |
| "duration" [`Long`](../../../../java.base/java/lang/Long.md "class in java.lang") playback duration of the file in microseconds|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "author" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") name of the author of this file|  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "title" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") title of this file|  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "copyright" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") copyright message|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | "date" [`Date`](../../../../java.base/java/util/Date.md "class in java.util") date of the recording or release|  |  |  | | --- | --- | --- | | "comment" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") an arbitrary text | | | | | | | | | | | | | | | | | |

Since:
:   1.3

See Also:
:   * [`AudioInputStream`](AudioInputStream.md "class in javax.sound.sampled")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `AudioFileFormat.Type`

  An instance of the `Type` class represents one of the standard
  types of audio file.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AudioFileFormat(AudioFileFormat.Type type,
  int byteLength,
  AudioFormat format,
  int frameLength)`

  Constructs an audio file format object.

  `AudioFileFormat(AudioFileFormat.Type type,
  AudioFormat format,
  int frameLength)`

  Constructs an audio file format object.

  `AudioFileFormat(AudioFileFormat.Type type,
  AudioFormat format,
  int frameLength,
  Map<String,Object> properties)`

  Construct an audio file format object with a set of defined properties.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getByteLength()`

  Obtains the size in bytes of the entire audio file (not just its audio
  data).

  `AudioFormat`

  `getFormat()`

  Obtains the format of the audio data contained in the audio file.

  `int`

  `getFrameLength()`

  Obtains the length of the audio data contained in the file, expressed in
  sample frames.

  `Object`

  `getProperty(String key)`

  Obtain the property value specified by the key.

  `AudioFileFormat.Type`

  `getType()`

  Obtains the audio file type, such as `WAVE` or `AU`.

  `Map<String,Object>`

  `properties()`

  Obtain an unmodifiable map of properties.

  `String`

  `toString()`

  Returns a string representation of the audio file format.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AudioFileFormat

    protected AudioFileFormat([AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") type,
    int byteLength,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    int frameLength)

    Constructs an audio file format object. This protected constructor is
    intended for use by providers of file-reading services when returning
    information about an audio file or about supported audio file formats.

    Parameters:
    :   `type` - the type of the audio file
    :   `byteLength` - the length of the file in bytes, or
        `AudioSystem.NOT_SPECIFIED`
    :   `format` - the format of the audio data contained in the file
    :   `frameLength` - the audio data length in sample frames, or
        `AudioSystem.NOT_SPECIFIED`

    See Also:
    :   - [`getType()`](#getType())
  + ### AudioFileFormat

    public AudioFileFormat([AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") type,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    int frameLength)

    Constructs an audio file format object. This public constructor may be
    used by applications to describe the properties of a requested audio
    file.

    Parameters:
    :   `type` - the type of the audio file
    :   `format` - the format of the audio data contained in the file
    :   `frameLength` - the audio data length in sample frames, or
        `AudioSystem.NOT_SPECIFIED`
  + ### AudioFileFormat

    public AudioFileFormat([AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") type,
    [AudioFormat](AudioFormat.md "class in javax.sound.sampled") format,
    int frameLength,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> properties)

    Construct an audio file format object with a set of defined properties.
    This public constructor may be used by applications to describe the
    properties of a requested audio file. The properties map will be copied
    to prevent any changes to it.

    Parameters:
    :   `type` - the type of the audio file
    :   `format` - the format of the audio data contained in the file
    :   `frameLength` - the audio data length in sample frames, or
        `AudioSystem.NOT_SPECIFIED`
    :   `properties` - a `Map<String, Object>` object with properties

    Since:
    :   1.5
* ## Method Details

  + ### getType

    public [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") getType()

    Obtains the audio file type, such as `WAVE` or `AU`.

    Returns:
    :   the audio file type

    See Also:
    :   - [`AudioFileFormat.Type.WAVE`](AudioFileFormat.Type.md#WAVE)
        - [`AudioFileFormat.Type.AU`](AudioFileFormat.Type.md#AU)
        - [`AudioFileFormat.Type.AIFF`](AudioFileFormat.Type.md#AIFF)
        - [`AudioFileFormat.Type.AIFC`](AudioFileFormat.Type.md#AIFC)
        - [`AudioFileFormat.Type.SND`](AudioFileFormat.Type.md#SND)
  + ### getByteLength

    public int getByteLength()

    Obtains the size in bytes of the entire audio file (not just its audio
    data).

    Returns:
    :   the audio file length in bytes

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
  + ### getFormat

    public [AudioFormat](AudioFormat.md "class in javax.sound.sampled") getFormat()

    Obtains the format of the audio data contained in the audio file.

    Returns:
    :   the audio data format
  + ### getFrameLength

    public int getFrameLength()

    Obtains the length of the audio data contained in the file, expressed in
    sample frames.

    Returns:
    :   the number of sample frames of audio data in the file

    See Also:
    :   - [`AudioSystem.NOT_SPECIFIED`](AudioSystem.md#NOT_SPECIFIED)
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
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the audio file format.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the audio file format