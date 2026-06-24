Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface Synthesizer

All Superinterfaces:
:   `AutoCloseable`, `MidiDevice`

---

public interface Synthesizer
extends [MidiDevice](MidiDevice.md "interface in javax.sound.midi")

A `Synthesizer` generates sound. This usually happens when one of the
`Synthesizer`'s [`MidiChannel`](MidiChannel.md "interface in javax.sound.midi") objects receives a
[`noteOn`](MidiChannel.md#noteOn(int,int)) message, either directly or via
the `Synthesizer` object. Many `Synthesizer`s support
`Receivers`, through which MIDI events can be delivered to the
`Synthesizer`. In such cases, the `Synthesizer` typically
responds by sending a corresponding message to the appropriate
`MidiChannel`, or by processing the event itself if the event isn't one
of the MIDI channel messages.

The `Synthesizer` interface includes methods for loading and unloading
instruments from soundbanks. An instrument is a specification for
synthesizing a certain type of sound, whether that sound emulates a
traditional instrument or is some kind of sound effect or other imaginary
sound. A soundbank is a collection of instruments, organized by bank and
program number (via the instrument's `Patch` object). Different
`Synthesizer` classes might implement different sound-synthesis
techniques, meaning that some instruments and not others might be compatible
with a given synthesizer. Also, synthesizers may have a limited amount of
memory for instruments, meaning that not every soundbank and instrument can
be used by every synthesizer, even if the synthesis technique is compatible.
To see whether the instruments from a certain soundbank can be played by a
given synthesizer, invoke the
[`isSoundbankSupported`](#isSoundbankSupported(javax.sound.midi.Soundbank)) method of
`Synthesizer`.

"Loading" an instrument means that that instrument becomes available for
synthesizing notes. The instrument is loaded into the bank and program
location specified by its `Patch` object. Loading does not necessarily
mean that subsequently played notes will immediately have the sound of this
newly loaded instrument. For the instrument to play notes, one of the
synthesizer's `MidiChannel` objects must receive (or have received) a
program-change message that causes that particular instrument's bank and
program number to be selected.

See Also:
:   * [`MidiSystem.getSynthesizer()`](MidiSystem.md#getSynthesizer())
    * [`Soundbank`](Soundbank.md "interface in javax.sound.midi")
    * [`Instrument`](Instrument.md "class in javax.sound.midi")
    * [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))
    * [`Receiver`](Receiver.md "interface in javax.sound.midi")
    * [`Transmitter`](Transmitter.md "interface in javax.sound.midi")
    * [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.sound.midi.[MidiDevice](MidiDevice.md "interface in javax.sound.midi")

  `MidiDevice.Info`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Instrument[]`

  `getAvailableInstruments()`

  Obtains a list of instruments that come with the synthesizer.

  `MidiChannel[]`

  `getChannels()`

  Obtains the set of MIDI channels controlled by this synthesizer.

  `Soundbank`

  `getDefaultSoundbank()`

  Obtains the default soundbank for the synthesizer, if one exists.

  `long`

  `getLatency()`

  Obtains the processing latency incurred by this synthesizer, expressed in
  microseconds.

  `Instrument[]`

  `getLoadedInstruments()`

  Obtains a list of the instruments that are currently loaded onto this
  `Synthesizer`.

  `int`

  `getMaxPolyphony()`

  Obtains the maximum number of notes that this synthesizer can sound
  simultaneously.

  `VoiceStatus[]`

  `getVoiceStatus()`

  Obtains the current status of the voices produced by this synthesizer.

  `boolean`

  `isSoundbankSupported(Soundbank soundbank)`

  Informs the caller whether this synthesizer is capable of loading
  instruments from the specified soundbank.

  `boolean`

  `loadAllInstruments(Soundbank soundbank)`

  Loads onto the `Synthesizer` all instruments contained in the
  specified `Soundbank`.

  `boolean`

  `loadInstrument(Instrument instrument)`

  Makes a particular instrument available for synthesis.

  `boolean`

  `loadInstruments(Soundbank soundbank,
  Patch[] patchList)`

  Loads the instruments referenced by the specified patches, from the
  specified `Soundbank`.

  `boolean`

  `remapInstrument(Instrument from,
  Instrument to)`

  Remaps an instrument.

  `void`

  `unloadAllInstruments(Soundbank soundbank)`

  Unloads all instruments contained in the specified `Soundbank`.

  `void`

  `unloadInstrument(Instrument instrument)`

  Unloads a particular instrument.

  `void`

  `unloadInstruments(Soundbank soundbank,
  Patch[] patchList)`

  Unloads the instruments referenced by the specified patches, from the
  MIDI sound bank specified.

  ### Methods inherited from interface javax.sound.midi.[MidiDevice](MidiDevice.md "interface in javax.sound.midi")

  `close, getDeviceInfo, getMaxReceivers, getMaxTransmitters, getMicrosecondPosition, getReceiver, getReceivers, getTransmitter, getTransmitters, isOpen, open`

* ## Method Details

  + ### getMaxPolyphony

    int getMaxPolyphony()

    Obtains the maximum number of notes that this synthesizer can sound
    simultaneously.

    Returns:
    :   the maximum number of simultaneous notes

    See Also:
    :   - [`getVoiceStatus()`](#getVoiceStatus())
  + ### getLatency

    long getLatency()

    Obtains the processing latency incurred by this synthesizer, expressed in
    microseconds. This latency measures the worst-case delay between the time
    a MIDI message is delivered to the synthesizer and the time that the
    synthesizer actually produces the corresponding result.

    Although the latency is expressed in microseconds, a synthesizer's actual
    measured delay may vary over a wider range than this resolution suggests.
    For example, a synthesizer might have a worst-case delay of a few
    milliseconds or more.

    Returns:
    :   the worst-case delay, in microseconds
  + ### getChannels

    [MidiChannel](MidiChannel.md "interface in javax.sound.midi")[] getChannels()

    Obtains the set of MIDI channels controlled by this synthesizer. Each
    non-null element in the returned array is a `MidiChannel` that
    receives the MIDI messages sent on that channel number.

    The MIDI 1.0 specification provides for 16 channels, so this method
    returns an array of at least 16 elements. However, if this synthesizer
    doesn't make use of all 16 channels, some of the elements of the array
    might be `null`, so you should check each element before using it.

    Returns:
    :   an array of the `MidiChannel` objects managed by this
        `Synthesizer`. Some of the array elements may be
        `null`.
  + ### getVoiceStatus

    [VoiceStatus](VoiceStatus.md "class in javax.sound.midi")[] getVoiceStatus()

    Obtains the current status of the voices produced by this synthesizer. If
    this class of `Synthesizer` does not provide voice information, the
    returned array will always be of length 0. Otherwise, its length is
    always equal to the total number of voices, as returned by
    `getMaxPolyphony()`. (See the `VoiceStatus` class description
    for an explanation of synthesizer voices.)

    Returns:
    :   an array of `VoiceStatus` objects that supply information
        about the corresponding synthesizer voices

    See Also:
    :   - [`getMaxPolyphony()`](#getMaxPolyphony())
        - [`VoiceStatus`](VoiceStatus.md "class in javax.sound.midi")
  + ### isSoundbankSupported

    boolean isSoundbankSupported([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank)

    Informs the caller whether this synthesizer is capable of loading
    instruments from the specified soundbank. If the soundbank is
    unsupported, any attempts to load instruments from it will result in an
    `IllegalArgumentException`.

    Parameters:
    :   `soundbank` - soundbank for which support is queried

    Returns:
    :   `true` if the soundbank is supported, otherwise
        `false`

    See Also:
    :   - [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
        - [`loadAllInstruments(javax.sound.midi.Soundbank)`](#loadAllInstruments(javax.sound.midi.Soundbank))
        - [`unloadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#unloadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
        - [`unloadAllInstruments(javax.sound.midi.Soundbank)`](#unloadAllInstruments(javax.sound.midi.Soundbank))
        - [`getDefaultSoundbank()`](#getDefaultSoundbank())
  + ### loadInstrument

    boolean loadInstrument([Instrument](Instrument.md "class in javax.sound.midi") instrument)

    Makes a particular instrument available for synthesis. This instrument is
    loaded into the patch location specified by its `Patch` object, so
    that if a program-change message is received (or has been received) that
    causes that patch to be selected, subsequent notes will be played using
    the sound of `instrument`. If the specified instrument is already
    loaded, this method does nothing and returns `true`.

    The instrument must be part of a soundbank that this `Synthesizer`
    supports. (To make sure, you can use the `getSoundbank` method of
    `Instrument` and the `isSoundbankSupported` method of
    `Synthesizer`.)

    Parameters:
    :   `instrument` - instrument to load

    Returns:
    :   `true` if the instrument is successfully loaded (or already
        had been), `false` if the instrument could not be loaded
        (for example, if the synthesizer has insufficient memory to load
        it)

    Throws:
    :   `IllegalArgumentException` - if this `Synthesizer` doesn't
        support the specified instrument's soundbank

    See Also:
    :   - [`unloadInstrument(javax.sound.midi.Instrument)`](#unloadInstrument(javax.sound.midi.Instrument))
        - [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
        - [`loadAllInstruments(javax.sound.midi.Soundbank)`](#loadAllInstruments(javax.sound.midi.Soundbank))
        - [`remapInstrument(javax.sound.midi.Instrument, javax.sound.midi.Instrument)`](#remapInstrument(javax.sound.midi.Instrument,javax.sound.midi.Instrument))
        - [`SoundbankResource.getSoundbank()`](SoundbankResource.md#getSoundbank())
        - [`MidiChannel.programChange(int, int)`](MidiChannel.md#programChange(int,int))
  + ### unloadInstrument

    void unloadInstrument([Instrument](Instrument.md "class in javax.sound.midi") instrument)

    Unloads a particular instrument.

    Parameters:
    :   `instrument` - instrument to unload

    Throws:
    :   `IllegalArgumentException` - if this `Synthesizer` doesn't
        support the specified instrument's soundbank

    See Also:
    :   - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
        - [`unloadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#unloadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
        - [`unloadAllInstruments(javax.sound.midi.Soundbank)`](#unloadAllInstruments(javax.sound.midi.Soundbank))
        - [`getLoadedInstruments()`](#getLoadedInstruments())
        - [`remapInstrument(javax.sound.midi.Instrument, javax.sound.midi.Instrument)`](#remapInstrument(javax.sound.midi.Instrument,javax.sound.midi.Instrument))
  + ### remapInstrument

    boolean remapInstrument([Instrument](Instrument.md "class in javax.sound.midi") from,
    [Instrument](Instrument.md "class in javax.sound.midi") to)

    Remaps an instrument. Instrument `to` takes the place of instrument
    `from`.
      
    For example, if `from` was located at bank number 2, program number
    11, remapping causes that bank and program location to be occupied
    instead by `to`.
      
    If the function succeeds, instrument `from` is unloaded.

    To cancel the remapping reload instrument `from` by invoking one of
    [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument)), [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D)) or
    [`loadAllInstruments(javax.sound.midi.Soundbank)`](#loadAllInstruments(javax.sound.midi.Soundbank)).

    Parameters:
    :   `from` - the `Instrument` object to be replaced
    :   `to` - the `Instrument` object to be used in place of the old
        instrument, it should be loaded into the synthesizer

    Returns:
    :   `true` if the instrument successfully remapped,
        `false` if feature is not implemented by synthesizer

    Throws:
    :   `IllegalArgumentException` - if instrument `from` or instrument
        `to` aren't supported by synthesizer or if instrument
        `to` is not loaded
    :   `NullPointerException` - if `from` or `to` parameters
        have null value

    See Also:
    :   - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
        - [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
        - [`loadAllInstruments(javax.sound.midi.Soundbank)`](#loadAllInstruments(javax.sound.midi.Soundbank))
  + ### getDefaultSoundbank

    [Soundbank](Soundbank.md "interface in javax.sound.midi") getDefaultSoundbank()

    Obtains the default soundbank for the synthesizer, if one exists. (Some
    synthesizers provide a default or built-in soundbank.) If a synthesizer
    doesn't have a default soundbank, instruments must be loaded explicitly
    from an external soundbank.

    Returns:
    :   default soundbank, or `null` if one does not exist

    See Also:
    :   - [`isSoundbankSupported(javax.sound.midi.Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
  + ### getAvailableInstruments

    [Instrument](Instrument.md "class in javax.sound.midi")[] getAvailableInstruments()

    Obtains a list of instruments that come with the synthesizer. These
    instruments might be built into the synthesizer, or they might be part of
    a default soundbank provided with the synthesizer, etc.

    Note that you don't use this method to find out which instruments are
    currently loaded onto the synthesizer; for that purpose, you use
    `getLoadedInstruments()`. Nor does the method indicate all the
    instruments that can be loaded onto the synthesizer; it only indicates
    the subset that come with the synthesizer. To learn whether another
    instrument can be loaded, you can invoke `isSoundbankSupported()`,
    and if the instrument's `Soundbank` is supported, you can try
    loading the instrument.

    Returns:
    :   list of available instruments. If the synthesizer has no
        instruments coming with it, an array of length 0 is returned.

    See Also:
    :   - [`getLoadedInstruments()`](#getLoadedInstruments())
        - [`isSoundbankSupported(Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
        - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
  + ### getLoadedInstruments

    [Instrument](Instrument.md "class in javax.sound.midi")[] getLoadedInstruments()

    Obtains a list of the instruments that are currently loaded onto this
    `Synthesizer`.

    Returns:
    :   a list of currently loaded instruments

    See Also:
    :   - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
        - [`getAvailableInstruments()`](#getAvailableInstruments())
        - [`Soundbank.getInstruments()`](Soundbank.md#getInstruments())
  + ### loadAllInstruments

    boolean loadAllInstruments([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank)

    Loads onto the `Synthesizer` all instruments contained in the
    specified `Soundbank`.

    Parameters:
    :   `soundbank` - the `Soundbank` whose are instruments are to be
        loaded

    Returns:
    :   `true` if the instruments are all successfully loaded (or
        already had been), `false` if any instrument could not be
        loaded (for example, if the `Synthesizer` had insufficient
        memory)

    Throws:
    :   `IllegalArgumentException` - if the requested soundbank is
        incompatible with this synthesizer

    See Also:
    :   - [`isSoundbankSupported(javax.sound.midi.Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
        - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
        - [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
  + ### unloadAllInstruments

    void unloadAllInstruments([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank)

    Unloads all instruments contained in the specified `Soundbank`.

    Parameters:
    :   `soundbank` - soundbank containing instruments to unload

    Throws:
    :   `IllegalArgumentException` - thrown if the soundbank is not supported

    See Also:
    :   - [`isSoundbankSupported(javax.sound.midi.Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
        - [`unloadInstrument(javax.sound.midi.Instrument)`](#unloadInstrument(javax.sound.midi.Instrument))
        - [`unloadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#unloadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))
  + ### loadInstruments

    boolean loadInstruments([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank,
    [Patch](Patch.md "class in javax.sound.midi")[] patchList)

    Loads the instruments referenced by the specified patches, from the
    specified `Soundbank`. Each of the `Patch` objects indicates
    a bank and program number; the `Instrument` that has the matching
    `Patch` is loaded into that bank and program location.

    Parameters:
    :   `soundbank` - the `Soundbank` containing the instruments to
        load
    :   `patchList` - list of patches for which instruments should be loaded

    Returns:
    :   `true` if the instruments are all successfully loaded (or
        already had been), `false` if any instrument could not be
        loaded (for example, if the `Synthesizer` had insufficient
        memory)

    Throws:
    :   `IllegalArgumentException` - thrown if the soundbank is not supported

    See Also:
    :   - [`isSoundbankSupported(javax.sound.midi.Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
        - [`Instrument.getPatch()`](Instrument.md#getPatch())
        - [`loadAllInstruments(javax.sound.midi.Soundbank)`](#loadAllInstruments(javax.sound.midi.Soundbank))
        - [`loadInstrument(javax.sound.midi.Instrument)`](#loadInstrument(javax.sound.midi.Instrument))
        - [`Soundbank.getInstrument(Patch)`](Soundbank.md#getInstrument(javax.sound.midi.Patch))
        - [`Sequence.getPatchList()`](Sequence.md#getPatchList())
  + ### unloadInstruments

    void unloadInstruments([Soundbank](Soundbank.md "interface in javax.sound.midi") soundbank,
    [Patch](Patch.md "class in javax.sound.midi")[] patchList)

    Unloads the instruments referenced by the specified patches, from the
    MIDI sound bank specified.

    Parameters:
    :   `soundbank` - soundbank containing instruments to unload
    :   `patchList` - list of patches for which instruments should be
        unloaded

    Throws:
    :   `IllegalArgumentException` - thrown if the soundbank is not supported

    See Also:
    :   - [`unloadInstrument(javax.sound.midi.Instrument)`](#unloadInstrument(javax.sound.midi.Instrument))
        - [`unloadAllInstruments(javax.sound.midi.Soundbank)`](#unloadAllInstruments(javax.sound.midi.Soundbank))
        - [`isSoundbankSupported(javax.sound.midi.Soundbank)`](#isSoundbankSupported(javax.sound.midi.Soundbank))
        - [`Instrument.getPatch()`](Instrument.md#getPatch())
        - [`loadInstruments(javax.sound.midi.Soundbank, javax.sound.midi.Patch[])`](#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))