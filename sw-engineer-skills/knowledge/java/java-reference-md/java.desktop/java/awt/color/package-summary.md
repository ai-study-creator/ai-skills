Module [java.desktop](../../../module-summary.md)

# Package java.awt.color

---

package java.awt.color

Provides classes for color spaces. It contains an implementation of a color
space based on the International Color Consortium (ICC) Profile Format
Specification, Version 3.4, August 15, 1997. It also contains color profiles
based on the ICC Profile Format Specification.

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesClassesException Classes

  Class

  Description

  [CMMException](CMMException.md "class in java.awt.color")

  This exception is thrown if the native CMM returns an error.

  [ColorSpace](ColorSpace.md "class in java.awt.color")

  This abstract class is used to serve as a color space tag to identify the
  specific color space of a `Color` object or, via a `ColorModel`
  object, of an `Image`, a `BufferedImage`, or a
  `GraphicsDevice`.

  [ICC\_ColorSpace](ICC_ColorSpace.md "class in java.awt.color")

  The `ICC_ColorSpace` class is an implementation of the abstract
  `ColorSpace` class.

  [ICC\_Profile](ICC_Profile.md "class in java.awt.color")

  A representation of color profile data for device independent and device
  dependent color spaces based on the International Color Consortium
  Specification ICC.1:2001-12, File Format for Color Profiles, (see
  <http://www.color.org>).

  [ICC\_ProfileGray](ICC_ProfileGray.md "class in java.awt.color")

  The `ICC_ProfileGray` class is a subclass of the `ICC_Profile`
  class that represents profiles which meet the following criteria: the color
  space type of the profile is `TYPE_GRAY` and the profile includes the
  `grayTRCTag` and `mediaWhitePointTag` tags.

  [ICC\_ProfileRGB](ICC_ProfileRGB.md "class in java.awt.color")

  The `ICC_ProfileRGB` class is a subclass of the `ICC_Profile`
  class that represents profiles which meet the following criteria: the
  profile's color space type is RGB, and the profile includes the
  `redColorantTag`, `greenColorantTag`, `blueColorantTag`,
  `redTRCTag`, `greenTRCTag`, `blueTRCTag`,
  `mediaWhitePointTag` tags.

  [ProfileDataException](ProfileDataException.md "class in java.awt.color")

  This exception is thrown when an error occurs in accessing or processing an
  `ICC_Profile` object.