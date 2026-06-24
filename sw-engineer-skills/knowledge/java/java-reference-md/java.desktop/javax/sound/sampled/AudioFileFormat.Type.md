Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioFileFormat.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.AudioFileFormat.Type

Enclosing class:
:   `AudioFileFormat`

---

public static class AudioFileFormat.Type
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An instance of the `Type` class represents one of the standard
types of audio file. Static instances are provided for the common types.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AudioFileFormat.Type`

  `AIFC`

  Specifies an AIFF-C file.

  `static final AudioFileFormat.Type`

  `AIFF`

  Specifies an AIFF file.

  `static final AudioFileFormat.Type`

  `AU`

  Specifies an AU file.

  `static final AudioFileFormat.Type`

  `SND`

  Specifies a SND file.

  `static final AudioFileFormat.Type`

  `WAVE`

  Specifies a WAVE file.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Type(String name,
  String extension)`

  Constructs a file type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this file type,
  returning `true` if the objects are equal.

  `String`

  `getExtension()`

  Obtains the common file name extension for this file type.

  `final int`

  `hashCode()`

  Returns a hash code value for this file type.

  `final String`

  `toString()`

  Returns type's name as the string representation of the file type.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### WAVE

    public static final [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") WAVE

    Specifies a WAVE file.
  + ### AU

    public static final [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") AU

    Specifies an AU file.
  + ### AIFF

    public static final [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") AIFF

    Specifies an AIFF file.
  + ### AIFC

    public static final [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") AIFC

    Specifies an AIFF-C file.
  + ### SND

    public static final [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled") SND

    Specifies a SND file.
* ## Constructor Details

  + ### Type

    public Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") extension)

    Constructs a file type.

    Parameters:
    :   `name` - the string that names the file type
    :   `extension` - the string that commonly marks the file type
        without leading dot
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this file type,
    returning `true` if the objects are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this file
        type; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this file type.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this file type

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns type's name as the string representation of the file type.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the file type
  + ### getExtension

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getExtension()

    Obtains the common file name extension for this file type.

    Returns:
    :   file type extension