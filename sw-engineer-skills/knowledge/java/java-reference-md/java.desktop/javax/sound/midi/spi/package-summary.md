Module [java.desktop](../../../../module-summary.md)

# Package javax.sound.midi.spi

---

package javax.sound.midi.spi

Supplies interfaces for service providers to implement when offering new MIDI
devices, MIDI file readers and writers, or sound bank readers.

## Related Documentation

For more information on using Java Sound see:

* [The Java Sound Tutorial](https://docs.oracle.com/javase/tutorial/sound/)

Please note: In the `javax.sound.midi.spi` APIs, a `null`
reference parameter to methods is incorrect unless explicitly documented on
the method as having a meaningful interpretation. Usage to the contrary is
incorrect coding and may result in a run time exception either immediately or
at some later time. `NullPointerException` is an example of typical and
acceptable run time exception for such cases.

Since:
:   1.3

* Related Packages

  Package

  Description

  [javax.sound.midi](../package-summary.md)

  Provides interfaces and classes for I/O, sequencing, and synthesis of MIDI
  (Musical Instrument Digital Interface) data.
* Classes

  Class

  Description

  [MidiDeviceProvider](MidiDeviceProvider.md "class in javax.sound.midi.spi")

  A `MidiDeviceProvider` is a factory or provider for a particular type
  of MIDI device.

  [MidiFileReader](MidiFileReader.md "class in javax.sound.midi.spi")

  A `MidiFileReader` supplies MIDI file-reading services.

  [MidiFileWriter](MidiFileWriter.md "class in javax.sound.midi.spi")

  A `MidiFileWriter` supplies MIDI file-writing services.

  [SoundbankReader](SoundbankReader.md "class in javax.sound.midi.spi")

  A `SoundbankReader` supplies soundbank file-reading services.