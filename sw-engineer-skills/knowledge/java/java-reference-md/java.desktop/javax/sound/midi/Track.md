Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class Track

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.Track

---

public final class Track
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A MIDI track is an independent stream of MIDI events (time-stamped MIDI data)
that can be stored along with other tracks in a standard MIDI file. The MIDI
specification allows only 16 channels of MIDI data, but tracks are a way to
get around this limitation. A MIDI file can contain any number of tracks,
each containing its own stream of up to 16 channels of MIDI data.

A `Track` occupies a middle level in the hierarchy of data played by a
[`Sequencer`](Sequencer.md "interface in javax.sound.midi"): sequencers play sequences, which contain tracks, which
contain MIDI events. A sequencer may provide controls that mute or solo
individual tracks.

The timing information and resolution for a track is controlled by and stored
in the sequence containing the track. A given `Track` is considered to
belong to the particular [`Sequence`](Sequence.md "class in javax.sound.midi") that maintains its timing. For this
reason, a new (empty) track is created by calling the
[`Sequence.createTrack()`](Sequence.md#createTrack()) method, rather than by directly invoking a
`Track` constructor.

The `Track` class provides methods to edit the track by adding or
removing `MidiEvent` objects from it. These operations keep the event
list in the correct time order. Methods are also included to obtain the
track's size, in terms of either the number of events it contains or its
duration in ticks.

See Also:
:   * [`Sequencer.setTrackMute(int, boolean)`](Sequencer.md#setTrackMute(int,boolean))
    * [`Sequencer.setTrackSolo(int, boolean)`](Sequencer.md#setTrackSolo(int,boolean))

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(MidiEvent event)`

  Adds a new event to the track.

  `MidiEvent`

  `get(int index)`

  Obtains the event at the specified index.

  `boolean`

  `remove(MidiEvent event)`

  Removes the specified event from the track.

  `int`

  `size()`

  Obtains the number of events in this track.

  `long`

  `ticks()`

  Obtains the length of the track, expressed in MIDI ticks.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### add

    public boolean add([MidiEvent](MidiEvent.md "class in javax.sound.midi") event)

    Adds a new event to the track. However, if the event is already contained
    in the track, it is not added again. The list of events is kept in time
    order, meaning that this event inserted at the appropriate place in the
    list, not necessarily at the end.

    Parameters:
    :   `event` - the event to add

    Returns:
    :   `true` if the event did not already exist in the track and
        was added, otherwise `false`
  + ### remove

    public boolean remove([MidiEvent](MidiEvent.md "class in javax.sound.midi") event)

    Removes the specified event from the track.

    Parameters:
    :   `event` - the event to remove

    Returns:
    :   `true` if the event existed in the track and was removed,
        otherwise `false`
  + ### get

    public [MidiEvent](MidiEvent.md "class in javax.sound.midi") get(int index)
    throws [ArrayIndexOutOfBoundsException](../../../../java.base/java/lang/ArrayIndexOutOfBoundsException.md "class in java.lang")

    Obtains the event at the specified index.

    Parameters:
    :   `index` - the location of the desired event in the event vector

    Returns:
    :   the event at the specified index

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the specified index is negative
        or not less than the current size of this track

    See Also:
    :   - [`size()`](#size())
  + ### size

    public int size()

    Obtains the number of events in this track.

    Returns:
    :   the size of the track's event vector
  + ### ticks

    public long ticks()

    Obtains the length of the track, expressed in MIDI ticks. (The duration
    of a tick in seconds is determined by the timing resolution of the
    `Sequence` containing this track, and also by the tempo of the
    music as set by the sequencer.)

    Returns:
    :   the duration, in ticks

    See Also:
    :   - [`Sequence(float, int)`](Sequence.md#%3Cinit%3E(float,int))
        - [`Sequencer.setTempoInBPM(float)`](Sequencer.md#setTempoInBPM(float))
        - [`Sequencer.getTickPosition()`](Sequencer.md#getTickPosition())