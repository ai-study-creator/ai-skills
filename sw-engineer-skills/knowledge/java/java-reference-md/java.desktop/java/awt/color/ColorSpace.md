Module [java.desktop](../../../module-summary.md)

Package [java.awt.color](package-summary.md)

# Class ColorSpace

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.color.ColorSpace

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ICC_ColorSpace`

---

public abstract class ColorSpace
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This abstract class is used to serve as a color space tag to identify the
specific color space of a `Color` object or, via a `ColorModel`
object, of an `Image`, a `BufferedImage`, or a
`GraphicsDevice`. It contains methods that transform colors in a
specific color space to/from sRGB and to/from a well-defined CIEXYZ color
space.

For purposes of the methods in this class, colors are represented as arrays
of color components represented as floats in a normalized range defined by
each `ColorSpace`. For many `ColorSpaces` (e.g. sRGB), this range
is 0.0 to 1.0. However, some `ColorSpaces` have components whose values
have a different range. Methods are provided to inquire per component minimum
and maximum normalized values.

Several variables are defined for purposes of referring to color space types
(e.g. `TYPE_RGB`, `TYPE_XYZ`, etc.) and to refer to specific
color spaces (e.g. `CS_sRGB` and `CS_CIEXYZ`). sRGB is a proposed
standard RGB color space. For more information, see
<http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html>.

The purpose of the methods to transform to/from the well-defined CIEXYZ color
space is to support conversions between any two color spaces at a reasonably
high degree of accuracy. It is expected that particular implementations of
subclasses of `ColorSpace` (e.g. `ICC_ColorSpace`) will support
high performance conversion based on underlying platform color management
systems.

The `CS_CIEXYZ` space used by the `toCIEXYZ/fromCIEXYZ` methods
can be described as follows:

```
     CIEXYZ
     viewing illuminance: 200 lux
     viewing white point: CIE D50
     media white point: "that of a perfectly reflecting diffuser" -- D50
     media black point: 0 lux or 0 Reflectance
     flare: 1 percent
     surround: 20percent of the media white point
     media description: reflection print (i.e., RLAB, Hunt viewing media)
     note: For developers creating an ICC profile for this conversion
           space, the following is applicable. Use a simple Von Kries
           white point adaptation folded into the 3X3 matrix parameters
           and fold the flare and surround effects into the three
           one-dimensional lookup tables (assuming one uses the minimal
           model for monitors).
