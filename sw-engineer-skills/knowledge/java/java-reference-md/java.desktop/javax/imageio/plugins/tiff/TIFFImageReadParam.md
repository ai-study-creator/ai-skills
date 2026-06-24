Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class TIFFImageReadParam

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.IIOParam](../../IIOParam.md "class in javax.imageio")

[javax.imageio.ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

javax.imageio.plugins.tiff.TIFFImageReadParam

---

public final class TIFFImageReadParam
extends [ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

A subclass of [`ImageReadParam`](../../ImageReadParam.md "class in javax.imageio") allowing control over
the TIFF reading process.

Because TIFF is an extensible format, the reader requires
information about any tags used by TIFF extensions in order to emit
meaningful metadata. Also, TIFF extensions may define new
compression types. Both types of information about extensions may
be provided by this interface.

Additional TIFF tags must be organized into
`TIFFTagSet`s. A `TIFFTagSet` may be
provided to the reader by means of the
`addAllowedTagSet` method. By default, the tag sets
`BaselineTIFFTagSet`, `FaxTIFFTagSet`,
`ExifParentTIFFTagSet`, and `GeoTIFFTagSet`
are included.

Forcing reading of fields corresponding to `TIFFTag`s
not in any of the allowed `TIFFTagSet`s may be effected via
[`setReadUnknownTags`](#setReadUnknownTags(boolean)).

Since:
:   9

* ## Field Summary

  ### Fields inherited from class javax.imageio.[ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

  `canSetSourceRenderSize, destination, destinationBands, minProgressivePass, numProgressivePasses, sourceRenderSize`

  ### Fields inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `controller, defaultController, destinationOffset, destinationType, sourceBands, sourceRegion, sourceXSubsampling, sourceYSubsampling, subsamplingXOffset, subsamplingYOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TIFFImageReadParam()`

  Constructs a `TIFFImageReadParam`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAllowedTagSet(TIFFTagSet tagSet)`

  Adds a `TIFFTagSet` object to the list of allowed
  tag sets.

  `List<TIFFTagSet>`

  `getAllowedTagSets()`

  Returns a `List` containing the allowed
  `TIFFTagSet` objects.

  `boolean`

  `getReadUnknownTags()`

  Retrieve the setting of whether to read fields corresponding to unknown
  `TIFFTag`s.

  `void`

  `removeAllowedTagSet(TIFFTagSet tagSet)`

  Removes a `TIFFTagSet` object from the list of
  allowed tag sets.

  `void`

  `setReadUnknownTags(boolean readUnknownTags)`

  Set whether to read fields corresponding to `TIFFTag`s not in
  the allowed `TIFFTagSet`s.

  ### Methods inherited from class javax.imageio.[ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

  `canSetSourceRenderSize, getDestination, getDestinationBands, getSourceMaxProgressivePass, getSourceMinProgressivePass, getSourceNumProgressivePasses, getSourceRenderSize, setDestination, setDestinationBands, setDestinationType, setSourceProgressivePasses, setSourceRenderSize`

  ### Methods inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `activateController, getController, getDefaultController, getDestinationOffset, getDestinationType, getSourceBands, getSourceRegion, getSourceXSubsampling, getSourceYSubsampling, getSubsamplingXOffset, getSubsamplingYOffset, hasController, setController, setDestinationOffset, setSourceBands, setSourceRegion, setSourceSubsampling`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TIFFImageReadParam

    public TIFFImageReadParam()

    Constructs a `TIFFImageReadParam`. Tags defined by
    the `TIFFTagSet`s `BaselineTIFFTagSet`,
    `FaxTIFFTagSet`, `ExifParentTIFFTagSet`, and
    `GeoTIFFTagSet` will be supported.

    See Also:
    :   - [`BaselineTIFFTagSet`](BaselineTIFFTagSet.md "class in javax.imageio.plugins.tiff")
        - [`FaxTIFFTagSet`](FaxTIFFTagSet.md "class in javax.imageio.plugins.tiff")
        - [`ExifParentTIFFTagSet`](ExifParentTIFFTagSet.md "class in javax.imageio.plugins.tiff")
        - [`GeoTIFFTagSet`](GeoTIFFTagSet.md "class in javax.imageio.plugins.tiff")
* ## Method Details

  + ### addAllowedTagSet

    public void addAllowedTagSet([TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff") tagSet)

    Adds a `TIFFTagSet` object to the list of allowed
    tag sets. Attempting to add a duplicate object to the list
    has no effect.

    Parameters:
    :   `tagSet` - a `TIFFTagSet`.

    Throws:
    :   `IllegalArgumentException` - if `tagSet` is
        `null`.
  + ### removeAllowedTagSet

    public void removeAllowedTagSet([TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff") tagSet)

    Removes a `TIFFTagSet` object from the list of
    allowed tag sets. Removal is based on the `equals`
    method of the `TIFFTagSet`, which is normally
    defined as reference equality.

    Parameters:
    :   `tagSet` - a `TIFFTagSet`.

    Throws:
    :   `IllegalArgumentException` - if `tagSet` is
        `null`.
  + ### getAllowedTagSets

    public [List](../../../../../java.base/java/util/List.md "interface in java.util")<[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")> getAllowedTagSets()

    Returns a `List` containing the allowed
    `TIFFTagSet` objects.

    Returns:
    :   a `List` of `TIFFTagSet`s.
  + ### setReadUnknownTags

    public void setReadUnknownTags(boolean readUnknownTags)

    Set whether to read fields corresponding to `TIFFTag`s not in
    the allowed `TIFFTagSet`s. The default setting is `false`.
    If the TIFF `ImageReader` is ignoring metadata, then a setting
    of `true` is overridden as all metadata are ignored except those
    essential to reading the image itself.

    Parameters:
    :   `readUnknownTags` - Whether to read fields of unrecognized tags
  + ### getReadUnknownTags

    public boolean getReadUnknownTags()

    Retrieve the setting of whether to read fields corresponding to unknown
    `TIFFTag`s.

    Returns:
    :   Whether to read fields of unrecognized tags