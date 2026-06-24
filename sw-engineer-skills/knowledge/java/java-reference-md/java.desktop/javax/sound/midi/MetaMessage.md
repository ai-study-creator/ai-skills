Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MetaMessage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.midi.MidiMessage](MidiMessage.md "class in javax.sound.midi")

javax.sound.midi.MetaMessage

All Implemented Interfaces:
:   `Cloneable`

---

public class MetaMessage
extends [MidiMessage](MidiMessage.md "class in javax.sound.midi")

A `MetaMessage` is a [`MidiMessage`](MidiMessage.md "class in javax.sound.midi") that is not meaningful to
synthesizers, but that can be stored in a MIDI file and interpreted by a
sequencer program. (See the discussion in the `MidiMessage` class
description.) The Standard MIDI Files specification defines various types of
meta-events, such as sequence number, lyric, cue point, and set tempo. There
are also meta-events for such information as lyrics, copyrights, tempo
indications, time and key signatures, markers, etc. For more information, see
the Standard MIDI Files 1.0 specification, which is part of the Complete MIDI
1.0 Detailed Specification published by the MIDI Manufacturer's Association
(<http://www.midi.org>).

When data is being transported using MIDI wire protocol, a
[`ShortMessage`](ShortMessage.md "class in javax.sound.midi") with the status value `0xFF` represents a system
reset message. In MIDI files, this same status value denotes a
`MetaMessage`. The types of meta-message are distinguished from each
other by the first byte that follows the status byte `0xFF`. The
subsequent bytes are data bytes. As with system exclusive messages, there are
an arbitrary number of data bytes, depending on the type of
`MetaMessage`.

See Also:
:   * [`MetaEventListener`](MetaEventListener.md "interface in javax.sound.midi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `META`

  Status byte for `MetaMessage` (0xFF, or 255), which is used in MIDI
  files.

  ### Fields inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `data, length`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `MetaMessage()`

  Constructs a new `MetaMessage`.

  `protected`

  `MetaMessage(byte[] data)`

  Constructs a new `MetaMessage`.

  `MetaMessage(int type,
  byte[] data,
  int length)`

  Constructs a new `MetaMessage` and sets the message parameters.
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

  Obtains a copy of the data for the meta message.

  `int`

  `getType()`

  Obtains the type of the `MetaMessage`.

  `void`

  `setMessage(int type,
  byte[] data,
  int length)`

  Sets the message parameters for a `MetaMessage`.

  ### Methods inherited from class javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi")

  `getLength, getMessage, getStatus, setMessage`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### META

    public static final int META

    Status byte for `MetaMessage` (0xFF, or 255), which is used in MIDI
    files. It has the same value as [`ShortMessage.SYSTEM_RESET`](ShortMessage.md#SYSTEM_RESET), which
    is used in the real-time "MIDI wire" protocol.

    See Also:
    :   - [`MidiMessage.getStatus()`](MidiMessage.md#getStatus())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.MetaMessage.META)
* ## Constructor Details

  + ### MetaMessage

    public MetaMessage()

    Constructs a new `MetaMessage`. The contents of the message are not
    set here; use [`setMessage`](#setMessage(int,byte%5B%5D,int)) to set
    them subsequently.
  + ### MetaMessage

    public MetaMessage(int type,
    byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Constructs a new `MetaMessage` and sets the message parameters. The
    contents of the message can be changed by using the `setMessage`
    method.

    Parameters:
    :   `type` - meta-message type (must be less than 128)
    :   `data` - the data bytes in the MIDI message
    :   `length` - an amount of bytes in the `data` byte array; it
        should be non-negative and less than or equal to
        `data.length`

    Throws:
    :   `InvalidMidiDataException` - if the parameter values do not specify a
        valid MIDI meta message

    Since:
    :   1.7

    See Also:
    :   - [`setMessage(int, byte[], int)`](#setMessage(int,byte%5B%5D,int))
        - [`getType()`](#getType())
        - [`getData()`](#getData())
  + ### MetaMessage

    protected MetaMessage(byte[] data)

    Constructs a new `MetaMessage`.

    Parameters:
    :   `data` - an array of bytes containing the complete message. The
        message data may be changed using the `setMessage` method.

    See Also:
    :   - [`setMessage(int, byte[], int)`](#setMessage(int,byte%5B%5D,int))
* ## Method Details

  + ### setMessage

    public void setMessage(int type,
    byte[] data,
    int length)
    throws [InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")

    Sets the message parameters for a `MetaMessage`. Since only one
    status byte value, `0xFF`, is allowed for meta-messages, it does
    not need to be specified here. Calls to
    [`getStatus`](MidiMessage.md#getStatus()) return `0xFF` for all
    meta-messages.

    The `type` argument should be a valid value for the byte that
    follows the status byte in the `MetaMessage`. The `data`
    argument should contain all the subsequent bytes of the
    `MetaMessage`. In other words, the byte that specifies the type of
    `MetaMessage` is not considered a data byte.

    Parameters:
    :   `type` - meta-message type (must be less than 128)
    :   `data` - the data bytes in the MIDI message
    :   `length` - the number of bytes in the `data` byte array

    Throws:
    :   `InvalidMidiDataException` - if the parameter values do not specify a
        valid MIDI meta message
  + ### getType

    public int getType()

    Obtains the type of the `MetaMessage`.

    Returns:
    :   an integer representing the `MetaMessage` type
  + ### getData

    public byte[] getData()

    Obtains a copy of the data for the meta message. The returned array of
    bytes does not include the status byte or the message length data. The
    length of the data for the meta message is the length of the array. Note
    that the length of the entire message includes the status byte and the
    meta message type byte, and therefore may be longer than the returned
    array.

    Returns:
    :   array containing the meta message data

    See Also:
    :   - [`MidiMessage.getLength()`](MidiMessage.md#getLength())
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