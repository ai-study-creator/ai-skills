Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface MidiDevice

All Superinterfaces:
:   `AutoCloseable`

All Known Subinterfaces:
:   `Sequencer`, `Synthesizer`

---

public interface MidiDevice
extends [AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

`MidiDevice` is the base interface for all MIDI devices. Common devices
include synthesizers, sequencers, MIDI input ports, and MIDI output ports.

A `MidiDevice` can be a transmitter or a receiver of MIDI events, or
both. Therefore, it can provide [`Transmitter`](Transmitter.md "interface in javax.sound.midi") or [`Receiver`](Receiver.md "interface in javax.sound.midi")
instances (or both). Typically, MIDI IN ports provide transmitters, MIDI OUT
ports and synthesizers provide receivers. A Sequencer typically provides
transmitters for playback and receivers for recording.

A `MidiDevice` can be opened and closed explicitly as well as
implicitly. Explicit opening is accomplished by calling [`open()`](#open()),
explicit closing is done by calling [`close()`](#close()) on the `MidiDevice`
instance. If an application opens a `MidiDevice` explicitly, it has to
close it explicitly to free system resources and enable the application to
exit cleanly. Implicit opening is done by calling
[`MidiSystem.getReceiver()`](MidiSystem.md#getReceiver()) and [`MidiSystem.getTransmitter()`](MidiSystem.md#getTransmitter()). The
`MidiDevice` used by `MidiSystem.getReceiver` and
`MidiSystem.getTransmitter` is implementation-dependent unless the
properties `javax.sound.midi.Receiver` and
`javax.sound.midi.Transmitter` are used (see the description of
properties to select default providers in [`MidiSystem`](MidiSystem.md "class in javax.sound.midi")). A
`MidiDevice` that was opened implicitly, is closed implicitly by
closing the `Receiver` or `Transmitter` that resulted in opening
it. If more than one implicitly opening `Receiver` or
`Transmitter` were obtained by the application, the device is closed
after the last `Receiver` or `Transmitter` has been closed. On
the other hand, calling `getReceiver` or `getTransmitter` on the
device instance directly does not open the device implicitly. Closing these
`Transmitter`s and `Receiver`s does not close the device
implicitly. To use a device with `Receiver`s or `Transmitter`s
obtained this way, the device has to be opened and closed explicitly.

If implicit and explicit opening and closing are mixed on the same
`MidiDevice` instance, the following rules apply:

* After an explicit open (either before or after implicit opens), the
  device will not be closed by implicit closing. The only way to close an
  explicitly opened device is an explicit close.* An explicit close always closes the device, even if it also has been
    opened implicitly. A subsequent implicit close has no further effect.

To detect if a MidiDevice represents a hardware MIDI port, the following
programming technique can be used:

```
 MidiDevice device = ...;
 if (!(device instanceof Sequencer) && !(device instanceof Synthesizer)) {
   // we're now sure that device represents a MIDI port
   // ...
 }
```

A `MidiDevice` includes a [`MidiDevice.Info`](MidiDevice.Info.md "class in javax.sound.midi") object to provide manufacturer
information and so on.

See Also:
:   * [`Synthesizer`](Synthesizer.md "interface in javax.sound.midi")
    * [`Sequencer`](Sequencer.md "interface in javax.sound.midi")
    * [`Receiver`](Receiver.md "interface in javax.sound.midi")
    * [`Transmitter`](Transmitter.md "interface in javax.sound.midi")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static class`

  `MidiDevice.Info`

  A `MidiDevice.Info` object contains assorted data about a
  [`MidiDevice`](MidiDevice.md "interface in javax.sound.midi"), including its name, the company who created it, and
  descriptive text.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the device, indicating that the device should now release any
  system resources it is using.

  `MidiDevice.Info`

  `getDeviceInfo()`

  Obtains information about the device, including its Java class and
  `Strings` containing its name, vendor, and description.

  `int`

  `getMaxReceivers()`

  Obtains the maximum number of MIDI IN connections available on this MIDI
  device for receiving MIDI data.

  `int`

  `getMaxTransmitters()`

  Obtains the maximum number of MIDI OUT connections available on this MIDI
  device for transmitting MIDI data.

  `long`

  `getMicrosecondPosition()`

  Obtains the current time-stamp of the device, in microseconds.

  `Receiver`

  `getReceiver()`

  Obtains a MIDI IN receiver through which the MIDI device may receive MIDI
  data.

  `List<Receiver>`

  `getReceivers()`

  Returns all currently active, non-closed receivers connected with this
  `MidiDevice`.

  `Transmitter`

  `getTransmitter()`

  Obtains a MIDI OUT connection from which the MIDI device will transmit
  MIDI data.

  `List<Transmitter>`

  `getTransmitters()`

  Returns all currently active, non-closed transmitters connected with this
  `MidiDevice`.

  `boolean`

  `isOpen()`

  Reports whether the device is open.

  `void`

  `open()`

  Opens the device, indicating that it should now acquire any system
  resources it requires and become operational.

* ## Method Details

  + ### getDeviceInfo

    [MidiDevice.Info](MidiDevice.Info.md "class in javax.sound.midi") getDeviceInfo()

    Obtains information about the device, including its Java class and
    `Strings` containing its name, vendor, and description.

    Returns:
    :   device info
  + ### open

    void open()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Opens the device, indicating that it should now acquire any system
    resources it requires and become operational.

    An application opening a device explicitly with this call has to close
    the device by calling [`close()`](#close()). This is necessary to release system
    resources and allow applications to exit cleanly.

    Note that some devices, once closed, cannot be reopened. Attempts to
    reopen such a device will always result in a
    `MidiUnavailableException`.

    Throws:
    :   `MidiUnavailableException` - thrown if the device cannot be opened
        due to resource restrictions
    :   `SecurityException` - thrown if the device cannot be opened due to
        security restrictions

    See Also:
    :   - [`close()`](#close())
        - [`isOpen()`](#isOpen())
  + ### close

    void close()

    Closes the device, indicating that the device should now release any
    system resources it is using.

    All `Receiver` and `Transmitter` instances open from this
    device are closed. This includes instances retrieved via
    `MidiSystem`.

    Specified by:
    :   `close` in interface `AutoCloseable`

    See Also:
    :   - [`open()`](#open())
        - [`isOpen()`](#isOpen())
  + ### isOpen

    boolean isOpen()

    Reports whether the device is open.

    Returns:
    :   `true` if the device is open, otherwise `false`

    See Also:
    :   - [`open()`](#open())
        - [`close()`](#close())
  + ### getMicrosecondPosition

    long getMicrosecondPosition()

    Obtains the current time-stamp of the device, in microseconds. If a
    device supports time-stamps, it should start counting at 0 when the
    device is opened and continue incrementing its time-stamp in microseconds
    until the device is closed. If it does not support time-stamps, it should
    always return -1.

    Returns:
    :   the current time-stamp of the device in microseconds, or -1 if
        time-stamping is not supported by the device
  + ### getMaxReceivers

    int getMaxReceivers()

    Obtains the maximum number of MIDI IN connections available on this MIDI
    device for receiving MIDI data.

    Returns:
    :   maximum number of MIDI IN connections, or -1 if an unlimited
        number of connections is available
  + ### getMaxTransmitters

    int getMaxTransmitters()

    Obtains the maximum number of MIDI OUT connections available on this MIDI
    device for transmitting MIDI data.

    Returns:
    :   maximum number of MIDI OUT connections, or -1 if an unlimited
        number of connections is available
  + ### getReceiver

    [Receiver](Receiver.md "interface in javax.sound.midi") getReceiver()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains a MIDI IN receiver through which the MIDI device may receive MIDI
    data. The returned receiver must be closed when the application has
    finished using it.

    Usually the returned receiver implements the `MidiDeviceReceiver`
    interface.

    Obtaining a `Receiver` with this method does not open the device.
    To be able to use the device, it has to be opened explicitly by calling
    [`open()`](#open()). Also, closing the `Receiver` does not close the
    device. It has to be closed explicitly by calling [`close()`](#close()).

    Returns:
    :   a receiver for the device

    Throws:
    :   `MidiUnavailableException` - thrown if a receiver is not available
        due to resource restrictions

    See Also:
    :   - [`Receiver.close()`](Receiver.md#close())
  + ### getReceivers

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[Receiver](Receiver.md "interface in javax.sound.midi")> getReceivers()

    Returns all currently active, non-closed receivers connected with this
    `MidiDevice`. A receiver can be removed from the device by closing
    it.

    Usually the returned receivers implement the `MidiDeviceReceiver`
    interface.

    Returns:
    :   an unmodifiable list of the open receivers

    Since:
    :   1.5
  + ### getTransmitter

    [Transmitter](Transmitter.md "interface in javax.sound.midi") getTransmitter()
    throws [MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")

    Obtains a MIDI OUT connection from which the MIDI device will transmit
    MIDI data. The returned transmitter must be closed when the application
    has finished using it.

    Usually the returned transmitter implements the
    `MidiDeviceTransmitter` interface.

    Obtaining a `Transmitter` with this method does not open the
    device. To be able to use the device, it has to be opened explicitly by
    calling [`open()`](#open()). Also, closing the `Transmitter` does not
    close the device. It has to be closed explicitly by calling
    [`close()`](#close()).

    Returns:
    :   a MIDI OUT transmitter for the device

    Throws:
    :   `MidiUnavailableException` - thrown if a transmitter is not available
        due to resource restrictions

    See Also:
    :   - [`Transmitter.close()`](Transmitter.md#close())
  + ### getTransmitters

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[Transmitter](Transmitter.md "interface in javax.sound.midi")> getTransmitters()

    Returns all currently active, non-closed transmitters connected with this
    `MidiDevice`. A transmitter can be removed from the device by
    closing it.

    Usually the returned transmitters implement the
    `MidiDeviceTransmitter` interface.

    Returns:
    :   an unmodifiable list of the open transmitters

    Since:
    :   1.5