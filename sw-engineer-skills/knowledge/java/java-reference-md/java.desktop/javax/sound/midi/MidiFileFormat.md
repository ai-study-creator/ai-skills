Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MidiFileFormat

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.midi.MidiFileFormat

---

public class MidiFileFormat
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `MidiFileFormat` object encapsulates a MIDI file's type, as well as
its length and timing information.

A `MidiFileFormat` object can include a set of properties. A property
is a pair of key and value: the key is of type `String`, the associated
property value is an arbitrary object. Properties specify additional
informational meta data (like a author, or copyright). Properties are
optional information, and file reader and file writer implementations are not
required to provide or recognize properties.

The following table lists some common properties that should be used in
implementations:

MIDI File Format Properties

| Property key Value type Description | | |
| --- | --- | --- |
| "author" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") name of the author of this file|  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "title" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") title of this file|  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "copyright" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") copyright message|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | "date" [`Date`](../../../../java.base/java/util/Date.md "class in java.util") date of the recording or release|  |  |  | | --- | --- | --- | | "comment" [`String`](../../../../java.base/java/lang/String.md "class in java.lang") an arbitrary text | | | | | | | | | | | | | | |

See Also:
:   * [`MidiSystem.getMidiFileFormat(java.io.File)`](MidiSystem.md#getMidiFileFormat(java.io.File))
    * [`Sequencer.setSequence(java.io.InputStream stream)`](Sequencer.md#setSequence(java.io.InputStream))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `byteLength`

  The length of the MIDI file in bytes.

  `protected float`

  `divisionType`

  The division type of the MIDI file.

  `protected long`

  `microsecondLength`

  The duration of the MIDI file in microseconds.

  `protected int`

  `resolution`

  The timing resolution of the MIDI file.

  `protected int`

  `type`

  The type of MIDI file.

  `static final int`

  `UNKNOWN_LENGTH`

  Represents unknown length.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MidiFileFormat(int type,
  float divisionType,
  int resolution,
  int bytes,
  long microseconds)`

  Constructs a `MidiFileFormat`.

  `MidiFileFormat(int type,
  float divisionType,
  int resolution,
  int bytes,
  long microseconds,
  Map<String,Object> properties)`

  Construct a `MidiFileFormat` with a set of properties.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getByteLength()`

  Obtains the length of the MIDI file, expressed in 8-bit bytes.

  `float`

  `getDivisionType()`

  Obtains the timing division type for the MIDI file.

  `long`

  `getMicrosecondLength()`

  Obtains the length of the MIDI file, expressed in microseconds.

  `Object`

  `getProperty(String key)`

  Obtain the property value specified by the key.

  `int`

  `getResolution()`

  Obtains the timing resolution for the MIDI file.

  `int`

  `getType()`

  Obtains the MIDI file type.

  `Map<String,Object>`

  `properties()`

  Obtain an unmodifiable map of properties.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### UNKNOWN\_LENGTH

    public static final int UNKNOWN\_LENGTH

    Represents unknown length.

    See Also:
    :   - [`getByteLength()`](#getByteLength())
        - [`getMicrosecondLength()`](#getMicrosecondLength())
        - [Constant Field Values](../../../../constant-values.md#javax.sound.midi.MidiFileFormat.UNKNOWN_LENGTH)
  + ### type

    protected int type

    The type of MIDI file.
  + ### divisionType

    protected float divisionType

    The division type of the MIDI file.

    See Also:
    :   - [`Sequence.PPQ`](Sequence.md#PPQ)
        - [`Sequence.SMPTE_24`](Sequence.md#SMPTE_24)
        - [`Sequence.SMPTE_25`](Sequence.md#SMPTE_25)
        - [`Sequence.SMPTE_30DROP`](Sequence.md#SMPTE_30DROP)
        - [`Sequence.SMPTE_30`](Sequence.md#SMPTE_30)
  + ### resolution

    protected int resolution

    The timing resolution of the MIDI file.
  + ### byteLength

    protected int byteLength

    The length of the MIDI file in bytes.
  + ### microsecondLength

    protected long microsecondLength

    The duration of the MIDI file in microseconds.
* ## Constructor Details

  + ### MidiFileFormat

    public MidiFileFormat(int type,
    float divisionType,
    int resolution,
    int bytes,
    long microseconds)

    Constructs a `MidiFileFormat`.

    Parameters:
    :   `type` - the MIDI file type (0, 1, or 2)
    :   `divisionType` - the timing division type (PPQ or one of the SMPTE
        types)
    :   `resolution` - the timing resolution
    :   `bytes` - the length of the MIDI file in bytes, or
        [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH) if not known
    :   `microseconds` - the duration of the file in microseconds, or
        [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH) if not known

    See Also:
    :   - [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH)
        - [`Sequence.PPQ`](Sequence.md#PPQ)
        - [`Sequence.SMPTE_24`](Sequence.md#SMPTE_24)
        - [`Sequence.SMPTE_25`](Sequence.md#SMPTE_25)
        - [`Sequence.SMPTE_30DROP`](Sequence.md#SMPTE_30DROP)
        - [`Sequence.SMPTE_30`](Sequence.md#SMPTE_30)
  + ### MidiFileFormat

    public MidiFileFormat(int type,
    float divisionType,
    int resolution,
    int bytes,
    long microseconds,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> properties)

    Construct a `MidiFileFormat` with a set of properties.

    Parameters:
    :   `type` - the MIDI file type (0, 1, or 2)
    :   `divisionType` - the timing division type (PPQ or one of the SMPTE
        types)
    :   `resolution` - the timing resolution
    :   `bytes` - the length of the MIDI file in bytes, or
        `UNKNOWN_LENGTH` if not known
    :   `microseconds` - the duration of the file in microseconds, or
        `UNKNOWN_LENGTH` if not known
    :   `properties` - a `Map<String,Object>` object with properties

    Since:
    :   1.5

    See Also:
    :   - [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH)
        - [`Sequence.PPQ`](Sequence.md#PPQ)
        - [`Sequence.SMPTE_24`](Sequence.md#SMPTE_24)
        - [`Sequence.SMPTE_25`](Sequence.md#SMPTE_25)
        - [`Sequence.SMPTE_30DROP`](Sequence.md#SMPTE_30DROP)
        - [`Sequence.SMPTE_30`](Sequence.md#SMPTE_30)
* ## Method Details

  + ### getType

    public int getType()

    Obtains the MIDI file type.

    Returns:
    :   the file's type (0, 1, or 2)
  + ### getDivisionType

    public float getDivisionType()

    Obtains the timing division type for the MIDI file.

    Returns:
    :   the division type (PPQ or one of the SMPTE types)

    See Also:
    :   - [`Sequence(float, int)`](Sequence.md#%3Cinit%3E(float,int))
        - [`Sequence.PPQ`](Sequence.md#PPQ)
        - [`Sequence.SMPTE_24`](Sequence.md#SMPTE_24)
        - [`Sequence.SMPTE_25`](Sequence.md#SMPTE_25)
        - [`Sequence.SMPTE_30DROP`](Sequence.md#SMPTE_30DROP)
        - [`Sequence.SMPTE_30`](Sequence.md#SMPTE_30)
        - [`Sequence.getDivisionType()`](Sequence.md#getDivisionType())
  + ### getResolution

    public int getResolution()

    Obtains the timing resolution for the MIDI file. If the division type is
    PPQ, the resolution is specified in ticks per beat. For SMTPE timing, the
    resolution is specified in ticks per frame.

    Returns:
    :   the number of ticks per beat (PPQ) or per frame (SMPTE)

    See Also:
    :   - [`getDivisionType()`](#getDivisionType())
        - [`Sequence.getResolution()`](Sequence.md#getResolution())
  + ### getByteLength

    public int getByteLength()

    Obtains the length of the MIDI file, expressed in 8-bit bytes.

    Returns:
    :   the number of bytes in the file, or `UNKNOWN_LENGTH` if not
        known

    See Also:
    :   - [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH)
  + ### getMicrosecondLength

    public long getMicrosecondLength()

    Obtains the length of the MIDI file, expressed in microseconds.

    Returns:
    :   the file's duration in microseconds, or `UNKNOWN_LENGTH` if
        not known

    See Also:
    :   - [`Sequence.getMicrosecondLength()`](Sequence.md#getMicrosecondLength())
        - [`getByteLength()`](#getByteLength())
        - [`UNKNOWN_LENGTH`](#UNKNOWN_LENGTH)
  + ### properties

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> properties()

    Obtain an unmodifiable map of properties. The concept of properties is
    further explained in the [`class description`](MidiFileFormat.md "class in javax.sound.midi").

    Returns:
    :   a `Map<String,Object>` object containing all properties. If
        no properties are recognized, an empty map is returned.

    Since:
    :   1.5

    See Also:
    :   - [`getProperty(String)`](#getProperty(java.lang.String))
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") key)

    Obtain the property value specified by the key. The concept of properties
    is further explained in the [`class description`](MidiFileFormat.md "class in javax.sound.midi").

    If the specified property is not defined for a particular file format,
    this method returns `null`.

    Parameters:
    :   `key` - the key of the desired property

    Returns:
    :   the value of the property with the specified key, or `null`
        if the property does not exist

    Since:
    :   1.5

    See Also:
    :   - [`properties()`](#properties())