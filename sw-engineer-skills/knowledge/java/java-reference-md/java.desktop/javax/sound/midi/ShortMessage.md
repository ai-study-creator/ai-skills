Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class ShortMessage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.midi.MidiMessage](MidiMessage.md "class in javax.sound.midi")

javax.sound.midi.ShortMessage

All Implemented Interfaces:
:   `Cloneable`

---

public class ShortMessage
extends [MidiMessage](MidiMessage.md "class in javax.sound.midi")

A `ShortMessage` contains a MIDI message that has at most two data
bytes following its status byte. The types of MIDI message that satisfy this
criterion are channel voice, channel mode, system common, and system
real-time--in other words, everything except system exclusive and
meta-events. The `ShortMessage` class provides methods for getting and
setting the contents of the MIDI message.

A number of `ShortMessage` methods have integer parameters by which you
specify a MIDI status or data byte. If you know the numeric value, you can
express it directly. For system common and system real-time messages, you can
often use the corresponding fields of `ShortMessage`, such as
[`SYSTEM_RESET`](#SYSTEM_RESET). For channel messages, the upper four bits
of the status byte are specified by a command value and the lower four bits
are specified by a MIDI channel number. To convert incoming MIDI data bytes
that are in the form of Java's signed bytes, you can use the
[conversion code](MidiMessage.md#integersVsBytes) given in the
[`MidiMessage`](MidiMessage.md "class in javax.sound.midi") class description.

See Also:
:   * [`SysexMessage`](SysexMessage.md "class in javax.sound.midi")
    * [`MetaMessage`](MetaMessage.md "class in javax.sound.midi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTIVE_SENSING`

  Status byte for Active Sensing message (0xFE, or 254).

  `static final int`

  `CHANNEL_PRESSURE`

  Command value for Channel Pressure (Aftertouch) message (0xD0, or 208).

  `static final int`

  `CONTINUE`

  Status byte for Continue message (0xFB, or 251).

  `static final int`

  `CONTROL_CHANGE`

  Command value for Control Change message (0xB0, or 176).

  `static final int`

  `END_OF_EXCLUSIVE`

  Status byte for End of System Exclusive message (0xF7, or 247).

  `static final int`

  `MIDI_TIME_CODE`

  Status byte for MIDI Time Code Quarter Frame message (0xF1, or 241).

  `static final int`

  `NOTE_OFF`

  Command value for Note Off message (0x80, or 128).

  `static final int`

  `NOTE_ON`

  Command value for Note On message (0x90, or 144).

  `static final int`

  `PITCH_BEND`

  Command value for Pitch Bend message (0xE0, or 224).

  `static final int`

  `POLY_PRESSURE`

  Command value for Polyphonic Key Pressure (Aftertouch) message (0xA0, or
  160).

  `static final int`

  `PROGRAM_CHANGE`

  Command value for Program Change message (0xC0, or 192).

  `static final int`

  `SONG_POSITION_POINTER`

  Status byte for Song Position Pointer message (0xF2, or 242).

  `static final int`

  `SONG_SELECT`

  Status byte for MIDI Song Select message (0xF3, or 243).

  `static final int`

  `START`

  Status byte for Start message (0xFA, or 250).

  `static final int`

  `STOP`

  Status byte for Stop message (0xFC, or 252).

  `static final int`

  `SYSTEM_RESET`

  Status byte for System Reset message (0xFF, or 255).

  `static final int`

  `TIMING_CLOCK`

  Status byte for Timing Clock message (0xF8, or 248).

  `static final int`

  `TUNE_REQUEST`

  Status byte for Tune Request message (0xF6, or 246).

  ### Fields inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `data, length`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `ShortMessage()`

  Constructs a new `ShortMessage`.

  `protected`

  `ShortMessage(byte[] data)`

  Constructs a new `ShortMessage`.

  `ShortMessage(int status)`

  Constructs a new `ShortMessage` which represents a MIDI message
  that takes no data bytes.

  `ShortMessage(int status,
  int data1,
  int data2)`

  Constructs a new `ShortMessage` which represents a MIDI message
  that takes up to two data bytes.

  `ShortMessage(int command,
  int channel,
  int data1,
  int data2)`

  Constructs a new `ShortMessage` which represents a channel MIDI
  message that takes up to two data bytes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a new object of the same class and with the same contents as this
  object.

  `int`

  `getChannel()`

  Obtains the MIDI channel associated with this event.

  `int`

  `getCommand()`

  Obtains the MIDI command associated with this event.

  `int`

  `getData1()`

  Obtains the first data byte in the message.

  `int`

  `getData2()`

  Obtains the second data byte in the message.

  `protected final int`

  `getDataLength(int status)`

  Retrieves the number of data bytes associated with a particular status
  byte value.

  `void`

  `setMessage(int status)`

  Sets the parameters for a MIDI message that takes no data bytes.

  `void`

  `setMessage(int status,
  int data1,
  int data2)`

  Sets the parameters for a MIDI message that takes one or two data bytes.

  `void`

  `setMessage(int command,
  int channel,
  int data1,
  int data2)`

  Sets the short message parameters for a channel message which takes up to
  two data bytes.

  ### Methods inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `getLength, getMessage, getStatus, setMessage`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### MIDI\_TIME\_CODE

    public static final int MIDI\_TIME\_CODE

    Status byte for MIDI Time Code Quarter Frame message (0xF1, or 241).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.MIDI_TIME_CODE)
  + ### SONG\_POSITION\_POINTER

    public static final int SONG\_POSITION\_POINTER

    Status byte for Song Position Pointer message (0xF2, or 242).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.SONG_POSITION_POINTER)
  + ### SONG\_SELECT

    public static final int SONG\_SELECT

    Status byte for MIDI Song Select message (0xF3, or 243).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.SONG_SELECT)
  + ### TUNE\_REQUEST

    public static final int TUNE\_REQUEST

    Status byte for Tune Request message (0xF6, or 246).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.TUNE_REQUEST)
  + ### END\_OF\_EXCLUSIVE

    public static final int END\_OF\_EXCLUSIVE

    Status byte for End of System Exclusive message (0xF7, or 247).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.END_OF_EXCLUSIVE)
  + ### TIMING\_CLOCK

    public static final int TIMING\_CLOCK

    Status byte for Timing Clock message (0xF8, or 248).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.TIMING_CLOCK)
  + ### START

    public static final int START

    Status byte for Start message (0xFA, or 250).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.START)
  + ### CONTINUE

    public static final int CONTINUE

    Status byte for Continue message (0xFB, or 251).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.CONTINUE)
  + ### STOP

    public static final int STOP

    Status byte for Stop message (0xFC, or 252).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.STOP)
  + ### ACTIVE\_SENSING

    public static final int ACTIVE\_SENSING

    Status byte for Active Sensing message (0xFE, or 254).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.ACTIVE_SENSING)
  + ### SYSTEM\_RESET

    public static final int SYSTEM\_RESET

    Status byte for System Reset message (0xFF, or 255).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.SYSTEM_RESET)
  + ### NOTE\_OFF

    public static final int NOTE\_OFF

    Command value for Note Off message (0x80, or 128).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.NOTE_OFF)
  + ### NOTE\_ON

    public static final int NOTE\_ON

    Command value for Note On message (0x90, or 144).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.NOTE_ON)
  + ### POLY\_PRESSURE

    public static final int POLY\_PRESSURE

    Command value for Polyphonic Key Pressure (Aftertouch) message (0xA0, or
    160).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.POLY_PRESSURE)
  + ### CONTROL\_CHANGE

    public static final int CONTROL\_CHANGE

    Command value for Control Change message (0xB0, or 176).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.CONTROL_CHANGE)
  + ### PROGRAM\_CHANGE

    public static final int PROGRAM\_CHANGE

    Command value for Program Change message (0xC0, or 192).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.PROGRAM_CHANGE)
  + ### CHANNEL\_PRESSURE

    public static final int CHANNEL\_PRESSURE

    Command value for Channel Pressure (Aftertouch) message (0xD0, or 208).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.CHANNEL_PRESSURE)
  + ### PITCH\_BEND

    public static final int PITCH\_BEND

    Command value for Pitch Bend message (0xE0, or 224).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.ShortMessage.PITCH_BEND)
