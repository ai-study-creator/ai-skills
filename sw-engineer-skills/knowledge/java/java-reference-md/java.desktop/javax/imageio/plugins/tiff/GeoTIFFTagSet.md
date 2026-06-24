Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class GeoTIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.GeoTIFFTagSet

---

public final class GeoTIFFTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the tags found in a GeoTIFF IFD. GeoTIFF is a
standard for annotating georeferenced or geocoded raster imagery.
This class does *not* handle the *GeoKey*s referenced
from a *GeoKeyDirectoryTag* as those are not TIFF tags per se.

The definitions of the data types referenced by the field
definitions may be found in the [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") class.

Since:
:   9

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `TAG_GEO_ASCII_PARAMS`

  A tag used to store all ASCII-values *GeoKey*s.

  `static final int`

  `TAG_GEO_DOUBLE_PARAMS`

  A tag used to store all `double`-values *GeoKey*s.

  `static final int`

  `TAG_GEO_KEY_DIRECTORY`

  A tag used to store the *GeoKey* directory.

  `static final int`

  `TAG_MODEL_PIXEL_SCALE`

  A tag used to specify the size of raster pixel spacing in
  model space units.

  `static final int`

  `TAG_MODEL_TIE_POINT`

  A tag used to store raster-to-model tiepoint pairs.

  `static final int`

  `TAG_MODEL_TRANSFORMATION`

  A tag used to specify the transformation matrix between the raster
  space and the model space.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static GeoTIFFTagSet`

  `getInstance()`

  Returns a shared instance of a `GeoTIFFTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_MODEL\_PIXEL\_SCALE

    public static final int TAG\_MODEL\_PIXEL\_SCALE

    A tag used to specify the size of raster pixel spacing in
    model space units.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_MODEL_PIXEL_SCALE)
  + ### TAG\_MODEL\_TRANSFORMATION

    public static final int TAG\_MODEL\_TRANSFORMATION

    A tag used to specify the transformation matrix between the raster
    space and the model space.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_MODEL_TRANSFORMATION)
  + ### TAG\_MODEL\_TIE\_POINT

    public static final int TAG\_MODEL\_TIE\_POINT

    A tag used to store raster-to-model tiepoint pairs.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_MODEL_TIE_POINT)
  + ### TAG\_GEO\_KEY\_DIRECTORY

    public static final int TAG\_GEO\_KEY\_DIRECTORY

    A tag used to store the *GeoKey* directory.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_GEO_KEY_DIRECTORY)
  + ### TAG\_GEO\_DOUBLE\_PARAMS

    public static final int TAG\_GEO\_DOUBLE\_PARAMS

    A tag used to store all `double`-values *GeoKey*s.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_GEO_DOUBLE_PARAMS)
  + ### TAG\_GEO\_ASCII\_PARAMS

    public static final int TAG\_GEO\_ASCII\_PARAMS

    A tag used to store all ASCII-values *GeoKey*s.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.GeoTIFFTagSet.TAG_GEO_ASCII_PARAMS)
* ## Method Details

  + ### getInstance

    public static [GeoTIFFTagSet](GeoTIFFTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of a `GeoTIFFTagSet`.

    Returns:
    :   a `GeoTIFFTagSet` instance.