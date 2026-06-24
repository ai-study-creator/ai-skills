Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class ExifGPSTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.ExifGPSTagSet

---

public final class ExifGPSTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the tags found in an Exif GPS Info IFD.

The definitions of the data types referenced by the field
definitions may be found in the [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") class.

Since:
:   9

See Also:
:   * [`ExifTIFFTagSet`](ExifTIFFTagSet.md "class in javax.imageio.plugins.tiff")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALTITUDE_REF_SEA_LEVEL`

  A value to be used with the "GPSAltitudeRef" tag.

  `static final int`

  `ALTITUDE_REF_SEA_LEVEL_REFERENCE`

  A value to be used with the "GPSAltitudeRef" tag.

  `static final String`

  `DEST_DISTANCE_REF_KILOMETERS`

  A value to be used with the "GPSDestDistanceRef" tag.

  `static final String`

  `DEST_DISTANCE_REF_KNOTS`

  A value to be used with the "GPSDestDistanceRef" tag.

  `static final String`

  `DEST_DISTANCE_REF_MILES`

  A value to be used with the "GPSDestDistanceRef" tag.

  `static final int`

  `DIFFERENTIAL_CORRECTION_APPLIED`

  A value to be used with the "GPSDifferential" tag.

  `static final int`

  `DIFFERENTIAL_CORRECTION_NONE`

  A value to be used with the "GPSDifferential" tag.

  `static final String`

  `DIRECTION_REF_MAGNETIC`

  A value to be used with the "GPSTrackRef", "GPSImgDirectionRef",
  and "GPSDestBearingRef" tags.

  `static final String`

  `DIRECTION_REF_TRUE`

  A value to be used with the "GPSTrackRef", "GPSImgDirectionRef",
  and "GPSDestBearingRef" tags.

  `static final String`

  `GPS_VERSION_2_2`

  A value to be used with the "GPSVersionID" tag to indicate GPS version
  2.2.

  `static final String`

  `LATITUDE_REF_NORTH`

  A value to be used with the "GPSLatitudeRef" and
  "GPSDestLatitudeRef" tags.

  `static final String`

  `LATITUDE_REF_SOUTH`

  A value to be used with the "GPSLatitudeRef" and
  "GPSDestLatitudeRef" tags.

  `static final String`

  `LONGITUDE_REF_EAST`

  A value to be used with the "GPSLongitudeRef" and
  "GPSDestLongitudeRef" tags.

  `static final String`

  `LONGITUDE_REF_WEST`

  A value to be used with the "GPSLongitudeRef" and
  "GPSDestLongitudeRef" tags.

  `static final String`

  `MEASURE_MODE_2D`

  A value to be used with the "GPSMeasureMode" tag.

  `static final String`

  `MEASURE_MODE_3D`

  A value to be used with the "GPSMeasureMode" tag.

  `static final String`

  `SPEED_REF_KILOMETERS_PER_HOUR`

  A value to be used with the "GPSSpeedRef" tag.

  `static final String`

  `SPEED_REF_KNOTS`

  A value to be used with the "GPSSpeedRef" tag.

  `static final String`

  `SPEED_REF_MILES_PER_HOUR`

  A value to be used with the "GPSSpeedRef" tag.

  `static final String`

  `STATUS_MEASUREMENT_IN_PROGRESS`

  A value to be used with the "GPSStatus" tag.

  `static final String`

  `STATUS_MEASUREMENT_INTEROPERABILITY`

  A value to be used with the "GPSStatus" tag.

  `static final int`

  `TAG_GPS_ALTITUDE`

  A tag indicating the Altitude (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_ALTITUDE_REF`

  A tag indicating the Altitude reference (type BYTE, count = 1);

  `static final int`

  `TAG_GPS_AREA_INFORMATION`

  A tag indicating the Name of GPS area (type UNDEFINED).

  `static final int`

  `TAG_GPS_DATE_STAMP`

  A tag indicating the GPS date (type ASCII, count 11).

  `static final int`

  `TAG_GPS_DEST_BEARING`

  A tag indicating the Bearing of destination (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_DEST_BEARING_REF`

  A tag indicating the Reference for bearing of destination (type ASCII,
  count = 2).

  `static final int`

  `TAG_GPS_DEST_DISTANCE`

  A tag indicating the Distance to destination (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_DEST_DISTANCE_REF`

  A tag indicating the Reference for distance to destination (type ASCII,
  count = 2).

  `static final int`

  `TAG_GPS_DEST_LATITUDE`

  A tag indicating the Latitude of destination (type RATIONAL, count = 3).

  `static final int`

  `TAG_GPS_DEST_LATITUDE_REF`

  A tag indicating the Reference for latitude of destination (type
  ASCII, count = 2).

  `static final int`

  `TAG_GPS_DEST_LONGITUDE`

  A tag indicating the Longitude of destination (type RATIONAL,
  count = 3).

  `static final int`

  `TAG_GPS_DEST_LONGITUDE_REF`

  A tag indicating the Reference for longitude of destination (type
  ASCII, count = 2).

  `static final int`

  `TAG_GPS_DIFFERENTIAL`

  A tag indicating the GPS differential correction (type SHORT,
  count = 1).

  `static final int`

  `TAG_GPS_DOP`

  A tag indicating the Measurement precision (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_IMG_DIRECTION`

  A tag indicating the Direction of image (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_IMG_DIRECTION_REF`

  A tag indicating the Reference for direction of image (type ASCII,
  count = 2).

  `static final int`

  `TAG_GPS_LATITUDE`

  A tag indicating the Latitude (type RATIONAL, count = 3).

  `static final int`

  `TAG_GPS_LATITUDE_REF`

  A tag indicating the North or South latitude (type ASCII, count = 2).

  `static final int`

  `TAG_GPS_LONGITUDE`

  A tag indicating the Longitude (type RATIONAL, count = 3).

  `static final int`

  `TAG_GPS_LONGITUDE_REF`

  A tag indicating the East or West Longitude (type ASCII, count = 2).

  `static final int`

  `TAG_GPS_MAP_DATUM`

  A tag indicating the Geodetic survey data used (type ASCII).

  `static final int`

  `TAG_GPS_MEASURE_MODE`

  A tag indicating the GPS measurement mode (type ASCII, count = 2).

  `static final int`

  `TAG_GPS_PROCESSING_METHOD`

  A tag indicating the Name of GPS processing method (type UNDEFINED).

  `static final int`

  `TAG_GPS_SATELLITES`

  A tag indicating the GPS satellites used for measurement (type ASCII).

  `static final int`

  `TAG_GPS_SPEED`

  A tag indicating the Speed of GPS receiver (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_SPEED_REF`

  A tag indicating the Speed unit (type ASCII, count = 2).

  `static final int`

  `TAG_GPS_STATUS`

  A tag indicating the GPS receiver status (type ASCII, count = 2).

  `static final int`

  `TAG_GPS_TIME_STAMP`

  A tag indicating the GPS time (atomic clock) (type RATIONAL, count = 3).

  `static final int`

  `TAG_GPS_TRACK`

  A tag indicating the Direction of movement (type RATIONAL, count = 1).

  `static final int`

  `TAG_GPS_TRACK_REF`

  A tag indicating the Reference for direction of movement (type ASCII,
  count = 2).

  `static final int`

  `TAG_GPS_VERSION_ID`

  A tag indicating the GPS tag version (type BYTE, count = 4).
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ExifGPSTagSet`

  `getInstance()`

  Returns a shared instance of an `ExifGPSTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_GPS\_VERSION\_ID

    public static final int TAG\_GPS\_VERSION\_ID

    A tag indicating the GPS tag version (type BYTE, count = 4).

    See Also:
    :   - [`GPS_VERSION_2_2`](#GPS_VERSION_2_2)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_VERSION_ID)
  + ### GPS\_VERSION\_2\_2

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") GPS\_VERSION\_2\_2

    A value to be used with the "GPSVersionID" tag to indicate GPS version
    2.2. The value equals the US-ASCII encoding of the byte array
    `{'2', '2', '0', '0'}`.

    See Also:
    :   - [`TAG_GPS_VERSION_ID`](#TAG_GPS_VERSION_ID)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.GPS_VERSION_2_2)
  + ### TAG\_GPS\_LATITUDE\_REF

    public static final int TAG\_GPS\_LATITUDE\_REF

    A tag indicating the North or South latitude (type ASCII, count = 2).

    See Also:
    :   - [`LATITUDE_REF_NORTH`](#LATITUDE_REF_NORTH)
        - [`LATITUDE_REF_SOUTH`](#LATITUDE_REF_SOUTH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_LATITUDE_REF)
  + ### TAG\_GPS\_LATITUDE

    public static final int TAG\_GPS\_LATITUDE

    A tag indicating the Latitude (type RATIONAL, count = 3).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_LATITUDE)
  + ### TAG\_GPS\_LONGITUDE\_REF

    public static final int TAG\_GPS\_LONGITUDE\_REF

    A tag indicating the East or West Longitude (type ASCII, count = 2).

    See Also:
    :   - [`LONGITUDE_REF_EAST`](#LONGITUDE_REF_EAST)
        - [`LONGITUDE_REF_WEST`](#LONGITUDE_REF_WEST)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_LONGITUDE_REF)
  + ### TAG\_GPS\_LONGITUDE

    public static final int TAG\_GPS\_LONGITUDE

    A tag indicating the Longitude (type RATIONAL, count = 3).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_LONGITUDE)
  + ### TAG\_GPS\_ALTITUDE\_REF

    public static final int TAG\_GPS\_ALTITUDE\_REF

    A tag indicating the Altitude reference (type BYTE, count = 1);

    See Also:
    :   - [`ALTITUDE_REF_SEA_LEVEL`](#ALTITUDE_REF_SEA_LEVEL)
        - [`ALTITUDE_REF_SEA_LEVEL_REFERENCE`](#ALTITUDE_REF_SEA_LEVEL_REFERENCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_ALTITUDE_REF)
  + ### TAG\_GPS\_ALTITUDE

    public static final int TAG\_GPS\_ALTITUDE

    A tag indicating the Altitude (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_ALTITUDE)
  + ### TAG\_GPS\_TIME\_STAMP

    public static final int TAG\_GPS\_TIME\_STAMP

    A tag indicating the GPS time (atomic clock) (type RATIONAL, count = 3).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_TIME_STAMP)
  + ### TAG\_GPS\_SATELLITES

    public static final int TAG\_GPS\_SATELLITES

    A tag indicating the GPS satellites used for measurement (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_SATELLITES)
  + ### TAG\_GPS\_STATUS

    public static final int TAG\_GPS\_STATUS

    A tag indicating the GPS receiver status (type ASCII, count = 2).

    See Also:
    :   - [`STATUS_MEASUREMENT_IN_PROGRESS`](#STATUS_MEASUREMENT_IN_PROGRESS)
        - [`STATUS_MEASUREMENT_INTEROPERABILITY`](#STATUS_MEASUREMENT_INTEROPERABILITY)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_STATUS)
  + ### TAG\_GPS\_MEASURE\_MODE

    public static final int TAG\_GPS\_MEASURE\_MODE

    A tag indicating the GPS measurement mode (type ASCII, count = 2).

    See Also:
    :   - [`MEASURE_MODE_2D`](#MEASURE_MODE_2D)
        - [`MEASURE_MODE_3D`](#MEASURE_MODE_3D)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_MEASURE_MODE)
  + ### TAG\_GPS\_DOP

    public static final int TAG\_GPS\_DOP

    A tag indicating the Measurement precision (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DOP)
  + ### TAG\_GPS\_SPEED\_REF

    public static final int TAG\_GPS\_SPEED\_REF

    A tag indicating the Speed unit (type ASCII, count = 2).

    See Also:
    :   - [`SPEED_REF_KILOMETERS_PER_HOUR`](#SPEED_REF_KILOMETERS_PER_HOUR)
        - [`SPEED_REF_MILES_PER_HOUR`](#SPEED_REF_MILES_PER_HOUR)
        - [`SPEED_REF_KNOTS`](#SPEED_REF_KNOTS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_SPEED_REF)
  + ### TAG\_GPS\_SPEED

    public static final int TAG\_GPS\_SPEED

    A tag indicating the Speed of GPS receiver (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_SPEED)
  + ### TAG\_GPS\_TRACK\_REF

    public static final int TAG\_GPS\_TRACK\_REF

    A tag indicating the Reference for direction of movement (type ASCII,
    count = 2).

    See Also:
    :   - [`DIRECTION_REF_TRUE`](#DIRECTION_REF_TRUE)
        - [`DIRECTION_REF_MAGNETIC`](#DIRECTION_REF_MAGNETIC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_TRACK_REF)
  + ### TAG\_GPS\_TRACK

    public static final int TAG\_GPS\_TRACK

    A tag indicating the Direction of movement (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_TRACK)
  + ### TAG\_GPS\_IMG\_DIRECTION\_REF

    public static final int TAG\_GPS\_IMG\_DIRECTION\_REF

    A tag indicating the Reference for direction of image (type ASCII,
    count = 2).

    See Also:
    :   - [`DIRECTION_REF_TRUE`](#DIRECTION_REF_TRUE)
        - [`DIRECTION_REF_MAGNETIC`](#DIRECTION_REF_MAGNETIC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_IMG_DIRECTION_REF)
  + ### TAG\_GPS\_IMG\_DIRECTION

    public static final int TAG\_GPS\_IMG\_DIRECTION

    A tag indicating the Direction of image (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_IMG_DIRECTION)
  + ### TAG\_GPS\_MAP\_DATUM

    public static final int TAG\_GPS\_MAP\_DATUM

    A tag indicating the Geodetic survey data used (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_MAP_DATUM)
  + ### TAG\_GPS\_DEST\_LATITUDE\_REF

    public static final int TAG\_GPS\_DEST\_LATITUDE\_REF

    A tag indicating the Reference for latitude of destination (type
    ASCII, count = 2).

    See Also:
    :   - [`LATITUDE_REF_NORTH`](#LATITUDE_REF_NORTH)
        - [`LATITUDE_REF_SOUTH`](#LATITUDE_REF_SOUTH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_LATITUDE_REF)
  + ### TAG\_GPS\_DEST\_LATITUDE

    public static final int TAG\_GPS\_DEST\_LATITUDE

    A tag indicating the Latitude of destination (type RATIONAL, count = 3).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_LATITUDE)
  + ### TAG\_GPS\_DEST\_LONGITUDE\_REF

    public static final int TAG\_GPS\_DEST\_LONGITUDE\_REF

    A tag indicating the Reference for longitude of destination (type
    ASCII, count = 2).

    See Also:
    :   - [`LONGITUDE_REF_EAST`](#LONGITUDE_REF_EAST)
        - [`LONGITUDE_REF_WEST`](#LONGITUDE_REF_WEST)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_LONGITUDE_REF)
  + ### TAG\_GPS\_DEST\_LONGITUDE

    public static final int TAG\_GPS\_DEST\_LONGITUDE

    A tag indicating the Longitude of destination (type RATIONAL,
    count = 3).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_LONGITUDE)
  + ### TAG\_GPS\_DEST\_BEARING\_REF

    public static final int TAG\_GPS\_DEST\_BEARING\_REF

    A tag indicating the Reference for bearing of destination (type ASCII,
    count = 2).

    See Also:
    :   - [`DIRECTION_REF_TRUE`](#DIRECTION_REF_TRUE)
        - [`DIRECTION_REF_MAGNETIC`](#DIRECTION_REF_MAGNETIC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_BEARING_REF)
  + ### TAG\_GPS\_DEST\_BEARING

    public static final int TAG\_GPS\_DEST\_BEARING

    A tag indicating the Bearing of destination (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_BEARING)
  + ### TAG\_GPS\_DEST\_DISTANCE\_REF

    public static final int TAG\_GPS\_DEST\_DISTANCE\_REF

    A tag indicating the Reference for distance to destination (type ASCII,
    count = 2).

    See Also:
    :   - [`DEST_DISTANCE_REF_KILOMETERS`](#DEST_DISTANCE_REF_KILOMETERS)
        - [`DEST_DISTANCE_REF_MILES`](#DEST_DISTANCE_REF_MILES)
        - [`DEST_DISTANCE_REF_KNOTS`](#DEST_DISTANCE_REF_KNOTS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_DISTANCE_REF)
  + ### TAG\_GPS\_DEST\_DISTANCE

    public static final int TAG\_GPS\_DEST\_DISTANCE

    A tag indicating the Distance to destination (type RATIONAL, count = 1).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DEST_DISTANCE)
  + ### TAG\_GPS\_PROCESSING\_METHOD

    public static final int TAG\_GPS\_PROCESSING\_METHOD

    A tag indicating the Name of GPS processing method (type UNDEFINED).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_PROCESSING_METHOD)
  + ### TAG\_GPS\_AREA\_INFORMATION

    public static final int TAG\_GPS\_AREA\_INFORMATION

    A tag indicating the Name of GPS area (type UNDEFINED).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_AREA_INFORMATION)
  + ### TAG\_GPS\_DATE\_STAMP

    public static final int TAG\_GPS\_DATE\_STAMP

    A tag indicating the GPS date (type ASCII, count 11).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DATE_STAMP)
  + ### TAG\_GPS\_DIFFERENTIAL

    public static final int TAG\_GPS\_DIFFERENTIAL

    A tag indicating the GPS differential correction (type SHORT,
    count = 1).

    See Also:
    :   - [`DIFFERENTIAL_CORRECTION_NONE`](#DIFFERENTIAL_CORRECTION_NONE)
        - [`DIFFERENTIAL_CORRECTION_APPLIED`](#DIFFERENTIAL_CORRECTION_APPLIED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.TAG_GPS_DIFFERENTIAL)
  + ### LATITUDE\_REF\_NORTH

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LATITUDE\_REF\_NORTH

    A value to be used with the "GPSLatitudeRef" and
    "GPSDestLatitudeRef" tags.

    See Also:
    :   - [`TAG_GPS_LATITUDE_REF`](#TAG_GPS_LATITUDE_REF)
        - [`TAG_GPS_DEST_LATITUDE_REF`](#TAG_GPS_DEST_LATITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.LATITUDE_REF_NORTH)
  + ### LATITUDE\_REF\_SOUTH

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LATITUDE\_REF\_SOUTH

    A value to be used with the "GPSLatitudeRef" and
    "GPSDestLatitudeRef" tags.

    See Also:
    :   - [`TAG_GPS_LATITUDE_REF`](#TAG_GPS_LATITUDE_REF)
        - [`TAG_GPS_DEST_LATITUDE_REF`](#TAG_GPS_DEST_LATITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.LATITUDE_REF_SOUTH)
  + ### LONGITUDE\_REF\_EAST

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LONGITUDE\_REF\_EAST

    A value to be used with the "GPSLongitudeRef" and
    "GPSDestLongitudeRef" tags.

    See Also:
    :   - [`TAG_GPS_LONGITUDE_REF`](#TAG_GPS_LONGITUDE_REF)
        - [`TAG_GPS_DEST_LONGITUDE_REF`](#TAG_GPS_DEST_LONGITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.LONGITUDE_REF_EAST)
  + ### LONGITUDE\_REF\_WEST

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LONGITUDE\_REF\_WEST

    A value to be used with the "GPSLongitudeRef" and
    "GPSDestLongitudeRef" tags.

    See Also:
    :   - [`TAG_GPS_LONGITUDE_REF`](#TAG_GPS_LONGITUDE_REF)
        - [`TAG_GPS_DEST_LONGITUDE_REF`](#TAG_GPS_DEST_LONGITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.LONGITUDE_REF_WEST)
  + ### ALTITUDE\_REF\_SEA\_LEVEL

    public static final int ALTITUDE\_REF\_SEA\_LEVEL

    A value to be used with the "GPSAltitudeRef" tag.

    See Also:
    :   - [`TAG_GPS_ALTITUDE_REF`](#TAG_GPS_ALTITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.ALTITUDE_REF_SEA_LEVEL)
  + ### ALTITUDE\_REF\_SEA\_LEVEL\_REFERENCE

    public static final int ALTITUDE\_REF\_SEA\_LEVEL\_REFERENCE

    A value to be used with the "GPSAltitudeRef" tag.

    See Also:
    :   - [`TAG_GPS_ALTITUDE_REF`](#TAG_GPS_ALTITUDE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.ALTITUDE_REF_SEA_LEVEL_REFERENCE)
  + ### STATUS\_MEASUREMENT\_IN\_PROGRESS

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") STATUS\_MEASUREMENT\_IN\_PROGRESS

    A value to be used with the "GPSStatus" tag.

    See Also:
    :   - [`TAG_GPS_STATUS`](#TAG_GPS_STATUS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.STATUS_MEASUREMENT_IN_PROGRESS)
  + ### STATUS\_MEASUREMENT\_INTEROPERABILITY

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") STATUS\_MEASUREMENT\_INTEROPERABILITY

    A value to be used with the "GPSStatus" tag.

    See Also:
    :   - [`TAG_GPS_STATUS`](#TAG_GPS_STATUS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.STATUS_MEASUREMENT_INTEROPERABILITY)
  + ### MEASURE\_MODE\_2D

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") MEASURE\_MODE\_2D

    A value to be used with the "GPSMeasureMode" tag.

    See Also:
    :   - [`TAG_GPS_MEASURE_MODE`](#TAG_GPS_MEASURE_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.MEASURE_MODE_2D)
  + ### MEASURE\_MODE\_3D

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") MEASURE\_MODE\_3D

    A value to be used with the "GPSMeasureMode" tag.

    See Also:
    :   - [`TAG_GPS_MEASURE_MODE`](#TAG_GPS_MEASURE_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.MEASURE_MODE_3D)
  + ### SPEED\_REF\_KILOMETERS\_PER\_HOUR

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SPEED\_REF\_KILOMETERS\_PER\_HOUR

    A value to be used with the "GPSSpeedRef" tag.

    See Also:
    :   - [`TAG_GPS_SPEED_REF`](#TAG_GPS_SPEED_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.SPEED_REF_KILOMETERS_PER_HOUR)
  + ### SPEED\_REF\_MILES\_PER\_HOUR

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SPEED\_REF\_MILES\_PER\_HOUR

    A value to be used with the "GPSSpeedRef" tag.

    See Also:
    :   - [`TAG_GPS_SPEED_REF`](#TAG_GPS_SPEED_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.SPEED_REF_MILES_PER_HOUR)
  + ### SPEED\_REF\_KNOTS

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SPEED\_REF\_KNOTS

    A value to be used with the "GPSSpeedRef" tag.

    See Also:
    :   - [`TAG_GPS_SPEED_REF`](#TAG_GPS_SPEED_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.SPEED_REF_KNOTS)
  + ### DIRECTION\_REF\_TRUE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DIRECTION\_REF\_TRUE

    A value to be used with the "GPSTrackRef", "GPSImgDirectionRef",
    and "GPSDestBearingRef" tags.

    See Also:
    :   - [`TAG_GPS_TRACK_REF`](#TAG_GPS_TRACK_REF)
        - [`TAG_GPS_IMG_DIRECTION_REF`](#TAG_GPS_IMG_DIRECTION_REF)
        - [`TAG_GPS_DEST_BEARING_REF`](#TAG_GPS_DEST_BEARING_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DIRECTION_REF_TRUE)
  + ### DIRECTION\_REF\_MAGNETIC

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DIRECTION\_REF\_MAGNETIC

    A value to be used with the "GPSTrackRef", "GPSImgDirectionRef",
    and "GPSDestBearingRef" tags.

    See Also:
    :   - [`TAG_GPS_TRACK_REF`](#TAG_GPS_TRACK_REF)
        - [`TAG_GPS_IMG_DIRECTION_REF`](#TAG_GPS_IMG_DIRECTION_REF)
        - [`TAG_GPS_DEST_BEARING_REF`](#TAG_GPS_DEST_BEARING_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DIRECTION_REF_MAGNETIC)
  + ### DEST\_DISTANCE\_REF\_KILOMETERS

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DEST\_DISTANCE\_REF\_KILOMETERS

    A value to be used with the "GPSDestDistanceRef" tag.

    See Also:
    :   - [`TAG_GPS_DEST_DISTANCE_REF`](#TAG_GPS_DEST_DISTANCE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DEST_DISTANCE_REF_KILOMETERS)
  + ### DEST\_DISTANCE\_REF\_MILES

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DEST\_DISTANCE\_REF\_MILES

    A value to be used with the "GPSDestDistanceRef" tag.

    See Also:
    :   - [`TAG_GPS_DEST_DISTANCE_REF`](#TAG_GPS_DEST_DISTANCE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DEST_DISTANCE_REF_MILES)
  + ### DEST\_DISTANCE\_REF\_KNOTS

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DEST\_DISTANCE\_REF\_KNOTS

    A value to be used with the "GPSDestDistanceRef" tag.

    See Also:
    :   - [`TAG_GPS_DEST_DISTANCE_REF`](#TAG_GPS_DEST_DISTANCE_REF)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DEST_DISTANCE_REF_KNOTS)
  + ### DIFFERENTIAL\_CORRECTION\_NONE

    public static final int DIFFERENTIAL\_CORRECTION\_NONE

    A value to be used with the "GPSDifferential" tag.

    See Also:
    :   - [`TAG_GPS_DIFFERENTIAL`](#TAG_GPS_DIFFERENTIAL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DIFFERENTIAL_CORRECTION_NONE)
  + ### DIFFERENTIAL\_CORRECTION\_APPLIED

    public static final int DIFFERENTIAL\_CORRECTION\_APPLIED

    A value to be used with the "GPSDifferential" tag.

    See Also:
    :   - [`TAG_GPS_DIFFERENTIAL`](#TAG_GPS_DIFFERENTIAL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifGPSTagSet.DIFFERENTIAL_CORRECTION_APPLIED)
* ## Method Details

  + ### getInstance

    public static [ExifGPSTagSet](ExifGPSTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of an `ExifGPSTagSet`.

    Returns:
    :   an `ExifGPSTagSet` instance.