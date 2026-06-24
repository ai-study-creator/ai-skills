Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class Instrument

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.midi.SoundbankResource](SoundbankResource.md "class in javax.sound.midi")

javax.sound.midi.Instrument

---

public abstract class Instrument
extends [SoundbankResource](SoundbankResource.md "class in javax.sound.midi")

An instrument is a sound-synthesis algorithm with certain parameter settings,
usually designed to emulate a specific real-world musical instrument or to
achieve a specific sort of sound effect. Instruments are typically stored in
collections called soundbanks. Before the instrument can be used to play
notes, it must first be loaded onto a synthesizer, and then it must be
selected for use on one or more channels, via a program-change command. MIDI
notes that are subsequently received on those channels will be played using
the sound of the selected instrument.

See Also:
:   * [`Soundbank`](Soundbank.md "interface in javax.sound.midi")
    * [`Soundbank.getInstruments()`](Soundbank.md#getInstruments())
    * [`Patch`](Patch.md "class in javax.sound.midi")
    * [`Synthesizer.loadInstrument(Instrument)`](Synthesizer.md#loadInstrument(javax.sound.midi.Instrument))
    * [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Instrument(Soundbank soundbank,
  Patch patch,
  String name,
  Class<?> dataClass)`

  Constructs a new MIDI instrument from the specified `Patch`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Patch`

  `getPatch()`

  Obtains the `Patch` object that indicates the bank and program
  numbers where this instrument is to be stored in the synthesizer.

  ### Methods inherited from class javax.sound.midi.[SoundbankResource](SoundbankResource.md "class in javax.sound.midi")

  `getData, getDataClass, getName, getSoundbank`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Instrument

    protected Instrument([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank,
    [Patch](Patch.md "class in javax.sound.midi") patch,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> dataClass)

    Constructs a new MIDI instrument from the specified `Patch`. When a
    subsequent request is made to load the instrument, the sound bank will
    search its contents for this instrument's `Patch`, and the
    instrument will be loaded into the synthesizer at the bank and program
    location indicated by the `Patch` object.

    Parameters:
    :   `soundbank` - sound bank containing the instrument
    :   `patch` - the patch of this instrument
    :   `name` - the name of this instrument
    :   `dataClass` - the class used to represent the sample's data

    See Also:
    :   - [`Synthesizer.loadInstrument(Instrument)`](Synthesizer.md#loadInstrument(javax.sound.midi.Instrument))
* ## Method Details

  + ### getPatch

    public [Patch](Patch.md "class in javax.sound.midi") getPatch()

    Obtains the `Patch` object that indicates the bank and program
    numbers where this instrument is to be stored in the synthesizer.

    Returns:
    :   this instrument's patch