```

See Also:
:   * [`ICC_ColorSpace`](ICC_ColorSpace.md "class in java.awt.color")
    * [Serialized Form](../../../../serialized-form.md#java.awt.color.ColorSpace)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CS_CIEXYZ`

  The built-in CIEXYZ conversion color space defined above.

  `static final int`

  `CS_GRAY`

  The built-in linear gray scale color space.

  `static final int`

  `CS_LINEAR_RGB`

  The built-in linear RGB color space.

  `static final int`

  `CS_PYCC`

  The built-in Photo YCC conversion color space.

  `static final int`

  `CS_sRGB`

  The built-in sRGB color space defined at
  <http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html>.

  `static final int`

  `TYPE_2CLR`

  Generic 2 component color spaces.

  `static final int`

  `TYPE_3CLR`

  Generic 3 component color spaces.

  `static final int`

  `TYPE_4CLR`

  Generic 4 component color spaces.

  `static final int`

  `TYPE_5CLR`

  Generic 5 component color spaces.

  `static final int`

  `TYPE_6CLR`

  Generic 6 component color spaces.

  `static final int`

  `TYPE_7CLR`

  Generic 7 component color spaces.

  `static final int`

  `TYPE_8CLR`

  Generic 8 component color spaces.

  `static final int`

  `TYPE_9CLR`

  Generic 9 component color spaces.

  `static final int`

  `TYPE_ACLR`

  Generic 10 component color spaces.

  `static final int`

  `TYPE_BCLR`

  Generic 11 component color spaces.

  `static final int`

  `TYPE_CCLR`

  Generic 12 component color spaces.

  `static final int`

  `TYPE_CMY`

  Any of the family of CMY color spaces.

  `static final int`

  `TYPE_CMYK`

  Any of the family of CMYK color spaces.

  `static final int`

  `TYPE_DCLR`

  Generic 13 component color spaces.

  `static final int`

  `TYPE_ECLR`

  Generic 14 component color spaces.

  `static final int`

  `TYPE_FCLR`

  Generic 15 component color spaces.

  `static final int`

  `TYPE_GRAY`

  Any of the family of GRAY color spaces.

  `static final int`

  `TYPE_HLS`

  Any of the family of HLS color spaces.

  `static final int`

  `TYPE_HSV`

  Any of the family of HSV color spaces.

  `static final int`

  `TYPE_Lab`

  Any of the family of Lab color spaces.

  `static final int`

  `TYPE_Luv`

  Any of the family of Luv color spaces.

  `static final int`

  `TYPE_RGB`

  Any of the family of RGB color spaces.

  `static final int`

  `TYPE_XYZ`

  Any of the family of XYZ color spaces.

  `static final int`

  `TYPE_YCbCr`

  Any of the family of YCbCr color spaces.

  `static final int`

  `TYPE_Yxy`

  Any of the family of Yxy color spaces.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ColorSpace(int type,
  int numComponents)`

  Constructs a `ColorSpace` object given a color space type and the
  number of components.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract float[]`

  `fromCIEXYZ(float[] colorvalue)`

  Transforms a color value assumed to be in the `CS_CIEXYZ`
  conversion color space into this `ColorSpace`.

  `abstract float[]`

  `fromRGB(float[] rgbvalue)`

  Transforms a color value assumed to be in the default `CS_sRGB`
  color space into this `ColorSpace`.

  `static ColorSpace`

  `getInstance(int cspace)`

  Returns a `ColorSpace` representing one of the specific predefined
  color spaces.

  `float`

  `getMaxValue(int component)`

  Returns the maximum normalized color component value for the specified
  component.

  `float`

  `getMinValue(int component)`

  Returns the minimum normalized color component value for the specified
  component.

  `String`

  `getName(int component)`

  Returns the name of the component given the component index.

  `int`

  `getNumComponents()`

  Returns the number of components of this ColorSpace.

  `int`

  `getType()`

  Returns the color space type of this `ColorSpace` (for example
  `TYPE_RGB`, `TYPE_XYZ`, ...).

  `boolean`

  `isCS_sRGB()`

  Returns true if the `ColorSpace` is `CS_sRGB`.

  `abstract float[]`

  `toCIEXYZ(float[] colorvalue)`

  Transforms a color value assumed to be in this `ColorSpace` into
  the `CS_CIEXYZ` conversion color space.

  `abstract float[]`

  `toRGB(float[] colorvalue)`

  Transforms a color value assumed to be in this `ColorSpace` into a
  value in the default `CS_sRGB` color space.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TYPE\_XYZ

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_XYZ

    Any of the family of XYZ color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_XYZ)
  + ### TYPE\_Lab

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_Lab

    Any of the family of Lab color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_Lab)
  + ### TYPE\_Luv

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_Luv

    Any of the family of Luv color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_Luv)
  + ### TYPE\_YCbCr

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_YCbCr

    Any of the family of YCbCr color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_YCbCr)
  + ### TYPE\_Yxy

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_Yxy

    Any of the family of Yxy color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_Yxy)
  + ### TYPE\_RGB

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_RGB

    Any of the family of RGB color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_RGB)
  + ### TYPE\_GRAY

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_GRAY

    Any of the family of GRAY color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_GRAY)
  + ### TYPE\_HSV

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_HSV

    Any of the family of HSV color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_HSV)
  + ### TYPE\_HLS

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_HLS

    Any of the family of HLS color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_HLS)
  + ### TYPE\_CMYK

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_CMYK

    Any of the family of CMYK color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_CMYK)
  + ### TYPE\_CMY

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_CMY

    Any of the family of CMY color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_CMY)
  + ### TYPE\_2CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_2CLR

    Generic 2 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_2CLR)
  + ### TYPE\_3CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_3CLR

    Generic 3 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_3CLR)
  + ### TYPE\_4CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_4CLR

    Generic 4 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_4CLR)
  + ### TYPE\_5CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_5CLR

    Generic 5 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_5CLR)
  + ### TYPE\_6CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_6CLR

    Generic 6 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_6CLR)
  + ### TYPE\_7CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_7CLR

    Generic 7 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_7CLR)
  + ### TYPE\_8CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_8CLR

    Generic 8 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_8CLR)
  + ### TYPE\_9CLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_9CLR

    Generic 9 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_9CLR)
  + ### TYPE\_ACLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_ACLR

    Generic 10 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_ACLR)
  + ### TYPE\_BCLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_BCLR

    Generic 11 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_BCLR)
  + ### TYPE\_CCLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_CCLR

    Generic 12 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_CCLR)
  + ### TYPE\_DCLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_DCLR

    Generic 13 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_DCLR)
  + ### TYPE\_ECLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_ECLR

    Generic 14 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_ECLR)
  + ### TYPE\_FCLR

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TYPE\_FCLR

    Generic 15 component color spaces.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.TYPE_FCLR)
  + ### CS\_sRGB

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CS\_sRGB

    The built-in sRGB color space defined at
    <http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html>.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.CS_sRGB)
  + ### CS\_LINEAR\_RGB

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CS\_LINEAR\_RGB

    The built-in linear RGB color space. This space is based on the same RGB
    primaries as `CS_sRGB`, but has a linear tone reproduction curve.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.CS_LINEAR_RGB)
  + ### CS\_CIEXYZ

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CS\_CIEXYZ

    The built-in CIEXYZ conversion color space defined above.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.CS_CIEXYZ)
  + ### CS\_PYCC

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CS\_PYCC

    The built-in Photo YCC conversion color space.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.CS_PYCC)
  + ### CS\_GRAY

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CS\_GRAY

    The built-in linear gray scale color space.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.color.ColorSpace.CS_GRAY)
