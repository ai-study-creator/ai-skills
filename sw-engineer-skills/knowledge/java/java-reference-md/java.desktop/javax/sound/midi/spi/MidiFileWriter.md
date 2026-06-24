Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.midi.spi](package-summary.md)

# Class MidiFileWriter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.spi.MidiFileWriter

---

public abstract class MidiFileWriter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A `MidiFileWriter` supplies MIDI file-writing services. Classes that
implement this interface can write one or more types of MIDI file from a
[`Sequence`](../Sequence.md "class in javax.sound.midi") object.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MidiFileWriter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract int[]`

  `getMidiFileTypes()`

  Obtains the set of MIDI file types for which file writing support is
  provided by this file writer.

  `abstract int[]`

  `getMidiFileTypes(Sequence sequence)`

  Obtains the file types that this file writer can write from the sequence
  specified.

  `boolean`

  `isFileTypeSupported(int fileType)`

  Indicates whether file writing support for the specified MIDI file type
  is provided by this file writer.

  `boolean`

  `isFileTypeSupported(int fileType,
  Sequence sequence)`

  Indicates whether a MIDI file of the file type specified can be written
  from the sequence indicated.

  `abstract int`

  `write(Sequence in,
  int fileType,
  File out)`

  Writes a stream of bytes representing a MIDI file of the file type
  indicated to the external file provided.

  `abstract int`

  `write(Sequence in,
  int fileType,
  OutputStream out)`

  Writes a stream of bytes representing a MIDI file of the file type
  indicated to the output stream provided.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MidiFileWriter

    protected MidiFileWriter()

    Constructor for subclasses to call.
* ## Method Details

  + ### getMidiFileTypes

    public abstract int[] getMidiFileTypes()

    Obtains the set of MIDI file types for which file writing support is
    provided by this file writer.

    Returns:
    :   array of file types. If no file types are supported, an array of
        length 0 is returned.
  + ### getMidiFileTypes

    public abstract int[] getMidiFileTypes([Sequence](../Sequence.md "class in javax.sound.midi") sequence)

    Obtains the file types that this file writer can write from the sequence
    specified.

    Parameters:
    :   `sequence` - the sequence for which MIDI file type support is queried

    Returns:
    :   array of file types. If no file types are supported, returns an
        array of length 0.

    Throws:
    :   `NullPointerException` - if `sequence` is `null`
  + ### isFileTypeSupported

    public boolean isFileTypeSupported(int fileType)

    Indicates whether file writing support for the specified MIDI file type
    is provided by this file writer.

    Parameters:
    :   `fileType` - the file type for which write capabilities are queried

    Returns:
    :   `true` if the file type is supported, otherwise
        `false`
  + ### isFileTypeSupported

    public boolean isFileTypeSupported(int fileType,
    [Sequence](../Sequence.md "class in javax.sound.midi") sequence)

    Indicates whether a MIDI file of the file type specified can be written
    from the sequence indicated.

    Parameters:
    :   `fileType` - the file type for which write capabilities are queried
    :   `sequence` - the sequence for which file writing support is queried

    Returns:
    :   `true` if the file type is supported for this sequence,
        otherwise `false`

    Throws:
    :   `NullPointerException` - if `sequence` is `null`
  + ### write

    public abstract int write([Sequence](../Sequence.md "class in javax.sound.midi") in,
    int fileType,
    [OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") out)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing a MIDI file of the file type
    indicated to the output stream provided.

    Parameters:
    :   `in` - sequence containing MIDI data to be written to the file
    :   `fileType` - type of the file to be written to the output stream
    :   `out` - stream to which the file data should be written

    Returns:
    :   the number of bytes written to the output stream

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `IllegalArgumentException` - if the file type is not supported by
        this file writer
    :   `NullPointerException` - if `in` or `out` are
        `null`

    See Also:
    :   - [`isFileTypeSupported(int, Sequence)`](#isFileTypeSupported(int,javax.sound.midi.Sequence))
        - [`getMidiFileTypes(Sequence)`](#getMidiFileTypes(javax.sound.midi.Sequence))
  + ### write

    public abstract int write([Sequence](../Sequence.md "class in javax.sound.midi") in,
    int fileType,
    [File](../../../../../java.base/java/io/File.md "class in java.io") out)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing a MIDI file of the file type
    indicated to the external file provided.

    Parameters:
    :   `in` - sequence containing MIDI data to be written to the external
        file
    :   `fileType` - type of the file to be written to the external file
    :   `out` - external file to which the file data should be written

    Returns:
    :   the number of bytes written to the file

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `IllegalArgumentException` - if the file type is not supported by
        this file writer
    :   `NullPointerException` - if `in` or `out` are
        `null`

    See Also:
    :   - [`isFileTypeSupported(int, Sequence)`](#isFileTypeSupported(int,javax.sound.midi.Sequence))
        - [`getMidiFileTypes(Sequence)`](#getMidiFileTypes(javax.sound.midi.Sequence))