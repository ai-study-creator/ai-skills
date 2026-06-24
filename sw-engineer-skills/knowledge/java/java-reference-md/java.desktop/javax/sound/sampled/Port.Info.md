Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class Port.Info

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Line.Info](Line.Info.md "class in javax.sound.sampled")

javax.sound.sampled.Port.Info

Enclosing interface:
:   `Port`

---

public static class Port.Info
extends [Line.Info](Line.Info.md "class in javax.sound.sampled")

The `Port.Info` class extends `Line.Info` with additional
information specific to ports, including the port's name and whether it
is a source or a target for its mixer. By definition, a port acts as
either a source or a target to its mixer, but not both. (Audio input
ports are sources; audio output ports are targets.)

To learn what ports are available, you can retrieve port info objects
through the [`getSourceLineInfo`](Mixer.md#getSourceLineInfo()) and
[`getTargetLineInfo`](Mixer.md#getTargetLineInfo()) methods of the
`Mixer` interface. Instances of the `Port.Info` class may
also be constructed and used to obtain lines matching the parameters
specified in the `Port.Info` object.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Port.Info`

  `COMPACT_DISC`

  A type of port that gets audio from a CD-ROM drive.

  `static final Port.Info`

  `HEADPHONE`

  A type of port that sends audio to a headphone jack.

  `static final Port.Info`

  `LINE_IN`

  A type of port that gets audio from a line-level audio input jack.

  `static final Port.Info`

  `LINE_OUT`

  A type of port that sends audio to a line-level audio output jack.

  `static final Port.Info`

  `MICROPHONE`

  A type of port that gets audio from a built-in microphone or a
  microphone jack.

  `static final Port.Info`

  `SPEAKER`

  A type of port that sends audio to a built-in speaker or a speaker
  jack.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Info(Class<?> lineClass,
  String name,
  boolean isSource)`

  Constructs a port's info object from the information given.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this info object,
  returning `true` if the objects are the same.

  `String`

  `getName()`

  Obtains the name of the port.

  `final int`

  `hashCode()`

  Returns a hash code value for this info object.

  `boolean`

  `isSource()`

  Indicates whether the port is a source or a target for its mixer.

  `boolean`

  `matches(Line.Info info)`

  Indicates whether this info object specified matches this one.

  `final String`

  `toString()`

  Returns a string representation of the info object.

  ### Methods inherited from class javax.sound.sampled.[Line.Info](Line.Info.md "class in javax.sound.sampled")

  `getLineClass`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MICROPHONE

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") MICROPHONE

    A type of port that gets audio from a built-in microphone or a
    microphone jack.
  + ### LINE\_IN

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") LINE\_IN

    A type of port that gets audio from a line-level audio input jack.
  + ### COMPACT\_DISC

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") COMPACT\_DISC

    A type of port that gets audio from a CD-ROM drive.
  + ### SPEAKER

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") SPEAKER

    A type of port that sends audio to a built-in speaker or a speaker
    jack.
  + ### HEADPHONE

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") HEADPHONE

    A type of port that sends audio to a headphone jack.
  + ### LINE\_OUT

    public static final [Port.Info](Port.Info.md "class in javax.sound.sampled") LINE\_OUT

    A type of port that sends audio to a line-level audio output jack.
* ## Constructor Details

  + ### Info

    public Info([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> lineClass,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean isSource)

    Constructs a port's info object from the information given. This
    constructor is typically used by an implementation of Java Sound to
    describe a supported line.

    Parameters:
    :   `lineClass` - the class of the port described by the info object
    :   `name` - the string that names the port
    :   `isSource` - `true` if the port is a source port (such as a
        microphone), `false` if the port is a target port (such
        as a speaker)
* ## Method Details

  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Obtains the name of the port.

    Returns:
    :   the string that names the port
  + ### isSource

    public boolean isSource()

    Indicates whether the port is a source or a target for its mixer.

    Returns:
    :   `true` if the port is a source port (such as a
        microphone), `false` if the port is a target port (such
        as a speaker)
  + ### matches

    public boolean matches([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Indicates whether this info object specified matches this one. To
    match, the match requirements of the superclass must be met and the
    types must be equal.

    Overrides:
    :   `matches` in class `Line.Info`

    Parameters:
    :   `info` - the info object for which the match is queried

    Returns:
    :   `true` if the specified object matches this one,
        `false` otherwise
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
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the info object.

    Overrides:
    :   `toString` in class `Line.Info`

    Returns:
    :   a string representation of the info object