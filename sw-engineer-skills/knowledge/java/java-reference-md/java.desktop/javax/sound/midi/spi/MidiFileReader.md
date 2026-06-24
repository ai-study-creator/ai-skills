Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.midi.spi](package-summary.md)

# Class MidiFileReader

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.spi.MidiFileReader

---

public abstract class MidiFileReader
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A `MidiFileReader` supplies MIDI file-reading services. Classes
implementing this interface can parse the format information from one or more
types of MIDI file, and can produce a [`Sequence`](../Sequence.md "class in javax.sound.midi") object from files of
these types.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MidiFileReader()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract MidiFileFormat`

  `getMidiFileFormat(File file)`

  Obtains the MIDI file format of the `File` provided.

  `abstract MidiFileFormat`

  `getMidiFileFormat(InputStream stream)`

  Obtains the MIDI file format of the input stream provided.

  `abstract MidiFileFormat`

  `getMidiFileFormat(URL url)`

  Obtains the MIDI file format of the `URL` provided.

  `abstract Sequence`

  `getSequence(File file)`

  Obtains a MIDI sequence from the `File` provided.

  `abstract Sequence`

  `getSequence(InputStream stream)`

  Obtains a MIDI sequence from the input stream provided.

  `abstract Sequence`

  `getSequence(URL url)`

  Obtains a MIDI sequence from the `URL` provided.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MidiFileReader

    protected MidiFileReader()

    Constructor for subclasses to call.
* ## Method Details

  + ### getMidiFileFormat

    public abstract [MidiFileFormat](../MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the input stream provided. The stream
    must point to valid MIDI file data. In general, MIDI file readers may
    need to read some data from the stream before determining whether they
    support it. These parsers must be able to mark the stream, read enough
    data to determine whether they support the stream, and, if not, reset the
    stream's read pointer to its original position. If the input stream does
    not support this, this method may fail with an `IOException`.

    Parameters:
    :   `stream` - the input stream from which file format information should
        be extracted

    Returns:
    :   a `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getMidiFileFormat

    public abstract [MidiFileFormat](../MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the `URL` provided. The `URL`
    must point to valid MIDI file data.

    Parameters:
    :   `url` - the `URL` from which file format information should be
        extracted

    Returns:
    :   a `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the `URL` does not point to
        valid MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getMidiFileFormat

    public abstract [MidiFileFormat](../MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([File](../../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the `File` provided. The
    `File` must point to valid MIDI file data.

    Parameters:
    :   `file` - the `File` from which file format information should
        be extracted

    Returns:
    :   a `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the `File` does not point to
        valid MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`
  + ### getSequence

    public abstract [Sequence](../Sequence.md "class in javax.sound.midi") getSequence([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the input stream provided. The stream must
    point to valid MIDI file data. In general, MIDI file readers may need to
    read some data from the stream before determining whether they support
    it. These parsers must be able to mark the stream, read enough data to
    determine whether they support the stream, and, if not, reset the
    stream's read pointer to its original position. If the input stream does
    not support this, this method may fail with an `IOException`.

    Parameters:
    :   `stream` - the input stream from which the `Sequence` should be
        constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data contained
        in the input stream

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getSequence

    public abstract [Sequence](../Sequence.md "class in javax.sound.midi") getSequence([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the `URL` provided. The `URL`
    must point to valid MIDI file data.

    Parameters:
    :   `url` - the `URL` for which the `Sequence` should be
        constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data pointed to
        by the `URL`

    Throws:
    :   `InvalidMidiDataException` - if the `URL` does not point to
        valid MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getSequence

    public abstract [Sequence](../Sequence.md "class in javax.sound.midi") getSequence([File](../../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the `File` provided. The `File`
    must point to valid MIDI file data.

    Parameters:
    :   `file` - the `File` from which the `Sequence` should be
        constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data pointed to
        by the `File`

    Throws:
    :   `InvalidMidiDataException` - if the `File` does not point to
        valid MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`