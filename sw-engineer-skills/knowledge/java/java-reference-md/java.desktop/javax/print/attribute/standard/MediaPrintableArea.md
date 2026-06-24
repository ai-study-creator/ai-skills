Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class MediaPrintableArea

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.standard.MediaPrintableArea

All Implemented Interfaces:
:   `Serializable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class MediaPrintableArea
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `MediaPrintableArea` is a printing attribute used to distinguish
the printable and non-printable areas of media.

The printable area is specified to be a rectangle, within the overall
dimensions of a media.

Most printers cannot print on the entire surface of the media, due to printer
hardware limitations. This class can be used to query the acceptable values
for a supposed print job, and to request an area within the constraints of
the printable area to be used in a print job.

To query for the printable area, a client must supply a suitable context.
Without specifying at the very least the size of the media being used no
meaningful value for printable area can be obtained.

The attribute is not described in terms of the distance from the edge of the
paper, in part to emphasise that this attribute is not independent of a
particular media, but must be described within the context of a choice of
other attributes. Additionally it is usually more convenient for a client to
use the printable area.

The hardware's minimum margins is not just a property of the printer, but may
be a function of the media size, orientation, media type, and any specified
finishings. `PrintService` provides the method to query the supported
values of an attribute in a suitable context : See
[`PrintService.getSupportedAttributeValues()`](../../PrintService.md#getSupportedAttributeValues(java.lang.Class,javax.print.DocFlavor,javax.print.attribute.AttributeSet))

The rectangular printable area is defined thus: The (x,y) origin is
positioned at the top-left of the paper in portrait mode regardless of the
orientation specified in the requesting context. For example a printable area
for A4 paper in portrait or landscape orientation will have height
> width.

A printable area attribute's values are stored internally as integers in
units of micrometers (µm), where 1 micrometer = 10-6 meter =
1/1000 millimeter = 1/25400 inch. This permits dimensions to be represented
exactly to a precision of 1/1000 mm (= 1 µm) or 1/100 inch (= 254
µm). If fractional inches are expressed in negative powers of two, this
permits dimensions to be represented exactly to a precision of 1/8 inch
(= 3175 µm) but not 1/16 inch (because 1/16 inch does not equal an
integral number of µm).

**IPP Compatibility:** MediaPrintableArea is not an IPP attribute.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.MediaPrintableArea)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `INCH`

  Value to indicate units of inches (in).

  `static final int`

  `MM`

  Value to indicate units of millimeters (mm).
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MediaPrintableArea(float x,
  float y,
  float w,
  float h,
  int units)`

  Constructs a `MediaPrintableArea` object from floating point
  values.

  `MediaPrintableArea(int x,
  int y,
  int w,
  int h,
  int units)`

  Constructs a `MediaPrintableArea` object from integer values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this media margins attribute is equivalent to the passed
  in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `float`

  `getHeight(int units)`

  Get the `height` of the printable area in the specified units.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `float[]`

  `getPrintableArea(int units)`

  Get the printable area as an array of 4 values in the order
  `x, y, w, h`.

  `float`

  `getWidth(int units)`

  Get the `width` of the printable area in the specified units.

  `float`

  `getX(int units)`

  Get the `x` location of the origin of the printable area in the
  specified units.

  `float`

  `getY(int units)`

  Get the `y` location of the origin of the printable area in the
  specified units.

  `int`

  `hashCode()`

  Returns a hash code value for this attribute.

  `String`

  `toString()`

  Returns a string version of this rectangular size attribute in mm.

  `String`

  `toString(int units,
  String unitsName)`

  Returns a string version of this rectangular size attribute in the given
  units.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INCH

    public static final int INCH

    Value to indicate units of inches (in). It is actually the conversion
    factor by which to multiply inches to yield µm (25400).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.print.attribute.standard.MediaPrintableArea.INCH)
  + ### MM

    public static final int MM

    Value to indicate units of millimeters (mm). It is actually the
    conversion factor by which to multiply mm to yield µm (1000).

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.print.attribute.standard.MediaPrintableArea.MM)
* ## Constructor Details

  + ### MediaPrintableArea

    public MediaPrintableArea(float x,
    float y,
    float w,
    float h,
    int units)

    Constructs a `MediaPrintableArea` object from floating point
    values.

    Parameters:
    :   `x` - printable x
    :   `y` - printable y
    :   `w` - printable width
    :   `h` - printable height
    :   `units` - in which the values are expressed

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `w <= 0` or `h <= 0` or `units < 1`
  + ### MediaPrintableArea

    public MediaPrintableArea(int x,
    int y,
    int w,
    int h,
    int units)

    Constructs a `MediaPrintableArea` object from integer values.

    Parameters:
    :   `x` - printable x
    :   `y` - printable y
    :   `w` - printable width
    :   `h` - printable height
    :   `units` - in which the values are expressed

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `w <= 0` or `h <= 0` or `units < 1`
* ## Method Details

  + ### getPrintableArea

    public float[] getPrintableArea(int units)

    Get the printable area as an array of 4 values in the order
    `x, y, w, h`. The values returned are in the given units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)

    Returns:
    :   printable area as array of `x, y, w, h` in the specified
        units

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### getX

    public float getX(int units)

    Get the `x` location of the origin of the printable area in the
    specified units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)

    Returns:
    :   `x` location of the origin of the printable area in the
        specified units

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### getY

    public float getY(int units)

    Get the `y` location of the origin of the printable area in the
    specified units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)

    Returns:
    :   `y` location of the origin of the printable area in the
        specified units

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### getWidth

    public float getWidth(int units)

    Get the `width` of the printable area in the specified units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)

    Returns:
    :   `width` of the printable area in the specified units

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### getHeight

    public float getHeight(int units)

    Get the `height` of the printable area in the specified units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)

    Returns:
    :   `height` of the printable area in the specified units

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this media margins attribute is equivalent to the passed
    in object. To be equivalent, all of the following conditions must be
    true:
    1. `object` is not `null`.+ `object` is an instance of class `MediaPrintableArea`.+ The origin and dimensions are the same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this media
        margins attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `MediaPrintableArea`, the category is class
    `MediaPrintableArea` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `MediaPrintableArea`, the category name is
    `"media-printable-area"`.

    This is not an IPP V1.1 attribute.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString(int units,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") unitsName)

    Returns a string version of this rectangular size attribute in the given
    units.

    Parameters:
    :   `units` - unit conversion factor, e.g. [`INCH`](#INCH) or
        [`MM`](#MM)
    :   `unitsName` - units name string, e.g. `"in"` or `"mm"`.
        If `null`, no units name is appended to the result

    Returns:
    :   string version of this two-dimensional size attribute

    Throws:
    :   `IllegalArgumentException` - if `units < 1`
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string version of this rectangular size attribute in mm.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this attribute.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))