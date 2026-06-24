Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class Sequence

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.Sequence

---

public class Sequence
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `Sequence` is a data structure containing musical information (often
an entire song or composition) that can be played back by a [`Sequencer`](Sequencer.md "interface in javax.sound.midi")
object. Specifically, the `Sequence` contains timing information and
one or more tracks. Each [`track`](Track.md "class in javax.sound.midi") consists of a series of MIDI
events (such as note-ons, note-offs, program changes, and meta-events). The
sequence's timing information specifies the type of unit that is used to
time-stamp the events in the sequence.

A `Sequence` can be created from a MIDI file by reading the file into
an input stream and invoking one of the `getSequence` methods of
[`MidiSystem`](MidiSystem.md "class in javax.sound.midi"). A sequence can also be built from scratch by adding new
`Tracks` to an empty `Sequence`, and adding [`MidiEvent`](MidiEvent.md "class in javax.sound.midi")
objects to these `Tracks`.

See Also:
:   * [`Sequencer.setSequence(java.io.InputStream stream)`](Sequencer.md#setSequence(java.io.InputStream))
    * [`Sequencer.setSequence(Sequence sequence)`](Sequencer.md#setSequence(javax.sound.midi.Sequence))
    * [`Track.add(MidiEvent)`](Track.md#add(javax.sound.midi.MidiEvent))
    * [`MidiFileFormat`](MidiFileFormat.md "class in javax.sound.midi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected float`

  `divisionType`

  The timing division type of the sequence.

  `static final float`

  `PPQ`

  The tempo-based timing type, for which the resolution is expressed in
  pulses (ticks) per quarter note.

  `protected int`

  `resolution`

  The timing resolution of the sequence.

  `static final float`

  `SMPTE_24`

  The SMPTE-based timing type with 24 frames per second (resolution is
  expressed in ticks per frame).

  `static final float`

  `SMPTE_25`

  The SMPTE-based timing type with 25 frames per second (resolution is
  expressed in ticks per frame).

  `static final float`

  `SMPTE_30`

  The SMPTE-based timing type with 30 frames per second (resolution is
  expressed in ticks per frame).

  `static final float`

  `SMPTE_30DROP`

  The SMPTE-based timing type with 29.97 frames per second (resolution is
  expressed in ticks per frame).

  `protected Vector<Track>`

  `tracks`

  The MIDI tracks in this sequence.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Sequence(float divisionType,
  int resolution)`

  Constructs a new MIDI sequence with the specified timing division type
  and timing resolution.

  `Sequence(float divisionType,
  int resolution,
  int numTracks)`

  Constructs a new MIDI sequence with the specified timing division type,
  timing resolution, and number of tracks.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Track`

  `createTrack()`

  Creates a new, initially empty track as part of this sequence.

  `boolean`

  `deleteTrack(Track track)`

  Removes the specified track from the sequence.

  `float`

  `getDivisionType()`

  Obtains the timing division type for this sequence.

  `long`

  `getMicrosecondLength()`

  Obtains the duration of this sequence, expressed in microseconds.

  `Patch[]`

  `getPatchList()`

  Obtains a list of patches referenced in this sequence.

  `int`

  `getResolution()`

  Obtains the timing resolution for this sequence.

  `long`

  `getTickLength()`

  Obtains the duration of this sequence, expressed in MIDI ticks.

  `Track[]`

  `getTracks()`

  Obtains an array containing all the tracks in this sequence.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### PPQ

    public static final float PPQ

    The tempo-based timing type, for which the resolution is expressed in
    pulses (ticks) per quarter note.

    See Also:
    :   - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.Sequence.PPQ)
  + ### SMPTE\_24

    public static final float SMPTE\_24

    The SMPTE-based timing type with 24 frames per second (resolution is
    expressed in ticks per frame).

    See Also:
    :   - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.Sequence.SMPTE_24)
  + ### SMPTE\_25

    public static final float SMPTE\_25

    The SMPTE-based timing type with 25 frames per second (resolution is
    expressed in ticks per frame).

    See Also:
    :   - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.Sequence.SMPTE_25)
  + ### SMPTE\_30DROP

    public static final float SMPTE\_30DROP

    The SMPTE-based timing type with 29.97 frames per second (resolution is
    expressed in ticks per frame).

    See Also:
    :   - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.Sequence.SMPTE_30DROP)
  + ### SMPTE\_30

    public static final float SMPTE\_30

    The SMPTE-based timing type with 30 frames per second (resolution is
    expressed in ticks per frame).

    See Also:
    :   - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.Sequence.SMPTE_30)
  + ### divisionType

    protected float divisionType

    The timing division type of the sequence.

    See Also:
    :   - [`PPQ`](#PPQ)
        - [`SMPTE_24`](#SMPTE_24)
        - [`SMPTE_25`](#SMPTE_25)
        - [`SMPTE_30DROP`](#SMPTE_30DROP)
        - [`SMPTE_30`](#SMPTE_30)
        - [`getDivisionType()`](#getDivisionType())
  + ### resolution

    protected int resolution

    The timing resolution of the sequence.

    See Also:
    :   - [`getResolution()`](#getResolution())
  + ### tracks

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[Track](Track.md "class in javax.sound.midi")> tracks

    The MIDI tracks in this sequence.

    See Also:
    :   - [`getTracks()`](#getTracks())
* ## Constructor Details

  + ### Sequence

    public Sequence(float divisionType,
    int resolution)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new MIDI sequence with the specified timing division type
    and timing resolution. The division type must be one of the recognized
    MIDI timing types. For tempo-based timing, `divisionType` is PPQ
    (pulses per quarter note) and the resolution is specified in ticks per
    beat. For SMTPE timing, `divisionType` specifies the number of
    frames per second and the resolution is specified in ticks per frame. The
    sequence will contain no initial tracks. Tracks may be added to or
    removed from the sequence using [`createTrack()`](#createTrack()) and
    [`deleteTrack(javax.sound.midi.Track)`](#deleteTrack(javax.sound.midi.Track)).

    Parameters:
    :   `divisionType` - the timing division type (PPQ or one of the SMPTE
        types)
    :   `resolution` - the timing resolution

    Throws:
    :   `InvalidMidiDataException` - if `divisionType` is not valid

    See Also:
    :   - [`PPQ`](#PPQ)
        - [`SMPTE_24`](#SMPTE_24)
        - [`SMPTE_25`](#SMPTE_25)
        - [`SMPTE_30DROP`](#SMPTE_30DROP)
        - [`SMPTE_30`](#SMPTE_30)
        - [`getDivisionType()`](#getDivisionType())
        - [`getResolution()`](#getResolution())
        - [`getTracks()`](#getTracks())
  + ### Sequence

    public Sequence(float divisionType,
    int resolution,
    int numTracks)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new MIDI sequence with the specified timing division type,
    timing resolution, and number of tracks. The division type must be one of
    the recognized MIDI timing types. For tempo-based timing,
    `divisionType` is PPQ (pulses per quarter note) and the resolution
    is specified in ticks per beat. For SMTPE timing, `divisionType`
    specifies the number of frames per second and the resolution is specified
    in ticks per frame. The sequence will be initialized with the number of
    tracks specified by `numTracks`. These tracks are initially empty
    (i.e. they contain only the meta-event End of Track). The tracks may be
    retrieved for editing using the [`getTracks()`](#getTracks()) method. Additional
    tracks may be added, or existing tracks removed, using
    [`createTrack()`](#createTrack()) and [`deleteTrack(javax.sound.midi.Track)`](#deleteTrack(javax.sound.midi.Track)).

    Parameters:
    :   `divisionType` - the timing division type (PPQ or one of the SMPTE
        types)
    :   `resolution` - the timing resolution
    :   `numTracks` - the initial number of tracks in the sequence

    Throws:
    :   `InvalidMidiDataException` - if `divisionType` is not valid

    See Also:
    :   - [`PPQ`](#PPQ)
        - [`SMPTE_24`](#SMPTE_24)
        - [`SMPTE_25`](#SMPTE_25)
        - [`SMPTE_30DROP`](#SMPTE_30DROP)
        - [`SMPTE_30`](#SMPTE_30)
        - [`getDivisionType()`](#getDivisionType())
        - [`getResolution()`](#getResolution())
* ## Method Details

  + ### getDivisionType

    public float getDivisionType()

    Obtains the timing division type for this sequence.

    Returns:
    :   the division type (PPQ or one of the SMPTE types)

    See Also:
    :   - [`PPQ`](#PPQ)
        - [`SMPTE_24`](#SMPTE_24)
        - [`SMPTE_25`](#SMPTE_25)
        - [`SMPTE_30DROP`](#SMPTE_30DROP)
        - [`SMPTE_30`](#SMPTE_30)
        - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [`MidiFileFormat.getDivisionType()`](MidiFileFormat.md#getDivisionType())
  + ### getResolution

    public int getResolution()

    Obtains the timing resolution for this sequence. If the sequence's
    division type is PPQ, the resolution is specified in ticks per beat. For
    SMTPE timing, the resolution is specified in ticks per frame.

    Returns:
    :   the number of ticks per beat (PPQ) or per frame (SMPTE)

    See Also:
    :   - [`getDivisionType()`](#getDivisionType())
        - [`Sequence(float, int)`](#%3Cinit%3E(float,int))
        - [`MidiFileFormat.getResolution()`](MidiFileFormat.md#getResolution())
  + ### createTrack

    public [Track](Track.md "class in javax.sound.midi") createTrack()

    Creates a new, initially empty track as part of this sequence. The track
    initially contains the meta-event End of Track. The newly created track
    is returned. All tracks in the sequence may be retrieved using
    [`getTracks()`](#getTracks()). Tracks may be removed from the sequence using
    [`deleteTrack(javax.sound.midi.Track)`](#deleteTrack(javax.sound.midi.Track)).

    Returns:
    :   the newly created track
  + ### deleteTrack

    public boolean deleteTrack([Track](Track.md "class in javax.sound.midi") track)

    Removes the specified track from the sequence.

    Parameters:
    :   `track` - the track to remove

    Returns:
    :   `true` if the track existed in the track and was removed,
        otherwise `false`

    See Also:
    :   - [`createTrack()`](#createTrack())
        - [`getTracks()`](#getTracks())
  + ### getTracks

    public [Track](Track.md "class in javax.sound.midi")[] getTracks()

    Obtains an array containing all the tracks in this sequence. If the
    sequence contains no tracks, an array of length 0 is returned.

    Returns:
    :   the array of tracks

    See Also:
    :   - [`createTrack()`](#createTrack())
        - [`deleteTrack(javax.sound.midi.Track)`](#deleteTrack(javax.sound.midi.Track))
  + ### getMicrosecondLength

    public long getMicrosecondLength()

    Obtains the duration of this sequence, expressed in microseconds.

    Returns:
    :   this sequence's duration in microseconds
  + ### getTickLength

    public long getTickLength()

    Obtains the duration of this sequence, expressed in MIDI ticks.

    Returns:
    :   this sequence's length in ticks

    See Also:
    :   - [`getMicrosecondLength()`](#getMicrosecondLength())
  + ### getPatchList

    public [Patch](Patch.md "class in javax.sound.midi")[] getPatchList()

    Obtains a list of patches referenced in this sequence. This patch list
    may be used to load the required [`Instrument`](Instrument.md "class in javax.sound.midi") objects into a
    [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi").

    Returns:
    :   an array of [`Patch`](Patch.md "class in javax.sound.midi") objects used in this sequence

    See Also:
    :   - [`Synthesizer.loadInstruments(Soundbank, Patch[])`](Synthesizer.md#loadInstruments(javax.sound.midi.Soundbank,javax.sound.midi.Patch%5B%5D))