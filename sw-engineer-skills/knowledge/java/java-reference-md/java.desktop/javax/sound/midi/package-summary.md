Module [java.desktop](../../../module-summary.md)

# Package javax.sound.midi

---

package javax.sound.midi

Provides interfaces and classes for I/O, sequencing, and synthesis of MIDI
(Musical Instrument Digital Interface) data.

## Related Documentation

For more information on using Java Sound see:

* [The Java Sound Tutorial](https://docs.oracle.com/javase/tutorial/sound/)

Please note: In the `javax.sound.midi` APIs, a `null` reference
parameter to methods is incorrect unless explicitly documented on the method
as having a meaningful interpretation. Usage to the contrary is incorrect
coding and may result in a run time exception either immediately or at some
later time. `NullPointerException` is an example of typical and
acceptable run time exception for such cases.

Since:
:   1.3

* Related Packages

  Package

  Description

  [javax.sound.midi.spi](spi/package-summary.md)

  Supplies interfaces for service providers to implement when offering new MIDI
  devices, MIDI file readers and writers, or sound bank readers.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [ControllerEventListener](ControllerEventListener.md "interface in javax.sound.midi")

  The `ControllerEventListener` interface should be implemented by
  classes whose instances need to be notified when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has
  processed a requested type of MIDI control-change event.

  [Instrument](Instrument.md "class in javax.sound.midi")

  An instrument is a sound-synthesis algorithm with certain parameter settings,
  usually designed to emulate a specific real-world musical instrument or to
  achieve a specific sort of sound effect.

  [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

  An `InvalidMidiDataException` indicates that inappropriate MIDI data
  was encountered.

  [MetaEventListener](MetaEventListener.md "interface in javax.sound.midi")

  The `MetaEventListener` interface should be implemented by classes
  whose instances need to be notified when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has processed a
  [`MetaMessage`](MetaMessage.md "class in javax.sound.midi").

  [MetaMessage](MetaMessage.md "class in javax.sound.midi")

  A `MetaMessage` is a [`MidiMessage`](MidiMessage.md "class in javax.sound.midi") that is not meaningful to
  synthesizers, but that can be stored in a MIDI file and interpreted by a
  sequencer program.

  [MidiChannel](MidiChannel.md "interface in javax.sound.midi")

  A `MidiChannel` object represents a single MIDI channel.

  [MidiDevice](MidiDevice.md "interface in javax.sound.midi")

  `MidiDevice` is the base interface for all MIDI devices.

  [MidiDevice.Info](MidiDevice.Info.md "class in javax.sound.midi")

  A `MidiDevice.Info` object contains assorted data about a
  [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi"), including its name, the company who created it, and
  descriptive text.

  [MidiDeviceReceiver](MidiDeviceReceiver.md "interface in javax.sound.midi")

  `MidiDeviceReceiver` is a `Receiver` which represents a MIDI
  input connector of a `MidiDevice` (see
  [`MidiDevice.getReceiver()`](MidiDevice.md#getReceiver())).

  [MidiDeviceTransmitter](MidiDeviceTransmitter.md "interface in javax.sound.midi")

  `MidiDeviceTransmitter` is a `Transmitter` which represents a
  MIDI input connector of a `MidiDevice` (see
  [`MidiDevice.getTransmitter()`](MidiDevice.md#getTransmitter())).

  [MidiEvent](MidiEvent.md "class in javax.sound.midi")

  MIDI events contain a MIDI message and a corresponding time-stamp expressed
  in ticks, and can represent the MIDI event information stored in a MIDI file
  or a [`Sequence`](Sequence.md "class in javax.sound.midi") object.

  [MidiFileFormat](MidiFileFormat.md "class in javax.sound.midi")

  A `MidiFileFormat` object encapsulates a MIDI file's type, as well as
  its length and timing information.

  [MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `MidiMessage` is the base class for MIDI messages.

  [MidiSystem](MidiSystem.md "class in javax.sound.midi")

  The `MidiSystem` class provides access to the installed MIDI system
  resources, including devices such as synthesizers, sequencers, and MIDI input
  and output ports.

  [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

  A `MidiUnavailableException` is thrown when a requested MIDI component
  cannot be opened or created because it is unavailable.

  [Patch](Patch.md "class in javax.sound.midi")

  A `Patch` object represents a location, on a MIDI synthesizer, into
  which a single instrument is stored (loaded).

  [Receiver](Receiver.md "interface in javax.sound.midi")

  A `Receiver` receives [`MidiEvent`](MidiEvent.md "class in javax.sound.midi") objects and typically does
  something useful in response, such as interpreting them to generate sound or
  raw MIDI output.

  [Sequence](Sequence.md "class in javax.sound.midi")

  A `Sequence` is a data structure containing musical information (often
  an entire song or composition) that can be played back by a [`Sequencer`](Sequencer.md "interface in javax.sound.midi")
  object.

  [Sequencer](Sequencer.md "interface in javax.sound.midi")

  A hardware or software device that plays back a MIDI
  [`sequence`](Sequence.md "class in javax.sound.midi") is known as a *sequencer*.

  [Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi")

  A `SyncMode` object represents one of the ways in which a MIDI
  sequencer's notion of time can be synchronized with a master or slave
  device.

  [ShortMessage](ShortMessage.md "class in javax.sound.midi")

  A `ShortMessage` contains a MIDI message that has at most two data
  bytes following its status byte.

  [Soundbank](Soundbank.md "interface in javax.sound.midi")

  A `Soundbank` contains a set of `Instruments` that can be loaded
  into a `Synthesizer`.

  [SoundbankResource](SoundbankResource.md "class in javax.sound.midi")

  A `SoundbankResource` represents any audio resource stored in a
  [`Soundbank`](Soundbank.md "interface in javax.sound.midi").

  [Synthesizer](Synthesizer.md "interface in javax.sound.midi")

  A `Synthesizer` generates sound.

  [SysexMessage](SysexMessage.md "class in javax.sound.midi")

  A `SysexMessage` object represents a MIDI system exclusive message.

  [Track](Track.md "class in javax.sound.midi")

  A MIDI track is an independent stream of MIDI events (time-stamped MIDI data)
  that can be stored along with other tracks in a standard MIDI file.

  [Transmitter](Transmitter.md "interface in javax.sound.midi")

  A `Transmitter` sends [`MidiEvent`](MidiEvent.md "class in javax.sound.midi") objects to one or more
  [`Receivers`](Receiver.md "interface in javax.sound.midi").

  [VoiceStatus](VoiceStatus.md "class in javax.sound.midi")

  A `VoiceStatus` object contains information about the current status of
  one of the voices produced by a [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi").