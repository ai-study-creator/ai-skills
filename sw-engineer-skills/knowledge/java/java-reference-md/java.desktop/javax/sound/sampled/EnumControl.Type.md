Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class EnumControl.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Control.Type](Control.Type.md "class in javax.sound.sampled")

javax.sound.sampled.EnumControl.Type

Enclosing class:
:   `EnumControl`

---

public static class EnumControl.Type
extends [Control.Type](Control.Type.md "class in javax.sound.sampled")

An instance of the `EnumControl.Type` inner class identifies one
kind of enumerated control. Static instances are provided for the common
types.

Since:
:   1.3

See Also:
:   * [`EnumControl`](EnumControl.md "class in javax.sound.sampled")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final EnumControl.Type`

  `REVERB`

  Represents a control over a set of possible reverberation settings.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Type(String name)`

  Constructs a new enumerated control type.
* ## Method Summary

  ### Methods inherited from class javax.sound.sampled.[Control.Type](Control.Type.md "class in javax.sound.sampled")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### REVERB

    public static final [EnumControl.Type](EnumControl.Type.md "class in javax.sound.sampled") REVERB

    Represents a control over a set of possible reverberation settings.
    Each reverberation setting is described by an instance of the
    [`ReverbType`](ReverbType.md "class in javax.sound.sampled") class. (To access these settings, invoke
    [`EnumControl.getValues()`](EnumControl.md#getValues()) on an enumerated control of type
    `REVERB`.)
* ## Constructor Details

  + ### Type

    protected Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new enumerated control type.

    Parameters:
    :   `name` - the name of the new enumerated control type