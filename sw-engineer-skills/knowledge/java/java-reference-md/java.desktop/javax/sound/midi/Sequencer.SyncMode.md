Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class Sequencer.SyncMode

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.Sequencer.SyncMode

Enclosing interface:
:   `Sequencer`

---

public static class Sequencer.SyncMode
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `SyncMode` object represents one of the ways in which a MIDI
sequencer's notion of time can be synchronized with a master or slave
device. If the sequencer is being synchronized to a master, the sequencer
revises its current time in response to messages from the master. If the
sequencer has a slave, the sequencer similarly sends messages to control
the slave's timing.

There are three predefined modes that specify possible masters for a
sequencer: `INTERNAL_CLOCK`, `MIDI_SYNC`, and
`MIDI_TIME_CODE`. The latter two work if the sequencer receives
MIDI messages from another device. In these two modes, the sequencer's
time gets reset based on system real-time timing clock messages or MIDI
time code (MTC) messages, respectively. These two modes can also be used
as slave modes, in which case the sequencer sends the corresponding types
of MIDI messages to its receiver (whether or not the sequencer is also
receiving them from a master). A fourth mode, `NO_SYNC`, is used to
indicate that the sequencer should not control its receiver's timing.

See Also:
:   * [`Sequencer.setMasterSyncMode(SyncMode)`](Sequencer.md#setMasterSyncMode(javax.sound.midi.Sequencer.SyncMode))
    * [`Sequencer.setSlaveSyncMode(SyncMode)`](Sequencer.md#setSlaveSyncMode(javax.sound.midi.Sequencer.SyncMode))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Sequencer.SyncMode`

  `INTERNAL_CLOCK`

  A master synchronization mode that makes the sequencer get its timing
  information from its internal clock.

  `static final Sequencer.SyncMode`

  `MIDI_SYNC`

  A master or slave synchronization mode that specifies the use of MIDI
  clock messages.

  `static final Sequencer.SyncMode`

  `MIDI_TIME_CODE`

  A master or slave synchronization mode that specifies the use of MIDI
  Time Code.

  `static final Sequencer.SyncMode`

  `NO_SYNC`

  A slave synchronization mode indicating that no timing information
  should be sent to the receiver.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SyncMode(String name)`

  Constructs a synchronization mode.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this
  synchronization mode, returning `true` if the objects are the
  same.

  `final int`

  `hashCode()`

  Returns a hash code value for this synchronization mode.

  `final String`

  `toString()`

  Returns mode's name as the string representation of the
  synchronization mode.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INTERNAL\_CLOCK

    public static final [Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi") INTERNAL\_CLOCK

    A master synchronization mode that makes the sequencer get its timing
    information from its internal clock. This is not a legal slave sync
    mode.
  + ### MIDI\_SYNC

    public static final [Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi") MIDI\_SYNC

    A master or slave synchronization mode that specifies the use of MIDI
    clock messages. If this mode is used as the master sync mode, the
    sequencer gets its timing information from system real-time MIDI
    clock messages. This mode only applies as the master sync mode for
    sequencers that are also MIDI receivers. If this is the slave sync
    mode, the sequencer sends system real-time MIDI clock messages to its
    receiver. MIDI clock messages are sent at a rate of 24 per quarter
    note.
  + ### MIDI\_TIME\_CODE

    public static final [Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi") MIDI\_TIME\_CODE

    A master or slave synchronization mode that specifies the use of MIDI
    Time Code. If this mode is used as the master sync mode, the
    sequencer gets its timing information from MIDI Time Code messages.
    This mode only applies as the master sync mode to sequencers that are
    also MIDI receivers. If this mode is used as the slave sync mode, the
    sequencer sends MIDI Time Code messages to its receiver. (See the
    MIDI 1.0 Detailed Specification for a description of MIDI Time Code.)
  + ### NO\_SYNC

    public static final [Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi") NO\_SYNC

    A slave synchronization mode indicating that no timing information
    should be sent to the receiver. This is not a legal master sync mode.
* ## Constructor Details

  + ### SyncMode

    protected SyncMode([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a synchronization mode.

    Parameters:
    :   `name` - name of the synchronization mode
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this
    synchronization mode, returning `true` if the objects are the
    same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this
        synchronization mode; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this synchronization mode.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this synchronization mode

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns mode's name as the string representation of the
    synchronization mode.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the synchronization mode