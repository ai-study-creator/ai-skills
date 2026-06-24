Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class MediaSize

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.Size2DSyntax](../Size2DSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.MediaSize

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`

---

public class MediaSize
extends [Size2DSyntax](../Size2DSyntax.md "class in javax.print.attribute")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `MediaSize` is a two-dimensional size valued printing attribute
class that indicates the dimensions of the medium in a portrait orientation,
with the `X` dimension running along the bottom edge and the `Y`
dimension running along the left edge. Thus, the `Y` dimension must be
greater than or equal to the `X` dimension. Class `MediaSize`
declares many standard media size values, organized into nested classes for
ISO, JIS, North American, engineering, and other media.

`MediaSize` is not yet used to specify media. Its current role is as a
mapping for named media (see [`MediaSizeName`](MediaSizeName.md "class in javax.print.attribute.standard")). Clients
can use the mapping method
`MediaSize.getMediaSizeForName(MediaSizeName)` to find the physical
dimensions of the `MediaSizeName` instances enumerated in this API.
This is useful for clients which need this information to format &
paginate printing.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.MediaSize)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `MediaSize.Engineering`

  Class `MediaSize.Engineering` includes [`MediaSize`](MediaSize.md "class in javax.print.attribute.standard")
  values for engineering media.

  `static final class`

  `MediaSize.ISO`

  Class `MediaSize.ISO` includes [`MediaSize`](MediaSize.md "class in javax.print.attribute.standard") values
  for ISO media.

  `static final class`

  `MediaSize.JIS`

  Class `MediaSize.JIS` includes [`MediaSize`](MediaSize.md "class in javax.print.attribute.standard") values
  for JIS (Japanese) media.

  `static final class`

  `MediaSize.NA`

  Class `MediaSize.NA` includes [`MediaSize`](MediaSize.md "class in javax.print.attribute.standard") values
  for North American media.

  `static final class`

  `MediaSize.Other`

  Class `MediaSize.Other` includes [`MediaSize`](MediaSize.md "class in javax.print.attribute.standard") values
  for miscellaneous media.
* ## Field Summary

  ### Fields inherited from class javax.print.attribute.[Size2DSyntax](../Size2DSyntax.md "class in javax.print.attribute")

  `INCH, MM`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MediaSize(float x,
  float y,
  int units)`

  Construct a new media size attribute from the given floating-point
  values.

  `MediaSize(float x,
  float y,
  int units,
  MediaSizeName media)`

  Construct a new media size attribute from the given floating-point
  values.

  `MediaSize(int x,
  int y,
  int units)`

  Construct a new media size attribute from the given integer values.

  `MediaSize(int x,
  int y,
  int units,
  MediaSizeName media)`

  Construct a new media size attribute from the given integer values.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this media size attribute is equivalent to the passed in
  object.

  `static MediaSizeName`

  `findMedia(float x,
  float y,
  int units)`

  The specified dimensions are used to locate a matching `MediaSize`
  instance from amongst all the standard `MediaSize` instances.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `static MediaSize`

  `getMediaSizeForName(MediaSizeName media)`

  Get the `MediaSize` for the specified named media.

  `MediaSizeName`

  `getMediaSizeName()`

  Get the media name, if any, for this size.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[Size2DSyntax](../Size2DSyntax.md "class in javax.print.attribute")

  `getSize, getX, getXMicrometers, getY, getYMicrometers, hashCode, toString, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MediaSize

    public MediaSize(float x,
    float y,
    int units)

    Construct a new media size attribute from the given floating-point
    values.

    Parameters:
    :   `x` - `X` dimension
    :   `y` - `Y` dimension
    :   `units` - unit conversion factor, e.g. `Size2DSyntax.INCH` or
        `Size2DSyntax.MM`

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `units < 1` or `x > y`
  + ### MediaSize

    public MediaSize(int x,
    int y,
    int units)

    Construct a new media size attribute from the given integer values.

    Parameters:
    :   `x` - `X` dimension
    :   `y` - `Y` dimension
    :   `units` - unit conversion factor, e.g. `Size2DSyntax.INCH` or
        `Size2DSyntax.MM`

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `units < 1` or `x > y`
  + ### MediaSize

    public MediaSize(float x,
    float y,
    int units,
    [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") media)

    Construct a new media size attribute from the given floating-point
    values.

    Parameters:
    :   `x` - `X` dimension
    :   `y` - `Y` dimension
    :   `units` - unit conversion factor, e.g. `Size2DSyntax.INCH` or
        `Size2DSyntax.MM`
    :   `media` - a media name to associate with this `MediaSize`

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `units < 1` or `x > y`
  + ### MediaSize

    public MediaSize(int x,
    int y,
    int units,
    [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") media)

    Construct a new media size attribute from the given integer values.

    Parameters:
    :   `x` - `X` dimension
    :   `y` - `Y` dimension
    :   `units` - unit conversion factor, e.g. `Size2DSyntax.INCH` or
        `Size2DSyntax.MM`
    :   `media` - a media name to associate with this `MediaSize`

    Throws:
    :   `IllegalArgumentException` - if `x < 0` or `y < 0` or
        `units < 1` or `x > y`
* ## Method Details

  + ### getMediaSizeName

    public [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") getMediaSizeName()

    Get the media name, if any, for this size.

    Returns:
    :   the name for this media size, or `null` if no name was
        associated with this size (an anonymous size)
  + ### getMediaSizeForName

    public static [MediaSize](MediaSize.md "class in javax.print.attribute.standard") getMediaSizeForName([MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") media)

    Get the `MediaSize` for the specified named media.

    Parameters:
    :   `media` - the name of the media for which the size is sought

    Returns:
    :   size of the media, or `null` if this media is not
        associated with any size
  + ### findMedia

    public static [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") findMedia(float x,
    float y,
    int units)

    The specified dimensions are used to locate a matching `MediaSize`
    instance from amongst all the standard `MediaSize` instances. If
    there is no exact match, the closest match is used.

    The `MediaSize` is in turn used to locate the `MediaSizeName`
    object. This method may return `null` if the closest matching
    `MediaSize` has no corresponding `Media` instance.

    This method is useful for clients which have only dimensions and want to
    find a `Media` which corresponds to the dimensions.

    Parameters:
    :   `x` - `X` dimension
    :   `y` - `Y` dimension
    :   `units` - unit conversion factor, e.g. `Size2DSyntax.INCH` or
        `Size2DSyntax.MM`

    Returns:
    :   `MediaSizeName` matching these dimensions, or `null`

    Throws:
    :   `IllegalArgumentException` - if `x <= 0`, `y <= 0`, or
        `units < 1`
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this media size attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `MediaSize`.+ This media size attribute's `X` dimension is equal to
           `object`'s `X` dimension.+ This media size attribute's `Y` dimension is equal to
             `object`'s `Y` dimension.

    Overrides:
    :   `equals` in class `Size2DSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this media size
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `MediaSize` and any vendor-defined subclasses, the
    category is class `MediaSize` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `MediaSize` and any vendor-defined subclasses, the
    category name is `"media-size"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name