Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class SysexMessage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.midi.MidiMessage](MidiMessage.md "class in javax.sound.midi")

javax.sound.midi.SysexMessage

All Implemented Interfaces:
:   `Cloneable`

---

public class SysexMessage
extends [MidiMessage](MidiMessage.md "class in javax.sound.midi")

A `SysexMessage` object represents a MIDI system exclusive message.

When a system exclusive message is read from a MIDI file, it always has a
defined length. Data from a system exclusive message from a MIDI file should
be stored in the data array of a `SysexMessage` as follows: the system
exclusive message status byte (0xF0 or 0xF7), all message data bytes, and
finally the end-of-exclusive flag (0xF7). The length reported by the
`SysexMessage` object is therefore the length of the system exclusive
data plus two: one byte for the status byte and one for the end-of-exclusive
flag.

As dictated by the Standard MIDI Files specification, two status byte values
are legal for a `SysexMessage` read from a MIDI file:

* 0xF0: System Exclusive message (same as in MIDI wire protocol)* 0xF7: Special System Exclusive message

When Java Sound is used to handle system exclusive data that is being
received using MIDI wire protocol, it should place the data in one or more
`SysexMessages`. In this case, the length of the system exclusive data
is not known in advance; the end of the system exclusive data is marked by an
end-of-exclusive flag (0xF7) in the MIDI wire byte stream.

* 0xF0: System Exclusive message (same as in MIDI wire protocol)* 0xF7: End of Exclusive (EOX)

The first `SysexMessage` object containing data for a particular system
exclusive message should have the status value 0xF0. If this message contains
all the system exclusive data for the message, it should end with the status
byte 0xF7 (EOX). Otherwise, additional system exclusive data should be sent
in one or more `SysexMessages` with a status value of 0xF7. The
`SysexMessage` containing the last of the data for the system exclusive
message should end with the value 0xF7 (EOX) to mark the end of the system
exclusive message.

If system exclusive data from `SysexMessages` objects is being
transmitted using MIDI wire protocol, only the initial 0xF0 status byte, the
system exclusive data itself, and the final 0xF7 (EOX) byte should be
propagated; any 0xF7 status bytes used to indicate that a
`SysexMessage` contains continuing system exclusive data should not be
propagated via MIDI wire protocol.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `SPECIAL_SYSTEM_EXCLUSIVE`

  Status byte for Special System Exclusive message (0xF7, or 247), which is
  used in MIDI files.

  `static final int`

  `SYSTEM_EXCLUSIVE`

  Status byte for System Exclusive message (0xF0, or 240).

  ### Fields inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `data, length`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `SysexMessage()`

  Constructs a new `SysexMessage`.

  `protected`

  `SysexMessage(byte[] data)`

  Constructs a new `SysexMessage`.

  `SysexMessage(byte[] data,
  int length)`

  Constructs a new `SysexMessage` and sets the data for the message.

  `SysexMessage(int status,
  byte[] data,
  int length)`

  Constructs a new `SysexMessage` and sets the data for the message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a new object of the same class and with the same contents as this
  object.

  `byte[]`

  `getData()`

  Obtains a copy of the data for the system exclusive message.

  `void`

  `setMessage(byte[] data,
  int length)`

  Sets the data for the system exclusive message.

  `void`

  `setMessage(int status,
  byte[] data,
  int length)`

  Sets the data for the system exclusive message.

  ### Methods inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `getLength, getMessage, getStatus`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### SYSTEM\_EXCLUSIVE

    public static final int SYSTEM\_EXCLUSIVE

    Status byte for System Exclusive message (0xF0, or 240).

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.SysexMessage.SYSTEM_EXCLUSIVE)
  + ### SPECIAL\_SYSTEM\_EXCLUSIVE

    public static final int SPECIAL\_SYSTEM\_EXCLUSIVE

    Status byte for Special System Exclusive message (0xF7, or 247), which is
    used in MIDI files. It has the same value as END\_OF\_EXCLUSIVE, which is
    used in the real-time "MIDI wire" protocol.

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.SysexMessage.SPECIAL_SYSTEM_EXCLUSIVE)
* ## Constructor Details

  + ### SysexMessage

    public SysexMessage()

    Constructs a new `SysexMessage`. The contents of the new message
    are guaranteed to specify a valid MIDI message. Subsequently, you may set
    the contents of the message using one of the `setMessage` methods.

    See Also:
    :   - [`setMessage(byte[], int)`](#setMessage(byte%5B%5D,int))
  + ### SysexMessage

    public SysexMessage(byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `SysexMessage` and sets the data for the message.
    The first byte of the data array must be a valid system exclusive status
    byte (0xF0 or 0xF7). The contents of the message can be changed by using
    one of the `setMessage` methods.

    Parameters:
    :   `data` - the system exclusive message data including the status byte
    :   `length` - the length of the valid message data in the array,
        including the status byte; it should be non-negative and less
        than or equal to `data.length`

    Throws:
    :   `InvalidMidiDataException` - if the parameter values do not specify a
        valid MIDI meta message

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(byte[], int)`](#setMessage(byte%5B%5D,int))
        - [`setMessage(int, byte[], int)`](#setMessage(int,byte%5B%5D,int))
        - [`getData()`](#getData())
  + ### SysexMessage

    public SysexMessage(int status,
    byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `SysexMessage` and sets the data for the message.
    The contents of the message can be changed by using one of the
    `setMessage` methods.

    Parameters:
    :   `status` - the status byte for the message; it must be a valid system
        exclusive status byte (0xF0 or 0xF7)
    :   `data` - the system exclusive message data (without the status byte)
    :   `length` - the length of the valid message data in the array; it
        should be non-negative and less than or equal to
        `data.length`

    Throws:
    :   `InvalidMidiDataException` - if the parameter values do not specify a
        valid MIDI system exclusive message

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(byte[], int)`](#setMessage(byte%5B%5D,int))
        - [`setMessage(int, byte[], int)`](#setMessage(int,byte%5B%5D,int))
        - [`getData()`](#getData())
  + ### SysexMessage

    protected SysexMessage(byte[] data)

    Constructs a new `SysexMessage`.

    Parameters:
    :   `data` - an array of bytes containing the complete message. The
        message data may be changed using the `setMessage` method.

    See Also:
    :   - [`setMessage(byte[], int)`](#setMessage(byte%5B%5D,int))
* ## Method Details

  + ### setMessage

    public void setMessage(byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the data for the system exclusive message. The first byte of the
    data array must be a valid system exclusive status byte (0xF0 or 0xF7).

    Overrides:
    :   `setMessage` in class `MidiMessage`

    Parameters:
    :   `data` - the system exclusive message data
    :   `length` - the length of the valid message data in the array,
        including the status byte

    Throws:
    :   `InvalidMidiDataException` - if the parameter values do not specify a
        valid MIDI system exclusive message
  + ### setMessage

    public void setMessage(int status,
    byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the data for the system exclusive message.

    Parameters:
    :   `status` - the status byte for the message (0xF0 or 0xF7)
    :   `data` - the system exclusive message data
    :   `length` - the length of the valid message data in the array

    Throws:
    :   `InvalidMidiDataException` - if the status byte is invalid for a
        system exclusive message
  + ### getData

    public byte[] getData()

    Obtains a copy of the data for the system exclusive message. The returned
    array of bytes does not include the status byte.

    Returns:
    :   array containing the system exclusive message data
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