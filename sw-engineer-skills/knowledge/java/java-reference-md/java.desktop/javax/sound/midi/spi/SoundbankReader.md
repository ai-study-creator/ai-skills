Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.midi.spi](package-summary.md)

# Class SoundbankReader

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.spi.SoundbankReader

---

public abstract class SoundbankReader
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A `SoundbankReader` supplies soundbank file-reading services. Concrete
subclasses of `SoundbankReader` parse a given soundbank file, producing
a [`Soundbank`](../Soundbank.md "interface in javax.sound.midi") object that can be loaded into a [`Synthesizer`](../Synthesizer.md "interface in javax.sound.midi").

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SoundbankReader()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Soundbank`

  `getSoundbank(File file)`

  Obtains a soundbank object from the `File` provided.

  `abstract Soundbank`

  `getSoundbank(InputStream stream)`

  Obtains a soundbank object from the `InputStream` provided.

  `abstract Soundbank`

  `getSoundbank(URL url)`

  Obtains a soundbank object from the `URL` provided.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SoundbankReader

    protected SoundbankReader()

    Constructor for subclasses to call.
* ## Method Details

  + ### getSoundbank

    public abstract [Soundbank](../Soundbank.md "interface in javax.sound.midi") getSoundbank([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a soundbank object from the `URL` provided.

    Parameters:
    :   `url` - `URL` representing the soundbank

    Returns:
    :   soundbank object

    Throws:
    :   `InvalidMidiDataException` - if the `URL` does not point to
        valid MIDI soundbank data recognized by this soundbank reader
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if `url` is `null`
  + ### getSoundbank

    public abstract [Soundbank](../Soundbank.md "interface in javax.sound.midi") getSoundbank([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a soundbank object from the `InputStream` provided.

    Parameters:
    :   `stream` - `InputStream` representing the soundbank

    Returns:
    :   soundbank object

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI soundbank data recognized by this soundbank reader
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if `stream` is `null`
  + ### getSoundbank

    public abstract [Soundbank](../Soundbank.md "interface in javax.sound.midi") getSoundbank([File](../../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](../InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a soundbank object from the `File` provided.

    Parameters:
    :   `file` - the `File` representing the soundbank

    Returns:
    :   soundbank object

    Throws:
    :   `InvalidMidiDataException` - if the file does not point to valid MIDI
        soundbank data recognized by this soundbank reader
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if `file` is `null`