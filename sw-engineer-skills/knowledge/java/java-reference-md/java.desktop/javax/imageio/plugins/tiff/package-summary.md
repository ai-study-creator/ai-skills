Module [java.desktop](../../../../module-summary.md)

# Package javax.imageio.plugins.tiff

---

package javax.imageio.plugins.tiff

Public classes used by the built-in TIFF plug-ins.

This package contains classes supporting the built-in TIFF reader and writer
plug-ins. Classes are provided for simplifying interaction with metadata,
including Exif metadata common in digital photography, and an extension of
[`ImageReadParam`](../../ImageReadParam.md "class in javax.imageio") which permits specifying which metadata
tags are allowed to be read. For more information about the operation of the
built-in TIFF plug-ins, see the
[TIFF metadata format
specification and usage notes](../../metadata/doc-files/tiff_metadata.md).

Since:
:   9

* Classes

  Class

  Description

  [BaselineTIFFTagSet](BaselineTIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the set of tags found in the baseline TIFF
  specification as well as some common additional tags.

  [ExifGPSTagSet](ExifGPSTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the tags found in an Exif GPS Info IFD.

  [ExifInteroperabilityTagSet](ExifInteroperabilityTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the tags found in an Exif Interoperability IFD.

  [ExifParentTIFFTagSet](ExifParentTIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class containing the TIFF tags used to reference the Exif and GPS IFDs.

  [ExifTIFFTagSet](ExifTIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the tags found in an Exif IFD.

  [FaxTIFFTagSet](FaxTIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the extra tags found in a
  [TIFF-F](https://tools.ietf.org/html/rfc2306.html) (RFC 2036) file.

  [GeoTIFFTagSet](GeoTIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing the tags found in a GeoTIFF IFD.

  [TIFFDirectory](TIFFDirectory.md "class in javax.imageio.plugins.tiff")

  A convenience class for simplifying interaction with TIFF native
  image metadata.

  [TIFFField](TIFFField.md "class in javax.imageio.plugins.tiff")

  A class representing a field in a TIFF 6.0 Image File Directory.

  [TIFFImageReadParam](TIFFImageReadParam.md "class in javax.imageio.plugins.tiff")

  A subclass of [`ImageReadParam`](../../ImageReadParam.md "class in javax.imageio") allowing control over
  the TIFF reading process.

  [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff")

  A class defining the notion of a TIFF tag.

  [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  A class representing a set of TIFF tags.