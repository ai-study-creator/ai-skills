Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.sampled.spi](package-summary.md)

# Class AudioFileReader

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.spi.AudioFileReader

---

public abstract class AudioFileReader
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Provider for audio file reading services. Classes providing concrete
implementations can parse the format information from one or more types of
audio file, and can produce audio input streams from files of these types.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AudioFileReader()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract AudioFileFormat`

  `getAudioFileFormat(File file)`

  Obtains the audio file format of the `File` provided.

  `abstract AudioFileFormat`

  `getAudioFileFormat(InputStream stream)`

  Obtains the audio file format of the input stream provided.

  `abstract AudioFileFormat`

  `getAudioFileFormat(URL url)`

  Obtains the audio file format of the `URL` provided.

  `abstract AudioInputStream`

  `getAudioInputStream(File file)`

  Obtains an audio input stream from the `File` provided.

  `abstract AudioInputStream`

  `getAudioInputStream(InputStream stream)`

  Obtains an audio input stream from the input stream provided.

  `abstract AudioInputStream`

  `getAudioInputStream(URL url)`

  Obtains an audio input stream from the `URL` provided.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AudioFileReader

    protected AudioFileReader()

    Constructor for subclasses to call.
* ## Method Details

  + ### getAudioFileFormat

    public abstract [AudioFileFormat](../AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the input stream provided. The stream
    must point to valid audio file data. In general, audio file readers may
    need to read some data from the stream before determining whether they
    support it. These parsers must be able to mark the stream, read enough
    data to determine whether they support the stream, and reset the stream's
    read pointer to its original position. If the input stream does not
    support this, this method may fail with an `IOException`.

    Parameters:
    :   `stream` - the input stream from which file format information should
        be extracted

    Returns:
    :   an `AudioFileFormat` object describing the audio file
        format

    Throws:
    :   `UnsupportedAudioFileException` - if the stream does not point to
        valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getAudioFileFormat

    public abstract [AudioFileFormat](../AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the `URL` provided. The
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
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getAudioFileFormat

    public abstract [AudioFileFormat](../AudioFileFormat.md "class in javax.sound.sampled") getAudioFileFormat([File](../../../../../java.base/java/io/File.md "class in java.io") file)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the audio file format of the `File` provided. The
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

    public abstract [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an audio input stream from the input stream provided. The stream
    must point to valid audio file data. In general, audio file readers may
    need to read some data from the stream before determining whether they
    support it. These parsers must be able to mark the stream, read enough
    data to determine whether they support the stream, and reset the stream's
    read pointer to its original position. If the input stream does not
    support this, this method may fail with an `IOException`.

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
    :   - [`InputStream.markSupported()`](../../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getAudioInputStream

    public abstract [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

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

    public abstract [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([File](../../../../../java.base/java/io/File.md "class in java.io") file)
    throws [UnsupportedAudioFileException](../UnsupportedAudioFileException.md "class in javax.sound.sampled"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an audio input stream from the `File` provided. The
    `File` must point to valid audio file data.

    Parameters:
    :   `file` - the `File` for which the `AudioInputStream`
        should be constructed

    Returns:
    :   an `AudioInputStream` object based on the audio file data
        pointed to by the File

    Throws:
    :   `UnsupportedAudioFileException` - if the `File` does not point
        to valid audio file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`