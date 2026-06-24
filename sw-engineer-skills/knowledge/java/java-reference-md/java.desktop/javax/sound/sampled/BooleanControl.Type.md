Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class BooleanControl.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Control.Type](Control.Type.md "class in javax.sound.sampled")

javax.sound.sampled.BooleanControl.Type

Enclosing class:
:   `BooleanControl`

---

public static class BooleanControl.Type
extends [Control.Type](Control.Type.md "class in javax.sound.sampled")

An instance of the `BooleanControl.Type` class identifies one kind
of boolean control. Static instances are provided for the common types.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final BooleanControl.Type`

  `APPLY_REVERB`

  Represents a control for whether reverberation is applied to a line.

  `static final BooleanControl.Type`

  `MUTE`

  Represents a control for the mute status of a line.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Type(String name)`

  Constructs a new boolean control type.
* ## Method Summary

  ### Methods inherited from class javax.sound.sampled.[Control.Type](Control.Type.md "class in javax.sound.sampled")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MUTE

    public static final [BooleanControl.Type](BooleanControl.Type.md "class in javax.sound.sampled") MUTE

    Represents a control for the mute status of a line. Note that mute
    status does not affect gain.
  + ### APPLY\_REVERB

    public static final [BooleanControl.Type](BooleanControl.Type.md "class in javax.sound.sampled") APPLY\_REVERB

    Represents a control for whether reverberation is applied to a line.
    Note that the status of this control not affect the reverberation
    settings for a line, but does affect whether these settings are used.
* ## Constructor Details

  + ### Type

    protected Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new boolean control type.

    Parameters:
    :   `name` - the name of the new boolean control type