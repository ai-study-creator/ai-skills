Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioFormat.Encoding

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.AudioFormat.Encoding

Enclosing class:
:   `AudioFormat`

---

public static class AudioFormat.Encoding
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `Encoding` class names the specific type of data representation
used for an audio stream. The encoding includes aspects of the sound
format other than the number of channels, sample rate, sample size, frame
rate, frame size, and byte order.

One ubiquitous type of audio encoding is pulse-code modulation (PCM),
which is simply a linear (proportional) representation of the sound
waveform. With PCM, the number stored in each sample is proportional to
the instantaneous amplitude of the sound pressure at that point in time.
The numbers may be signed or unsigned integers or floats. Besides PCM,
other encodings include mu-law and a-law, which are nonlinear mappings of
the sound amplitude that are often used for recording speech.

You can use a predefined encoding by referring to one of the static
objects created by this class, such as `PCM_SIGNED` or
`PCM_UNSIGNED`. Service providers can create new encodings, such as
compressed audio formats, and make these available through the
[`AudioSystem`](AudioSystem.md "class in javax.sound.sampled") class.

The `Encoding` class is static, so that all `AudioFormat`
objects that have the same encoding will refer to the same object (rather
than different instances of the same class). This allows matches to be
made by checking that two format's encodings are equal.

Since:
:   1.3

See Also:
:   * [`AudioFormat`](AudioFormat.md "class in javax.sound.sampled")
    * [`FormatConversionProvider`](spi/FormatConversionProvider.md "class in javax.sound.sampled.spi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AudioFormat.Encoding`

  `ALAW`

  Specifies a-law encoded data.

  `static final AudioFormat.Encoding`

  `PCM_FLOAT`

  Specifies floating-point PCM data.

  `static final AudioFormat.Encoding`

  `PCM_SIGNED`

  Specifies signed, linear PCM data.

  `static final AudioFormat.Encoding`

  `PCM_UNSIGNED`

  Specifies unsigned, linear PCM data.

  `static final AudioFormat.Encoding`

  `ULAW`

  Specifies u-law encoded data.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Encoding(String name)`

  Constructs a new encoding.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this encoding,
  returning `true` if the objects are equal.

  `final int`

  `hashCode()`

  Returns a hash code value for this encoding.

  `final String`

  `toString()`

  Returns encoding's name as the string representation of the encoding.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### PCM\_SIGNED

    public static final [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") PCM\_SIGNED

    Specifies signed, linear PCM data.
  + ### PCM\_UNSIGNED

    public static final [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") PCM\_UNSIGNED

    Specifies unsigned, linear PCM data.
  + ### PCM\_FLOAT

    public static final [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") PCM\_FLOAT

    Specifies floating-point PCM data.

    Since:
    :   1.7
  + ### ULAW

    public static final [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") ULAW

    Specifies u-law encoded data.
  + ### ALAW

    public static final [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled") ALAW

    Specifies a-law encoded data.
* ## Constructor Details

  + ### Encoding

    public Encoding([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new encoding.

    Parameters:
    :   `name` - the name of the new type of encoding
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this encoding,
    returning `true` if the objects are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this
        encoding; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this encoding.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this encoding

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns encoding's name as the string representation of the encoding.
    For the predefined encodings, the name is similar to the encoding's
    variable (field) name. For example, `PCM_SIGNED.toString()`
    returns the name "PCM\_SIGNED".

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the encoding