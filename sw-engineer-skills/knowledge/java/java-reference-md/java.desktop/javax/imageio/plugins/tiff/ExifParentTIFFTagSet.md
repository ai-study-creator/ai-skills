Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class ExifParentTIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.ExifParentTIFFTagSet

---

public final class ExifParentTIFFTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class containing the TIFF tags used to reference the Exif and GPS IFDs.
This tag set should be added to the root tag set by means of the
[`TIFFImageReadParam.addAllowedTagSet`](TIFFImageReadParam.md#addAllowedTagSet(javax.imageio.plugins.tiff.TIFFTagSet)) method if Exif
support is desired.

Since:
:   9

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `TAG_EXIF_IFD_POINTER`

  Tag pointing to the Exif IFD (type LONG).

  `static final int`

  `TAG_GPS_INFO_IFD_POINTER`

  Tag pointing to a GPS info IFD (type LONG).
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ExifParentTIFFTagSet`

  `getInstance()`

  Returns a shared instance of an `ExifParentTIFFTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_EXIF\_IFD\_POINTER

    public static final int TAG\_EXIF\_IFD\_POINTER

    Tag pointing to the Exif IFD (type LONG).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifParentTIFFTagSet.TAG_EXIF_IFD_POINTER)
  + ### TAG\_GPS\_INFO\_IFD\_POINTER

    public static final int TAG\_GPS\_INFO\_IFD\_POINTER

    Tag pointing to a GPS info IFD (type LONG).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifParentTIFFTagSet.TAG_GPS_INFO_IFD_POINTER)
* ## Method Details

  + ### getInstance

    public static [ExifParentTIFFTagSet](ExifParentTIFFTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of an `ExifParentTIFFTagSet`.

    Returns:
    :   an `ExifParentTIFFTagSet` instance.