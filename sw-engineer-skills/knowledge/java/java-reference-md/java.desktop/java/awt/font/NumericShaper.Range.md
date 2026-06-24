Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Enum Class NumericShaper.Range

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font")>

java.awt.font.NumericShaper.Range

All Implemented Interfaces:
:   `Serializable`, `Comparable<NumericShaper.Range>`, `Constable`

Enclosing class:
:   `NumericShaper`

---

public static enum NumericShaper.Range
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font")>

A `NumericShaper.Range` represents a Unicode range of a
script having its own decimal digits. For example, the [`THAI`](#THAI) range has the Thai digits, THAI DIGIT
ZERO (U+0E50) to THAI DIGIT NINE (U+0E59).

The `Range` enum replaces the traditional bit
mask-based values (e.g., [`NumericShaper.ARABIC`](NumericShaper.md#ARABIC)), and
supports more Unicode ranges than the bit mask-based ones. For
example, the following code using the bit mask:
> ```
>  NumericShaper.getContextualShaper(NumericShaper.ARABIC |
>                                      NumericShaper.TAMIL,
>                                    NumericShaper.EUROPEAN);
> ```

can be written using this enum as:
> ```
>  NumericShaper.getContextualShaper(EnumSet.of(
>                                      NumericShaper.Range.ARABIC,
>                                      NumericShaper.Range.TAMIL),
>                                    NumericShaper.Range.EUROPEAN);
> ```

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ARABIC`

  The Arabic range with the Arabic-Indic digits.

  `BALINESE`

  The Balinese range with the Balinese digits.

  `BENGALI`

  The Bengali range with the Bengali digits.

  `CHAM`

  The Cham range with the Cham digits.

  `DEVANAGARI`

  The Devanagari range with the Devanagari digits.

  `EASTERN_ARABIC`

  The Arabic range with the Eastern Arabic-Indic digits.

  `ETHIOPIC`

  The Ethiopic range with the Ethiopic digits.

  `EUROPEAN`

  The Latin (European) range with the Latin (ASCII) digits.

  `GUJARATI`

  The Gujarati range with the Gujarati digits.

  `GURMUKHI`

  The Gurmukhi range with the Gurmukhi digits.

  `JAVANESE`

  The Javanese range with the Javanese digits.

  `KANNADA`

  The Kannada range with the Kannada digits.

  `KAYAH_LI`

  The Kayah Li range with the Kayah Li digits.

  `KHMER`

  The Khmer range with the Khmer digits.

  `LAO`

  The Lao range with the Lao digits.

  `LEPCHA`

  The Lepcha range with the Lepcha digits.

  `LIMBU`

  The Limbu range with the Limbu digits.

  `MALAYALAM`

  The Malayalam range with the Malayalam digits.

  `MEETEI_MAYEK`

  The Meetei Mayek range with the Meetei Mayek digits.

  `MONGOLIAN`

  The Mongolian range with the Mongolian digits.

  `MYANMAR`

  The Myanmar range with the Myanmar digits.

  `MYANMAR_SHAN`

  The Myanmar range with the Myanmar Shan digits.

  `MYANMAR_TAI_LAING`

  The Myanmar Extended-B range with the Myanmar Tai Laing digits.

  `NEW_TAI_LUE`

  The New Tai Lue range with the New Tai Lue digits.

  `NKO`

  The N'Ko range with the N'Ko digits.

  `OL_CHIKI`

  The Ol Chiki range with the Ol Chiki digits.

  `ORIYA`

  The Oriya range with the Oriya digits.

  `SAURASHTRA`

  The Saurashtra range with the Saurashtra digits.

  `SINHALA`

  The Sinhala range with the Sinhala digits.

  `SUNDANESE`

  The Sundanese range with the Sundanese digits.

  `TAI_THAM_HORA`

  The Tai Tham Hora range with the Tai Tham Hora digits.

  `TAI_THAM_THAM`

  The Tai Tham Tham range with the Tai Tham Tham digits.

  `TAMIL`

  The Tamil range with the Tamil digits.

  `TELUGU`

  The Telugu range with the Telugu digits.

  `THAI`

  The Thai range with the Thai digits.

  `TIBETAN`

  The Tibetan range with the Tibetan digits.

  `VAI`

  The Vai range with the Vai digits.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static NumericShaper.Range`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static NumericShaper.Range[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### EUROPEAN

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") EUROPEAN

    The Latin (European) range with the Latin (ASCII) digits.
  + ### ARABIC

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") ARABIC

    The Arabic range with the Arabic-Indic digits.
  + ### EASTERN\_ARABIC

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") EASTERN\_ARABIC

    The Arabic range with the Eastern Arabic-Indic digits.
  + ### DEVANAGARI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") DEVANAGARI

    The Devanagari range with the Devanagari digits.
  + ### BENGALI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") BENGALI

    The Bengali range with the Bengali digits.
  + ### GURMUKHI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") GURMUKHI

    The Gurmukhi range with the Gurmukhi digits.
  + ### GUJARATI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") GUJARATI

    The Gujarati range with the Gujarati digits.
  + ### ORIYA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") ORIYA

    The Oriya range with the Oriya digits.
  + ### TAMIL

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") TAMIL

    The Tamil range with the Tamil digits.
  + ### TELUGU

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") TELUGU

    The Telugu range with the Telugu digits.
  + ### KANNADA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") KANNADA

    The Kannada range with the Kannada digits.
  + ### MALAYALAM

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MALAYALAM

    The Malayalam range with the Malayalam digits.
  + ### THAI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") THAI

    The Thai range with the Thai digits.
  + ### LAO

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") LAO

    The Lao range with the Lao digits.
  + ### TIBETAN

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") TIBETAN

    The Tibetan range with the Tibetan digits.
  + ### MYANMAR

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MYANMAR

    The Myanmar range with the Myanmar digits.
  + ### ETHIOPIC

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") ETHIOPIC

    The Ethiopic range with the Ethiopic digits. Ethiopic
    does not have a decimal digit 0 so Latin (European) 0 is
    used.
  + ### KHMER

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") KHMER

    The Khmer range with the Khmer digits.
  + ### MONGOLIAN

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MONGOLIAN

    The Mongolian range with the Mongolian digits.
  + ### NKO

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") NKO

    The N'Ko range with the N'Ko digits.
  + ### MYANMAR\_SHAN

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MYANMAR\_SHAN

    The Myanmar range with the Myanmar Shan digits.
  + ### LIMBU

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") LIMBU

    The Limbu range with the Limbu digits.
  + ### NEW\_TAI\_LUE

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") NEW\_TAI\_LUE

    The New Tai Lue range with the New Tai Lue digits.
  + ### BALINESE

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") BALINESE

    The Balinese range with the Balinese digits.
  + ### SUNDANESE

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") SUNDANESE

    The Sundanese range with the Sundanese digits.
  + ### LEPCHA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") LEPCHA

    The Lepcha range with the Lepcha digits.
  + ### OL\_CHIKI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") OL\_CHIKI

    The Ol Chiki range with the Ol Chiki digits.
  + ### VAI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") VAI

    The Vai range with the Vai digits.
  + ### SAURASHTRA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") SAURASHTRA

    The Saurashtra range with the Saurashtra digits.
  + ### KAYAH\_LI

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") KAYAH\_LI

    The Kayah Li range with the Kayah Li digits.
  + ### CHAM

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") CHAM

    The Cham range with the Cham digits.
  + ### TAI\_THAM\_HORA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") TAI\_THAM\_HORA

    The Tai Tham Hora range with the Tai Tham Hora digits.
  + ### TAI\_THAM\_THAM

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") TAI\_THAM\_THAM

    The Tai Tham Tham range with the Tai Tham Tham digits.
  + ### JAVANESE

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") JAVANESE

    The Javanese range with the Javanese digits.
  + ### MEETEI\_MAYEK

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MEETEI\_MAYEK

    The Meetei Mayek range with the Meetei Mayek digits.
  + ### SINHALA

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") SINHALA

    The Sinhala range with the Sinhala digits.

    Since:
    :   9
  + ### MYANMAR\_TAI\_LAING

    public static final [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") MYANMAR\_TAI\_LAING

    The Myanmar Extended-B range with the Myanmar Tai Laing digits.

    Since:
    :   9
* ## Method Details

  + ### values

    public static [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null