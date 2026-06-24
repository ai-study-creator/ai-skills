Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class FaxTIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.FaxTIFFTagSet

---

public final class FaxTIFFTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the extra tags found in a
[TIFF-F](https://tools.ietf.org/html/rfc2306.html) (RFC 2036) file.

Since:
:   9

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CLEAN_FAX_DATA_ERRORS_CORRECTED`

  A value to be used with the "CleanFaxData" tag.

  `static final int`

  `CLEAN_FAX_DATA_ERRORS_UNCORRECTED`

  A value to be used with the "CleanFaxData" tag.

  `static final int`

  `CLEAN_FAX_DATA_NO_ERRORS`

  A value to be used with the "CleanFaxData" tag.

  `static final int`

  `TAG_BAD_FAX_LINES`

  Tag indicating the number of bad fax lines (type SHORT or LONG).

  `static final int`

  `TAG_CLEAN_FAX_DATA`

  Tag indicating the number of lines of clean fax data (type
  SHORT).

  `static final int`

  `TAG_CONSECUTIVE_BAD_LINES`

  Tag indicating the number of consecutive bad lines (type
  SHORT or LONG).
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FaxTIFFTagSet`

  `getInstance()`

  Returns a shared instance of a `FaxTIFFTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_BAD\_FAX\_LINES

    public static final int TAG\_BAD\_FAX\_LINES

    Tag indicating the number of bad fax lines (type SHORT or LONG).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.TAG_BAD_FAX_LINES)
  + ### TAG\_CLEAN\_FAX\_DATA

    public static final int TAG\_CLEAN\_FAX\_DATA

    Tag indicating the number of lines of clean fax data (type
    SHORT).

    See Also:
    :   - [`CLEAN_FAX_DATA_NO_ERRORS`](#CLEAN_FAX_DATA_NO_ERRORS)
        - [`CLEAN_FAX_DATA_ERRORS_CORRECTED`](#CLEAN_FAX_DATA_ERRORS_CORRECTED)
        - [`CLEAN_FAX_DATA_ERRORS_UNCORRECTED`](#CLEAN_FAX_DATA_ERRORS_UNCORRECTED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.TAG_CLEAN_FAX_DATA)
  + ### CLEAN\_FAX\_DATA\_NO\_ERRORS

    public static final int CLEAN\_FAX\_DATA\_NO\_ERRORS

    A value to be used with the "CleanFaxData" tag.

    See Also:
    :   - [`TAG_CLEAN_FAX_DATA`](#TAG_CLEAN_FAX_DATA)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.CLEAN_FAX_DATA_NO_ERRORS)
  + ### CLEAN\_FAX\_DATA\_ERRORS\_CORRECTED

    public static final int CLEAN\_FAX\_DATA\_ERRORS\_CORRECTED

    A value to be used with the "CleanFaxData" tag.

    See Also:
    :   - [`TAG_CLEAN_FAX_DATA`](#TAG_CLEAN_FAX_DATA)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.CLEAN_FAX_DATA_ERRORS_CORRECTED)
  + ### CLEAN\_FAX\_DATA\_ERRORS\_UNCORRECTED

    public static final int CLEAN\_FAX\_DATA\_ERRORS\_UNCORRECTED

    A value to be used with the "CleanFaxData" tag.

    See Also:
    :   - [`TAG_CLEAN_FAX_DATA`](#TAG_CLEAN_FAX_DATA)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.CLEAN_FAX_DATA_ERRORS_UNCORRECTED)
  + ### TAG\_CONSECUTIVE\_BAD\_LINES

    public static final int TAG\_CONSECUTIVE\_BAD\_LINES

    Tag indicating the number of consecutive bad lines (type
    SHORT or LONG).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.FaxTIFFTagSet.TAG_CONSECUTIVE_BAD_LINES)
* ## Method Details

  + ### getInstance

    public static [FaxTIFFTagSet](FaxTIFFTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of a `FaxTIFFTagSet`.

    Returns:
    :   a `FaxTIFFTagSet` instance.