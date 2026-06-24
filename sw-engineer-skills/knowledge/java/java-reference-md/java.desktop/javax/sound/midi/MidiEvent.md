Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MidiEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.MidiEvent

---

public class MidiEvent
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

MIDI events contain a MIDI message and a corresponding time-stamp expressed
in ticks, and can represent the MIDI event information stored in a MIDI file
or a [`Sequence`](Sequence.md "class in javax.sound.midi") object. The duration of a tick is specified by the
timing information contained in the MIDI file or `Sequence` object.

In Java Sound, `MidiEvent` objects are typically contained in a
[`Track`](Track.md "class in javax.sound.midi"), and `Tracks` are likewise contained in a
`Sequence`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MidiEvent(MidiMessage message,
  long tick)`

  Constructs a new `MidiEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MidiMessage`

  `getMessage()`

  Obtains the MIDI message contained in the event.

  `long`

  `getTick()`

  Obtains the time-stamp for the event, in MIDI ticks.

  `void`

  `setTick(long tick)`

  Sets the time-stamp for the event, in MIDI ticks.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MidiEvent

    public MidiEvent([MidiMessage](MidiMessage.md "class in javax.sound.midi") message,
    long tick)

    Constructs a new `MidiEvent`.

    Parameters:
    :   `message` - the MIDI message contained in the event
    :   `tick` - the time-stamp for the event, in MIDI ticks
* ## Method Details

  + ### getMessage

    public [MidiMessage](MidiMessage.md "class in javax.sound.midi") getMessage()

    Obtains the MIDI message contained in the event.

    Returns:
    :   the MIDI message
  + ### setTick

    public void setTick(long tick)

    Sets the time-stamp for the event, in MIDI ticks.

    Parameters:
    :   `tick` - the new time-stamp, in MIDI ticks
  + ### getTick

    public long getTick()

    Obtains the time-stamp for the event, in MIDI ticks.

    Returns:
    :   the time-stamp for the event, in MIDI ticks