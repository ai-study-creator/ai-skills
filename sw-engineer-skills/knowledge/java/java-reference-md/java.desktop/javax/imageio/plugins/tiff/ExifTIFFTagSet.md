Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class ExifTIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.ExifTIFFTagSet

---

public final class ExifTIFFTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the tags found in an Exif IFD. Exif is a
standard for annotating images used by most digital camera
manufacturers. The Exif specification may be found at
[`https://www.cipa.jp/std/documents/e/DC-008-2012_E.pdf`](https://www.cipa.jp/std/documents/e/DC-008-2012_E.pdf).

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

  `COLOR_SPACE_SRGB`

  A value to be used with the "ColorSpace" tag.

  `static final int`

  `COLOR_SPACE_UNCALIBRATED`

  A value to be used with the "ColorSpace" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_B`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_CB`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_CR`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_DOES_NOT_EXIST`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_G`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_R`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `COMPONENTS_CONFIGURATION_Y`

  A value to be used with the "ComponentsConfiguration" tag.

  `static final int`

  `CONTRAST_HARD`

  A value to be used with the "Contrast" tag.

  `static final int`

  `CONTRAST_NORMAL`

  A value to be used with the "Contrast" tag.

  `static final int`

  `CONTRAST_SOFT`

  A value to be used with the "Contrast" tag.

  `static final int`

  `CUSTOM_RENDERED_CUSTOM`

  A value to be used with the "CustomRendered" tag.

  `static final int`

  `CUSTOM_RENDERED_NORMAL`

  A value to be used with the "CustomRendered" tag.

  `static final String`

  `EXIF_VERSION_2_1`

  A value to be used with the "ExifVersion" tag to indicate Exif version
  2.1.

  `static final String`

  `EXIF_VERSION_2_2`

  A value to be used with the "ExifVersion" tag to indicate Exif version
  2.2.

  `static final int`

  `EXPOSURE_MODE_AUTO_BRACKET`

  A value to be used with the "ExposureMode" tag.

  `static final int`

  `EXPOSURE_MODE_AUTO_EXPOSURE`

  A value to be used with the "ExposureMode" tag.

  `static final int`

  `EXPOSURE_MODE_MANUAL_EXPOSURE`

  A value to be used with the "ExposureMode" tag.

  `static final int`

  `EXPOSURE_PROGRAM_ACTION_PROGRAM`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_APERTURE_PRIORITY`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_CREATIVE_PROGRAM`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_LANDSCAPE_MODE`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_MANUAL`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_MAX_RESERVED`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_NORMAL_PROGRAM`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_NOT_DEFINED`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_PORTRAIT_MODE`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `EXPOSURE_PROGRAM_SHUTTER_PRIORITY`

  A value to be used with the "ExposureProgram" tag.

  `static final int`

  `FILE_SOURCE_DSC`

  A value to be used with the "FileSource" tag.

  `static final int`

  `FLASH_DID_NOT_FIRE`

  A value to be used with the "Flash" tag, indicating that the
  flash did not fire.

  `static final int`

  `FLASH_FIRED`

  A value to be used with the "Flash" tag, indicating that the
  flash fired, but the strobe return status is unknown.

  `static final int`

  `FLASH_MASK_FIRED`

  A mask to be used with the "Flash" tag, indicating that the
  flash fired.

  `static final int`

  `FLASH_MASK_FUNCTION_NOT_PRESENT`

  A mask to be used with the "Flash" tag, indicating no flash function
  present.

  `static final int`

  `FLASH_MASK_MODE_AUTO`

  A mask to be used with the "Flash" tag, indicating auto mode.

  `static final int`

  `FLASH_MASK_MODE_FLASH_FIRING`

  A mask to be used with the "Flash" tag, indicating compulsory flash
  firing mode.

  `static final int`

  `FLASH_MASK_MODE_FLASH_SUPPRESSION`

  A mask to be used with the "Flash" tag, indicating compulsory flash
  suppression mode.

  `static final int`

  `FLASH_MASK_RED_EYE_REDUCTION`

  A mask to be used with the "Flash" tag, indicating red-eye reduction
  supported.

  `static final int`

  `FLASH_MASK_RETURN_DETECTED`

  A mask to be used with the "Flash" tag, indicating strobe return
  light detected.

  `static final int`

  `FLASH_MASK_RETURN_NOT_DETECTED`

  A mask to be used with the "Flash" tag, indicating strobe return
  light not detected.

  `static final int`

  `FLASH_STROBE_RETURN_LIGHT_DETECTED`

  A value to be used with the "Flash" tag, indicating that the
  flash fired, and the strobe return light was detected.

  `static final int`

  `FLASH_STROBE_RETURN_LIGHT_NOT_DETECTED`

  A value to be used with the "Flash" tag, indicating that the
  flash fired, but the strobe return light was not detected.

  `static final int`

  `FOCAL_PLANE_RESOLUTION_UNIT_CENTIMETER`

  A value to be used with the "FocalPlaneXResolution" tag.

  `static final int`

  `FOCAL_PLANE_RESOLUTION_UNIT_INCH`

  A value to be used with the "FocalPlaneXResolution" tag.

  `static final int`

  `FOCAL_PLANE_RESOLUTION_UNIT_NONE`

  A value to be used with the "FocalPlaneResolutionUnit" tag.

  `static final int`

  `GAIN_CONTROL_HIGH_GAIN_DOWN`

  A value to be used with the "GainControl" tag.

  `static final int`

  `GAIN_CONTROL_HIGH_GAIN_UP`

  A value to be used with the "GainControl" tag.

  `static final int`

  `GAIN_CONTROL_LOW_GAIN_DOWN`

  A value to be used with the "GainControl" tag.

  `static final int`

  `GAIN_CONTROL_LOW_GAIN_UP`

  A value to be used with the "GainControl" tag.

  `static final int`

  `GAIN_CONTROL_NONE`

  A value to be used with the "GainControl" tag.

  `static final int`

  `LIGHT_SOURCE_CLOUDY_WEATHER`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_COOL_WHITE_FLUORESCENT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_D50`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_D55`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_D65`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_D75`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_DAY_WHITE_FLUORESCENT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_DAYLIGHT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_DAYLIGHT_FLUORESCENT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_FINE_WEATHER`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_FLASH`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_FLUORESCENT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_OTHER`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_SHADE`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_STANDARD_LIGHT_A`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_STANDARD_LIGHT_B`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_STANDARD_LIGHT_C`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_TUNGSTEN`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_UNKNOWN`

  A value to be used with the "LightSource" tag.

  `static final int`

  `LIGHT_SOURCE_WHITE_FLUORESCENT`

  A value to be used with the "LightSource" tag.

  `static final int`

  `METERING_MODE_AVERAGE`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_CENTER_WEIGHTED_AVERAGE`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_MAX_RESERVED`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_MIN_RESERVED`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_MULTI_SPOT`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_OTHER`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_PARTIAL`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_PATTERN`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_SPOT`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `METERING_MODE_UNKNOWN`

  A value to be used with the "MeteringMode" tag.

  `static final int`

  `SATURATION_HIGH`

  A value to be used with the "Saturation" tag.

  `static final int`

  `SATURATION_LOW`

  A value to be used with the "Saturation" tag.

  `static final int`

  `SATURATION_NORMAL`

  A value to be used with the "Saturation" tag.

  `static final int`

  `SCENE_CAPTURE_TYPE_LANDSCAPE`

  A value to be used with the "SceneCaptureType" tag.

  `static final int`

  `SCENE_CAPTURE_TYPE_NIGHT_SCENE`

  A value to be used with the "SceneCaptureType" tag.

  `static final int`

  `SCENE_CAPTURE_TYPE_PORTRAIT`

  A value to be used with the "SceneCaptureType" tag.

  `static final int`

  `SCENE_CAPTURE_TYPE_STANDARD`

  A value to be used with the "SceneCaptureType" tag.

  `static final int`

  `SCENE_TYPE_DSC`

  A value to be used with the "SceneType" tag.

  `static final int`

  `SENSING_METHOD_COLOR_SEQUENTIAL_AREA_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_COLOR_SEQUENTIAL_LINEAR_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_NOT_DEFINED`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_ONE_CHIP_COLOR_AREA_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_THREE_CHIP_COLOR_AREA_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_TRILINEAR_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SENSING_METHOD_TWO_CHIP_COLOR_AREA_SENSOR`

  A value to be used with the "SensingMethod" tag.

  `static final int`

  `SHARPNESS_HARD`

  A value to be used with the "Sharpness" tag.

  `static final int`

  `SHARPNESS_NORMAL`

  A value to be used with the "Sharpness" tag.

  `static final int`

  `SHARPNESS_SOFT`

  A value to be used with the "Sharpness" tag.

  `static final int`

  `SUBJECT_DISTANCE_RANGE_CLOSE_VIEW`

  A value to be used with the "SubjectDistanceRange" tag.

  `static final int`

  `SUBJECT_DISTANCE_RANGE_DISTANT_VIEW`

  A value to be used with the "SubjectDistanceRange" tag.

  `static final int`

  `SUBJECT_DISTANCE_RANGE_MACRO`

  A value to be used with the "SubjectDistanceRange" tag.

  `static final int`

  `SUBJECT_DISTANCE_RANGE_UNKNOWN`

  A value to be used with the "SubjectDistanceRange" tag.

  `static final int`

  `TAG_APERTURE_VALUE`

  A tag indicating the lens aperture (type RATIONAL).

  `static final int`

  `TAG_BRIGHTNESS_VALUE`

  A tag indicating the value of brightness (type SRATIONAL).

  `static final int`

  `TAG_CFA_PATTERN`

  A tag indicating the color filter array geometric pattern of
  the image sensor when a one-chip color area sensor if used
  (type UNDEFINED).

  `static final int`

  `TAG_COLOR_SPACE`

  A tag indicating the color space information (type SHORT).

  `static final int`

  `TAG_COMPONENTS_CONFIGURATION`

  A tag containing the components configuration information (type
  UNDEFINED, count = 4).

  `static final int`

  `TAG_COMPRESSED_BITS_PER_PIXEL`

  A tag indicating the number of compressed bits per pixel
  (type RATIONAL).

  `static final int`

  `TAG_CONTRAST`

  A tag indicating the direction of contrast processing applied
  by the camera when the image was shot.

  `static final int`

  `TAG_CUSTOM_RENDERED`

  A tag indicating the use of special processing on image data,
  such as rendering geared to output.

  `static final int`

  `TAG_DATE_TIME_DIGITIZED`

  A tag indicating the date and time when the image was stored as
  digital data (type ASCII).

  `static final int`

  `TAG_DATE_TIME_ORIGINAL`

  A tag indicating the date and time when the original image was
  generated (type ASCII).

  `static final int`

  `TAG_DEVICE_SETTING_DESCRIPTION`

  A tag indicating information on the picture-taking conditions
  of a particular camera model.

  `static final int`

  `TAG_DIGITAL_ZOOM_RATIO`

  A tag indicating the digital zoom ratio when the image was shot.

  `static final int`

  `TAG_EXIF_VERSION`

  A tag containing the Exif version number (type UNDEFINED, count =
  4).

  `static final int`

  `TAG_EXPOSURE_BIAS_VALUE`

  A tag indicating the exposure bias (type SRATIONAL).

  `static final int`

  `TAG_EXPOSURE_INDEX`

  A tag indicating the exposure index selected on the camera or
  input device at the time the image was captured (type
  RATIONAL).

  `static final int`

  `TAG_EXPOSURE_MODE`

  A tag indicating the exposure mode set when the image was shot.

  `static final int`

  `TAG_EXPOSURE_PROGRAM`

  A tag indicating the class of the programs used to set exposure
  when the picture was taken (type SHORT).

  `static final int`

  `TAG_EXPOSURE_TIME`

  A tag indicating the exposure time, in seconds (type RATIONAL).

  `static final int`

  `TAG_F_NUMBER`

  A tag indicating the F number (type RATIONAL).

  `static final int`

  `TAG_FILE_SOURCE`

  A tag indicating the image source (type UNDEFINED).

  `static final int`

  `TAG_FLASH`

  A tag indicating the flash firing status and flash return
  status (type SHORT).

  `static final int`

  `TAG_FLASH_ENERGY`

  A tag indicating the strobe energy at the time the image was
  captured, as measured in Beam Candle Power Seconds (BCPS) (type
  RATIONAL).

  `static final int`

  `TAG_FLASHPIX_VERSION`

  A tag indicating the FlashPix version number (type UNDEFINED,
  count = 4).

  `static final int`

  `TAG_FOCAL_LENGTH`

  A tag indicating the actual focal length of the lens, in
  millimeters (type RATIONAL).

  `static final int`

  `TAG_FOCAL_LENGTH_IN_35MM_FILM`

  A tag indicating the equivalent focal length assuming a 35mm film
  camera, in millimeters.

  `static final int`

  `TAG_FOCAL_PLANE_RESOLUTION_UNIT`

  Indicates the unit for measuring FocalPlaneXResolution and
  FocalPlaneYResolution (type SHORT).

  `static final int`

  `TAG_FOCAL_PLANE_X_RESOLUTION`

  Indicates the number of pixels in the image width (X) direction
  per FocalPlaneResolutionUnit on the camera focal plane (type
  RATIONAL).

  `static final int`

  `TAG_FOCAL_PLANE_Y_RESOLUTION`

  Indicate the number of pixels in the image height (Y) direction
  per FocalPlaneResolutionUnit on the camera focal plane (type
  RATIONAL).

  `static final int`

  `TAG_GAIN_CONTROL`

  A tag indicating the degree of overall image gain adjustment.

  `static final int`

  `TAG_GPS_INFO_IFD_POINTER`

  A tag pointing to a GPS info IFD (type LONG).

  `static final int`

  `TAG_IMAGE_UNIQUE_ID`

  A tag indicating an identifier assigned uniquely to each image.

  `static final int`

  `TAG_INTEROPERABILITY_IFD_POINTER`

  A tag pointing to an interoperability IFD (type LONG).

  `static final int`

  `TAG_ISO_SPEED_RATINGS`

  A tag indicating the ISO speed and ISO latitude of the camera
  or input device, as specified in ISO 12232xiv (type
  SHORT).

  `static final int`

  `TAG_LIGHT_SOURCE`

  A tag indicatingthe kind of light source (type SHORT).

  `static final int`

  `TAG_MAKER_NOTE`

  A tag indicating a manufacturer-defined maker note (type
  UNDEFINED).

  `static final int`

  `TAG_MARKER_NOTE`

  A tag indicating a manufacturer-defined marker note (type UNDEFINED).

  `static final int`

  `TAG_MAX_APERTURE_VALUE`

  A tag indicating the smallest F number of the lens (type
  RATIONAL).

  `static final int`

  `TAG_METERING_MODE`

  A tag indicating the metering mode (type SHORT).

  `static final int`

  `TAG_OECF`

  A tag indicating the optoelectric conversion function,
  specified in ISO 14254xv (type UNDEFINED).

  `static final int`

  `TAG_PIXEL_X_DIMENSION`

  A tag indicating the pixel X dimension (type SHORT or LONG).

  `static final int`

  `TAG_PIXEL_Y_DIMENSION`

  A tag indicating the pixel Y dimension (type SHORT or LONG).

  `static final int`

  `TAG_RELATED_SOUND_FILE`

  A tag indicating the name of a related sound file (type ASCII).

  `static final int`

  `TAG_SATURATION`

  A tag indicating the direction of saturation processing
  applied by the camera when the image was shot.

  `static final int`

  `TAG_SCENE_CAPTURE_TYPE`

  A tag indicating the type of scene that was shot.

  `static final int`

  `TAG_SCENE_TYPE`

  A tag indicating the type of scene (type UNDEFINED).

  `static final int`

  `TAG_SENSING_METHOD`

  A tag indicating the sensor type on the camera or input device
  (type SHORT).

  `static final int`

  `TAG_SHARPNESS`

  A tag indicating the direction of sharpness processing
  applied by the camera when the image was shot.

  `static final int`

  `TAG_SHUTTER_SPEED_VALUE`

  A tag indicating the shutter speed (type SRATIONAL).

  `static final int`

  `TAG_SPATIAL_FREQUENCY_RESPONSE`

  A tag indicating the camera or input device spatial frequency
  table and SFR values in the direction of image width, image
  height, and diagonal direction, as specified in ISO
  12233xvi (type UNDEFINED).

  `static final int`

  `TAG_SPECTRAL_SENSITIVITY`

  A tag indicating the spectral sensitivity of each channel of
  the camera used (type ASCII).

  `static final int`

  `TAG_SUB_SEC_TIME`

  A tag used to record fractions of seconds for the "DateTime" tag
  (type ASCII).

  `static final int`

  `TAG_SUB_SEC_TIME_DIGITIZED`

  A tag used to record fractions of seconds for the
  "DateTimeDigitized" tag (type ASCII).

  `static final int`

  `TAG_SUB_SEC_TIME_ORIGINAL`

  A tag used to record fractions of seconds for the
  "DateTimeOriginal" tag (type ASCII).

  `static final int`

  `TAG_SUBJECT_AREA`

  A tag indicating the location and area of the main subject in
  the overall scene.

  `static final int`

  `TAG_SUBJECT_DISTANCE`

  A tag indicating the distance to the subject, in meters (type
  RATIONAL).

  `static final int`

  `TAG_SUBJECT_DISTANCE_RANGE`

  A tag indicating the distance to the subject.

  `static final int`

  `TAG_SUBJECT_LOCATION`

  A tag indicating the column and row of the center pixel of the
  main subject in the scene (type SHORT, count = 2).

  `static final int`

  `TAG_USER_COMMENT`

  A tag indicating a user comment (type UNDEFINED).

  `static final int`

  `TAG_WHITE_BALANCE`

  A tag indicating the white balance mode set when the image was shot.

  `static final int`

  `WHITE_BALANCE_AUTO`

  A value to be used with the "WhiteBalance" tag.

  `static final int`

  `WHITE_BALANCE_MANUAL`

  A value to be used with the "WhiteBalance" tag.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ExifTIFFTagSet`

  `getInstance()`

  Returns a shared instance of an `ExifTIFFTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_GPS\_INFO\_IFD\_POINTER

    public static final int TAG\_GPS\_INFO\_IFD\_POINTER

    A tag pointing to a GPS info IFD (type LONG). This tag has
    been superseded by [`ExifParentTIFFTagSet.TAG_GPS_INFO_IFD_POINTER`](ExifParentTIFFTagSet.md#TAG_GPS_INFO_IFD_POINTER).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_GPS_INFO_IFD_POINTER)
  + ### TAG\_INTEROPERABILITY\_IFD\_POINTER

    public static final int TAG\_INTEROPERABILITY\_IFD\_POINTER

    A tag pointing to an interoperability IFD (type LONG).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_INTEROPERABILITY_IFD_POINTER)
  + ### TAG\_EXIF\_VERSION

    public static final int TAG\_EXIF\_VERSION

    A tag containing the Exif version number (type UNDEFINED, count =
    4). Conformance to the Exif 2.1 standard is indicated using
    the ASCII value "0210" (with no terminating NUL).

    See Also:
    :   - [`EXIF_VERSION_2_1`](#EXIF_VERSION_2_1)
        - [`EXIF_VERSION_2_2`](#EXIF_VERSION_2_2)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXIF_VERSION)
  + ### EXIF\_VERSION\_2\_1

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") EXIF\_VERSION\_2\_1

    A value to be used with the "ExifVersion" tag to indicate Exif version
    2.1. The value equals the US-ASCII encoding of the byte array
    `{'0', '2', '1', '0'}`.

    See Also:
    :   - [`TAG_EXIF_VERSION`](#TAG_EXIF_VERSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXIF_VERSION_2_1)
  + ### EXIF\_VERSION\_2\_2

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") EXIF\_VERSION\_2\_2

    A value to be used with the "ExifVersion" tag to indicate Exif version
    2.2. The value equals the US-ASCII encoding of the byte array
    `{'0', '2', '2', '0'}`.

    See Also:
    :   - [`TAG_EXIF_VERSION`](#TAG_EXIF_VERSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXIF_VERSION_2_2)
  + ### TAG\_FLASHPIX\_VERSION

    public static final int TAG\_FLASHPIX\_VERSION

    A tag indicating the FlashPix version number (type UNDEFINED,
    count = 4).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FLASHPIX_VERSION)
  + ### TAG\_COLOR\_SPACE

    public static final int TAG\_COLOR\_SPACE

    A tag indicating the color space information (type SHORT). The
    legal values are given by the `COLOR_SPACE_*`
    constants.

    See Also:
    :   - [`COLOR_SPACE_SRGB`](#COLOR_SPACE_SRGB)
        - [`COLOR_SPACE_UNCALIBRATED`](#COLOR_SPACE_UNCALIBRATED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_COLOR_SPACE)
  + ### COLOR\_SPACE\_SRGB

    public static final int COLOR\_SPACE\_SRGB

    A value to be used with the "ColorSpace" tag.

    See Also:
    :   - [`TAG_COLOR_SPACE`](#TAG_COLOR_SPACE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COLOR_SPACE_SRGB)
  + ### COLOR\_SPACE\_UNCALIBRATED

    public static final int COLOR\_SPACE\_UNCALIBRATED

    A value to be used with the "ColorSpace" tag.

    See Also:
    :   - [`TAG_COLOR_SPACE`](#TAG_COLOR_SPACE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COLOR_SPACE_UNCALIBRATED)
  + ### TAG\_COMPONENTS\_CONFIGURATION

    public static final int TAG\_COMPONENTS\_CONFIGURATION

    A tag containing the components configuration information (type
    UNDEFINED, count = 4).

    See Also:
    :   - [`COMPONENTS_CONFIGURATION_DOES_NOT_EXIST`](#COMPONENTS_CONFIGURATION_DOES_NOT_EXIST)
        - [`COMPONENTS_CONFIGURATION_Y`](#COMPONENTS_CONFIGURATION_Y)
        - [`COMPONENTS_CONFIGURATION_CB`](#COMPONENTS_CONFIGURATION_CB)
        - [`COMPONENTS_CONFIGURATION_CR`](#COMPONENTS_CONFIGURATION_CR)
        - [`COMPONENTS_CONFIGURATION_R`](#COMPONENTS_CONFIGURATION_R)
        - [`COMPONENTS_CONFIGURATION_G`](#COMPONENTS_CONFIGURATION_G)
        - [`COMPONENTS_CONFIGURATION_B`](#COMPONENTS_CONFIGURATION_B)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_COMPONENTS_CONFIGURATION)
  + ### COMPONENTS\_CONFIGURATION\_DOES\_NOT\_EXIST

    public static final int COMPONENTS\_CONFIGURATION\_DOES\_NOT\_EXIST

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_DOES_NOT_EXIST)
  + ### COMPONENTS\_CONFIGURATION\_Y

    public static final int COMPONENTS\_CONFIGURATION\_Y

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_Y)
  + ### COMPONENTS\_CONFIGURATION\_CB

    public static final int COMPONENTS\_CONFIGURATION\_CB

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_CB)
  + ### COMPONENTS\_CONFIGURATION\_CR

    public static final int COMPONENTS\_CONFIGURATION\_CR

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_CR)
  + ### COMPONENTS\_CONFIGURATION\_R

    public static final int COMPONENTS\_CONFIGURATION\_R

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_R)
  + ### COMPONENTS\_CONFIGURATION\_G

    public static final int COMPONENTS\_CONFIGURATION\_G

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_G)
  + ### COMPONENTS\_CONFIGURATION\_B

    public static final int COMPONENTS\_CONFIGURATION\_B

    A value to be used with the "ComponentsConfiguration" tag.

    See Also:
    :   - [`TAG_COMPONENTS_CONFIGURATION`](#TAG_COMPONENTS_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.COMPONENTS_CONFIGURATION_B)
  + ### TAG\_COMPRESSED\_BITS\_PER\_PIXEL

    public static final int TAG\_COMPRESSED\_BITS\_PER\_PIXEL

    A tag indicating the number of compressed bits per pixel
    (type RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_COMPRESSED_BITS_PER_PIXEL)
  + ### TAG\_PIXEL\_X\_DIMENSION

    public static final int TAG\_PIXEL\_X\_DIMENSION

    A tag indicating the pixel X dimension (type SHORT or LONG).
    This value records the valid width of the meaningful image for
    a compressed file, whether or not there is padding or a restart
    marker.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_PIXEL_X_DIMENSION)
  + ### TAG\_PIXEL\_Y\_DIMENSION

    public static final int TAG\_PIXEL\_Y\_DIMENSION

    A tag indicating the pixel Y dimension (type SHORT or LONG).
    This value records the valid height of the meaningful image for
    a compressed file, whether or not there is padding or a restart
    marker.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_PIXEL_Y_DIMENSION)
  + ### TAG\_MAKER\_NOTE

    public static final int TAG\_MAKER\_NOTE

    A tag indicating a manufacturer-defined maker note (type
    UNDEFINED).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_MAKER_NOTE)
  + ### TAG\_MARKER\_NOTE

    public static final int TAG\_MARKER\_NOTE

    A tag indicating a manufacturer-defined marker note (type UNDEFINED).
    This tag has been superseded by [`TAG_MAKER_NOTE`](#TAG_MAKER_NOTE).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_MARKER_NOTE)
  + ### TAG\_USER\_COMMENT

    public static final int TAG\_USER\_COMMENT

    A tag indicating a user comment (type UNDEFINED). The first 8
    bytes are used to specify the character encoding.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_USER_COMMENT)
  + ### TAG\_RELATED\_SOUND\_FILE

    public static final int TAG\_RELATED\_SOUND\_FILE

    A tag indicating the name of a related sound file (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_RELATED_SOUND_FILE)
  + ### TAG\_DATE\_TIME\_ORIGINAL

    public static final int TAG\_DATE\_TIME\_ORIGINAL

    A tag indicating the date and time when the original image was
    generated (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_DATE_TIME_ORIGINAL)
  + ### TAG\_DATE\_TIME\_DIGITIZED

    public static final int TAG\_DATE\_TIME\_DIGITIZED

    A tag indicating the date and time when the image was stored as
    digital data (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_DATE_TIME_DIGITIZED)
  + ### TAG\_SUB\_SEC\_TIME

    public static final int TAG\_SUB\_SEC\_TIME

    A tag used to record fractions of seconds for the "DateTime" tag
    (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUB_SEC_TIME)
  + ### TAG\_SUB\_SEC\_TIME\_ORIGINAL

    public static final int TAG\_SUB\_SEC\_TIME\_ORIGINAL

    A tag used to record fractions of seconds for the
    "DateTimeOriginal" tag (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUB_SEC_TIME_ORIGINAL)
  + ### TAG\_SUB\_SEC\_TIME\_DIGITIZED

    public static final int TAG\_SUB\_SEC\_TIME\_DIGITIZED

    A tag used to record fractions of seconds for the
    "DateTimeDigitized" tag (type ASCII).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUB_SEC_TIME_DIGITIZED)
  + ### TAG\_EXPOSURE\_TIME

    public static final int TAG\_EXPOSURE\_TIME

    A tag indicating the exposure time, in seconds (type RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXPOSURE_TIME)
  + ### TAG\_F\_NUMBER

    public static final int TAG\_F\_NUMBER

    A tag indicating the F number (type RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_F_NUMBER)
  + ### TAG\_EXPOSURE\_PROGRAM

    public static final int TAG\_EXPOSURE\_PROGRAM

    A tag indicating the class of the programs used to set exposure
    when the picture was taken (type SHORT).

    See Also:
    :   - [`EXPOSURE_PROGRAM_NOT_DEFINED`](#EXPOSURE_PROGRAM_NOT_DEFINED)
        - [`EXPOSURE_PROGRAM_MANUAL`](#EXPOSURE_PROGRAM_MANUAL)
        - [`EXPOSURE_PROGRAM_NORMAL_PROGRAM`](#EXPOSURE_PROGRAM_NORMAL_PROGRAM)
        - [`EXPOSURE_PROGRAM_APERTURE_PRIORITY`](#EXPOSURE_PROGRAM_APERTURE_PRIORITY)
        - [`EXPOSURE_PROGRAM_SHUTTER_PRIORITY`](#EXPOSURE_PROGRAM_SHUTTER_PRIORITY)
        - [`EXPOSURE_PROGRAM_CREATIVE_PROGRAM`](#EXPOSURE_PROGRAM_CREATIVE_PROGRAM)
        - [`EXPOSURE_PROGRAM_ACTION_PROGRAM`](#EXPOSURE_PROGRAM_ACTION_PROGRAM)
        - [`EXPOSURE_PROGRAM_PORTRAIT_MODE`](#EXPOSURE_PROGRAM_PORTRAIT_MODE)
        - [`EXPOSURE_PROGRAM_LANDSCAPE_MODE`](#EXPOSURE_PROGRAM_LANDSCAPE_MODE)
        - [`EXPOSURE_PROGRAM_MAX_RESERVED`](#EXPOSURE_PROGRAM_MAX_RESERVED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXPOSURE_PROGRAM)
  + ### EXPOSURE\_PROGRAM\_NOT\_DEFINED

    public static final int EXPOSURE\_PROGRAM\_NOT\_DEFINED

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_NOT_DEFINED)
  + ### EXPOSURE\_PROGRAM\_MANUAL

    public static final int EXPOSURE\_PROGRAM\_MANUAL

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_MANUAL)
  + ### EXPOSURE\_PROGRAM\_NORMAL\_PROGRAM

    public static final int EXPOSURE\_PROGRAM\_NORMAL\_PROGRAM

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_NORMAL_PROGRAM)
  + ### EXPOSURE\_PROGRAM\_APERTURE\_PRIORITY

    public static final int EXPOSURE\_PROGRAM\_APERTURE\_PRIORITY

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_APERTURE_PRIORITY)
  + ### EXPOSURE\_PROGRAM\_SHUTTER\_PRIORITY

    public static final int EXPOSURE\_PROGRAM\_SHUTTER\_PRIORITY

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_SHUTTER_PRIORITY)
  + ### EXPOSURE\_PROGRAM\_CREATIVE\_PROGRAM

    public static final int EXPOSURE\_PROGRAM\_CREATIVE\_PROGRAM

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_CREATIVE_PROGRAM)
  + ### EXPOSURE\_PROGRAM\_ACTION\_PROGRAM

    public static final int EXPOSURE\_PROGRAM\_ACTION\_PROGRAM

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_ACTION_PROGRAM)
  + ### EXPOSURE\_PROGRAM\_PORTRAIT\_MODE

    public static final int EXPOSURE\_PROGRAM\_PORTRAIT\_MODE

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_PORTRAIT_MODE)
  + ### EXPOSURE\_PROGRAM\_LANDSCAPE\_MODE

    public static final int EXPOSURE\_PROGRAM\_LANDSCAPE\_MODE

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_LANDSCAPE_MODE)
  + ### EXPOSURE\_PROGRAM\_MAX\_RESERVED

    public static final int EXPOSURE\_PROGRAM\_MAX\_RESERVED

    A value to be used with the "ExposureProgram" tag.

    See Also:
    :   - [`TAG_EXPOSURE_PROGRAM`](#TAG_EXPOSURE_PROGRAM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_PROGRAM_MAX_RESERVED)
  + ### TAG\_SPECTRAL\_SENSITIVITY

    public static final int TAG\_SPECTRAL\_SENSITIVITY

    A tag indicating the spectral sensitivity of each channel of
    the camera used (type ASCII). The tag value is an ASCII string
    compatible with the ASTM standard.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SPECTRAL_SENSITIVITY)
  + ### TAG\_ISO\_SPEED\_RATINGS

    public static final int TAG\_ISO\_SPEED\_RATINGS

    A tag indicating the ISO speed and ISO latitude of the camera
    or input device, as specified in ISO 12232xiv (type
    SHORT).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_ISO_SPEED_RATINGS)
  + ### TAG\_OECF

    public static final int TAG\_OECF

    A tag indicating the optoelectric conversion function,
    specified in ISO 14254xv (type UNDEFINED). OECF is
    the relationship between the camera optical input and the image
    values.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_OECF)
  + ### TAG\_SHUTTER\_SPEED\_VALUE

    public static final int TAG\_SHUTTER\_SPEED\_VALUE

    A tag indicating the shutter speed (type SRATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SHUTTER_SPEED_VALUE)
  + ### TAG\_APERTURE\_VALUE

    public static final int TAG\_APERTURE\_VALUE

    A tag indicating the lens aperture (type RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_APERTURE_VALUE)
  + ### TAG\_BRIGHTNESS\_VALUE

    public static final int TAG\_BRIGHTNESS\_VALUE

    A tag indicating the value of brightness (type SRATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_BRIGHTNESS_VALUE)
  + ### TAG\_EXPOSURE\_BIAS\_VALUE

    public static final int TAG\_EXPOSURE\_BIAS\_VALUE

    A tag indicating the exposure bias (type SRATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXPOSURE_BIAS_VALUE)
  + ### TAG\_MAX\_APERTURE\_VALUE

    public static final int TAG\_MAX\_APERTURE\_VALUE

    A tag indicating the smallest F number of the lens (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_MAX_APERTURE_VALUE)
  + ### TAG\_SUBJECT\_DISTANCE

    public static final int TAG\_SUBJECT\_DISTANCE

    A tag indicating the distance to the subject, in meters (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUBJECT_DISTANCE)
  + ### TAG\_METERING\_MODE

    public static final int TAG\_METERING\_MODE

    A tag indicating the metering mode (type SHORT).

    See Also:
    :   - [`METERING_MODE_UNKNOWN`](#METERING_MODE_UNKNOWN)
        - [`METERING_MODE_AVERAGE`](#METERING_MODE_AVERAGE)
        - [`METERING_MODE_CENTER_WEIGHTED_AVERAGE`](#METERING_MODE_CENTER_WEIGHTED_AVERAGE)
        - [`METERING_MODE_SPOT`](#METERING_MODE_SPOT)
        - [`METERING_MODE_MULTI_SPOT`](#METERING_MODE_MULTI_SPOT)
        - [`METERING_MODE_PATTERN`](#METERING_MODE_PATTERN)
        - [`METERING_MODE_PARTIAL`](#METERING_MODE_PARTIAL)
        - [`METERING_MODE_MIN_RESERVED`](#METERING_MODE_MIN_RESERVED)
        - [`METERING_MODE_MAX_RESERVED`](#METERING_MODE_MAX_RESERVED)
        - [`METERING_MODE_OTHER`](#METERING_MODE_OTHER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_METERING_MODE)
  + ### METERING\_MODE\_UNKNOWN

    public static final int METERING\_MODE\_UNKNOWN

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_UNKNOWN)
  + ### METERING\_MODE\_AVERAGE

    public static final int METERING\_MODE\_AVERAGE

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_AVERAGE)
  + ### METERING\_MODE\_CENTER\_WEIGHTED\_AVERAGE

    public static final int METERING\_MODE\_CENTER\_WEIGHTED\_AVERAGE

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_CENTER_WEIGHTED_AVERAGE)
  + ### METERING\_MODE\_SPOT

    public static final int METERING\_MODE\_SPOT

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_SPOT)
  + ### METERING\_MODE\_MULTI\_SPOT

    public static final int METERING\_MODE\_MULTI\_SPOT

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_MULTI_SPOT)
  + ### METERING\_MODE\_PATTERN

    public static final int METERING\_MODE\_PATTERN

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_PATTERN)
  + ### METERING\_MODE\_PARTIAL

    public static final int METERING\_MODE\_PARTIAL

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_PARTIAL)
  + ### METERING\_MODE\_MIN\_RESERVED

    public static final int METERING\_MODE\_MIN\_RESERVED

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_MIN_RESERVED)
  + ### METERING\_MODE\_MAX\_RESERVED

    public static final int METERING\_MODE\_MAX\_RESERVED

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_MAX_RESERVED)
  + ### METERING\_MODE\_OTHER

    public static final int METERING\_MODE\_OTHER

    A value to be used with the "MeteringMode" tag.

    See Also:
    :   - [`TAG_METERING_MODE`](#TAG_METERING_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.METERING_MODE_OTHER)
  + ### TAG\_LIGHT\_SOURCE

    public static final int TAG\_LIGHT\_SOURCE

    A tag indicatingthe kind of light source (type SHORT).

    See Also:
    :   - [`LIGHT_SOURCE_UNKNOWN`](#LIGHT_SOURCE_UNKNOWN)
        - [`LIGHT_SOURCE_DAYLIGHT`](#LIGHT_SOURCE_DAYLIGHT)
        - [`LIGHT_SOURCE_FLUORESCENT`](#LIGHT_SOURCE_FLUORESCENT)
        - [`LIGHT_SOURCE_TUNGSTEN`](#LIGHT_SOURCE_TUNGSTEN)
        - [`LIGHT_SOURCE_STANDARD_LIGHT_A`](#LIGHT_SOURCE_STANDARD_LIGHT_A)
        - [`LIGHT_SOURCE_STANDARD_LIGHT_B`](#LIGHT_SOURCE_STANDARD_LIGHT_B)
        - [`LIGHT_SOURCE_STANDARD_LIGHT_C`](#LIGHT_SOURCE_STANDARD_LIGHT_C)
        - [`LIGHT_SOURCE_D55`](#LIGHT_SOURCE_D55)
        - [`LIGHT_SOURCE_D65`](#LIGHT_SOURCE_D65)
        - [`LIGHT_SOURCE_D75`](#LIGHT_SOURCE_D75)
        - [`LIGHT_SOURCE_OTHER`](#LIGHT_SOURCE_OTHER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_LIGHT_SOURCE)
  + ### LIGHT\_SOURCE\_UNKNOWN

    public static final int LIGHT\_SOURCE\_UNKNOWN

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_UNKNOWN)
  + ### LIGHT\_SOURCE\_DAYLIGHT

    public static final int LIGHT\_SOURCE\_DAYLIGHT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_DAYLIGHT)
  + ### LIGHT\_SOURCE\_FLUORESCENT

    public static final int LIGHT\_SOURCE\_FLUORESCENT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_FLUORESCENT)
  + ### LIGHT\_SOURCE\_TUNGSTEN

    public static final int LIGHT\_SOURCE\_TUNGSTEN

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_TUNGSTEN)
  + ### LIGHT\_SOURCE\_FLASH

    public static final int LIGHT\_SOURCE\_FLASH

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_FLASH)
  + ### LIGHT\_SOURCE\_FINE\_WEATHER

    public static final int LIGHT\_SOURCE\_FINE\_WEATHER

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_FINE_WEATHER)
  + ### LIGHT\_SOURCE\_CLOUDY\_WEATHER

    public static final int LIGHT\_SOURCE\_CLOUDY\_WEATHER

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_CLOUDY_WEATHER)
  + ### LIGHT\_SOURCE\_SHADE

    public static final int LIGHT\_SOURCE\_SHADE

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_SHADE)
  + ### LIGHT\_SOURCE\_DAYLIGHT\_FLUORESCENT

    public static final int LIGHT\_SOURCE\_DAYLIGHT\_FLUORESCENT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_DAYLIGHT_FLUORESCENT)
  + ### LIGHT\_SOURCE\_DAY\_WHITE\_FLUORESCENT

    public static final int LIGHT\_SOURCE\_DAY\_WHITE\_FLUORESCENT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_DAY_WHITE_FLUORESCENT)
  + ### LIGHT\_SOURCE\_COOL\_WHITE\_FLUORESCENT

    public static final int LIGHT\_SOURCE\_COOL\_WHITE\_FLUORESCENT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_COOL_WHITE_FLUORESCENT)
  + ### LIGHT\_SOURCE\_WHITE\_FLUORESCENT

    public static final int LIGHT\_SOURCE\_WHITE\_FLUORESCENT

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_WHITE_FLUORESCENT)
  + ### LIGHT\_SOURCE\_STANDARD\_LIGHT\_A

    public static final int LIGHT\_SOURCE\_STANDARD\_LIGHT\_A

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_STANDARD_LIGHT_A)
  + ### LIGHT\_SOURCE\_STANDARD\_LIGHT\_B

    public static final int LIGHT\_SOURCE\_STANDARD\_LIGHT\_B

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_STANDARD_LIGHT_B)
  + ### LIGHT\_SOURCE\_STANDARD\_LIGHT\_C

    public static final int LIGHT\_SOURCE\_STANDARD\_LIGHT\_C

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_STANDARD_LIGHT_C)
  + ### LIGHT\_SOURCE\_D55

    public static final int LIGHT\_SOURCE\_D55

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_D55)
  + ### LIGHT\_SOURCE\_D65

    public static final int LIGHT\_SOURCE\_D65

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_D65)
  + ### LIGHT\_SOURCE\_D75

    public static final int LIGHT\_SOURCE\_D75

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_D75)
  + ### LIGHT\_SOURCE\_D50

    public static final int LIGHT\_SOURCE\_D50

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_D50)
  + ### LIGHT\_SOURCE\_ISO\_STUDIO\_TUNGSTEN

    public static final int LIGHT\_SOURCE\_ISO\_STUDIO\_TUNGSTEN

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN)
  + ### LIGHT\_SOURCE\_OTHER

    public static final int LIGHT\_SOURCE\_OTHER

    A value to be used with the "LightSource" tag.

    See Also:
    :   - [`TAG_LIGHT_SOURCE`](#TAG_LIGHT_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.LIGHT_SOURCE_OTHER)
  + ### TAG\_FLASH

    public static final int TAG\_FLASH

    A tag indicating the flash firing status and flash return
    status (type SHORT).

    See Also:
    :   - [`FLASH_DID_NOT_FIRE`](#FLASH_DID_NOT_FIRE)
        - [`FLASH_FIRED`](#FLASH_FIRED)
        - [`FLASH_STROBE_RETURN_LIGHT_NOT_DETECTED`](#FLASH_STROBE_RETURN_LIGHT_NOT_DETECTED)
        - [`FLASH_STROBE_RETURN_LIGHT_DETECTED`](#FLASH_STROBE_RETURN_LIGHT_DETECTED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FLASH)
  + ### FLASH\_DID\_NOT\_FIRE

    public static final int FLASH\_DID\_NOT\_FIRE

    A value to be used with the "Flash" tag, indicating that the
    flash did not fire.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_DID_NOT_FIRE)
  + ### FLASH\_FIRED

    public static final int FLASH\_FIRED

    A value to be used with the "Flash" tag, indicating that the
    flash fired, but the strobe return status is unknown.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_FIRED)
  + ### FLASH\_STROBE\_RETURN\_LIGHT\_NOT\_DETECTED

    public static final int FLASH\_STROBE\_RETURN\_LIGHT\_NOT\_DETECTED

    A value to be used with the "Flash" tag, indicating that the
    flash fired, but the strobe return light was not detected.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_STROBE_RETURN_LIGHT_NOT_DETECTED)
  + ### FLASH\_STROBE\_RETURN\_LIGHT\_DETECTED

    public static final int FLASH\_STROBE\_RETURN\_LIGHT\_DETECTED

    A value to be used with the "Flash" tag, indicating that the
    flash fired, and the strobe return light was detected.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_STROBE_RETURN_LIGHT_DETECTED)
  + ### FLASH\_MASK\_FIRED

    public static final int FLASH\_MASK\_FIRED

    A mask to be used with the "Flash" tag, indicating that the
    flash fired.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_FIRED)
  + ### FLASH\_MASK\_RETURN\_NOT\_DETECTED

    public static final int FLASH\_MASK\_RETURN\_NOT\_DETECTED

    A mask to be used with the "Flash" tag, indicating strobe return
    light not detected.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_RETURN_NOT_DETECTED)
  + ### FLASH\_MASK\_RETURN\_DETECTED

    public static final int FLASH\_MASK\_RETURN\_DETECTED

    A mask to be used with the "Flash" tag, indicating strobe return
    light detected.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_RETURN_DETECTED)
  + ### FLASH\_MASK\_MODE\_FLASH\_FIRING

    public static final int FLASH\_MASK\_MODE\_FLASH\_FIRING

    A mask to be used with the "Flash" tag, indicating compulsory flash
    firing mode.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_MODE_FLASH_FIRING)
  + ### FLASH\_MASK\_MODE\_FLASH\_SUPPRESSION

    public static final int FLASH\_MASK\_MODE\_FLASH\_SUPPRESSION

    A mask to be used with the "Flash" tag, indicating compulsory flash
    suppression mode.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_MODE_FLASH_SUPPRESSION)
  + ### FLASH\_MASK\_MODE\_AUTO

    public static final int FLASH\_MASK\_MODE\_AUTO

    A mask to be used with the "Flash" tag, indicating auto mode.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_MODE_AUTO)
  + ### FLASH\_MASK\_FUNCTION\_NOT\_PRESENT

    public static final int FLASH\_MASK\_FUNCTION\_NOT\_PRESENT

    A mask to be used with the "Flash" tag, indicating no flash function
    present.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_FUNCTION_NOT_PRESENT)
  + ### FLASH\_MASK\_RED\_EYE\_REDUCTION

    public static final int FLASH\_MASK\_RED\_EYE\_REDUCTION

    A mask to be used with the "Flash" tag, indicating red-eye reduction
    supported.

    See Also:
    :   - [`TAG_FLASH`](#TAG_FLASH)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FLASH_MASK_RED_EYE_REDUCTION)
  + ### TAG\_FOCAL\_LENGTH

    public static final int TAG\_FOCAL\_LENGTH

    A tag indicating the actual focal length of the lens, in
    millimeters (type RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FOCAL_LENGTH)
  + ### TAG\_SUBJECT\_AREA

    public static final int TAG\_SUBJECT\_AREA

    A tag indicating the location and area of the main subject in
    the overall scene.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUBJECT_AREA)
  + ### TAG\_FLASH\_ENERGY

    public static final int TAG\_FLASH\_ENERGY

    A tag indicating the strobe energy at the time the image was
    captured, as measured in Beam Candle Power Seconds (BCPS) (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FLASH_ENERGY)
  + ### TAG\_SPATIAL\_FREQUENCY\_RESPONSE

    public static final int TAG\_SPATIAL\_FREQUENCY\_RESPONSE

    A tag indicating the camera or input device spatial frequency
    table and SFR values in the direction of image width, image
    height, and diagonal direction, as specified in ISO
    12233xvi (type UNDEFINED).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SPATIAL_FREQUENCY_RESPONSE)
  + ### TAG\_FOCAL\_PLANE\_X\_RESOLUTION

    public static final int TAG\_FOCAL\_PLANE\_X\_RESOLUTION

    Indicates the number of pixels in the image width (X) direction
    per FocalPlaneResolutionUnit on the camera focal plane (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FOCAL_PLANE_X_RESOLUTION)
  + ### TAG\_FOCAL\_PLANE\_Y\_RESOLUTION

    public static final int TAG\_FOCAL\_PLANE\_Y\_RESOLUTION

    Indicate the number of pixels in the image height (Y) direction
    per FocalPlaneResolutionUnit on the camera focal plane (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FOCAL_PLANE_Y_RESOLUTION)
  + ### TAG\_FOCAL\_PLANE\_RESOLUTION\_UNIT

    public static final int TAG\_FOCAL\_PLANE\_RESOLUTION\_UNIT

    Indicates the unit for measuring FocalPlaneXResolution and
    FocalPlaneYResolution (type SHORT).

    See Also:
    :   - [`FOCAL_PLANE_RESOLUTION_UNIT_NONE`](#FOCAL_PLANE_RESOLUTION_UNIT_NONE)
        - [`FOCAL_PLANE_RESOLUTION_UNIT_INCH`](#FOCAL_PLANE_RESOLUTION_UNIT_INCH)
        - [`FOCAL_PLANE_RESOLUTION_UNIT_CENTIMETER`](#FOCAL_PLANE_RESOLUTION_UNIT_CENTIMETER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FOCAL_PLANE_RESOLUTION_UNIT)
  + ### FOCAL\_PLANE\_RESOLUTION\_UNIT\_NONE

    public static final int FOCAL\_PLANE\_RESOLUTION\_UNIT\_NONE

    A value to be used with the "FocalPlaneResolutionUnit" tag.

    See Also:
    :   - [`TAG_FOCAL_PLANE_RESOLUTION_UNIT`](#TAG_FOCAL_PLANE_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FOCAL_PLANE_RESOLUTION_UNIT_NONE)
  + ### FOCAL\_PLANE\_RESOLUTION\_UNIT\_INCH

    public static final int FOCAL\_PLANE\_RESOLUTION\_UNIT\_INCH

    A value to be used with the "FocalPlaneXResolution" tag.

    See Also:
    :   - [`TAG_FOCAL_PLANE_RESOLUTION_UNIT`](#TAG_FOCAL_PLANE_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FOCAL_PLANE_RESOLUTION_UNIT_INCH)
  + ### FOCAL\_PLANE\_RESOLUTION\_UNIT\_CENTIMETER

    public static final int FOCAL\_PLANE\_RESOLUTION\_UNIT\_CENTIMETER

    A value to be used with the "FocalPlaneXResolution" tag.

    See Also:
    :   - [`TAG_FOCAL_PLANE_RESOLUTION_UNIT`](#TAG_FOCAL_PLANE_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FOCAL_PLANE_RESOLUTION_UNIT_CENTIMETER)
  + ### TAG\_SUBJECT\_LOCATION

    public static final int TAG\_SUBJECT\_LOCATION

    A tag indicating the column and row of the center pixel of the
    main subject in the scene (type SHORT, count = 2).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUBJECT_LOCATION)
  + ### TAG\_EXPOSURE\_INDEX

    public static final int TAG\_EXPOSURE\_INDEX

    A tag indicating the exposure index selected on the camera or
    input device at the time the image was captured (type
    RATIONAL).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXPOSURE_INDEX)
  + ### TAG\_SENSING\_METHOD

    public static final int TAG\_SENSING\_METHOD

    A tag indicating the sensor type on the camera or input device
    (type SHORT).

    See Also:
    :   - [`SENSING_METHOD_NOT_DEFINED`](#SENSING_METHOD_NOT_DEFINED)
        - [`SENSING_METHOD_ONE_CHIP_COLOR_AREA_SENSOR`](#SENSING_METHOD_ONE_CHIP_COLOR_AREA_SENSOR)
        - [`SENSING_METHOD_TWO_CHIP_COLOR_AREA_SENSOR`](#SENSING_METHOD_TWO_CHIP_COLOR_AREA_SENSOR)
        - [`SENSING_METHOD_THREE_CHIP_COLOR_AREA_SENSOR`](#SENSING_METHOD_THREE_CHIP_COLOR_AREA_SENSOR)
        - [`SENSING_METHOD_COLOR_SEQUENTIAL_AREA_SENSOR`](#SENSING_METHOD_COLOR_SEQUENTIAL_AREA_SENSOR)
        - [`SENSING_METHOD_TRILINEAR_SENSOR`](#SENSING_METHOD_TRILINEAR_SENSOR)
        - [`SENSING_METHOD_COLOR_SEQUENTIAL_LINEAR_SENSOR`](#SENSING_METHOD_COLOR_SEQUENTIAL_LINEAR_SENSOR)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SENSING_METHOD)
  + ### SENSING\_METHOD\_NOT\_DEFINED

    public static final int SENSING\_METHOD\_NOT\_DEFINED

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_NOT_DEFINED)
  + ### SENSING\_METHOD\_ONE\_CHIP\_COLOR\_AREA\_SENSOR

    public static final int SENSING\_METHOD\_ONE\_CHIP\_COLOR\_AREA\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_ONE_CHIP_COLOR_AREA_SENSOR)
  + ### SENSING\_METHOD\_TWO\_CHIP\_COLOR\_AREA\_SENSOR

    public static final int SENSING\_METHOD\_TWO\_CHIP\_COLOR\_AREA\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_TWO_CHIP_COLOR_AREA_SENSOR)
  + ### SENSING\_METHOD\_THREE\_CHIP\_COLOR\_AREA\_SENSOR

    public static final int SENSING\_METHOD\_THREE\_CHIP\_COLOR\_AREA\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_THREE_CHIP_COLOR_AREA_SENSOR)
  + ### SENSING\_METHOD\_COLOR\_SEQUENTIAL\_AREA\_SENSOR

    public static final int SENSING\_METHOD\_COLOR\_SEQUENTIAL\_AREA\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_COLOR_SEQUENTIAL_AREA_SENSOR)
  + ### SENSING\_METHOD\_TRILINEAR\_SENSOR

    public static final int SENSING\_METHOD\_TRILINEAR\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_TRILINEAR_SENSOR)
  + ### SENSING\_METHOD\_COLOR\_SEQUENTIAL\_LINEAR\_SENSOR

    public static final int SENSING\_METHOD\_COLOR\_SEQUENTIAL\_LINEAR\_SENSOR

    A value to be used with the "SensingMethod" tag.

    See Also:
    :   - [`TAG_SENSING_METHOD`](#TAG_SENSING_METHOD)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SENSING_METHOD_COLOR_SEQUENTIAL_LINEAR_SENSOR)
  + ### TAG\_FILE\_SOURCE

    public static final int TAG\_FILE\_SOURCE

    A tag indicating the image source (type UNDEFINED).

    See Also:
    :   - [`FILE_SOURCE_DSC`](#FILE_SOURCE_DSC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FILE_SOURCE)
  + ### FILE\_SOURCE\_DSC

    public static final int FILE\_SOURCE\_DSC

    A value to be used with the "FileSource" tag.

    See Also:
    :   - [`TAG_FILE_SOURCE`](#TAG_FILE_SOURCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.FILE_SOURCE_DSC)
  + ### TAG\_SCENE\_TYPE

    public static final int TAG\_SCENE\_TYPE

    A tag indicating the type of scene (type UNDEFINED).

    See Also:
    :   - [`SCENE_TYPE_DSC`](#SCENE_TYPE_DSC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SCENE_TYPE)
  + ### SCENE\_TYPE\_DSC

    public static final int SCENE\_TYPE\_DSC

    A value to be used with the "SceneType" tag.

    See Also:
    :   - [`TAG_SCENE_TYPE`](#TAG_SCENE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SCENE_TYPE_DSC)
  + ### TAG\_CFA\_PATTERN

    public static final int TAG\_CFA\_PATTERN

    A tag indicating the color filter array geometric pattern of
    the image sensor when a one-chip color area sensor if used
    (type UNDEFINED).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_CFA_PATTERN)
  + ### TAG\_CUSTOM\_RENDERED

    public static final int TAG\_CUSTOM\_RENDERED

    A tag indicating the use of special processing on image data,
    such as rendering geared to output.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_CUSTOM_RENDERED)
  + ### CUSTOM\_RENDERED\_NORMAL

    public static final int CUSTOM\_RENDERED\_NORMAL

    A value to be used with the "CustomRendered" tag.

    See Also:
    :   - [`TAG_CUSTOM_RENDERED`](#TAG_CUSTOM_RENDERED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.CUSTOM_RENDERED_NORMAL)
  + ### CUSTOM\_RENDERED\_CUSTOM

    public static final int CUSTOM\_RENDERED\_CUSTOM

    A value to be used with the "CustomRendered" tag.

    See Also:
    :   - [`TAG_CUSTOM_RENDERED`](#TAG_CUSTOM_RENDERED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.CUSTOM_RENDERED_CUSTOM)
  + ### TAG\_EXPOSURE\_MODE

    public static final int TAG\_EXPOSURE\_MODE

    A tag indicating the exposure mode set when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_EXPOSURE_MODE)
  + ### EXPOSURE\_MODE\_AUTO\_EXPOSURE

    public static final int EXPOSURE\_MODE\_AUTO\_EXPOSURE

    A value to be used with the "ExposureMode" tag.

    See Also:
    :   - [`TAG_EXPOSURE_MODE`](#TAG_EXPOSURE_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_MODE_AUTO_EXPOSURE)
  + ### EXPOSURE\_MODE\_MANUAL\_EXPOSURE

    public static final int EXPOSURE\_MODE\_MANUAL\_EXPOSURE

    A value to be used with the "ExposureMode" tag.

    See Also:
    :   - [`TAG_EXPOSURE_MODE`](#TAG_EXPOSURE_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_MODE_MANUAL_EXPOSURE)
  + ### EXPOSURE\_MODE\_AUTO\_BRACKET

    public static final int EXPOSURE\_MODE\_AUTO\_BRACKET

    A value to be used with the "ExposureMode" tag.

    See Also:
    :   - [`TAG_EXPOSURE_MODE`](#TAG_EXPOSURE_MODE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.EXPOSURE_MODE_AUTO_BRACKET)
  + ### TAG\_WHITE\_BALANCE

    public static final int TAG\_WHITE\_BALANCE

    A tag indicating the white balance mode set when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_WHITE_BALANCE)
  + ### WHITE\_BALANCE\_AUTO

    public static final int WHITE\_BALANCE\_AUTO

    A value to be used with the "WhiteBalance" tag.

    See Also:
    :   - [`TAG_WHITE_BALANCE`](#TAG_WHITE_BALANCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.WHITE_BALANCE_AUTO)
  + ### WHITE\_BALANCE\_MANUAL

    public static final int WHITE\_BALANCE\_MANUAL

    A value to be used with the "WhiteBalance" tag.

    See Also:
    :   - [`TAG_WHITE_BALANCE`](#TAG_WHITE_BALANCE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.WHITE_BALANCE_MANUAL)
  + ### TAG\_DIGITAL\_ZOOM\_RATIO

    public static final int TAG\_DIGITAL\_ZOOM\_RATIO

    A tag indicating the digital zoom ratio when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_DIGITAL_ZOOM_RATIO)
  + ### TAG\_FOCAL\_LENGTH\_IN\_35MM\_FILM

    public static final int TAG\_FOCAL\_LENGTH\_IN\_35MM\_FILM

    A tag indicating the equivalent focal length assuming a 35mm film
    camera, in millimeters.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_FOCAL_LENGTH_IN_35MM_FILM)
  + ### TAG\_SCENE\_CAPTURE\_TYPE

    public static final int TAG\_SCENE\_CAPTURE\_TYPE

    A tag indicating the type of scene that was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SCENE_CAPTURE_TYPE)
  + ### SCENE\_CAPTURE\_TYPE\_STANDARD

    public static final int SCENE\_CAPTURE\_TYPE\_STANDARD

    A value to be used with the "SceneCaptureType" tag.

    See Also:
    :   - [`TAG_SCENE_CAPTURE_TYPE`](#TAG_SCENE_CAPTURE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SCENE_CAPTURE_TYPE_STANDARD)
  + ### SCENE\_CAPTURE\_TYPE\_LANDSCAPE

    public static final int SCENE\_CAPTURE\_TYPE\_LANDSCAPE

    A value to be used with the "SceneCaptureType" tag.

    See Also:
    :   - [`TAG_SCENE_CAPTURE_TYPE`](#TAG_SCENE_CAPTURE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SCENE_CAPTURE_TYPE_LANDSCAPE)
  + ### SCENE\_CAPTURE\_TYPE\_PORTRAIT

    public static final int SCENE\_CAPTURE\_TYPE\_PORTRAIT

    A value to be used with the "SceneCaptureType" tag.

    See Also:
    :   - [`TAG_SCENE_CAPTURE_TYPE`](#TAG_SCENE_CAPTURE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SCENE_CAPTURE_TYPE_PORTRAIT)
  + ### SCENE\_CAPTURE\_TYPE\_NIGHT\_SCENE

    public static final int SCENE\_CAPTURE\_TYPE\_NIGHT\_SCENE

    A value to be used with the "SceneCaptureType" tag.

    See Also:
    :   - [`TAG_SCENE_CAPTURE_TYPE`](#TAG_SCENE_CAPTURE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SCENE_CAPTURE_TYPE_NIGHT_SCENE)
  + ### TAG\_GAIN\_CONTROL

    public static final int TAG\_GAIN\_CONTROL

    A tag indicating the degree of overall image gain adjustment.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_GAIN_CONTROL)
  + ### GAIN\_CONTROL\_NONE

    public static final int GAIN\_CONTROL\_NONE

    A value to be used with the "GainControl" tag.

    See Also:
    :   - [`TAG_GAIN_CONTROL`](#TAG_GAIN_CONTROL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.GAIN_CONTROL_NONE)
  + ### GAIN\_CONTROL\_LOW\_GAIN\_UP

    public static final int GAIN\_CONTROL\_LOW\_GAIN\_UP

    A value to be used with the "GainControl" tag.

    See Also:
    :   - [`TAG_GAIN_CONTROL`](#TAG_GAIN_CONTROL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.GAIN_CONTROL_LOW_GAIN_UP)
  + ### GAIN\_CONTROL\_HIGH\_GAIN\_UP

    public static final int GAIN\_CONTROL\_HIGH\_GAIN\_UP

    A value to be used with the "GainControl" tag.

    See Also:
    :   - [`TAG_GAIN_CONTROL`](#TAG_GAIN_CONTROL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.GAIN_CONTROL_HIGH_GAIN_UP)
  + ### GAIN\_CONTROL\_LOW\_GAIN\_DOWN

    public static final int GAIN\_CONTROL\_LOW\_GAIN\_DOWN

    A value to be used with the "GainControl" tag.

    See Also:
    :   - [`TAG_GAIN_CONTROL`](#TAG_GAIN_CONTROL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.GAIN_CONTROL_LOW_GAIN_DOWN)
  + ### GAIN\_CONTROL\_HIGH\_GAIN\_DOWN

    public static final int GAIN\_CONTROL\_HIGH\_GAIN\_DOWN

    A value to be used with the "GainControl" tag.

    See Also:
    :   - [`TAG_GAIN_CONTROL`](#TAG_GAIN_CONTROL)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.GAIN_CONTROL_HIGH_GAIN_DOWN)
  + ### TAG\_CONTRAST

    public static final int TAG\_CONTRAST

    A tag indicating the direction of contrast processing applied
    by the camera when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_CONTRAST)
  + ### CONTRAST\_NORMAL

    public static final int CONTRAST\_NORMAL

    A value to be used with the "Contrast" tag.

    See Also:
    :   - [`TAG_CONTRAST`](#TAG_CONTRAST)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.CONTRAST_NORMAL)
  + ### CONTRAST\_SOFT

    public static final int CONTRAST\_SOFT

    A value to be used with the "Contrast" tag.

    See Also:
    :   - [`TAG_CONTRAST`](#TAG_CONTRAST)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.CONTRAST_SOFT)
  + ### CONTRAST\_HARD

    public static final int CONTRAST\_HARD

    A value to be used with the "Contrast" tag.

    See Also:
    :   - [`TAG_CONTRAST`](#TAG_CONTRAST)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.CONTRAST_HARD)
  + ### TAG\_SATURATION

    public static final int TAG\_SATURATION

    A tag indicating the direction of saturation processing
    applied by the camera when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SATURATION)
  + ### SATURATION\_NORMAL

    public static final int SATURATION\_NORMAL

    A value to be used with the "Saturation" tag.

    See Also:
    :   - [`TAG_SATURATION`](#TAG_SATURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SATURATION_NORMAL)
  + ### SATURATION\_LOW

    public static final int SATURATION\_LOW

    A value to be used with the "Saturation" tag.

    See Also:
    :   - [`TAG_SATURATION`](#TAG_SATURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SATURATION_LOW)
  + ### SATURATION\_HIGH

    public static final int SATURATION\_HIGH

    A value to be used with the "Saturation" tag.

    See Also:
    :   - [`TAG_SATURATION`](#TAG_SATURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SATURATION_HIGH)
  + ### TAG\_SHARPNESS

    public static final int TAG\_SHARPNESS

    A tag indicating the direction of sharpness processing
    applied by the camera when the image was shot.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SHARPNESS)
  + ### SHARPNESS\_NORMAL

    public static final int SHARPNESS\_NORMAL

    A value to be used with the "Sharpness" tag.

    See Also:
    :   - [`TAG_SHARPNESS`](#TAG_SHARPNESS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SHARPNESS_NORMAL)
  + ### SHARPNESS\_SOFT

    public static final int SHARPNESS\_SOFT

    A value to be used with the "Sharpness" tag.

    See Also:
    :   - [`TAG_SHARPNESS`](#TAG_SHARPNESS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SHARPNESS_SOFT)
  + ### SHARPNESS\_HARD

    public static final int SHARPNESS\_HARD

    A value to be used with the "Sharpness" tag.

    See Also:
    :   - [`TAG_SHARPNESS`](#TAG_SHARPNESS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SHARPNESS_HARD)
  + ### TAG\_DEVICE\_SETTING\_DESCRIPTION

    public static final int TAG\_DEVICE\_SETTING\_DESCRIPTION

    A tag indicating information on the picture-taking conditions
    of a particular camera model.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_DEVICE_SETTING_DESCRIPTION)
  + ### TAG\_SUBJECT\_DISTANCE\_RANGE

    public static final int TAG\_SUBJECT\_DISTANCE\_RANGE

    A tag indicating the distance to the subject.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_SUBJECT_DISTANCE_RANGE)
  + ### SUBJECT\_DISTANCE\_RANGE\_UNKNOWN

    public static final int SUBJECT\_DISTANCE\_RANGE\_UNKNOWN

    A value to be used with the "SubjectDistanceRange" tag.

    See Also:
    :   - [`TAG_SUBJECT_DISTANCE_RANGE`](#TAG_SUBJECT_DISTANCE_RANGE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SUBJECT_DISTANCE_RANGE_UNKNOWN)
  + ### SUBJECT\_DISTANCE\_RANGE\_MACRO

    public static final int SUBJECT\_DISTANCE\_RANGE\_MACRO

    A value to be used with the "SubjectDistanceRange" tag.

    See Also:
    :   - [`TAG_SUBJECT_DISTANCE_RANGE`](#TAG_SUBJECT_DISTANCE_RANGE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SUBJECT_DISTANCE_RANGE_MACRO)
  + ### SUBJECT\_DISTANCE\_RANGE\_CLOSE\_VIEW

    public static final int SUBJECT\_DISTANCE\_RANGE\_CLOSE\_VIEW

    A value to be used with the "SubjectDistanceRange" tag.

    See Also:
    :   - [`TAG_SUBJECT_DISTANCE_RANGE`](#TAG_SUBJECT_DISTANCE_RANGE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SUBJECT_DISTANCE_RANGE_CLOSE_VIEW)
  + ### SUBJECT\_DISTANCE\_RANGE\_DISTANT\_VIEW

    public static final int SUBJECT\_DISTANCE\_RANGE\_DISTANT\_VIEW

    A value to be used with the "SubjectDistanceRange" tag.

    See Also:
    :   - [`TAG_SUBJECT_DISTANCE_RANGE`](#TAG_SUBJECT_DISTANCE_RANGE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.SUBJECT_DISTANCE_RANGE_DISTANT_VIEW)
  + ### TAG\_IMAGE\_UNIQUE\_ID

    public static final int TAG\_IMAGE\_UNIQUE\_ID

    A tag indicating an identifier assigned uniquely to each image.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.ExifTIFFTagSet.TAG_IMAGE_UNIQUE_ID)
* ## Method Details

  + ### getInstance

    public static [ExifTIFFTagSet](ExifTIFFTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of an `ExifTIFFTagSet`.

    Returns:
    :   an `ExifTIFFTagSet` instance.