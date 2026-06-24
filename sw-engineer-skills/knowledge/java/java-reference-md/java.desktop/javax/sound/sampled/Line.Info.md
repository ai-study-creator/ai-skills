Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class Line.Info

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.Line.Info

Direct Known Subclasses:
:   `DataLine.Info`, `Port.Info`

Enclosing interface:
:   `Line`

---

public static class Line.Info
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `Line.Info` object contains information about a line. The only
information provided by `Line.Info` itself is the Java class of the
line. A subclass of `Line.Info` adds other kinds of information
about the line. This additional information depends on which `Line`
subinterface is implemented by the kind of line that the
`Line.Info` subclass describes.

A `Line.Info` can be retrieved using various methods of the
`Line`, `Mixer`, and `AudioSystem` interfaces. Other
such methods let you pass a `Line.Info` as an argument, to learn
whether lines matching the specified configuration are available and to
obtain them.

Since:
:   1.3

See Also:
:   * [`Line.getLineInfo()`](Line.md#getLineInfo())
    * [`Mixer.getSourceLineInfo()`](Mixer.md#getSourceLineInfo())
    * [`Mixer.getTargetLineInfo()`](Mixer.md#getTargetLineInfo())
    * [`Mixer.getLine(Line.Info)`](Mixer.md#getLine(javax.sound.sampled.Line.Info))
    * [`Mixer.getSourceLineInfo(Line.Info)`](Mixer.md#getSourceLineInfo(javax.sound.sampled.Line.Info))
    * [`Mixer.getTargetLineInfo(Line.Info)`](Mixer.md#getTargetLineInfo(javax.sound.sampled.Line.Info))
    * [`Mixer.isLineSupported(Line.Info)`](Mixer.md#isLineSupported(javax.sound.sampled.Line.Info))
    * [`AudioSystem.getLine(Line.Info)`](AudioSystem.md#getLine(javax.sound.sampled.Line.Info))
    * [`AudioSystem.getSourceLineInfo(Line.Info)`](AudioSystem.md#getSourceLineInfo(javax.sound.sampled.Line.Info))
    * [`AudioSystem.getTargetLineInfo(Line.Info)`](AudioSystem.md#getTargetLineInfo(javax.sound.sampled.Line.Info))
    * [`AudioSystem.isLineSupported(Line.Info)`](AudioSystem.md#isLineSupported(javax.sound.sampled.Line.Info))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Info(Class<?> lineClass)`

  Constructs an info object that describes a line of the specified
  class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getLineClass()`

  Obtains the class of the line that this `Line.Info` object
  describes.

  `boolean`

  `matches(Line.Info info)`

  Indicates whether the specified info object matches this one.

  `String`

  `toString()`

  Returns a string representation of the info object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Info

    public Info([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> lineClass)

    Constructs an info object that describes a line of the specified
    class. This constructor is typically used by an application to
    describe a desired line.

    Parameters:
    :   `lineClass` - the class of the line that the new
        `Line.Info` object describes
* ## Method Details

  + ### getLineClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getLineClass()

    Obtains the class of the line that this `Line.Info` object
    describes.

    Returns:
    :   the described line's class
  + ### matches

    public boolean matches([Line.Info](Line.Info.md "class in javax.sound.sampled") info)

    Indicates whether the specified info object matches this one. To
    match, the specified object must be identical to or a special case of
    this one. The specified info object must be either an instance of the
    same class as this one, or an instance of a sub-type of this one. In
    addition, the attributes of the specified object must be compatible
    with the capabilities of this one. Specifically, the routing
    configuration for the specified info object must be compatible with
    that of this one. Subclasses may add other criteria to determine
    whether the two objects match.

    Parameters:
    :   `info` - the info object which is being compared to this one

    Returns:
    :   `true` if the specified object matches this one,
        `false` otherwise
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the info object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the info object