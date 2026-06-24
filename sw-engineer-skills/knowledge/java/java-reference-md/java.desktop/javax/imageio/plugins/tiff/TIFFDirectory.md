Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class TIFFDirectory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.plugins.tiff.TIFFDirectory

All Implemented Interfaces:
:   `Cloneable`

---

public class TIFFDirectory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A convenience class for simplifying interaction with TIFF native
image metadata. A TIFF image metadata tree represents an Image File
Directory (IFD) from a TIFF 6.0 stream. An IFD consists of a number of
IFD Entries each of which associates an identifying tag number with
a compatible value. A `TIFFDirectory` instance corresponds
to an IFD and contains a set of [`TIFFField`](TIFFField.md "class in javax.imageio.plugins.tiff")s each of which
corresponds to an IFD Entry in the IFD.

When reading, a `TIFFDirectory` may be created by passing
the value returned by [`ImageReader.getImageMetadata()`](../../ImageReader.md#getImageMetadata(int)) to [`createFromMetadata()`](#createFromMetadata(javax.imageio.metadata.IIOMetadata)). The [`TIFFField`](TIFFField.md "class in javax.imageio.plugins.tiff")s in the directory may then
be obtained using the accessor methods provided in this class.

When writing, an [`IIOMetadata`](../../metadata/IIOMetadata.md "class in javax.imageio.metadata") object for use by one of the
`write()` methods of [`ImageWriter`](../../ImageWriter.md "class in javax.imageio") may be
created from a `TIFFDirectory` by [`getAsMetadata()`](#getAsMetadata()).
The `TIFFDirectory` itself may be created by construction or
from the `IIOMetadata` object returned by
[`ImageWriter.getDefaultImageMetadata()`](../../ImageWriter.md#getDefaultImageMetadata(javax.imageio.ImageTypeSpecifier,javax.imageio.ImageWriteParam)). The `TIFFField`s in the
directory may be set using the mutator methods provided in this class.

A `TIFFDirectory` is aware of the tag numbers in the
group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s associated with it. When
a `TIFFDirectory` is created from a native image metadata
object, these tag sets are derived from the `tagSets` attribute
of the `TIFFIFD` node.

A `TIFFDirectory` might also have a parent [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff").
This will occur if the directory represents an IFD other than the root
IFD of the image. The parent tag is the tag of the IFD Entry which is a
pointer to the IFD represented by this `TIFFDirectory`. The
[`TIFFTag.isIFDPointer()`](TIFFTag.md#isIFDPointer()) method of this parent `TIFFTag`
must return `true`. When a `TIFFDirectory` is
created from a native image metadata object, the parent tag set is set
from the `parentTagName` attribute of the corresponding
`TIFFIFD` node. Note that a `TIFFDirectory` instance
which has a non-`null` parent tag will be contained in the
data field of a `TIFFField` instance which has a tag field
equal to the contained directory's parent tag.

As an example consider an Exif image. The `TIFFDirectory`
instance corresponding to the Exif IFD in the Exif stream would have parent
tag [`TAG_EXIF_IFD_POINTER`](ExifParentTIFFTagSet.md#TAG_EXIF_IFD_POINTER)
and would include [`ExifTIFFTagSet`](ExifTIFFTagSet.md "class in javax.imageio.plugins.tiff") in its group of known tag sets.
The `TIFFDirectory` corresponding to this Exif IFD will be
contained in the data field of a `TIFFField` which will in turn
be contained in the `TIFFDirectory` corresponding to the primary
IFD of the Exif image which will itself have a `null`-valued
parent tag.

**Note that this implementation is not synchronized.** If multiple
threads use a `TIFFDirectory` instance concurrently, and at
least one of the threads modifies the directory, for example, by adding
or removing `TIFFField`s or `TIFFTagSet`s, it
*must* be synchronized externally.

Since:
:   9

See Also:
:   * [`IIOMetadata`](../../metadata/IIOMetadata.md "class in javax.imageio.metadata")
    * [`TIFFField`](TIFFField.md "class in javax.imageio.plugins.tiff")
    * [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff")
    * [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TIFFDirectory(TIFFTagSet[] tagSets,
  TIFFTag parentTag)`

  Constructs a `TIFFDirectory` which is aware of a given
  group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTagSet(TIFFTagSet tagSet)`

  Adds an element to the group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this
  directory is aware.

  `void`

  `addTIFFField(TIFFField f)`

  Adds a TIFF field to the directory.

  `TIFFDirectory`

  `clone()`

  Clones the directory and all the fields contained therein.

  `boolean`

  `containsTIFFField(int tagNumber)`

  Determines whether a TIFF field with the given tag number is
  contained in this directory.

  `static TIFFDirectory`

  `createFromMetadata(IIOMetadata tiffImageMetadata)`

  Creates a `TIFFDirectory` instance from the contents of
  an image metadata object.

  `IIOMetadata`

  `getAsMetadata()`

  Converts the directory to a metadata object.

  `int`

  `getNumTIFFFields()`

  Returns the number of [`TIFFField`](TIFFField.md "class in javax.imageio.plugins.tiff")s in this directory.

  `TIFFTag`

  `getParentTag()`

  Returns the parent [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") of this directory if one
  has been defined or `null` otherwise.

  `TIFFTag`

  `getTag(int tagNumber)`

  Returns the [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") which has tag number equal to
  `tagNumber` or `null` if no such tag
  exists in the [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s associated with this
  directory.

  `TIFFTagSet[]`

  `getTagSets()`

  Returns the [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this directory is aware.

  `TIFFField`

  `getTIFFField(int tagNumber)`

  Retrieves a TIFF field from the directory.

  `TIFFField[]`

  `getTIFFFields()`

  Retrieves all TIFF fields from the directory.

  `void`

  `removeTagSet(TIFFTagSet tagSet)`

  Removes an element from the group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this
  directory is aware.

  `void`

  `removeTIFFField(int tagNumber)`

  Removes a TIFF field from the directory.

  `void`

  `removeTIFFFields()`

  Removes all TIFF fields from the directory.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TIFFDirectory

    public TIFFDirectory([TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")[] tagSets,
    [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff") parentTag)

    Constructs a `TIFFDirectory` which is aware of a given
    group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s. An optional parent [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff")
    may also be specified.

    Parameters:
    :   `tagSets` - The `TIFFTagSets` associated with this
        directory.
    :   `parentTag` - The parent `TIFFTag` of this directory;
        may be `null`.

    Throws:
    :   `NullPointerException` - if `tagSets` is
        `null`.
* ## Method Details

  + ### createFromMetadata

    public static [TIFFDirectory](TIFFDirectory.md "class in javax.imageio.plugins.tiff") createFromMetadata([IIOMetadata](../../metadata/IIOMetadata.md "class in javax.imageio.metadata") tiffImageMetadata)
    throws [IIOInvalidTreeException](../../metadata/IIOInvalidTreeException.md "class in javax.imageio.metadata")

    Creates a `TIFFDirectory` instance from the contents of
    an image metadata object. The supplied object must support an image
    metadata format supported by the TIFF [`ImageWriter`](../../ImageWriter.md "class in javax.imageio")
    plug-in. This will usually be either the TIFF native image metadata
    format `javax_imageio_tiff_image_1.0` or the Java
    Image I/O standard metadata format `javax_imageio_1.0`.

    Parameters:
    :   `tiffImageMetadata` - A metadata object which supports a compatible
        image metadata format.

    Returns:
    :   A `TIFFDirectory` populated from the contents of
        the supplied metadata object.

    Throws:
    :   `NullPointerException` - if `tiffImageMetadata`
        is `null`.
    :   `IllegalArgumentException` - if `tiffImageMetadata`
        does not support a compatible image metadata format.
    :   `IIOInvalidTreeException` - if the supplied metadata object
        cannot be parsed.
  + ### getTagSets

    public [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")[] getTagSets()

    Returns the [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this directory is aware.

    Returns:
    :   The `TIFFTagSet`s associated with this
        `TIFFDirectory`.
  + ### addTagSet

    public void addTagSet([TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff") tagSet)

    Adds an element to the group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this
    directory is aware.

    Parameters:
    :   `tagSet` - The `TIFFTagSet` to add.

    Throws:
    :   `NullPointerException` - if `tagSet` is
        `null`.
  + ### removeTagSet

    public void removeTagSet([TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff") tagSet)

    Removes an element from the group of [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s of which this
    directory is aware.

    Parameters:
    :   `tagSet` - The `TIFFTagSet` to remove.

    Throws:
    :   `NullPointerException` - if `tagSet` is
        `null`.
  + ### getParentTag

    public [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff") getParentTag()

    Returns the parent [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") of this directory if one
    has been defined or `null` otherwise.

    Returns:
    :   The parent `TIFFTag` of this
        `TIFFDiectory` or `null`.
  + ### getTag

    public [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff") getTag(int tagNumber)

    Returns the [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") which has tag number equal to
    `tagNumber` or `null` if no such tag
    exists in the [`TIFFTagSet`](TIFFTagSet.md "class in javax.imageio.plugins.tiff")s associated with this
    directory.

    Parameters:
    :   `tagNumber` - The tag number of interest.

    Returns:
    :   The corresponding `TIFFTag` or `null`.
  + ### getNumTIFFFields

    public int getNumTIFFFields()

    Returns the number of [`TIFFField`](TIFFField.md "class in javax.imageio.plugins.tiff")s in this directory.

    Returns:
    :   The number of `TIFFField`s in this
        `TIFFDirectory`.
  + ### containsTIFFField

    public boolean containsTIFFField(int tagNumber)

    Determines whether a TIFF field with the given tag number is
    contained in this directory.

    Parameters:
    :   `tagNumber` - The tag number.

    Returns:
    :   Whether a [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff") with tag number equal to
        `tagNumber` is present in this `TIFFDirectory`.
  + ### addTIFFField

    public void addTIFFField([TIFFField](TIFFField.md "class in javax.imageio.plugins.tiff") f)

    Adds a TIFF field to the directory.

    Parameters:
    :   `f` - The field to add.

    Throws:
    :   `NullPointerException` - if `f` is `null`.
  + ### getTIFFField

    public [TIFFField](TIFFField.md "class in javax.imageio.plugins.tiff") getTIFFField(int tagNumber)

    Retrieves a TIFF field from the directory.

    Parameters:
    :   `tagNumber` - The tag number of the tag associated with the field.

    Returns:
    :   A `TIFFField` with the requested tag number of
        `null` if no such field is present.
  + ### removeTIFFField

    public void removeTIFFField(int tagNumber)

    Removes a TIFF field from the directory.

    Parameters:
    :   `tagNumber` - The tag number of the tag associated with the field.
  + ### getTIFFFields

    public [TIFFField](TIFFField.md "class in javax.imageio.plugins.tiff")[] getTIFFFields()

    Retrieves all TIFF fields from the directory.

    Returns:
    :   An array of all TIFF fields in order of numerically increasing
        tag number.
  + ### removeTIFFFields

    public void removeTIFFFields()

    Removes all TIFF fields from the directory.
  + ### getAsMetadata

    public [IIOMetadata](../../metadata/IIOMetadata.md "class in javax.imageio.metadata") getAsMetadata()

    Converts the directory to a metadata object.

    Returns:
    :   A metadata instance initialized from the contents of this
        `TIFFDirectory`.
  + ### clone

    public [TIFFDirectory](TIFFDirectory.md "class in javax.imageio.plugins.tiff") clone()
    throws [CloneNotSupportedException](../../../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")

    Clones the directory and all the fields contained therein.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   A clone of this `TIFFDirectory`.

    Throws:
    :   `CloneNotSupportedException` - if the instance cannot be cloned.

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")