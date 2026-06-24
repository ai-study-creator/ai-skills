Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class Mixer.Info

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.Mixer.Info

Enclosing interface:
:   `Mixer`

---

public static class Mixer.Info
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `Mixer.Info` class represents information about an audio mixer,
including the product's name, version, and vendor, along with a textual
description. This information may be retrieved through the
[`getMixerInfo`](Mixer.md#getMixerInfo()) method of the `Mixer`
interface.

Since:
:   1.3

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

  Constructs a mixer's info object, passing it the given textual
  information.
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

  Obtains the description of the mixer.

  `final String`

  `getName()`

  Obtains the name of the mixer.

  `final String`

  `getVendor()`

  Obtains the vendor of the mixer.

  `final String`

  `getVersion()`

  Obtains the version of the mixer.

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

    Constructs a mixer's info object, passing it the given textual
    information.

    Parameters:
    :   `name` - the name of the mixer
    :   `vendor` - the company who manufactures or creates the hardware
        or software mixer
    :   `description` - descriptive text about the mixer
    :   `version` - version information for the mixer
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

    Obtains the name of the mixer.

    Returns:
    :   a string that names the mixer
  + ### getVendor

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Obtains the vendor of the mixer.

    Returns:
    :   a string that names the mixer's vendor
  + ### getDescription

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Obtains the description of the mixer.

    Returns:
    :   a textual description of the mixer
  + ### getVersion

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Obtains the version of the mixer.

    Returns:
    :   textual version information for the mixer
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the info object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the info object