* ## Constructor Details

  + ### ColorSpace

    protected ColorSpace(int type,
    int numComponents)

    Constructs a `ColorSpace` object given a color space type and the
    number of components.

    Parameters:
    :   `type` - one of the `ColorSpace` type constants
    :   `numComponents` - the number of components in the color space
* ## Method Details

  + ### getInstance

    public static [ColorSpace](ColorSpace.md "class in java.awt.color") getInstance(int cspace)

    Returns a `ColorSpace` representing one of the specific predefined
    color spaces.

    Parameters:
    :   `cspace` - a specific color space identified by one of the predefined
        class constants (e.g. `CS_sRGB`, `CS_LINEAR_RGB`,
        `CS_CIEXYZ`, `CS_GRAY`, or `CS_PYCC`)

    Returns:
    :   the requested `ColorSpace` object
  + ### isCS\_sRGB

    public boolean isCS\_sRGB()

    Returns true if the `ColorSpace` is `CS_sRGB`.

    Returns:
    :   `true` if this is a `CS_sRGB` color space,
        `false` if it is not
  + ### toRGB

    public abstract float[] toRGB(float[] colorvalue)

    Transforms a color value assumed to be in this `ColorSpace` into a
    value in the default `CS_sRGB` color space.

    This method transforms color values using algorithms designed to produce
    the best perceptual match between input and output colors. In order to do
    colorimetric conversion of color values, you should use the
    `toCIEXYZ` method of this color space to first convert from the
    input color space to the CS\_CIEXYZ color space, and then use the
    `fromCIEXYZ` method of the `CS_sRGB` color space to convert
    from `CS_CIEXYZ` to the output color space. See
    [`toCIEXYZ`](#toCIEXYZ(float%5B%5D)) and
    [`fromCIEXYZ`](#fromCIEXYZ(float%5B%5D)) for further information.

    Parameters:
    :   `colorvalue` - a float array with length of at least the number of
        components in this `ColorSpace`

    Returns:
    :   a float array of length 3

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if array length is not at least
        the number of components in this `ColorSpace`
  + ### fromRGB

    public abstract float[] fromRGB(float[] rgbvalue)

    Transforms a color value assumed to be in the default `CS_sRGB`
    color space into this `ColorSpace`.

    This method transforms color values using algorithms designed to produce
    the best perceptual match between input and output colors. In order to do
    colorimetric conversion of color values, you should use the
    `toCIEXYZ` method of the `CS_sRGB` color space to first
    convert from the input color space to the `CS_CIEXYZ` color space,
    and then use the `fromCIEXYZ` method of this color space to convert
    from `CS_CIEXYZ` to the output color space. See
    [`toCIEXYZ`](#toCIEXYZ(float%5B%5D)) and
    [`fromCIEXYZ`](#fromCIEXYZ(float%5B%5D)) for further information.

    Parameters:
    :   `rgbvalue` - a float array with length of at least 3

    Returns:
    :   a float array with length equal to the number of components in
        this `ColorSpace`

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if array length is not at least 3
  + ### toCIEXYZ

    public abstract float[] toCIEXYZ(float[] colorvalue)

    Transforms a color value assumed to be in this `ColorSpace` into
    the `CS_CIEXYZ` conversion color space.

    This method transforms color values using relative colorimetry, as
    defined by the International Color Consortium standard. This means that
    the XYZ values returned by this method are represented relative to the
    D50 white point of the `CS_CIEXYZ` color space. This representation
    is useful in a two-step color conversion process in which colors are
    transformed from an input color space to `CS_CIEXYZ` and then to an
    output color space. This representation is not the same as the XYZ values
    that would be measured from the given color value by a colorimeter. A
    further transformation is necessary to compute the XYZ values that would
    be measured using current CIE recommended practices. See the
    [`toCIEXYZ`](ICC_ColorSpace.md#toCIEXYZ(float%5B%5D)) method of
    `ICC_ColorSpace` for further information.

    Parameters:
    :   `colorvalue` - a float array with length of at least the number of
        components in this `ColorSpace`

    Returns:
    :   a float array of length 3

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if array length is not at least
        the number of components in this `ColorSpace`.
  + ### fromCIEXYZ

    public abstract float[] fromCIEXYZ(float[] colorvalue)

    Transforms a color value assumed to be in the `CS_CIEXYZ`
    conversion color space into this `ColorSpace`.

    This method transforms color values using relative colorimetry, as
    defined by the International Color Consortium standard. This means that
    the XYZ argument values taken by this method are represented relative to
    the D50 white point of the `CS_CIEXYZ` color space. This
    representation is useful in a two-step color conversion process in which
    colors are transformed from an input color space to `CS_CIEXYZ` and
    then to an output color space. The color values returned by this method
    are not those that would produce the XYZ value passed to the method when
    measured by a colorimeter. If you have XYZ values corresponding to
    measurements made using current CIE recommended practices, they must be
    converted to D50 relative values before being passed to this method. See
    the [`fromCIEXYZ`](ICC_ColorSpace.md#fromCIEXYZ(float%5B%5D)) method of
    `ICC_ColorSpace` for further information.

    Parameters:
    :   `colorvalue` - a float array with length of at least 3

    Returns:
    :   a float array with length equal to the number of components in
        this `ColorSpace`

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if array length is not at least 3
  + ### getType

    public int getType()

    Returns the color space type of this `ColorSpace` (for example
    `TYPE_RGB`, `TYPE_XYZ`, ...). The type defines the number of
    components of the color space and the interpretation, e.g.
    `TYPE_RGB` identifies a color space with three components - red,
    green, and blue. It does not define the particular color characteristics
    of the space, e.g. the chromaticities of the primaries.

    Returns:
    :   the type constant that represents the type of this
        `ColorSpace`
  + ### getNumComponents

    public int getNumComponents()

    Returns the number of components of this ColorSpace.

    Returns:
    :   the number of components in this `ColorSpace`
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName(int component)

    Returns the name of the component given the component index.

    Parameters:
    :   `component` - the component index

    Returns:
    :   the name of the component at the specified index

    Throws:
    :   `IllegalArgumentException` - if `component` is less than 0 or
        greater than `numComponents - 1`
  + ### getMinValue

    public float getMinValue(int component)

    Returns the minimum normalized color component value for the specified
    component. The default implementation in this abstract class returns 0.0
    for all components. Subclasses should override this method if necessary.

    Parameters:
    :   `component` - the component index

    Returns:
    :   the minimum normalized component value

    Throws:
    :   `IllegalArgumentException` - if component is less than 0 or greater
        than `numComponents - 1`

    Since:
    :   1.4
  + ### getMaxValue

    public float getMaxValue(int component)

    Returns the maximum normalized color component value for the specified
    component. The default implementation in this abstract class returns 1.0
    for all components. Subclasses should override this method if necessary.

    Parameters:
    :   `component` - the component index

    Returns:
    :   the maximum normalized component value

    Throws:
    :   `IllegalArgumentException` - if component is less than 0 or greater
        than `numComponents - 1`

    Since:
    :   1.4