Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class LineEvent.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.LineEvent.Type

Enclosing class:
:   `LineEvent`

---

public static class LineEvent.Type
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The LineEvent.Type inner class identifies what kind of event occurred on
a line. Static instances are provided for the common types (OPEN, CLOSE,
START, and STOP).

See Also:
:   * [`LineEvent.getType()`](LineEvent.md#getType())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final LineEvent.Type`

  `CLOSE`

  A type of event that is sent when a line closes, freeing the system
  resources it had obtained when it was opened.

  `static final LineEvent.Type`

  `OPEN`

  A type of event that is sent when a line opens, reserving system
  resources for itself.

  `static final LineEvent.Type`

  `START`

  A type of event that is sent when a line begins to engage in active
  input or output of audio data in response to a
  [`start`](DataLine.md#start()) request.

  `static final LineEvent.Type`

  `STOP`

  A type of event that is sent when a line ceases active input or
  output of audio data in response to a [`stop`](DataLine.md#stop())
  request, or because the end of media has been reached.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Type(String name)`

  Constructs a new event type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this event type,
  returning `true` if the objects are the same.

  `final int`

  `hashCode()`

  Returns a hash code value for this event type.

  `String`

  `toString()`

  Returns type's name as the string representation of the event type.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OPEN

    public static final [LineEvent.Type](LineEvent.Type.md "class in javax.sound.sampled") OPEN

    A type of event that is sent when a line opens, reserving system
    resources for itself.

    See Also:
    :   - [`CLOSE`](#CLOSE)
        - [`Line.open()`](Line.md#open())
  + ### CLOSE

    public static final [LineEvent.Type](LineEvent.Type.md "class in javax.sound.sampled") CLOSE

    A type of event that is sent when a line closes, freeing the system
    resources it had obtained when it was opened.

    See Also:
    :   - [`OPEN`](#OPEN)
        - [`Line.close()`](Line.md#close())
  + ### START

    public static final [LineEvent.Type](LineEvent.Type.md "class in javax.sound.sampled") START

    A type of event that is sent when a line begins to engage in active
    input or output of audio data in response to a
    [`start`](DataLine.md#start()) request.

    See Also:
    :   - [`STOP`](#STOP)
        - [`DataLine.start()`](DataLine.md#start())
  + ### STOP

    public static final [LineEvent.Type](LineEvent.Type.md "class in javax.sound.sampled") STOP

    A type of event that is sent when a line ceases active input or
    output of audio data in response to a [`stop`](DataLine.md#stop())
    request, or because the end of media has been reached.

    See Also:
    :   - [`START`](#START)
        - [`DataLine.stop()`](DataLine.md#stop())
* ## Constructor Details

  + ### Type

    protected Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new event type.

    Parameters:
    :   `name` - name of the type
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this event type,
    returning `true` if the objects are the same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this event
        type; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this event type.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this event type

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns type's name as the string representation of the event type.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the event type