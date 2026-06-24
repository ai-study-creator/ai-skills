Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class ExifInteroperabilityTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.ExifInteroperabilityTagSet

---

public final class ExifInteroperabilityTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the tags found in an Exif Interoperability IFD.

Since:
:   9

See Also:
:   * [`ExifTIFFTagSet`](ExifTIFFTagSet.md "class in javax.imageio.plugins.tiff")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `INTEROPERABILITY_INDEX_R98`

  A value to be used with the "InteroperabilityIndex" tag.

  `static final String`

  `INTEROPERABILITY_INDEX_THM`

  A value to be used with the "InteroperabilityIndex" tag.

  `static final int`

  `TAG_INTEROPERABILITY_INDEX`

  A tag indicating the identification of the Interoperability rule
  (type ASCII).
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ExifInteroperabilityTagSet`

  `getInstance()`

  Returns the shared instance of
  `ExifInteroperabilityTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_INTEROPERABILITY\_INDEX

    public static final int TAG\_INTEROPERABILITY\_INDEX

    A tag indicating the identification of the Interoperability rule
    (type ASCII).

    See Also:
    :   - [`INTEROPERABILITY_INDEX_R98`](#INTEROPERABILITY_INDEX_R98)
        - [`INTEROPERABILITY_INDEX_THM`](#INTEROPERABILITY_INDEX_THM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifInteroperabilityTagSet.TAG_INTEROPERABILITY_INDEX)
  + ### INTEROPERABILITY\_INDEX\_R98

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INTEROPERABILITY\_INDEX\_R98

    A value to be used with the "InteroperabilityIndex" tag. Indicates
    a file conforming to the R98 file specification of Recommended Exif
    Interoperability Rules (ExifR98) or to the DCF basic file stipulated
    by the Design Rule for Camera File System (type ASCII).

    See Also:
    :   - [`TAG_INTEROPERABILITY_INDEX`](#TAG_INTEROPERABILITY_INDEX)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifInteroperabilityTagSet.INTEROPERABILITY_INDEX_R98)
  + ### INTEROPERABILITY\_INDEX\_THM

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") INTEROPERABILITY\_INDEX\_THM

    A value to be used with the "InteroperabilityIndex" tag. Indicates
    a file conforming to the DCF thumbnail file stipulated by the Design
    rule for Camera File System (type ASCII).

    See Also:
    :   - [`TAG_INTEROPERABILITY_INDEX`](#TAG_INTEROPERABILITY_INDEX)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifInteroperabilityTagSet.INTEROPERABILITY_INDEX_THM)
* ## Method Details

  + ### getInstance

    public static [ExifInteroperabilityTagSet](ExifInteroperabilityTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns the shared instance of
    `ExifInteroperabilityTagSet`.

    Returns:
    :   the `ExifInteroperabilityTagSet` instance.