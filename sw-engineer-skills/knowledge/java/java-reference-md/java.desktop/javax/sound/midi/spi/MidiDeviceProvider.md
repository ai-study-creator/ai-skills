Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.midi.spi](package-summary.md)

# Class MidiDeviceProvider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.spi.MidiDeviceProvider

---

public abstract class MidiDeviceProvider
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A `MidiDeviceProvider` is a factory or provider for a particular type
of MIDI device. This mechanism allows the implementation to determine how
resources are managed in the creation and management of a device.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MidiDeviceProvider()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract MidiDevice`

  `getDevice(MidiDevice.Info info)`

  Obtains an instance of the device represented by the info object.

  `abstract MidiDevice.Info[]`

  `getDeviceInfo()`

  Obtains the set of info objects representing the device or devices
  provided by this `MidiDeviceProvider`.

  `boolean`

  `isDeviceSupported(MidiDevice.Info info)`

  Indicates whether the device provider supports the device represented by
  the specified device info object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MidiDeviceProvider

    protected MidiDeviceProvider()

    Constructor for subclasses to call.
* ## Method Details

  + ### isDeviceSupported

    public boolean isDeviceSupported([MidiDevice.Info](../MidiDevice.Info.md "class in javax.sound.midi") info)

    Indicates whether the device provider supports the device represented by
    the specified device info object.

    Parameters:
    :   `info` - an info object that describes the device for which support
        is queried

    Returns:
    :   `true` if the specified device is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `info` is `null`
  + ### getDeviceInfo

    public abstract [MidiDevice.Info](../MidiDevice.Info.md "class in javax.sound.midi")[] getDeviceInfo()

    Obtains the set of info objects representing the device or devices
    provided by this `MidiDeviceProvider`.

    Returns:
    :   set of device info objects
  + ### getDevice

    public abstract [MidiDevice](../MidiDevice.md "interface in javax.sound.midi") getDevice([MidiDevice.Info](../MidiDevice.Info.md "class in javax.sound.midi") info)

    Obtains an instance of the device represented by the info object.

    Parameters:
    :   `info` - an info object that describes the desired device

    Returns:
    :   device instance

    Throws:
    :   `IllegalArgumentException` - if the info object specified does not
        match the info object for a device supported by this
        `MidiDeviceProvider`
    :   `NullPointerException` - if `info` is `null`