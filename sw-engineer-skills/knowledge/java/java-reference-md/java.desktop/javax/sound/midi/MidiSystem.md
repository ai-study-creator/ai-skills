Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MidiSystem

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.MidiSystem

---

public class MidiSystem
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `MidiSystem` class provides access to the installed MIDI system
resources, including devices such as synthesizers, sequencers, and MIDI input
and output ports. A typical simple MIDI application might begin by invoking
one or more `MidiSystem` methods to learn what devices are installed
and to obtain the ones needed in that application.

The class also has methods for reading files, streams, and URLs that contain
standard MIDI file data or soundbanks. You can query the `MidiSystem`
for the format of a specified MIDI file.

You cannot instantiate a `MidiSystem`; all the methods are static.

Properties can be used to specify default MIDI devices. Both system
properties and a properties file are considered. The "sound.properties"
properties file is read from an implementation-specific location (typically
it is the `conf` directory in the Java installation directory).
The optional "javax.sound.config.file" system property can be used to specify
the properties file that will be read as the initial configuration. If a
property exists both as a system property and in the properties file, the
system property takes precedence. If none is specified, a suitable default is
chosen among the available devices. The syntax of the properties file is
specified in [`Properties.load`](../../../../java.base/java/util/Properties.md#load(java.io.InputStream)). The
following table lists the available property keys and which methods consider
them:

MIDI System Property Keys

| Property Key Interface Affected Method | | |
| --- | --- | --- |
| `javax.sound.midi.Receiver` [`Receiver`](Receiver.md "interface in javax.sound.midi") [`getReceiver()`](#getReceiver())| `javax.sound.midi.Sequencer` [`Sequencer`](Sequencer.md "interface in javax.sound.midi") [`getSequencer()`](#getSequencer())| `javax.sound.midi.Synthesizer` [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi") [`getSynthesizer()`](#getSynthesizer())| `javax.sound.midi.Transmitter` [`Transmitter`](Transmitter.md "interface in javax.sound.midi") [`getTransmitter()`](#getTransmitter()) | | | | | | | | | | | |

The property value consists of the provider class name and the device name,
separated by the hash mark ("#"). The provider class name is the
fully-qualified name of a concrete
[`MIDI device provider`](spi/MidiDeviceProvider.md "class in javax.sound.midi.spi") class. The device name is
matched against the `String` returned by the `getName` method of
`MidiDevice.Info`. Either the class name, or the device name may be
omitted. If only the class name is specified, the trailing hash mark is
optional.

If the provider class is specified, and it can be successfully retrieved from
the installed providers, the list of `MidiDevice.Info` objects is
retrieved from the provider. Otherwise, or when these devices do not provide
a subsequent match, the list is retrieved from [`getMidiDeviceInfo()`](#getMidiDeviceInfo()) to
contain all available `MidiDevice.Info` objects.

If a device name is specified, the resulting list of `MidiDevice.Info`
objects is searched: the first one with a matching name, and whose
`MidiDevice` implements the respective interface, will be returned. If
no matching `MidiDevice.Info` object is found, or the device name is
not specified, the first suitable device from the resulting list will be
returned. For Sequencer and Synthesizer, a device is suitable if it
implements the respective interface; whereas for Receiver and Transmitter, a
device is suitable if it implements neither Sequencer nor Synthesizer and
provides at least one Receiver or Transmitter, respectively.

For example, the property `javax.sound.midi.Receiver` with a value
`"com.sun.media.sound.MidiProvider#SunMIDI1"` will have the following
consequences when `getReceiver` is called: if the class
`com.sun.media.sound.MidiProvider` exists in the list of installed MIDI
device providers, the first `Receiver` device with name
`"SunMIDI1"` will be returned. If it cannot be found, the first
`Receiver` from that provider will be returned, regardless of name. If
there is none, the first `Receiver` with name `"SunMIDI1"` in the
list of all devices (as returned by `getMidiDeviceInfo`) will be
returned, or, if not found, the first `Receiver` that can be found in
the list of all devices is returned. If that fails, too, a
`MidiUnavailableException` is thrown.

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MidiDevice`

  `getMidiDevice(MidiDevice.Info info)`

  Obtains the requested MIDI device.

  `static MidiDevice.Info[]`

  `getMidiDeviceInfo()`

  Obtains an array of information objects representing the set of all MIDI
  devices available on the system.

  `static MidiFileFormat`

  `getMidiFileFormat(File file)`

  Obtains the MIDI file format of the specified `File`.

  `static MidiFileFormat`

  `getMidiFileFormat(InputStream stream)`

  Obtains the MIDI file format of the data in the specified input stream.

  `static MidiFileFormat`

  `getMidiFileFormat(URL url)`

  Obtains the MIDI file format of the data in the specified URL.

  `static int[]`

  `getMidiFileTypes()`

  Obtains the set of MIDI file types for which file writing support is
  provided by the system.

  `static int[]`

  `getMidiFileTypes(Sequence sequence)`

  Obtains the set of MIDI file types that the system can write from the
  sequence specified.

  `static Receiver`

  `getReceiver()`

  Obtains a MIDI receiver from an external MIDI port or other default
  device.

  `static Sequence`

  `getSequence(File file)`

  Obtains a MIDI sequence from the specified `File`.

  `static Sequence`

  `getSequence(InputStream stream)`

  Obtains a MIDI sequence from the specified input stream.

  `static Sequence`

  `getSequence(URL url)`

  Obtains a MIDI sequence from the specified URL.

  `static Sequencer`

  `getSequencer()`

  Obtains the default `Sequencer`, connected to a default device.

  `static Sequencer`

  `getSequencer(boolean connected)`

  Obtains the default `Sequencer`, optionally connected to a default
  device.

  `static Soundbank`

  `getSoundbank(File file)`

  Constructs a `Soundbank` by reading it from the specified
  `File`.

  `static Soundbank`

  `getSoundbank(InputStream stream)`

  Constructs a MIDI sound bank by reading it from the specified stream.

  `static Soundbank`

  `getSoundbank(URL url)`

  Constructs a `Soundbank` by reading it from the specified URL.

  `static Synthesizer`

  `getSynthesizer()`

  Obtains the default synthesizer.

  `static Transmitter`

  `getTransmitter()`

  Obtains a MIDI transmitter from an external MIDI port or other default
  source.

  `static boolean`

  `isFileTypeSupported(int fileType)`

  Indicates whether file writing support for the specified MIDI file type
  is provided by the system.

  `static boolean`

  `isFileTypeSupported(int fileType,
  Sequence sequence)`

  Indicates whether a MIDI file of the file type specified can be written
  from the sequence indicated.

  `static int`

  `write(Sequence in,
  int type,
  File out)`

  Writes a stream of bytes representing a file of the MIDI file type
  indicated to the external file provided.

  `static int`

  `write(Sequence in,
  int fileType,
  OutputStream out)`

  Writes a stream of bytes representing a file of the MIDI file type
  indicated to the output stream provided.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getMidiDeviceInfo

    public static [MidiDevice.Info](MidiDevice.Info.md "class in javax.sound.midi")[] getMidiDeviceInfo()

    Obtains an array of information objects representing the set of all MIDI
    devices available on the system. A returned information object can then
    be used to obtain the corresponding device object, by invoking
    [`getMidiDevice`](#getMidiDevice(javax.sound.midi.MidiDevice.Info)).

    Returns:
    :   an array of `MidiDevice.Info` objects, one for each
        installed MIDI device. If no such devices are installed, an array
        of length 0 is returned.
  + ### getMidiDevice

    public static [MidiDevice](MidiDevice.md "interface in javax.sound.midi") getMidiDevice([MidiDevice.Info](MidiDevice.Info.md "class in javax.sound.midi") info)
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains the requested MIDI device.

    Parameters:
    :   `info` - a device information object representing the desired device

    Returns:
    :   the requested device

    Throws:
    :   `MidiUnavailableException` - if the requested device is not available
        due to resource restrictions
    :   `IllegalArgumentException` - if the info object does not represent a
        MIDI device installed on the system
    :   `NullPointerException` - if `info` is `null`

    See Also:
    :   - [`getMidiDeviceInfo()`](#getMidiDeviceInfo())
  + ### getReceiver

    public static [Receiver](Receiver.md "interface in javax.sound.midi") getReceiver()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains a MIDI receiver from an external MIDI port or other default
    device. The returned receiver always implements the
    `MidiDeviceReceiver` interface.

    If the system property `javax.sound.midi.Receiver` is defined or it
    is defined in the file "sound.properties", it is used to identify the
    device that provides the default receiver. For details, refer to the
    [`class description`](MidiSystem.md "class in javax.sound.midi").

    If a suitable MIDI port is not available, the Receiver is retrieved from
    an installed synthesizer.

    If a native receiver provided by the default device does not implement
    the `MidiDeviceReceiver` interface, it will be wrapped in a wrapper
    class that implements the `MidiDeviceReceiver` interface. The
    corresponding `Receiver` method calls will be forwarded to the
    native receiver.

    If this method returns successfully, the [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi")
    the `Receiver` belongs to is opened implicitly, if it is not
    already open. It is possible to close an implicitly opened device by
    calling [`close`](Receiver.md#close()) on the returned `Receiver`.
    All open `Receiver` instances have to be closed in order to release
    system resources hold by the `MidiDevice`. For a detailed
    description of open/close behaviour see the class description of
    [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi").

    Returns:
    :   the default MIDI receiver

    Throws:
    :   `MidiUnavailableException` - if the default receiver is not available
        due to resource restrictions, or no device providing receivers is
        installed in the system
  + ### getTransmitter

    public static [Transmitter](Transmitter.md "interface in javax.sound.midi") getTransmitter()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains a MIDI transmitter from an external MIDI port or other default
    source. The returned transmitter always implements the
    `MidiDeviceTransmitter` interface.

    If the system property `javax.sound.midi.Transmitter` is defined or
    it is defined in the file "sound.properties", it is used to identify the
    device that provides the default transmitter. For details, refer to the
    [`class description`](MidiSystem.md "class in javax.sound.midi").

    If a native transmitter provided by the default device does not implement
    the `MidiDeviceTransmitter` interface, it will be wrapped in a
    wrapper class that implements the `MidiDeviceTransmitter`
    interface. The corresponding `Transmitter` method calls will be
    forwarded to the native transmitter.

    If this method returns successfully, the [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi")
    the `Transmitter` belongs to is opened implicitly, if it is not
    already open. It is possible to close an implicitly opened device by
    calling [`close`](Transmitter.md#close()) on the returned
    `Transmitter`. All open `Transmitter` instances have to be
    closed in order to release system resources hold by the
    `MidiDevice`. For a detailed description of open/close behaviour
    see the class description of [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi").

    Returns:
    :   the default MIDI transmitter

    Throws:
    :   `MidiUnavailableException` - if the default transmitter is not
        available due to resource restrictions, or no device providing
        transmitters is installed in the system
  + ### getSynthesizer

    public static [Synthesizer](Synthesizer.md "interface in javax.sound.midi") getSynthesizer()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains the default synthesizer.

    If the system property `javax.sound.midi.Synthesizer` is defined or
    it is defined in the file "sound.properties", it is used to identify the
    default synthesizer. For details, refer to the
    [`class description`](MidiSystem.md "class in javax.sound.midi").

    Returns:
    :   the default synthesizer

    Throws:
    :   `MidiUnavailableException` - if the synthesizer is not available due
        to resource restrictions, or no synthesizer is installed in the
        system
  + ### getSequencer

    public static [Sequencer](Sequencer.md "interface in javax.sound.midi") getSequencer()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains the default `Sequencer`, connected to a default device. The
    returned `Sequencer` instance is connected to the default
    `Synthesizer`, as returned by [`getSynthesizer()`](#getSynthesizer()). If there is
    no `Synthesizer` available, or the default `Synthesizer`
    cannot be opened, the `sequencer` is connected to the default
    `Receiver`, as returned by [`getReceiver()`](#getReceiver()). The connection is
    made by retrieving a `Transmitter` instance from the
    `Sequencer` and setting its `Receiver`. Closing and
    re-opening the sequencer will restore the connection to the default
    device.

    This method is equivalent to calling `getSequencer(true)`.

    If the system property `javax.sound.midi.Sequencer` is defined or
    it is defined in the file "sound.properties", it is used to identify the
    default sequencer. For details, refer to the
    [`class description`](MidiSystem.md "class in javax.sound.midi").

    Returns:
    :   the default sequencer, connected to a default Receiver

    Throws:
    :   `MidiUnavailableException` - if the sequencer is not available due to
        resource restrictions, or there is no `Receiver` available
        by any installed `MidiDevice`, or no sequencer is installed
        in the system

    See Also:
    :   - [`getSequencer(boolean)`](#getSequencer(boolean))
        - [`getSynthesizer()`](#getSynthesizer())
        - [`getReceiver()`](#getReceiver())
  + ### getSequencer

    public static [Sequencer](Sequencer.md "interface in javax.sound.midi") getSequencer(boolean connected)
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains the default `Sequencer`, optionally connected to a default
    device.

    If `connected` is true, the returned `Sequencer` instance is
    connected to the default `Synthesizer`, as returned by
    [`getSynthesizer()`](#getSynthesizer()). If there is no `Synthesizer` available, or
    the default `Synthesizer` cannot be opened, the `sequencer`
    is connected to the default `Receiver`, as returned by
    [`getReceiver()`](#getReceiver()). The connection is made by retrieving a
    `Transmitter` instance from the `Sequencer` and setting its
    `Receiver`. Closing and re-opening the sequencer will restore the
    connection to the default device.

    If `connected` is false, the returned `Sequencer` instance is
    not connected, it has no open `Transmitters`. In order to play the
    sequencer on a MIDI device, or a `Synthesizer`, it is necessary to
    get a `Transmitter` and set its `Receiver`.

    If the system property `javax.sound.midi.Sequencer` is defined or
    it is defined in the file "sound.properties", it is used to identify the
    default sequencer. For details, refer to the
    [`class description`](MidiSystem.md "class in javax.sound.midi").

    Parameters:
    :   `connected` - whether or not the returned `Sequencer` is
        connected to the default `Synthesizer`

    Returns:
    :   the default sequencer

    Throws:
    :   `MidiUnavailableException` - if the sequencer is not available due to
        resource restrictions, or no sequencer is installed in the
        system, or if `connected` is true, and there is no
        `Receiver` available by any installed `MidiDevice`

    Since:
    :   1.5

    See Also:
    :   - [`getSynthesizer()`](#getSynthesizer())
        - [`getReceiver()`](#getReceiver())
  + ### getSoundbank

    public static [Soundbank](Soundbank.md "interface in javax.sound.midi") getSoundbank([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a MIDI sound bank by reading it from the specified stream. The
    stream must point to a valid MIDI soundbank file. In general, MIDI
    soundbank providers may need to read some data from the stream before
    determining whether they support it. These parsers must be able to mark
    the stream, read enough data to determine whether they support the
    stream, and, if not, reset the stream's read pointer to its original
    position. If the input stream does not support this, this method may fail
    with an `IOException`.

    Parameters:
    :   `stream` - the source of the sound bank data

    Returns:
    :   the sound bank

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI soundbank data recognized by the system
    :   `IOException` - if an I/O error occurred when loading the soundbank
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getSoundbank

    public static [Soundbank](Soundbank.md "interface in javax.sound.midi") getSoundbank([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a `Soundbank` by reading it from the specified URL. The
    URL must point to a valid MIDI soundbank file.

    Parameters:
    :   `url` - the source of the sound bank data

    Returns:
    :   the sound bank

    Throws:
    :   `InvalidMidiDataException` - if the URL does not point to valid MIDI
        soundbank data recognized by the system
    :   `IOException` - if an I/O error occurred when loading the soundbank
    :   `NullPointerException` - if `url` is `null`
  + ### getSoundbank

    public static [Soundbank](Soundbank.md "interface in javax.sound.midi") getSoundbank([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a `Soundbank` by reading it from the specified
    `File`. The `File` must point to a valid MIDI soundbank file.

    Parameters:
    :   `file` - the source of the sound bank data

    Returns:
    :   the sound bank

    Throws:
    :   `InvalidMidiDataException` - if the `File` does not point to
        valid MIDI soundbank data recognized by the system
    :   `IOException` - if an I/O error occurred when loading the soundbank
    :   `NullPointerException` - if `file` is `null`
  + ### getMidiFileFormat

    public static [MidiFileFormat](MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the data in the specified input stream.
    The stream must point to valid MIDI file data for a file type recognized
    by the system.

    This method and/or the code it invokes may need to read some data from
    the stream to determine whether its data format is supported. The
    implementation may therefore need to mark the stream, read enough data to
    determine whether it is in a supported format, and reset the stream's
    read pointer to its original position. If the input stream does not
    permit this set of operations, this method may fail with an
    `IOException`.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while determining the file format.

    Parameters:
    :   `stream` - the input stream from which file format information should
        be extracted

    Returns:
    :   an `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs while accessing the stream
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`getMidiFileFormat(URL)`](#getMidiFileFormat(java.net.URL))
        - [`getMidiFileFormat(File)`](#getMidiFileFormat(java.io.File))
        - [`InputStream.markSupported()`](../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getMidiFileFormat

    public static [MidiFileFormat](MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the data in the specified URL. The URL
    must point to valid MIDI file data for a file type recognized by the
    system.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while determining the file format.

    Parameters:
    :   `url` - the URL from which file format information should be
        extracted

    Returns:
    :   a `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the URL does not point to valid MIDI
        file data recognized by the system
    :   `IOException` - if an I/O exception occurs while accessing the URL
    :   `NullPointerException` - if `url` is `null`

    See Also:
    :   - [`getMidiFileFormat(InputStream)`](#getMidiFileFormat(java.io.InputStream))
        - [`getMidiFileFormat(File)`](#getMidiFileFormat(java.io.File))
  + ### getMidiFileFormat

    public static [MidiFileFormat](MidiFileFormat.md "class in javax.sound.midi") getMidiFileFormat([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the MIDI file format of the specified `File`. The
    `File` must point to valid MIDI file data for a file type
    recognized by the system.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while determining the file format.

    Parameters:
    :   `file` - the `File` from which file format information should
        be extracted

    Returns:
    :   a `MidiFileFormat` object describing the MIDI file format

    Throws:
    :   `InvalidMidiDataException` - if the `File` does not point to
        valid MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs while accessing the file
    :   `NullPointerException` - if `file` is `null`

    See Also:
    :   - [`getMidiFileFormat(InputStream)`](#getMidiFileFormat(java.io.InputStream))
        - [`getMidiFileFormat(URL)`](#getMidiFileFormat(java.net.URL))
  + ### getSequence

    public static [Sequence](Sequence.md "class in javax.sound.midi") getSequence([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the specified input stream. The stream must
    point to valid MIDI file data for a file type recognized by the system.

    This method and/or the code it invokes may need to read some data from
    the stream to determine whether its data format is supported. The
    implementation may therefore need to mark the stream, read enough data to
    determine whether it is in a supported format, and reset the stream's
    read pointer to its original position. If the input stream does not
    permit this set of operations, this method may fail with an
    `IOException`.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while constructing the `Sequence`
    object from the file data.

    Parameters:
    :   `stream` - the input stream from which the `Sequence` should be
        constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data contained
        in the input stream

    Throws:
    :   `InvalidMidiDataException` - if the stream does not point to valid
        MIDI file data recognized by the system
    :   `IOException` - if an I/O exception occurs while accessing the stream
    :   `NullPointerException` - if `stream` is `null`

    See Also:
    :   - [`InputStream.markSupported()`](../../../../java.base/java/io/InputStream.md#markSupported())
        - [`InputStream.mark(int)`](../../../../java.base/java/io/InputStream.md#mark(int))
  + ### getSequence

    public static [Sequence](Sequence.md "class in javax.sound.midi") getSequence([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the specified URL. The URL must point to
    valid MIDI file data for a file type recognized by the system.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while constructing the `Sequence`
    object from the file data.

    Parameters:
    :   `url` - the URL from which the `Sequence` should be constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data pointed to
        by the URL

    Throws:
    :   `InvalidMidiDataException` - if the URL does not point to valid MIDI
        file data recognized by the system
    :   `IOException` - if an I/O exception occurs while accessing the URL
    :   `NullPointerException` - if `url` is `null`
  + ### getSequence

    public static [Sequence](Sequence.md "class in javax.sound.midi") getSequence([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a MIDI sequence from the specified `File`. The `File`
    must point to valid MIDI file data for a file type recognized by the
    system.

    This operation can only succeed for files of a type which can be parsed
    by an installed file reader. It may fail with an
    `InvalidMidiDataException` even for valid files if no compatible
    file reader is installed. It will also fail with an
    `InvalidMidiDataException` if a compatible file reader is
    installed, but encounters errors while constructing the `Sequence`
    object from the file data.

    Parameters:
    :   `file` - the `File` from which the `Sequence` should be
        constructed

    Returns:
    :   a `Sequence` object based on the MIDI file data pointed to
        by the File

    Throws:
    :   `InvalidMidiDataException` - if the File does not point to valid MIDI
        file data recognized by the system
    :   `IOException` - if an I/O exception occurs
    :   `NullPointerException` - if `file` is `null`
  + ### getMidiFileTypes

    public static int[] getMidiFileTypes()

    Obtains the set of MIDI file types for which file writing support is
    provided by the system.

    Returns:
    :   array of unique file types. If no file types are supported, an
        array of length 0 is returned.
  + ### isFileTypeSupported

    public static boolean isFileTypeSupported(int fileType)

    Indicates whether file writing support for the specified MIDI file type
    is provided by the system.

    Parameters:
    :   `fileType` - the file type for which write capabilities are queried

    Returns:
    :   `true` if the file type is supported, otherwise
        `false`
  + ### getMidiFileTypes

    public static int[] getMidiFileTypes([Sequence](Sequence.md "class in javax.sound.midi") sequence)

    Obtains the set of MIDI file types that the system can write from the
    sequence specified.

    Parameters:
    :   `sequence` - the sequence for which MIDI file type support is queried

    Returns:
    :   the set of unique supported file types. If no file types are
        supported, returns an array of length 0.

    Throws:
    :   `NullPointerException` - if `sequence` is `null`
  + ### isFileTypeSupported

    public static boolean isFileTypeSupported(int fileType,
    [Sequence](Sequence.md "class in javax.sound.midi") sequence)

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

    public static int write([Sequence](Sequence.md "class in javax.sound.midi") in,
    int fileType,
    [OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing a file of the MIDI file type
    indicated to the output stream provided.

    Parameters:
    :   `in` - sequence containing MIDI data to be written to the file
    :   `fileType` - the file type of the file to be written to the output
        stream
    :   `out` - stream to which the file data should be written

    Returns:
    :   the number of bytes written to the output stream

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `IllegalArgumentException` - if the file format is not supported by
        the system
    :   `NullPointerException` - if `in` or `out` are
        `null`

    See Also:
    :   - [`isFileTypeSupported(int, Sequence)`](#isFileTypeSupported(int,javax.sound.midi.Sequence))
        - [`getMidiFileTypes(Sequence)`](#getMidiFileTypes(javax.sound.midi.Sequence))
  + ### write

    public static int write([Sequence](Sequence.md "class in javax.sound.midi") in,
    int type,
    [File](../../../../java.base/java/io/File.md "class in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a stream of bytes representing a file of the MIDI file type
    indicated to the external file provided.

    Parameters:
    :   `in` - sequence containing MIDI data to be written to the file
    :   `type` - the file type of the file to be written to the output stream
    :   `out` - external file to which the file data should be written

    Returns:
    :   the number of bytes written to the file

    Throws:
    :   `IOException` - if an I/O exception occurs
    :   `IllegalArgumentException` - if the file type is not supported by the
        system
    :   `NullPointerException` - if `in` or `out` are
        `null`

    See Also:
    :   - [`isFileTypeSupported(int, Sequence)`](#isFileTypeSupported(int,javax.sound.midi.Sequence))
        - [`getMidiFileTypes(Sequence)`](#getMidiFileTypes(javax.sound.midi.Sequence))