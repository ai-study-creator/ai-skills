Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MidiDevice.Info

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.MidiDevice.Info

Enclosing interface:
:   `MidiDevice`

---

public static class MidiDevice.Info
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `MidiDevice.Info` object contains assorted data about a
[`MidiDevice`](MidiDevice.md "interface in javax.sound.midi"), including its name, the company who created it, and
descriptive text.

See Also:
:   * [`MidiDevice.getDeviceInfo()`](MidiDevice.md#getDeviceInfo())

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Info(String name,
  String vendor,
  String description,
  String version)`

  Constructs a device info object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this info object,
  returning `true` if the objects are the same.

  `final String`

  `getDescription()`

  Obtains the description of the device.

  `final String`

  `getName()`

  Obtains the name of the device.

  `final String`

  `getVendor()`

  Obtains the name of the company who supplies the device.

  `final String`

  `getVersion()`

  Obtains the version of the device.

  `final int`

  `hashCode()`

  Returns a hash code value for this info object.

  `final String`

  `toString()`

  Returns a string representation of the info object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Info

    protected Info([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") vendor,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    Constructs a device info object.

    Parameters:
    :   `name` - the name of the device
    :   `vendor` - the name of the company who provides the device
    :   `description` - a description of the device
    :   `version` - version information for the device
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this info object,
    returning `true` if the objects are the same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this info
        object; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this info object.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this info object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### getName

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Obtains the name of the device.

    Returns:
    :   a string containing the device's name
  + ### getVendor

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Obtains the name of the company who supplies the device.

    Returns:
    :   device the vendor's name
  + ### getDescription

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Obtains the description of the device.

    Returns:
    :   a description of the device
  + ### getVersion

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Obtains the version of the device.

    Returns:
    :   textual version information for the device
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the info object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the info object