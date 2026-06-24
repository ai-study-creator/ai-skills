Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface MidiDeviceTransmitter

All Superinterfaces:
:   `AutoCloseable`, `Transmitter`

---

public interface MidiDeviceTransmitter
extends [Transmitter](Transmitter.md "interface in javax.sound.midi")

`MidiDeviceTransmitter` is a `Transmitter` which represents a
MIDI input connector of a `MidiDevice` (see
[`MidiDevice.getTransmitter()`](MidiDevice.md#getTransmitter())).

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
  `Transmitter`.

  ### Methods inherited from interface javax.sound.midi.[Transmitter](Transmitter.md "interface in javax.sound.midi")

  `close, getReceiver, setReceiver`

* ## Method Details

  + ### getMidiDevice

    [MidiDevice](MidiDevice.md "interface in javax.sound.midi") getMidiDevice()

    Obtains a `MidiDevice` object which is an owner of this
    `Transmitter`.

    Returns:
    :   a `MidiDevice` object which is an owner of this
        `Transmitter`