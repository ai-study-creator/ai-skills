Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface Receiver

All Superinterfaces:
:   `AutoCloseable`

All Known Subinterfaces:
:   `MidiDeviceReceiver`

---

public interface Receiver
extends [AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

A `Receiver` receives [`MidiEvent`](MidiEvent.md "class in javax.sound.midi") objects and typically does
something useful in response, such as interpreting them to generate sound or
raw MIDI output. Common MIDI receivers include synthesizers and MIDI Out
ports.

See Also:
:   * [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi")
    * [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi")
    * [`Transmitter`](Transmitter.md "interface in javax.sound.midi")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Indicates that the application has finished using the receiver, and that
  limited resources it requires may be released or made available.

  `void`

  `send(MidiMessage message,
  long timeStamp)`

  Sends a MIDI message and time-stamp to this receiver.

* ## Method Details

  + ### send

    void send([MidiMessage](MidiMessage.md "class in javax.sound.midi") message,
    long timeStamp)

    Sends a MIDI message and time-stamp to this receiver. If time-stamping is
    not supported by this receiver, the time-stamp value should be -1.

    Parameters:
    :   `message` - the MIDI message to send
    :   `timeStamp` - the time-stamp for the message, in microseconds

    Throws:
    :   `IllegalStateException` - if the receiver is closed
  + ### close

    void close()

    Indicates that the application has finished using the receiver, and that
    limited resources it requires may be released or made available.

    If the creation of this `Receiver` resulted in implicitly opening
    the underlying device, the device is implicitly closed by this method.
    This is true unless the device is kept open by other `Receiver` or
    `Transmitter` instances that opened the device implicitly, and
    unless the device has been opened explicitly. If the device this
    `Receiver` is retrieved from is closed explicitly by calling
    [`MidiDevice.close`](MidiDevice.md#close()), the `Receiver` is
    closed, too. For a detailed description of open/close behaviour see the
    class description of [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi").

    Specified by:
    :   `close` in interface `AutoCloseable`

    See Also:
    :   - [`MidiSystem.getReceiver()`](MidiSystem.md#getReceiver())