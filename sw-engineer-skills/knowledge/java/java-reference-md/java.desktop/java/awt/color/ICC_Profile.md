Module [java.desktop](../../../module-summary.md)

Package [java.awt.color](package-summary.md)

# Class ICC\_Profile

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.color.ICC\_Profile

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ICC_ProfileGray`, `ICC_ProfileRGB`

---

public sealed class ICC\_Profile
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")
permits [ICC\_ProfileGray](ICC_ProfileGray.md "class in java.awt.color"), [ICC\_ProfileRGB](ICC_ProfileRGB.md "class in java.awt.color")

A representation of color profile data for device independent and device
dependent color spaces based on the International Color Consortium
Specification ICC.1:2001-12, File Format for Color Profiles, (see
<http://www.color.org>).

An `ICC_ColorSpace` object can be constructed from an appropriate
`ICC_Profile`. Typically, an `ICC_ColorSpace` would be associated
with an ICC Profile which is either an input, display, or output profile (see
the ICC specification). There are also device link, abstract, color space
conversion, and named color profiles. These are less useful for tagging a
color or image, but are useful for other purposes (in particular device link
profiles can provide improved performance for converting from one device's
color space to another's).

ICC Profiles represent transformations from the color space of the profile
(e.g. a monitor) to a Profile Connection Space (PCS). Profiles of interest
for tagging images or colors have a PCS which is one of the two specific
device independent spaces (one CIEXYZ space and one CIELab space) defined in
the ICC Profile Format Specification. Most profiles of interest either have
invertible transformations or explicitly specify transformations going both
directions.

See Also:
:   * [`ICC_ColorSpace`](ICC_ColorSpace.md "class in java.awt.color")
    * [Serialized Form](../../../../serialized-form.md#java.awt.color.ICC_Profile)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CLASS_ABSTRACT`

  Profile class is abstract.

  `static final int`

  `CLASS_COLORSPACECONVERSION`

  Profile class is color space conversion.

  `static final int`

  `CLASS_DEVICELINK`

  Profile class is device link.

  `static final int`

  `CLASS_DISPLAY`

  Profile class is display.

  `static final int`

  `CLASS_INPUT`

  Profile class is input.

  `static final int`

  `CLASS_NAMEDCOLOR`

  Profile class is named color.

  `static final int`

  `CLASS_OUTPUT`

  Profile class is output.

  `static final int`

  `icAbsoluteColorimetric`

  ICC Profile Rendering Intent: AbsoluteColorimetric.

  `static final int`

  `icCurveCount`

  ICC Profile Constant: curveType count.

  `static final int`

  `icCurveData`

  ICC Profile Constant: curveType data.

  `static final int`

  `icHdrAttributes`

  ICC Profile Header Location: device attributes.

  `static final int`

  `icHdrCmmId`

  ICC Profile Header Location: CMM for this profile.

  `static final int`

  `icHdrColorSpace`

  ICC Profile Header Location: color space of data.

  `static final int`

  `icHdrCreator`

  ICC Profile Header Location: profile creator.

  `static final int`

  `icHdrDate`

  ICC Profile Header Location: date profile was created.

  `static final int`

  `icHdrDeviceClass`

  ICC Profile Header Location: type of profile.

  `static final int`

  `icHdrFlags`

  ICC Profile Header Location: various bit settings.

  `static final int`

  `icHdrIlluminant`

  ICC Profile Header Location: profile illuminant.

  `static final int`

  `icHdrMagic`

  ICC Profile Header Location: icMagicNumber.

  `static final int`

  `icHdrManufacturer`

  ICC Profile Header Location: device manufacturer.

  `static final int`

  `icHdrModel`

  ICC Profile Header Location: device model number.

  `static final int`

  `icHdrPcs`

  ICC Profile Header Location: PCS - XYZ or Lab only.

  `static final int`

  `icHdrPlatform`

  ICC Profile Header Location: primary platform.

  `static final int`

  `icHdrProfileID`

  ICC Profile Header Location: profile's ID.

  `static final int`

  `icHdrRenderingIntent`

  ICC Profile Header Location: rendering intent.

  `static final int`

  `icHdrSize`

  ICC Profile Header Location: profile size in bytes.

  `static final int`

  `icHdrVersion`

  ICC Profile Header Location: format version number.

  `static final int`

  `icICCAbsoluteColorimetric`

  ICC Profile Rendering Intent: ICC-AbsoluteColorimetric.

  `static final int`

  `icMediaRelativeColorimetric`

  ICC Profile Rendering Intent: Media-RelativeColorimetric.

  `static final int`

  `icPerceptual`

  ICC Profile Rendering Intent: Perceptual.

  `static final int`

  `icRelativeColorimetric`

  ICC Profile Rendering Intent: RelativeColorimetric.

  `static final int`

  `icSaturation`

  ICC Profile Rendering Intent: Saturation.

  `static final int`

  `icSigAbstractClass`

  ICC Profile Class Signature: 'abst'.

  `static final int`

  `icSigAToB0Tag`

  ICC Profile Tag Signature: 'A2B0'.

  `static final int`

  `icSigAToB1Tag`

  ICC Profile Tag Signature: 'A2B1'.

  `static final int`

  `icSigAToB2Tag`

  ICC Profile Tag Signature: 'A2B2'.

  `static final int`

  `icSigBlueColorantTag`

  ICC Profile Tag Signature: 'bXYZ'.

  `static final int`

  `icSigBlueMatrixColumnTag`

  ICC Profile Tag Signature: 'bXYZ'.

  `static final int`

  `icSigBlueTRCTag`

  ICC Profile Tag Signature: 'bTRC'.

  `static final int`

  `icSigBToA0Tag`

  ICC Profile Tag Signature: 'B2A0'.

  `static final int`

  `icSigBToA1Tag`

  ICC Profile Tag Signature: 'B2A1'.

  `static final int`

  `icSigBToA2Tag`

  ICC Profile Tag Signature: 'B2A2'.

  `static final int`

  `icSigCalibrationDateTimeTag`

  ICC Profile Tag Signature: 'calt'.

  `static final int`

  `icSigCharTargetTag`

  ICC Profile Tag Signature: 'targ'.

  `static final int`

  `icSigChromaticAdaptationTag`

  ICC Profile Tag Signature: 'chad'.

  `static final int`

  `icSigChromaticityTag`

  ICC Profile Tag Signature: 'chrm'.

  `static final int`

  `icSigCmyData`

  ICC Profile Color Space Type Signature: 'CMY '.

  `static final int`

  `icSigCmykData`

  ICC Profile Color Space Type Signature: 'CMYK'.

  `static final int`

  `icSigColorantOrderTag`

  ICC Profile Tag Signature: 'clro'.

  `static final int`

  `icSigColorantTableTag`

  ICC Profile Tag Signature: 'clrt'.

  `static final int`

  `icSigColorSpaceClass`

  ICC Profile Class Signature: 'spac'.

  `static final int`

  `icSigCopyrightTag`

  ICC Profile Tag Signature: 'cprt'.

  `static final int`

  `icSigCrdInfoTag`

  ICC Profile Tag Signature: 'crdi'.

  `static final int`

  `icSigDeviceMfgDescTag`

  ICC Profile Tag Signature: 'dmnd'.

  `static final int`

  `icSigDeviceModelDescTag`

  ICC Profile Tag Signature: 'dmdd'.

  `static final int`

  `icSigDeviceSettingsTag`

  ICC Profile Tag Signature: 'devs'.

  `static final int`

  `icSigDisplayClass`

  ICC Profile Class Signature: 'mntr'.

  `static final int`

  `icSigGamutTag`

  ICC Profile Tag Signature: 'gamt'.

  `static final int`

  `icSigGrayData`

  ICC Profile Color Space Type Signature: 'GRAY'.

  `static final int`

  `icSigGrayTRCTag`

  ICC Profile Tag Signature: 'kTRC'.

  `static final int`

  `icSigGreenColorantTag`

  ICC Profile Tag Signature: 'gXYZ'.

  `static final int`

  `icSigGreenMatrixColumnTag`

  ICC Profile Tag Signature: 'gXYZ'.

  `static final int`

  `icSigGreenTRCTag`

  ICC Profile Tag Signature: 'gTRC'.

  `static final int`

  `icSigHead`

  ICC Profile Tag Signature: 'head' - special.

  `static final int`

  `icSigHlsData`

  ICC Profile Color Space Type Signature: 'HLS'.

  `static final int`

  `icSigHsvData`

  ICC Profile Color Space Type Signature: 'HSV'.

  `static final int`

  `icSigInputClass`

  ICC Profile Class Signature: 'scnr'.

  `static final int`

  `icSigLabData`

  ICC Profile Color Space Type Signature: 'Lab '.

  `static final int`

  `icSigLinkClass`

  ICC Profile Class Signature: 'link'.

  `static final int`

  `icSigLuminanceTag`

  ICC Profile Tag Signature: 'lumi'.

  `static final int`

  `icSigLuvData`

  ICC Profile Color Space Type Signature: 'Luv '.

  `static final int`

  `icSigMeasurementTag`

  ICC Profile Tag Signature: 'meas'.

  `static final int`

  `icSigMediaBlackPointTag`

  ICC Profile Tag Signature: 'bkpt'.

  `static final int`

  `icSigMediaWhitePointTag`

  ICC Profile Tag Signature: 'wtpt'.

  `static final int`

  `icSigNamedColor2Tag`

  ICC Profile Tag Signature: 'ncl2'.

  `static final int`

  `icSigNamedColorClass`

  ICC Profile Class Signature: 'nmcl'.

  `static final int`

  `icSigOutputClass`

  ICC Profile Class Signature: 'prtr'.

  `static final int`

  `icSigOutputResponseTag`

  ICC Profile Tag Signature: 'resp'.

  `static final int`

  `icSigPreview0Tag`

  ICC Profile Tag Signature: 'pre0'.

  `static final int`

  `icSigPreview1Tag`

  ICC Profile Tag Signature: 'pre1'.

  `static final int`

  `icSigPreview2Tag`

  ICC Profile Tag Signature: 'pre2'.

  `static final int`

  `icSigProfileDescriptionTag`

  ICC Profile Tag Signature: 'desc'.

  `static final int`

  `icSigProfileSequenceDescTag`

  ICC Profile Tag Signature: 'pseq'.

  `static final int`

  `icSigPs2CRD0Tag`

  ICC Profile Tag Signature: 'psd0'.

  `static final int`

  `icSigPs2CRD1Tag`

  ICC Profile Tag Signature: 'psd1'.

  `static final int`

  `icSigPs2CRD2Tag`

  ICC Profile Tag Signature: 'psd2'.

  `static final int`

  `icSigPs2CRD3Tag`

  ICC Profile Tag Signature: 'psd3'.

  `static final int`

  `icSigPs2CSATag`

  ICC Profile Tag Signature: 'ps2s'.

  `static final int`

  `icSigPs2RenderingIntentTag`

  ICC Profile Tag Signature: 'ps2i'.

  `static final int`

  `icSigRedColorantTag`

  ICC Profile Tag Signature: 'rXYZ'.

  `static final int`

  `icSigRedMatrixColumnTag`

  ICC Profile Tag Signature: 'rXYZ'.

  `static final int`

  `icSigRedTRCTag`

  ICC Profile Tag Signature: 'rTRC'.

  `static final int`

  `icSigRgbData`

  ICC Profile Color Space Type Signature: 'RGB '.

  `static final int`

  `icSigScreeningDescTag`

  ICC Profile Tag Signature: 'scrd'.

  `static final int`

  `icSigScreeningTag`

  ICC Profile Tag Signature: 'scrn'.

  `static final int`

  `icSigSpace2CLR`

  ICC Profile Color Space Type Signature: '2CLR'.

  `static final int`

  `icSigSpace3CLR`

  ICC Profile Color Space Type Signature: '3CLR'.

  `static final int`

  `icSigSpace4CLR`

  ICC Profile Color Space Type Signature: '4CLR'.

  `static final int`

  `icSigSpace5CLR`

  ICC Profile Color Space Type Signature: '5CLR'.

  `static final int`

  `icSigSpace6CLR`

  ICC Profile Color Space Type Signature: '6CLR'.

  `static final int`

  `icSigSpace7CLR`

  ICC Profile Color Space Type Signature: '7CLR'.

  `static final int`

  `icSigSpace8CLR`

  ICC Profile Color Space Type Signature: '8CLR'.

  `static final int`

  `icSigSpace9CLR`

  ICC Profile Color Space Type Signature: '9CLR'.

  `static final int`

  `icSigSpaceACLR`

  ICC Profile Color Space Type Signature: 'ACLR'.

  `static final int`

  `icSigSpaceBCLR`

  ICC Profile Color Space Type Signature: 'BCLR'.

  `static final int`

  `icSigSpaceCCLR`

  ICC Profile Color Space Type Signature: 'CCLR'.

  `static final int`

  `icSigSpaceDCLR`

  ICC Profile Color Space Type Signature: 'DCLR'.

  `static final int`

  `icSigSpaceECLR`

  ICC Profile Color Space Type Signature: 'ECLR'.

  `static final int`

  `icSigSpaceFCLR`

  ICC Profile Color Space Type Signature: 'FCLR'.

  `static final int`

  `icSigTechnologyTag`

  ICC Profile Tag Signature: 'tech'.

  `static final int`

  `icSigUcrBgTag`

  ICC Profile Tag Signature: 'bfd '.

  `static final int`

  `icSigViewingCondDescTag`

  ICC Profile Tag Signature: 'vued'.

  `static final int`

  `icSigViewingConditionsTag`

  ICC Profile Tag Signature: 'view'.

  `static final int`

  `icSigXYZData`

  ICC Profile Color Space Type Signature: 'XYZ '.

  `static final int`

  `icSigYCbCrData`

  ICC Profile Color Space Type Signature: 'YCbr'.

  `static final int`

  `icSigYxyData`

  ICC Profile Color Space Type Signature: 'Yxy '.

  `static final int`

  `icTagReserved`

  ICC Profile Constant: reserved.

  `static final int`

  `icTagType`

  ICC Profile Constant: tag type signature.

  `static final int`

  `icXYZNumberX`

  ICC Profile Constant: XYZNumber X.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColorSpaceType()`

  Returns the color space type.

  `byte[]`

  `getData()`

  Returns a byte array corresponding to the data of this
  `ICC_Profile`.

  `byte[]`

  `getData(int tagSignature)`

  Returns a particular tagged data element from the profile as a byte
  array.

  `static ICC_Profile`

  `getInstance(byte[] data)`

  Constructs an `ICC_Profile` object corresponding to the data in a
  byte array.

  `static ICC_Profile`

  `getInstance(int cspace)`

  Constructs an `ICC_Profile` corresponding to one of the specific
  color spaces defined by the `ColorSpace` class (for example
  `CS_sRGB`).

  `static ICC_Profile`

  `getInstance(InputStream s)`

  Constructs an `ICC_Profile` corresponding to the data in an
  `InputStream`.

  `static ICC_Profile`

  `getInstance(String fileName)`

  Constructs an `ICC_Profile` corresponding to the data in a file.

  `int`

  `getMajorVersion()`

  Returns profile major version.

  `int`

  `getMinorVersion()`

  Returns profile minor version.

  `int`

  `getNumComponents()`

  Returns the number of color components in the "input" color space of this
  profile.

  `int`

  `getPCSType()`

  Returns the color space type of the Profile Connection Space (PCS).

  `int`

  `getProfileClass()`

  Returns the profile class.

  `protected Object`

  `readResolve()`

  Resolves instances being deserialized into instances registered with CMM.

  `void`

  `setData(int tagSignature,
  byte[] tagData)`

  Sets a particular tagged data element in the profile from a byte array.

  `void`

  `write(OutputStream s)`

  Write this `ICC_Profile` to an `OutputStream`.

  `void`

  `write(String fileName)`

  Write this `ICC_Profile` to a file.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### CLASS\_INPUT

    public static final int CLASS\_INPUT

    Profile class is input.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_INPUT)
  + ### CLASS\_DISPLAY

    public static final int CLASS\_DISPLAY

    Profile class is display.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_DISPLAY)
  + ### CLASS\_OUTPUT

    public static final int CLASS\_OUTPUT

    Profile class is output.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_OUTPUT)
  + ### CLASS\_DEVICELINK

    public static final int CLASS\_DEVICELINK

    Profile class is device link.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_DEVICELINK)
  + ### CLASS\_COLORSPACECONVERSION

    public static final int CLASS\_COLORSPACECONVERSION

    Profile class is color space conversion.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_COLORSPACECONVERSION)
  + ### CLASS\_ABSTRACT

    public static final int CLASS\_ABSTRACT

    Profile class is abstract.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_ABSTRACT)
  + ### CLASS\_NAMEDCOLOR

    public static final int CLASS\_NAMEDCOLOR

    Profile class is named color.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.CLASS_NAMEDCOLOR)
  + ### icSigXYZData

    public static final int icSigXYZData

    ICC Profile Color Space Type Signature: 'XYZ '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigXYZData)
  + ### icSigLabData

    public static final int icSigLabData

    ICC Profile Color Space Type Signature: 'Lab '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigLabData)
  + ### icSigLuvData

    public static final int icSigLuvData

    ICC Profile Color Space Type Signature: 'Luv '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigLuvData)
  + ### icSigYCbCrData

    public static final int icSigYCbCrData

    ICC Profile Color Space Type Signature: 'YCbr'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigYCbCrData)
  + ### icSigYxyData

    public static final int icSigYxyData

    ICC Profile Color Space Type Signature: 'Yxy '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigYxyData)
  + ### icSigRgbData

    public static final int icSigRgbData

    ICC Profile Color Space Type Signature: 'RGB '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigRgbData)
  + ### icSigGrayData

    public static final int icSigGrayData

    ICC Profile Color Space Type Signature: 'GRAY'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGrayData)
  + ### icSigHsvData

    public static final int icSigHsvData

    ICC Profile Color Space Type Signature: 'HSV'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigHsvData)
  + ### icSigHlsData

    public static final int icSigHlsData

    ICC Profile Color Space Type Signature: 'HLS'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigHlsData)
  + ### icSigCmykData

    public static final int icSigCmykData

    ICC Profile Color Space Type Signature: 'CMYK'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCmykData)
  + ### icSigCmyData

    public static final int icSigCmyData

    ICC Profile Color Space Type Signature: 'CMY '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCmyData)
  + ### icSigSpace2CLR

    public static final int icSigSpace2CLR

    ICC Profile Color Space Type Signature: '2CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace2CLR)
  + ### icSigSpace3CLR

    public static final int icSigSpace3CLR

    ICC Profile Color Space Type Signature: '3CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace3CLR)
  + ### icSigSpace4CLR

    public static final int icSigSpace4CLR

    ICC Profile Color Space Type Signature: '4CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace4CLR)
  + ### icSigSpace5CLR

    public static final int icSigSpace5CLR

    ICC Profile Color Space Type Signature: '5CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace5CLR)
  + ### icSigSpace6CLR

    public static final int icSigSpace6CLR

    ICC Profile Color Space Type Signature: '6CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace6CLR)
  + ### icSigSpace7CLR

    public static final int icSigSpace7CLR

    ICC Profile Color Space Type Signature: '7CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace7CLR)
  + ### icSigSpace8CLR

    public static final int icSigSpace8CLR

    ICC Profile Color Space Type Signature: '8CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace8CLR)
  + ### icSigSpace9CLR

    public static final int icSigSpace9CLR

    ICC Profile Color Space Type Signature: '9CLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpace9CLR)
  + ### icSigSpaceACLR

    public static final int icSigSpaceACLR

    ICC Profile Color Space Type Signature: 'ACLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceACLR)
  + ### icSigSpaceBCLR

    public static final int icSigSpaceBCLR

    ICC Profile Color Space Type Signature: 'BCLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceBCLR)
  + ### icSigSpaceCCLR

    public static final int icSigSpaceCCLR

    ICC Profile Color Space Type Signature: 'CCLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceCCLR)
  + ### icSigSpaceDCLR

    public static final int icSigSpaceDCLR

    ICC Profile Color Space Type Signature: 'DCLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceDCLR)
  + ### icSigSpaceECLR

    public static final int icSigSpaceECLR

    ICC Profile Color Space Type Signature: 'ECLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceECLR)
  + ### icSigSpaceFCLR

    public static final int icSigSpaceFCLR

    ICC Profile Color Space Type Signature: 'FCLR'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigSpaceFCLR)
  + ### icSigInputClass

    public static final int icSigInputClass

    ICC Profile Class Signature: 'scnr'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigInputClass)
  + ### icSigDisplayClass

    public static final int icSigDisplayClass

    ICC Profile Class Signature: 'mntr'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigDisplayClass)
  + ### icSigOutputClass

    public static final int icSigOutputClass

    ICC Profile Class Signature: 'prtr'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigOutputClass)
  + ### icSigLinkClass

    public static final int icSigLinkClass

    ICC Profile Class Signature: 'link'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigLinkClass)
  + ### icSigAbstractClass

    public static final int icSigAbstractClass

    ICC Profile Class Signature: 'abst'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigAbstractClass)
  + ### icSigColorSpaceClass

    public static final int icSigColorSpaceClass

    ICC Profile Class Signature: 'spac'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigColorSpaceClass)
  + ### icSigNamedColorClass

    public static final int icSigNamedColorClass

    ICC Profile Class Signature: 'nmcl'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigNamedColorClass)
  + ### icPerceptual

    public static final int icPerceptual

    ICC Profile Rendering Intent: Perceptual.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icPerceptual)
  + ### icRelativeColorimetric

    public static final int icRelativeColorimetric

    ICC Profile Rendering Intent: RelativeColorimetric.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icRelativeColorimetric)
  + ### icMediaRelativeColorimetric

    public static final int icMediaRelativeColorimetric

    ICC Profile Rendering Intent: Media-RelativeColorimetric.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icMediaRelativeColorimetric)
  + ### icSaturation

    public static final int icSaturation

    ICC Profile Rendering Intent: Saturation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSaturation)
  + ### icAbsoluteColorimetric

    public static final int icAbsoluteColorimetric

    ICC Profile Rendering Intent: AbsoluteColorimetric.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icAbsoluteColorimetric)
  + ### icICCAbsoluteColorimetric

    public static final int icICCAbsoluteColorimetric

    ICC Profile Rendering Intent: ICC-AbsoluteColorimetric.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icICCAbsoluteColorimetric)
  + ### icSigHead

    public static final int icSigHead

    ICC Profile Tag Signature: 'head' - special.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigHead)
  + ### icSigAToB0Tag

    public static final int icSigAToB0Tag

    ICC Profile Tag Signature: 'A2B0'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigAToB0Tag)
  + ### icSigAToB1Tag

    public static final int icSigAToB1Tag

    ICC Profile Tag Signature: 'A2B1'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigAToB1Tag)
  + ### icSigAToB2Tag

    public static final int icSigAToB2Tag

    ICC Profile Tag Signature: 'A2B2'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigAToB2Tag)
  + ### icSigBlueColorantTag

    public static final int icSigBlueColorantTag

    ICC Profile Tag Signature: 'bXYZ'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBlueColorantTag)
  + ### icSigBlueMatrixColumnTag

    public static final int icSigBlueMatrixColumnTag

    ICC Profile Tag Signature: 'bXYZ'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBlueMatrixColumnTag)
  + ### icSigBlueTRCTag

    public static final int icSigBlueTRCTag

    ICC Profile Tag Signature: 'bTRC'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBlueTRCTag)
  + ### icSigBToA0Tag

    public static final int icSigBToA0Tag

    ICC Profile Tag Signature: 'B2A0'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBToA0Tag)
  + ### icSigBToA1Tag

    public static final int icSigBToA1Tag

    ICC Profile Tag Signature: 'B2A1'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBToA1Tag)
  + ### icSigBToA2Tag

    public static final int icSigBToA2Tag

    ICC Profile Tag Signature: 'B2A2'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigBToA2Tag)
  + ### icSigCalibrationDateTimeTag

    public static final int icSigCalibrationDateTimeTag

    ICC Profile Tag Signature: 'calt'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCalibrationDateTimeTag)
  + ### icSigCharTargetTag

    public static final int icSigCharTargetTag

    ICC Profile Tag Signature: 'targ'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCharTargetTag)
  + ### icSigCopyrightTag

    public static final int icSigCopyrightTag

    ICC Profile Tag Signature: 'cprt'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCopyrightTag)
  + ### icSigCrdInfoTag

    public static final int icSigCrdInfoTag

    ICC Profile Tag Signature: 'crdi'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigCrdInfoTag)
  + ### icSigDeviceMfgDescTag

    public static final int icSigDeviceMfgDescTag

    ICC Profile Tag Signature: 'dmnd'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigDeviceMfgDescTag)
  + ### icSigDeviceModelDescTag

    public static final int icSigDeviceModelDescTag

    ICC Profile Tag Signature: 'dmdd'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigDeviceModelDescTag)
  + ### icSigDeviceSettingsTag

    public static final int icSigDeviceSettingsTag

    ICC Profile Tag Signature: 'devs'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigDeviceSettingsTag)
  + ### icSigGamutTag

    public static final int icSigGamutTag

    ICC Profile Tag Signature: 'gamt'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGamutTag)
  + ### icSigGrayTRCTag

    public static final int icSigGrayTRCTag

    ICC Profile Tag Signature: 'kTRC'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGrayTRCTag)
  + ### icSigGreenColorantTag

    public static final int icSigGreenColorantTag

    ICC Profile Tag Signature: 'gXYZ'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGreenColorantTag)
  + ### icSigGreenMatrixColumnTag

    public static final int icSigGreenMatrixColumnTag

    ICC Profile Tag Signature: 'gXYZ'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGreenMatrixColumnTag)
  + ### icSigGreenTRCTag

    public static final int icSigGreenTRCTag

    ICC Profile Tag Signature: 'gTRC'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigGreenTRCTag)
  + ### icSigLuminanceTag

    public static final int icSigLuminanceTag

    ICC Profile Tag Signature: 'lumi'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigLuminanceTag)
  + ### icSigMeasurementTag

    public static final int icSigMeasurementTag

    ICC Profile Tag Signature: 'meas'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigMeasurementTag)
  + ### icSigMediaBlackPointTag

    public static final int icSigMediaBlackPointTag

    ICC Profile Tag Signature: 'bkpt'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigMediaBlackPointTag)
  + ### icSigMediaWhitePointTag

    public static final int icSigMediaWhitePointTag

    ICC Profile Tag Signature: 'wtpt'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigMediaWhitePointTag)
  + ### icSigNamedColor2Tag

    public static final int icSigNamedColor2Tag

    ICC Profile Tag Signature: 'ncl2'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigNamedColor2Tag)
  + ### icSigOutputResponseTag

    public static final int icSigOutputResponseTag

    ICC Profile Tag Signature: 'resp'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigOutputResponseTag)
  + ### icSigPreview0Tag

    public static final int icSigPreview0Tag

    ICC Profile Tag Signature: 'pre0'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPreview0Tag)
  + ### icSigPreview1Tag

    public static final int icSigPreview1Tag

    ICC Profile Tag Signature: 'pre1'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPreview1Tag)
  + ### icSigPreview2Tag

    public static final int icSigPreview2Tag

    ICC Profile Tag Signature: 'pre2'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPreview2Tag)
  + ### icSigProfileDescriptionTag

    public static final int icSigProfileDescriptionTag

    ICC Profile Tag Signature: 'desc'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigProfileDescriptionTag)
  + ### icSigProfileSequenceDescTag

    public static final int icSigProfileSequenceDescTag

    ICC Profile Tag Signature: 'pseq'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigProfileSequenceDescTag)
  + ### icSigPs2CRD0Tag

    public static final int icSigPs2CRD0Tag

    ICC Profile Tag Signature: 'psd0'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2CRD0Tag)
  + ### icSigPs2CRD1Tag

    public static final int icSigPs2CRD1Tag

    ICC Profile Tag Signature: 'psd1'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2CRD1Tag)
  + ### icSigPs2CRD2Tag

    public static final int icSigPs2CRD2Tag

    ICC Profile Tag Signature: 'psd2'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2CRD2Tag)
  + ### icSigPs2CRD3Tag

    public static final int icSigPs2CRD3Tag

    ICC Profile Tag Signature: 'psd3'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2CRD3Tag)
  + ### icSigPs2CSATag

    public static final int icSigPs2CSATag

    ICC Profile Tag Signature: 'ps2s'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2CSATag)
  + ### icSigPs2RenderingIntentTag

    public static final int icSigPs2RenderingIntentTag

    ICC Profile Tag Signature: 'ps2i'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigPs2RenderingIntentTag)
  + ### icSigRedColorantTag

    public static final int icSigRedColorantTag

    ICC Profile Tag Signature: 'rXYZ'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigRedColorantTag)
  + ### icSigRedMatrixColumnTag

    public static final int icSigRedMatrixColumnTag

    ICC Profile Tag Signature: 'rXYZ'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigRedMatrixColumnTag)
  + ### icSigRedTRCTag

    public static final int icSigRedTRCTag

    ICC Profile Tag Signature: 'rTRC'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigRedTRCTag)
  + ### icSigScreeningDescTag

    public static final int icSigScreeningDescTag

    ICC Profile Tag Signature: 'scrd'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigScreeningDescTag)
  + ### icSigScreeningTag

    public static final int icSigScreeningTag

    ICC Profile Tag Signature: 'scrn'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigScreeningTag)
  + ### icSigTechnologyTag

    public static final int icSigTechnologyTag

    ICC Profile Tag Signature: 'tech'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigTechnologyTag)
  + ### icSigUcrBgTag

    public static final int icSigUcrBgTag

    ICC Profile Tag Signature: 'bfd '.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigUcrBgTag)
  + ### icSigViewingCondDescTag

    public static final int icSigViewingCondDescTag

    ICC Profile Tag Signature: 'vued'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigViewingCondDescTag)
  + ### icSigViewingConditionsTag

    public static final int icSigViewingConditionsTag

    ICC Profile Tag Signature: 'view'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigViewingConditionsTag)
  + ### icSigChromaticityTag

    public static final int icSigChromaticityTag

    ICC Profile Tag Signature: 'chrm'.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigChromaticityTag)
  + ### icSigChromaticAdaptationTag

    public static final int icSigChromaticAdaptationTag

    ICC Profile Tag Signature: 'chad'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigChromaticAdaptationTag)
  + ### icSigColorantOrderTag

    public static final int icSigColorantOrderTag

    ICC Profile Tag Signature: 'clro'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigColorantOrderTag)
  + ### icSigColorantTableTag

    public static final int icSigColorantTableTag

    ICC Profile Tag Signature: 'clrt'.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icSigColorantTableTag)
  + ### icHdrSize

    public static final int icHdrSize

    ICC Profile Header Location: profile size in bytes.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrSize)
  + ### icHdrCmmId

    public static final int icHdrCmmId

    ICC Profile Header Location: CMM for this profile.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrCmmId)
  + ### icHdrVersion

    public static final int icHdrVersion

    ICC Profile Header Location: format version number.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrVersion)
  + ### icHdrDeviceClass

    public static final int icHdrDeviceClass

    ICC Profile Header Location: type of profile.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrDeviceClass)
  + ### icHdrColorSpace

    public static final int icHdrColorSpace

    ICC Profile Header Location: color space of data.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrColorSpace)
  + ### icHdrPcs

    public static final int icHdrPcs

    ICC Profile Header Location: PCS - XYZ or Lab only.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrPcs)
  + ### icHdrDate

    public static final int icHdrDate

    ICC Profile Header Location: date profile was created.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrDate)
  + ### icHdrMagic

    public static final int icHdrMagic

    ICC Profile Header Location: icMagicNumber.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrMagic)
  + ### icHdrPlatform

    public static final int icHdrPlatform

    ICC Profile Header Location: primary platform.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrPlatform)
  + ### icHdrFlags

    public static final int icHdrFlags

    ICC Profile Header Location: various bit settings.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrFlags)
  + ### icHdrManufacturer

    public static final int icHdrManufacturer

    ICC Profile Header Location: device manufacturer.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrManufacturer)
  + ### icHdrModel

    public static final int icHdrModel

    ICC Profile Header Location: device model number.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrModel)
  + ### icHdrAttributes

    public static final int icHdrAttributes

    ICC Profile Header Location: device attributes.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrAttributes)
  + ### icHdrRenderingIntent

    public static final int icHdrRenderingIntent

    ICC Profile Header Location: rendering intent.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrRenderingIntent)
  + ### icHdrIlluminant

    public static final int icHdrIlluminant

    ICC Profile Header Location: profile illuminant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrIlluminant)
  + ### icHdrCreator

    public static final int icHdrCreator

    ICC Profile Header Location: profile creator.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrCreator)
  + ### icHdrProfileID

    public static final int icHdrProfileID

    ICC Profile Header Location: profile's ID.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icHdrProfileID)
  + ### icTagType

    public static final int icTagType

    ICC Profile Constant: tag type signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icTagType)
  + ### icTagReserved

    public static final int icTagReserved

    ICC Profile Constant: reserved.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icTagReserved)
  + ### icCurveCount

    public static final int icCurveCount

    ICC Profile Constant: curveType count.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icCurveCount)
  + ### icCurveData

    public static final int icCurveData

    ICC Profile Constant: curveType data.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icCurveData)
  + ### icXYZNumberX

    public static final int icXYZNumberX

    ICC Profile Constant: XYZNumber X.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ICC_Profile.icXYZNumberX)
* ## Method Details

  + ### getInstance

    public static [ICC\_Profile](ICC_Profile.md "class in java.awt.color") getInstance(byte[] data)

    Constructs an `ICC_Profile` object corresponding to the data in a
    byte array.

    Parameters:
    :   `data` - the specified ICC Profile data

    Returns:
    :   an `ICC_Profile` object corresponding to the data in the
        specified `data` array

    Throws:
    :   `IllegalArgumentException` - If the byte array does not contain valid
        ICC Profile data
  + ### getInstance

    public static [ICC\_Profile](ICC_Profile.md "class in java.awt.color") getInstance(int cspace)

    Constructs an `ICC_Profile` corresponding to one of the specific
    color spaces defined by the `ColorSpace` class (for example
    `CS_sRGB`). Throws an `IllegalArgumentException` if cspace is
    not one of the defined color spaces.

    Parameters:
    :   `cspace` - the type of color space to create a profile for. The
        specified type is one of the color space constants defined in the
        `ColorSpace` class.

    Returns:
    :   an `ICC_Profile` object corresponding to the specified
        `ColorSpace` type

    Throws:
    :   `IllegalArgumentException` - If `cspace` is not one of the
        predefined color space types
  + ### getInstance

    public static [ICC\_Profile](ICC_Profile.md "class in java.awt.color") getInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") fileName)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs an `ICC_Profile` corresponding to the data in a file.
    `fileName` may be an absolute or a relative file specification.
    Relative file names are looked for in several places: first, relative to
    any directories specified by the `java.iccprofile.path` property;
    second, relative to any directories specified by the
    `java.class.path` property; finally, in a directory used to store
    profiles always available, such as the profile for sRGB. Built-in
    profiles use `.pf` as the file name extension for profiles, e.g.
    `sRGB.pf`.

    Parameters:
    :   `fileName` - the file that contains the data for the profile

    Returns:
    :   an `ICC_Profile` object corresponding to the data in the
        specified file

    Throws:
    :   `IOException` - If the specified file cannot be opened or an I/O
        error occurs while reading the file
    :   `IllegalArgumentException` - If the file does not contain valid ICC
        Profile data
    :   `SecurityException` - If a security manager is installed and it does
        not permit read access to the given file
    :   `NullPointerException` - if `fileName` is `null`
  + ### getInstance

    public static [ICC\_Profile](ICC_Profile.md "class in java.awt.color") getInstance([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") s)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs an `ICC_Profile` corresponding to the data in an
    `InputStream`.

    Parameters:
    :   `s` - the input stream from which to read the profile data

    Returns:
    :   an `ICC_Profile` object corresponding to the data in the
        specified `InputStream`

    Throws:
    :   `IOException` - If an I/O error occurs while reading the stream
    :   `IllegalArgumentException` - If the stream does not contain valid ICC
        Profile data
    :   `NullPointerException` - if `s` is `null`
  + ### getMajorVersion

    public int getMajorVersion()

    Returns profile major version.

    Returns:
    :   the major version of the profile
  + ### getMinorVersion

    public int getMinorVersion()

    Returns profile minor version.

    Returns:
    :   the minor version of the profile
  + ### getProfileClass

    public int getProfileClass()

    Returns the profile class.

    Returns:
    :   one of the predefined profile class constants
  + ### getColorSpaceType

    public int getColorSpaceType()

    Returns the color space type. Returns one of the color space type
    constants defined by the `ColorSpace` class. This is the "input"
    color space of the profile. The type defines the number of components of
    the color space and the interpretation, e.g. `TYPE_RGB` identifies
    a color space with three components - red, green, and blue. It does not
    define the particular color characteristics of the space, e.g. the
    chromaticities of the primaries.

    Returns:
    :   one of the color space type constants defined in the
        `ColorSpace` class
  + ### getPCSType

    public int getPCSType()

    Returns the color space type of the Profile Connection Space (PCS).
    Returns one of the color space type constants defined by the ColorSpace
    class. This is the "output" color space of the profile. For an input,
    display, or output profile useful for tagging colors or images, this will
    be either `TYPE_XYZ` or `TYPE_Lab` and should be interpreted
    as the corresponding specific color space defined in the ICC
    specification. For a device link profile, this could be any of the color
    space type constants.

    Returns:
    :   one of the color space type constants defined in the
        `ColorSpace` class
  + ### write

    public void write([String](../../../../java.base/java/lang/String.md "class in java.lang") fileName)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Write this `ICC_Profile` to a file.

    Parameters:
    :   `fileName` - the file to write the profile data to

    Throws:
    :   `IOException` - If the file cannot be opened for writing or an I/O
        error occurs while writing to the file
    :   `NullPointerException` - if `fileName` is `null`
  + ### write

    public void write([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") s)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Write this `ICC_Profile` to an `OutputStream`.

    Parameters:
    :   `s` - the stream to write the profile data to

    Throws:
    :   `IOException` - If an I/O error occurs while writing to the stream
    :   `NullPointerException` - if `s` is `null`
  + ### getData

    public byte[] getData()

    Returns a byte array corresponding to the data of this
    `ICC_Profile`.

    Returns:
    :   a byte array that contains the profile data

    See Also:
    :   - [`setData(int, byte[])`](#setData(int,byte%5B%5D))
  + ### getData

    public byte[] getData(int tagSignature)

    Returns a particular tagged data element from the profile as a byte
    array. Elements are identified by signatures as defined in the ICC
    specification. The signature icSigHead can be used to get the header.
    This method is useful for advanced applications which need to access
    profile data directly.

    Parameters:
    :   `tagSignature` - the ICC tag signature for the data element you want
        to get

    Returns:
    :   a byte array that contains the tagged data element. Returns
        `null` if the specified tag doesn't exist.

    See Also:
    :   - [`setData(int, byte[])`](#setData(int,byte%5B%5D))
  + ### setData

    public void setData(int tagSignature,
    byte[] tagData)

    Sets a particular tagged data element in the profile from a byte array.
    The array should contain data in a format, corresponded to the
    `tagSignature` as defined in the ICC specification, section 10.
    This method is useful for advanced applications which need to access
    profile data directly.

    Parameters:
    :   `tagSignature` - the ICC tag signature for the data element you want
        to set
    :   `tagData` - the data to set for the specified tag signature

    Throws:
    :   `IllegalArgumentException` - if `tagSignature` is not a
        signature as defined in the ICC specification.
    :   `IllegalArgumentException` - if a content of the `tagData`
        array can not be interpreted as valid tag data, corresponding to
        the `tagSignature`

    See Also:
    :   - [`getData()`](#getData())
  + ### getNumComponents

    public int getNumComponents()

    Returns the number of color components in the "input" color space of this
    profile. For example if the color space type of this profile is
    `TYPE_RGB`, then this method will return 3.

    Returns:
    :   the number of color components in the profile's input color space

    Throws:
    :   `ProfileDataException` - if color space is in the profile is invalid
  + ### readResolve

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../../../../java.base/java/io/ObjectStreamException.md "class in java.io")

    Resolves instances being deserialized into instances registered with CMM.

    Returns:
    :   ICC\_Profile object for profile registered with CMM

    Throws:
    :   `ObjectStreamException` - never thrown, but mandated by the
        serialization spec

    Since:
    :   1.3