* ## Constructor Details

  + ### ShortMessage

    public ShortMessage()

    Constructs a new `ShortMessage`. The contents of the new message
    are guaranteed to specify a valid MIDI message. Subsequently, you may set
    the contents of the message using one of the `setMessage` methods.

    See Also:
    :   - [`setMessage(int)`](#setMessage(int))
  + ### ShortMessage

    public ShortMessage(int status)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `ShortMessage` which represents a MIDI message
    that takes no data bytes. The contents of the message can be changed by
    using one of the `setMessage` methods.

    Parameters:
    :   `status` - the MIDI status byte

    Throws:
    :   `InvalidMidiDataException` - if `status` does not specify a
        valid MIDI status byte for a message that requires no data bytes

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(int)`](#setMessage(int))
        - [`setMessage(int, int, int)`](#setMessage(int,int,int))
        - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
        - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
  + ### ShortMessage

    public ShortMessage(int status,
    int data1,
    int data2)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `ShortMessage` which represents a MIDI message
    that takes up to two data bytes. If the message only takes one data byte,
    the second data byte is ignored. If the message does not take any data
    bytes, both data bytes are ignored. The contents of the message can be
    changed by using one of the `setMessage` methods.

    Parameters:
    :   `status` - the MIDI status byte
    :   `data1` - the first data byte
    :   `data2` - the second data byte

    Throws:
    :   `InvalidMidiDataException` - if the status byte or all data bytes
        belonging to the message do not specify a valid MIDI message

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(int)`](#setMessage(int))
        - [`setMessage(int, int, int)`](#setMessage(int,int,int))
        - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
        - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [`getData1()`](#getData1())
        - [`getData2()`](#getData2())
  + ### ShortMessage

    public ShortMessage(int command,
    int channel,
    int data1,
    int data2)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `ShortMessage` which represents a channel MIDI
    message that takes up to two data bytes. If the message only takes one
    data byte, the second data byte is ignored. If the message does not take
    any data bytes, both data bytes are ignored. The contents of the message
    can be changed by using one of the `setMessage` methods.

    Parameters:
    :   `command` - the MIDI command represented by this message
    :   `channel` - the channel associated with the message
    :   `data1` - the first data byte
    :   `data2` - the second data byte

    Throws:
    :   `InvalidMidiDataException` - if the command value, channel value or
        all data bytes belonging to the message do not specify a valid
        MIDI message

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(int)`](#setMessage(int))
        - [`setMessage(int, int, int)`](#setMessage(int,int,int))
        - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
        - [`getCommand()`](#getCommand())
        - [`getChannel()`](#getChannel())
        - [`getData1()`](#getData1())
        - [`getData2()`](#getData2())
  + ### ShortMessage

    protected ShortMessage(byte[] data)

    Constructs a new `ShortMessage`.

    Parameters:
    :   `data` - an array of bytes containing the complete message. The
        message data may be changed using the `setMessage` method.

    See Also:
    :   - [`setMessage(int)`](#setMessage(int))
* ## Method Details

  + ### setMessage

    public void setMessage(int status)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the parameters for a MIDI message that takes no data bytes.

    Parameters:
    :   `status` - the MIDI status byte

    Throws:
    :   `InvalidMidiDataException` - if `status` does not specify a
        valid MIDI status byte for a message that requires no data bytes

    See Also:
    :   - [`setMessage(int, int, int)`](#setMessage(int,int,int))
        - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
  + ### setMessage

    public void setMessage(int status,
    int data1,
    int data2)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the parameters for a MIDI message that takes one or two data bytes.
    If the message takes only one data byte, the second data byte is ignored;
    if the message does not take any data bytes, both data bytes are ignored.

    Parameters:
    :   `status` - the MIDI status byte
    :   `data1` - the first data byte
    :   `data2` - the second data byte

    Throws:
    :   `InvalidMidiDataException` - if the status byte, or all data bytes
        belonging to the message, do not specify a valid MIDI message

    See Also:
    :   - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
        - [`setMessage(int)`](#setMessage(int))
  + ### setMessage

    public void setMessage(int command,
    int channel,
    int data1,
    int data2)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the short message parameters for a channel message which takes up to
    two data bytes. If the message only takes one data byte, the second data
    byte is ignored; if the message does not take any data bytes, both data
    bytes are ignored.

    Parameters:
    :   `command` - the MIDI command represented by this message
    :   `channel` - the channel associated with the message
    :   `data1` - the first data byte
    :   `data2` - the second data byte

    Throws:
    :   `InvalidMidiDataException` - if the status byte or all data bytes
        belonging to the message, do not specify a valid MIDI message

    See Also:
    :   - [`setMessage(int, int, int)`](#setMessage(int,int,int))
        - [`setMessage(int)`](#setMessage(int))
        - [`getCommand()`](#getCommand())
        - [`getChannel()`](#getChannel())
        - [`getData1()`](#getData1())
        - [`getData2()`](#getData2())
  + ### getChannel

    public int getChannel()

    Obtains the MIDI channel associated with this event. This method assumes
    that the event is a MIDI channel message; if not, the return value will
    not be meaningful.

    Returns:
    :   MIDI channel associated with the message

    See Also:
    :   - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
  + ### getCommand

    public int getCommand()

    Obtains the MIDI command associated with this event. This method assumes
    that the event is a MIDI channel message; if not, the return value will
    not be meaningful.

    Returns:
    :   the MIDI command associated with this event

    See Also:
    :   - [`setMessage(int, int, int, int)`](#setMessage(int,int,int,int))
  + ### getData1

    public int getData1()

    Obtains the first data byte in the message.

    Returns:
    :   the value of the `data1` field

    See Also:
    :   - [`setMessage(int, int, int)`](#setMessage(int,int,int))
  + ### getData2

    public int getData2()

    Obtains the second data byte in the message.

    Returns:
    :   the value of the `data2` field

    See Also:
    :   - [`setMessage(int, int, int)`](#setMessage(int,int,int))
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a new object of the same class and with the same contents as this
    object.

    Specified by:
    :   `clone` in class `MidiMessage`

    Returns:
    :   a clone of this instance

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getDataLength

    protected final int getDataLength(int status)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Retrieves the number of data bytes associated with a particular status
    byte value.

    Parameters:
    :   `status` - status byte value, which must represent a short MIDI
        message

    Returns:
    :   data length in bytes (0, 1, or 2)

    Throws:
    :   `InvalidMidiDataException` - if the `status` argument does not
        represent the status byte for any short message