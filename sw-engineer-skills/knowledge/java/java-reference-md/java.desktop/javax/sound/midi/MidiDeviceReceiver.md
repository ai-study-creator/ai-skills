Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface MidiDeviceReceiver

All Superinterfaces:
:   `AutoCloseable`, `Receiver`

---

public interface MidiDeviceReceiver
extends [Receiver](Receiver.md "interface in javax.sound.midi")

`MidiDeviceReceiver` is a `Receiver` which represents a MIDI
input connector of a `MidiDevice` (see
[`MidiDevice.getReceiver()`](MidiDevice.md#getReceiver())).

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `MidiDevice`

  `getMidiDevice()`

  Obtains a `MidiDevice` object which is an owner of this
  `Receiver`.

  ### Methods inherited from interface javax.sound.midi.[Receiver](Receiver.md "interface in javax.sound.midi")

  `close, send`

* ## Method Details

  + ### getMidiDevice

    [MidiDevice](MidiDevice.md "interface in javax.sound.midi") getMidiDevice()

    Obtains a `MidiDevice` object which is an owner of this
    `Receiver`.

    Returns:
    :   a `MidiDevice` object which is an owner of this
        `Receiver`