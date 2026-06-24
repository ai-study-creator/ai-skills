Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageReaderWriterSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

javax.imageio.spi.ImageReaderWriterSpi

All Implemented Interfaces:
:   `RegisterableService`

Direct Known Subclasses:
:   `ImageReaderSpi`, `ImageWriterSpi`

---

public abstract class ImageReaderWriterSpi
extends [IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

A superclass containing instance variables and methods common to
`ImageReaderSpi` and `ImageWriterSpi`.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageReaderSpi`](ImageReaderSpi.md "class in javax.imageio.spi")
    * [`ImageWriterSpi`](ImageWriterSpi.md "class in javax.imageio.spi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String[]`

  `extraImageMetadataFormatClassNames`

  An array of `String`s containing the class names of
  any additional image metadata formats supported by this
  plug-in, initially `null`.

  `protected String[]`

  `extraImageMetadataFormatNames`

  An array of `String`s containing the names of any
  additional image metadata formats supported by this plug-in,
  initially `null`.

  `protected String[]`

  `extraStreamMetadataFormatClassNames`

  An array of `String`s containing the class names of
  any additional stream metadata formats supported by this plug-in,
  initially `null`.

  `protected String[]`

  `extraStreamMetadataFormatNames`

  An array of `String`s containing the names of any
  additional stream metadata formats supported by this plug-in,
  initially `null`.

  `protected String[]`

  `MIMETypes`

  An array of strings to be returned from
  `getMIMETypes`, initially `null`.

  `protected String[]`

  `names`

  An array of strings to be returned from
  `getFormatNames`, initially `null`.

  `protected String`

  `nativeImageMetadataFormatClassName`

  A `String` containing the class name of the
  native stream metadata format supported by this plug-in,
  initially `null`.

  `protected String`

  `nativeImageMetadataFormatName`

  A `String` containing the name of the
  native stream metadata format supported by this plug-in,
  initially `null`.

  `protected String`

  `nativeStreamMetadataFormatClassName`

  A `String` containing the class name of the native
  stream metadata format supported by this plug-in, initially
  `null`.

  `protected String`

  `nativeStreamMetadataFormatName`

  A `String` containing the name of the native stream
  metadata format supported by this plug-in, initially
  `null`.

  `protected String`

  `pluginClassName`

  A `String` containing the name of the associated
  plug-in class, initially `null`.

  `protected String[]`

  `suffixes`

  An array of strings to be returned from
  `getFileSuffixes`, initially `null`.

  `protected boolean`

  `supportsStandardImageMetadataFormat`

  A boolean indicating whether this plug-in supports the
  standard metadata format for image metadata, initially
  `false`.

  `protected boolean`

  `supportsStandardStreamMetadataFormat`

  A boolean indicating whether this plug-in supports the
  standard metadata format for stream metadata, initially
  `false`.

  ### Fields inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `vendorName, version`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImageReaderWriterSpi()`

  Constructs a blank `ImageReaderWriterSpi`.

  `ImageReaderWriterSpi(String vendorName,
  String version,
  String[] names,
  String[] suffixes,
  String[] MIMETypes,
  String pluginClassName,
  boolean supportsStandardStreamMetadataFormat,
  String nativeStreamMetadataFormatName,
  String nativeStreamMetadataFormatClassName,
  String[] extraStreamMetadataFormatNames,
  String[] extraStreamMetadataFormatClassNames,
  boolean supportsStandardImageMetadataFormat,
  String nativeImageMetadataFormatName,
  String nativeImageMetadataFormatClassName,
  String[] extraImageMetadataFormatNames,
  String[] extraImageMetadataFormatClassNames)`

  Constructs an `ImageReaderWriterSpi` with a given
  set of values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String[]`

  `getExtraImageMetadataFormatNames()`

  Returns an array of `String`s containing the names
  of additional document formats, other than the native and
  standard formats, recognized by the
  `getAsTree` and `setFromTree` methods on
  the image metadata objects produced or consumed by this
  plug-in.

  `String[]`

  `getExtraStreamMetadataFormatNames()`

  Returns an array of `String`s containing the names
  of additional document formats, other than the native and
  standard formats, recognized by the
  `getAsTree` and `setFromTree` methods on
  the stream metadata objects produced or consumed by this
  plug-in.

  `String[]`

  `getFileSuffixes()`

  Returns an array of `String`s containing a list of
  file suffixes associated with the formats that are generally
  usable by the `ImageReader` or
  `ImageWriter` implementation associated with this
  service provider.

  `String[]`

  `getFormatNames()`

  Returns an array of `String`s containing
  human-readable names for the formats that are generally usable
  by the `ImageReader` or `ImageWriter`
  implementation associated with this service provider.

  `IIOMetadataFormat`

  `getImageMetadataFormat(String formatName)`

  Returns an `IIOMetadataFormat` object describing the
  given image metadata format, or `null` if no
  description is available.

  `String[]`

  `getMIMETypes()`

  Returns an array of `String`s containing a list of
  MIME types associated with the formats that are generally
  usable by the `ImageReader` or
  `ImageWriter` implementation associated with this
  service provider.

  `String`

  `getNativeImageMetadataFormatName()`

  Returns the name of the "native" image metadata format for
  this plug-in, which typically allows for lossless encoding and
  transmission of the image metadata stored in the format handled by
  this plug-in.

  `String`

  `getNativeStreamMetadataFormatName()`

  Returns the name of the "native" stream metadata format for
  this plug-in, which typically allows for lossless encoding and
  transmission of the stream metadata stored in the format handled by
  this plug-in.

  `String`

  `getPluginClassName()`

  Returns the fully-qualified class name of the
  `ImageReader` or `ImageWriter` plug-in
  associated with this service provider.

  `IIOMetadataFormat`

  `getStreamMetadataFormat(String formatName)`

  Returns an `IIOMetadataFormat` object describing the
  given stream metadata format, or `null` if no
  description is available.

  `boolean`

  `isStandardImageMetadataFormatSupported()`

  Returns `true` if the standard metadata format is
  among the document formats recognized by the
  `getAsTree` and `setFromTree` methods on
  the image metadata objects produced or consumed by this
  plug-in.

  `boolean`

  `isStandardStreamMetadataFormatSupported()`

  Returns `true` if the standard metadata format is
  among the document formats recognized by the
  `getAsTree` and `setFromTree` methods on
  the stream metadata objects produced or consumed by this
  plug-in.

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### names

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] names

    An array of strings to be returned from
    `getFormatNames`, initially `null`.
    Constructors should set this to a non-`null` value.
  + ### suffixes

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] suffixes

    An array of strings to be returned from
    `getFileSuffixes`, initially `null`.
  + ### MIMETypes

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] MIMETypes

    An array of strings to be returned from
    `getMIMETypes`, initially `null`.
  + ### pluginClassName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") pluginClassName

    A `String` containing the name of the associated
    plug-in class, initially `null`.
  + ### supportsStandardStreamMetadataFormat

    protected boolean supportsStandardStreamMetadataFormat

    A boolean indicating whether this plug-in supports the
    standard metadata format for stream metadata, initially
    `false`.
  + ### nativeStreamMetadataFormatName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeStreamMetadataFormatName

    A `String` containing the name of the native stream
    metadata format supported by this plug-in, initially
    `null`.
  + ### nativeStreamMetadataFormatClassName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeStreamMetadataFormatClassName

    A `String` containing the class name of the native
    stream metadata format supported by this plug-in, initially
    `null`.
  + ### extraStreamMetadataFormatNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraStreamMetadataFormatNames

    An array of `String`s containing the names of any
    additional stream metadata formats supported by this plug-in,
    initially `null`.
  + ### extraStreamMetadataFormatClassNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraStreamMetadataFormatClassNames

    An array of `String`s containing the class names of
    any additional stream metadata formats supported by this plug-in,
    initially `null`.
  + ### supportsStandardImageMetadataFormat

    protected boolean supportsStandardImageMetadataFormat

    A boolean indicating whether this plug-in supports the
    standard metadata format for image metadata, initially
    `false`.
  + ### nativeImageMetadataFormatName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeImageMetadataFormatName

    A `String` containing the name of the
    native stream metadata format supported by this plug-in,
    initially `null`.
  + ### nativeImageMetadataFormatClassName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeImageMetadataFormatClassName

    A `String` containing the class name of the
    native stream metadata format supported by this plug-in,
    initially `null`.
  + ### extraImageMetadataFormatNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraImageMetadataFormatNames

    An array of `String`s containing the names of any
    additional image metadata formats supported by this plug-in,
    initially `null`.
  + ### extraImageMetadataFormatClassNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraImageMetadataFormatClassNames

    An array of `String`s containing the class names of
    any additional image metadata formats supported by this
    plug-in, initially `null`.
* ## Constructor Details

  + ### ImageReaderWriterSpi

    public ImageReaderWriterSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] names,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] suffixes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] MIMETypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") pluginClassName,
    boolean supportsStandardStreamMetadataFormat,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeStreamMetadataFormatName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeStreamMetadataFormatClassName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraStreamMetadataFormatNames,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraStreamMetadataFormatClassNames,
    boolean supportsStandardImageMetadataFormat,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeImageMetadataFormatName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeImageMetadataFormatClassName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraImageMetadataFormatNames,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraImageMetadataFormatClassNames)

    Constructs an `ImageReaderWriterSpi` with a given
    set of values.

    Parameters:
    :   `vendorName` - the vendor name, as a non-`null`
        `String`.
    :   `version` - a version identifier, as a non-`null`
        `String`.
    :   `names` - a non-`null` array of
        `String`s indicating the format names. At least one
        entry must be present.
    :   `suffixes` - an array of `String`s indicating the
        common file suffixes. If no suffixes are defined,
        `null` should be supplied. An array of length 0
        will be normalized to `null`.
    :   `MIMETypes` - an array of `String`s indicating
        the format's MIME types. If no MIME types are defined,
        `null` should be supplied. An array of length 0
        will be normalized to `null`.
    :   `pluginClassName` - the fully-qualified name of the
        associated `ImageReader` or `ImageWriter`
        class, as a non-`null String`.
    :   `supportsStandardStreamMetadataFormat` - a
        `boolean` that indicates whether a stream metadata
        object can use trees described by the standard metadata format.
    :   `nativeStreamMetadataFormatName` - a
        `String`, or `null`, to be returned from
        `getNativeStreamMetadataFormatName`.
    :   `nativeStreamMetadataFormatClassName` - a
        `String`, or `null`, to be used to instantiate
        a metadata format object to be returned from
        `getNativeStreamMetadataFormat`.
    :   `extraStreamMetadataFormatNames` - an array of
        `String`s, or `null`, to be returned from
        `getExtraStreamMetadataFormatNames`. An array of length
        0 is normalized to `null`.
    :   `extraStreamMetadataFormatClassNames` - an array of
        `String`s, or `null`, to be used to instantiate
        a metadata format object to be returned from
        `getStreamMetadataFormat`. An array of length
        0 is normalized to `null`.
    :   `supportsStandardImageMetadataFormat` - a
        `boolean` that indicates whether an image metadata
        object can use trees described by the standard metadata format.
    :   `nativeImageMetadataFormatName` - a
        `String`, or `null`, to be returned from
        `getNativeImageMetadataFormatName`.
    :   `nativeImageMetadataFormatClassName` - a
        `String`, or `null`, to be used to instantiate
        a metadata format object to be returned from
        `getNativeImageMetadataFormat`.
    :   `extraImageMetadataFormatNames` - an array of
        `String`s to be returned from
        `getExtraImageMetadataFormatNames`. An array of length 0
        is normalized to `null`.
    :   `extraImageMetadataFormatClassNames` - an array of
        `String`s, or `null`, to be used to instantiate
        a metadata format object to be returned from
        `getImageMetadataFormat`. An array of length
        0 is normalized to `null`.

    Throws:
    :   `IllegalArgumentException` - if `vendorName`
        is `null`.
    :   `IllegalArgumentException` - if `version`
        is `null`.
    :   `IllegalArgumentException` - if `names`
        is `null` or has length 0.
    :   `IllegalArgumentException` - if `pluginClassName`
        is `null`.
  + ### ImageReaderWriterSpi

    public ImageReaderWriterSpi()

    Constructs a blank `ImageReaderWriterSpi`. It is up
    to the subclass to initialize instance variables and/or
    override method implementations in order to provide working
    versions of all methods.
* ## Method Details

  + ### getFormatNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getFormatNames()

    Returns an array of `String`s containing
    human-readable names for the formats that are generally usable
    by the `ImageReader` or `ImageWriter`
    implementation associated with this service provider. For
    example, a single `ImageReader` might be able to
    process both PBM and PNM files.

    Returns:
    :   a non-`null` array of `String`s
        or length at least 1 containing informal format names
        associated with this reader or writer.
  + ### getFileSuffixes

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getFileSuffixes()

    Returns an array of `String`s containing a list of
    file suffixes associated with the formats that are generally
    usable by the `ImageReader` or
    `ImageWriter` implementation associated with this
    service provider. For example, a single
    `ImageReader` might be able to process files with
    '.pbm' and '.pnm' suffixes, or both '.jpg' and '.jpeg'
    suffixes. If there are no known file suffixes,
    `null` will be returned.

    Returning a particular suffix does not guarantee that files
    with that suffix can be processed; it merely indicates that it
    may be worthwhile attempting to decode or encode such files
    using this service provider.

    Returns:
    :   an array of `String`s or length at least 1
        containing common file suffixes associated with this reader or
        writer, or `null`.
  + ### getMIMETypes

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getMIMETypes()

    Returns an array of `String`s containing a list of
    MIME types associated with the formats that are generally
    usable by the `ImageReader` or
    `ImageWriter` implementation associated with this
    service provider.

    Ideally, only a single MIME type would be required in order
    to describe a particular format. However, for several reasons
    it is necessary to associate a list of types with each service
    provider. First, many common image file formats do not have
    standard MIME types, so a list of commonly used unofficial
    names will be required, such as `image/x-pbm` and
    `image/x-portable-bitmap`. Some file formats have
    official MIME types but may sometimes be referred to using
    their previous unofficial designations, such as
    `image/x-png` instead of the official
    `image/png`. Finally, a single service provider may
    be capable of parsing multiple distinct types from the MIME
    point of view, for example `image/x-xbitmap` and
    `image/x-xpixmap`.

    Returning a particular MIME type does not guarantee that
    files claiming to be of that type can be processed; it merely
    indicates that it may be worthwhile attempting to decode or
    encode such files using this service provider.

    Returns:
    :   an array of `String`s or length at least 1
        containing MIME types associated with this reader or writer, or
        `null`.
  + ### getPluginClassName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPluginClassName()

    Returns the fully-qualified class name of the
    `ImageReader` or `ImageWriter` plug-in
    associated with this service provider.

    Returns:
    :   the class name, as a non-`null`
        `String`.
  + ### isStandardStreamMetadataFormatSupported

    public boolean isStandardStreamMetadataFormatSupported()

    Returns `true` if the standard metadata format is
    among the document formats recognized by the
    `getAsTree` and `setFromTree` methods on
    the stream metadata objects produced or consumed by this
    plug-in.

    Returns:
    :   `true` if the standard format is supported
        for stream metadata.
  + ### getNativeStreamMetadataFormatName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNativeStreamMetadataFormatName()

    Returns the name of the "native" stream metadata format for
    this plug-in, which typically allows for lossless encoding and
    transmission of the stream metadata stored in the format handled by
    this plug-in. If no such format is supported,
    `null` will be returned.

    The default implementation returns the
    `nativeStreamMetadataFormatName` instance variable,
    which is typically set by the constructor.

    Returns:
    :   the name of the native stream metadata format, or
        `null`.
  + ### getExtraStreamMetadataFormatNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getExtraStreamMetadataFormatNames()

    Returns an array of `String`s containing the names
    of additional document formats, other than the native and
    standard formats, recognized by the
    `getAsTree` and `setFromTree` methods on
    the stream metadata objects produced or consumed by this
    plug-in.

    If the plug-in does not handle metadata, null should be
    returned.

    The set of formats may differ according to the particular
    images being read or written; this method should indicate all
    the additional formats supported by the plug-in under any
    circumstances.

    The default implementation returns a clone of the
    `extraStreamMetadataFormatNames` instance variable,
    which is typically set by the constructor.

    Returns:
    :   an array of `String`s, or null.

    See Also:
    :   - [`IIOMetadata.getMetadataFormatNames()`](../metadata/IIOMetadata.md#getMetadataFormatNames())
        - [`getExtraImageMetadataFormatNames()`](#getExtraImageMetadataFormatNames())
        - [`getNativeStreamMetadataFormatName()`](#getNativeStreamMetadataFormatName())
  + ### isStandardImageMetadataFormatSupported

    public boolean isStandardImageMetadataFormatSupported()

    Returns `true` if the standard metadata format is
    among the document formats recognized by the
    `getAsTree` and `setFromTree` methods on
    the image metadata objects produced or consumed by this
    plug-in.

    Returns:
    :   `true` if the standard format is supported
        for image metadata.
  + ### getNativeImageMetadataFormatName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNativeImageMetadataFormatName()

    Returns the name of the "native" image metadata format for
    this plug-in, which typically allows for lossless encoding and
    transmission of the image metadata stored in the format handled by
    this plug-in. If no such format is supported,
    `null` will be returned.

    The default implementation returns the
    `nativeImageMetadataFormatName` instance variable,
    which is typically set by the constructor.

    Returns:
    :   the name of the native image metadata format, or
        `null`.

    See Also:
    :   - [`getExtraImageMetadataFormatNames()`](#getExtraImageMetadataFormatNames())
  + ### getExtraImageMetadataFormatNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getExtraImageMetadataFormatNames()

    Returns an array of `String`s containing the names
    of additional document formats, other than the native and
    standard formats, recognized by the
    `getAsTree` and `setFromTree` methods on
    the image metadata objects produced or consumed by this
    plug-in.

    If the plug-in does not handle image metadata, null should
    be returned.

    The set of formats may differ according to the particular
    images being read or written; this method should indicate all
    the additional formats supported by the plug-in under any circumstances.

    The default implementation returns a clone of the
    `extraImageMetadataFormatNames` instance variable,
    which is typically set by the constructor.

    Returns:
    :   an array of `String`s, or null.

    See Also:
    :   - [`IIOMetadata.getMetadataFormatNames()`](../metadata/IIOMetadata.md#getMetadataFormatNames())
        - [`getExtraStreamMetadataFormatNames()`](#getExtraStreamMetadataFormatNames())
        - [`getNativeImageMetadataFormatName()`](#getNativeImageMetadataFormatName())
  + ### getStreamMetadataFormat

    public [IIOMetadataFormat](../metadata/IIOMetadataFormat.md "interface in javax.imageio.metadata") getStreamMetadataFormat([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `IIOMetadataFormat` object describing the
    given stream metadata format, or `null` if no
    description is available. The supplied name must be the native
    stream metadata format name, the standard metadata format name,
    or one of those returned by
    `getExtraStreamMetadataFormatNames`.

    Parameters:
    :   `formatName` - the desired stream metadata format.

    Returns:
    :   an `IIOMetadataFormat` object.

    Throws:
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not a supported name.
  + ### getImageMetadataFormat

    public [IIOMetadataFormat](../metadata/IIOMetadataFormat.md "interface in javax.imageio.metadata") getImageMetadataFormat([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `IIOMetadataFormat` object describing the
    given image metadata format, or `null` if no
    description is available. The supplied name must be the native
    image metadata format name, the standard metadata format name,
    or one of those returned by
    `getExtraImageMetadataFormatNames`.

    Parameters:
    :   `formatName` - the desired image metadata format.

    Returns:
    :   an `IIOMetadataFormat` object.

    Throws:
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not a supported name.