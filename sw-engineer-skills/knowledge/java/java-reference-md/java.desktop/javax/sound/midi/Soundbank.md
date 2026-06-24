Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface Soundbank

---

public interface Soundbank

A `Soundbank` contains a set of `Instruments` that can be loaded
into a `Synthesizer`. Note that a Java Sound `Soundbank` is
different from a MIDI bank. MIDI permits up to 16383 banks, each containing
up to 128 instruments (also sometimes called programs, patches, or timbres).
However, a `Soundbank` can contain 16383 times 128 instruments, because
the instruments within a `Soundbank` are indexed by both a MIDI program
number and a MIDI bank number (via a `Patch` object). Thus, a
`Soundbank` can be thought of as a collection of MIDI banks.

`Soundbank` includes methods that return `String` objects
containing the sound bank's name, manufacturer, version number, and
description. The precise content and format of these strings is left to the
implementor.

Different synthesizers use a variety of synthesis techniques. A common one is
wavetable synthesis, in which a segment of recorded sound is played back,
often with looping and pitch change. The Downloadable Sound (DLS) format uses
segments of recorded sound, as does the Headspace Engine. `Soundbanks`
and `Instruments` that are based on wavetable synthesis (or other uses
of stored sound recordings) should typically implement the
`getResources()` method to provide access to these recorded segments.
This is optional, however; the method can return an zero-length array if the
synthesis technique doesn't use sampled sound (FM synthesis and physical
modeling are examples of such techniques), or if it does but the implementor
chooses not to make the samples accessible.

See Also:
:   * [`Synthesizer.getDefaultSoundbank()`](Synthesizer.md#getDefaultSoundbank())
    * [`Synthesizer.isSoundbankSupported(javax.sound.midi.Soundbank)`](Synthesizer.md#isSoundbankSupported(javax.sound.midi.Soundbank))
    * [`Synthesizer.loadInstruments(Soundbank, Patch[])`](Synthesizer.md#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
    * [`Patch`](Patch.md "class in javax.sound.midi")
    * [`Instrument`](Instrument.md "class in javax.sound.midi")
    * [`SoundbankResource`](SoundbankResource.md "class in javax.sound.midi")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDescription()`

  Obtains a textual description of the sound bank, suitable for display.

  `Instrument`

  `getInstrument(Patch patch)`

  Obtains an `Instrument` from the given `Patch`.

  `Instrument[]`

  `getInstruments()`

  Obtains a list of instruments contained in this sound bank.

  `String`

  `getName()`

  Obtains the name of the sound bank.

  `SoundbankResource[]`

  `getResources()`

  Extracts a list of non-Instrument resources contained in the sound bank.

  `String`

  `getVendor()`

  Obtains a `string` naming the company that provides the sound bank.

  `String`

  `getVersion()`

  Obtains the version string for the sound bank.

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Obtains the name of the sound bank.

    Returns:
    :   a `String` naming the sound bank
  + ### getVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Obtains the version string for the sound bank.

    Returns:
    :   a `String` that indicates the sound bank's version
  + ### getVendor

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Obtains a `string` naming the company that provides the sound bank.

    Returns:
    :   the vendor string
  + ### getDescription

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Obtains a textual description of the sound bank, suitable for display.

    Returns:
    :   a `String` that describes the sound bank
  + ### getResources

    [SoundbankResource](SoundbankResource.md "class in javax.sound.midi")[] getResources()

    Extracts a list of non-Instrument resources contained in the sound bank.

    Returns:
    :   an array of resources, excluding instruments. If the sound bank
        contains no resources (other than instruments), returns an array
        of length 0.
  + ### getInstruments

    [Instrument](Instrument.md "class in javax.sound.midi")[] getInstruments()

    Obtains a list of instruments contained in this sound bank.

    Returns:
    :   an array of the `Instruments` in this `SoundBank`. If
        the sound bank contains no instruments, returns an array of
        length 0.

    See Also:
    :   - [`Synthesizer.getLoadedInstruments()`](Synthesizer.md#getLoadedInstruments())
        - [`getInstrument(Patch)`](#getInstrument(javax.sound.midi.Patch))
  + ### getInstrument

    [Instrument](Instrument.md "class in javax.sound.midi") getInstrument([Patch](Patch.md "class in javax.sound.midi") patch)

    Obtains an `Instrument` from the given `Patch`.

    Parameters:
    :   `patch` - a `Patch` object specifying the bank index and
        program change number

    Returns:
    :   the requested instrument, or `null` if the sound bank
        doesn't contain that instrument

    See Also:
    :   - [`getInstruments()`](#getInstruments())
        - [`Synthesizer.loadInstruments(Soundbank, Patch[])`](Synthesizer.md#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))