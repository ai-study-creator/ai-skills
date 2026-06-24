Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class Patch

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.Patch

---

public class Patch
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `Patch` object represents a location, on a MIDI synthesizer, into
which a single instrument is stored (loaded). Every `Instrument` object
has its own `Patch` object that specifies the memory location into
which that instrument should be loaded. The location is specified abstractly
by a bank index and a program number (not by any scheme that directly refers
to a specific address or offset in RAM). This is a hierarchical indexing
scheme: MIDI provides for up to 16384 banks, each of which contains up to 128
program locations. For example, a minimal sort of synthesizer might have only
one bank of instruments, and only 32 instruments (programs) in that bank.

To select what instrument should play the notes on a particular MIDI channel,
two kinds of MIDI message are used that specify a patch location: a
bank-select command, and a program-change channel command. The Java Sound
equivalent is the
[`programChange(int, int)`](MidiChannel.md#programChange(int,int)) method of
`MidiChannel`.

See Also:
:   * [`Instrument`](Instrument.md "class in javax.sound.midi")
    * [`Instrument.getPatch()`](Instrument.md#getPatch())
    * [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))
    * [`Synthesizer.loadInstruments(Soundbank, Patch[])`](Synthesizer.md#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
    * [`Soundbank`](Soundbank.md "interface in javax.sound.midi")
    * [`Sequence.getPatchList()`](Sequence.md#getPatchList())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Patch(int bank,
  int program)`

  Constructs a new patch object from the specified bank and program
  numbers.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getBank()`

  Returns the number of the bank that contains the instrument whose
  location this `Patch` specifies.

  `int`

  `getProgram()`

  Returns the index, within a bank, of the instrument whose location this
  `Patch` specifies.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Patch

    public Patch(int bank,
    int program)

    Constructs a new patch object from the specified bank and program
    numbers.

    Parameters:
    :   `bank` - the bank index (in the range from 0 to 16383)
    :   `program` - the program index (in the range from 0 to 127)
* ## Method Details

  + ### getBank

    public int getBank()

    Returns the number of the bank that contains the instrument whose
    location this `Patch` specifies.

    Returns:
    :   the bank number, whose range is from 0 to 16383

    See Also:
    :   - [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))
  + ### getProgram

    public int getProgram()

    Returns the index, within a bank, of the instrument whose location this
    `Patch` specifies.

    Returns:
    :   the instrument's program number, whose range is from 0 to 127

    See Also:
    :   - [`MidiChannel.getProgram()`](MidiChannel.md#getProgram())
        - [`MidiChannel.programChange(int)`](MidiChannel.md#programChange(int))
        - [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))