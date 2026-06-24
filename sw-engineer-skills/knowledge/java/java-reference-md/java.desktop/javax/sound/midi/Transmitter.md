Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface Transmitter

All Superinterfaces:
:   `AutoCloseable`

All Known Subinterfaces:
:   `MidiDeviceTransmitter`

---

public interface Transmitter
extends [AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

A `Transmitter` sends [`MidiEvent`](MidiEvent.md "class in javax.sound.midi") objects to one or more
[`Receivers`](Receiver.md "interface in javax.sound.midi"). Common MIDI transmitters include sequencers and
MIDI input ports.

See Also:
:   * [`Receiver`](Receiver.md "interface in javax.sound.midi")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Indicates that the application has finished using the transmitter, and
  that limited resources it requires may be released or made available.

  `Receiver`

  `getReceiver()`

  Obtains the current receiver to which this transmitter will deliver MIDI
  messages.

  `void`

  `setReceiver(Receiver receiver)`

  Sets the receiver to which this transmitter will deliver MIDI messages.

* ## Method Details

  + ### setReceiver

    void setReceiver([Receiver](Receiver.md "interface in javax.sound.midi") receiver)

    Sets the receiver to which this transmitter will deliver MIDI messages.
    If a receiver is currently set, it is replaced with this one.

    Parameters:
    :   `receiver` - the desired receiver
  + ### getReceiver

    [Receiver](Receiver.md "interface in javax.sound.midi") getReceiver()

    Obtains the current receiver to which this transmitter will deliver MIDI
    messages.

    Returns:
    :   the current receiver. If no receiver is currently set, returns
        `null`.
  + ### close

    void close()

    Indicates that the application has finished using the transmitter, and
    that limited resources it requires may be released or made available.

    If the creation of this `Transmitter` resulted in implicitly
    opening the underlying device, the device is implicitly closed by this
    method. This is true unless the device is kept open by other
    `Receiver` or `Transmitter` instances that opened the device
    implicitly, and unless the device has been opened explicitly. If the
    device this `Transmitter` is retrieved from is closed explicitly by
    calling [`MidiDevice.close`](MidiDevice.md#close()), the
    `Transmitter` is closed, too. For a detailed description of
    open/close behaviour see the class description of
    [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi").

    Specified by:
    :   `close` in interface `AutoCloseable`

    See Also:
    :   - [`MidiSystem.getTransmitter()`](MidiSystem.md#getTransmitter())