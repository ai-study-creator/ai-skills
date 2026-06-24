Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class SoundbankResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.SoundbankResource

Direct Known Subclasses:
:   `Instrument`

---

public abstract class SoundbankResource
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `SoundbankResource` represents any audio resource stored in a
[`Soundbank`](Soundbank.md "interface in javax.sound.midi"). Common soundbank resources include:

* Instruments. An instrument may be specified in a variety of ways.
  However, all soundbanks have some mechanism for defining instruments. In
  doing so, they may reference other resources stored in the soundbank.
  Each instrument has a `Patch` which specifies the MIDI program and
  bank by which it may be referenced in MIDI messages. Instrument information
  may be stored in [`Instrument`](Instrument.md "class in javax.sound.midi") objects.* Audio samples. A sample typically is a sampled audio waveform which
    contains a short sound recording whose duration is a fraction of a
    second, or at most a few seconds. These audio samples may be used by a
    [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi") to synthesize sound in response to MIDI commands, or
    extracted for use by an application. (The terminology reflects musicians'
    use of the word "sample" to refer collectively to a series of contiguous
    audio samples or frames, rather than to a single, instantaneous sample.)
    The data class for an audio sample will be an object that encapsulates
    the audio sample data itself and information about how to interpret it
    (the format of the audio data), such as an [`AudioInputStream`](../sampled/AudioInputStream.md "class in javax.sound.sampled").* Embedded sequences. A sound bank may contain built-in song data stored
      in a data object such as a [`Sequence`](Sequence.md "class in javax.sound.midi").

Synthesizers that use wavetable synthesis or related techniques play back the
audio in a sample when synthesizing notes, often when emulating the
real-world instrument that was originally recorded. However, there is not
necessarily a one-to-one correspondence between the `Instruments` and
samples in a `Soundbank`. A single `Instrument` can use multiple
SoundbankResources (typically for notes of dissimilar pitch or brightness).
Also, more than one `Instrument` can use the same sample.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SoundbankResource(Soundbank soundBank,
  String name,
  Class<?> dataClass)`

  Constructs a new `SoundbankResource` from the given sound bank and
  wavetable index.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Object`

  `getData()`

  Obtains the sampled audio that is stored in this
  `SoundbankResource`.

  `Class<?>`

  `getDataClass()`

  Obtains the class used by this sample to represent its data.

  `String`

  `getName()`

  Obtains the name of the resource.

  `Soundbank`

  `getSoundbank()`

  Obtains the sound bank that contains this `SoundbankResource`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SoundbankResource

    protected SoundbankResource([Soundbank](Soundbank.md "interface in javax.sound.midi") soundBank,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> dataClass)

    Constructs a new `SoundbankResource` from the given sound bank and
    wavetable index. (Setting the `SoundbankResource's` name, sampled
    audio data, and instruments is a subclass responsibility.)

    Parameters:
    :   `soundBank` - the sound bank containing this
        `SoundbankResource`
    :   `name` - the name of the sample
    :   `dataClass` - the class used to represent the sample's data

    See Also:
    :   - [`getSoundbank()`](#getSoundbank())
        - [`getName()`](#getName())
        - [`getDataClass()`](#getDataClass())
        - [`getData()`](#getData())
* ## Method Details

  + ### getSoundbank

    public [Soundbank](Soundbank.md "interface in javax.sound.midi") getSoundbank()

    Obtains the sound bank that contains this `SoundbankResource`.

    Returns:
    :   the sound bank in which this `SoundbankResource` is stored
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Obtains the name of the resource. This should generally be a string
    descriptive of the resource.

    Returns:
    :   the instrument's name
  + ### getDataClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getDataClass()

    Obtains the class used by this sample to represent its data. The object
    returned by `getData` will be of this class. If this
    `SoundbankResource` object does not support direct access to its
    data, returns `null`.

    Returns:
    :   the class used to represent the sample's data, or null if the
        data is not accessible
  + ### getData

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getData()

    Obtains the sampled audio that is stored in this
    `SoundbankResource`. The type of object returned depends on the
    implementation of the concrete class, and may be queried using
    `getDataClass`.

    Returns:
    :   an object containing the sampled audio data

    See Also:
    :   - [`getDataClass()`](#getDataClass())