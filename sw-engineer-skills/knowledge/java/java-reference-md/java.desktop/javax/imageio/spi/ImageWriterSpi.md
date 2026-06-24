Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageWriterSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

[javax.imageio.spi.ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

javax.imageio.spi.ImageWriterSpi

All Implemented Interfaces:
:   `RegisterableService`

---

public abstract class ImageWriterSpi
extends [ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

The service provider interface (SPI) for `ImageWriter`s.
For more information on service provider classes, see the class comment
for the `IIORegistry` class.

Each `ImageWriterSpi` provides several types of information
about the `ImageWriter` class with which it is associated.

The name of the vendor who defined the SPI class and a
brief description of the class are available via the
`getVendorName`, `getDescription`,
and `getVersion` methods.
These methods may be internationalized to provide locale-specific
output. These methods are intended mainly to provide short,
human-writable information that might be used to organize a pop-up
menu or other list.

Lists of format names, file suffixes, and MIME types associated
with the service may be obtained by means of the
`getFormatNames`, `getFileSuffixes`, and
`getMIMEType` methods. These methods may be used to
identify candidate `ImageWriter`s for writing a
particular file or stream based on manual format selection, file
naming, or MIME associations.

A more reliable way to determine which `ImageWriter`s
are likely to be able to parse a particular data stream is provided
by the `canEncodeImage` method. This methods allows the
service provider to inspect the actual image contents.

Finally, an instance of the `ImageWriter` class
associated with this service provider may be obtained by calling
the `createWriterInstance` method. Any heavyweight
initialization, such as the loading of native libraries or creation
of large tables, should be deferred at least until the first
invocation of this method.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageTypeSpecifier`](../ImageTypeSpecifier.md "class in javax.imageio")
    * [`ImageWriter`](../ImageWriter.md "class in javax.imageio")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>[]`

  `outputTypes`

  An array of `Class` objects to be returned from
  `getOutputTypes`, initially `null`.

  `protected String[]`

  `readerSpiNames`

  An array of strings to be returned from
  `getImageReaderSpiNames`, initially
  `null`.

  `static final Class<?>[]`

  `STANDARD_OUTPUT_TYPE`

  Deprecated.

  Instead of using this field, directly create
  the equivalent array `{ ImageOutputStream.class }`.

  ### Fields inherited from class javax.imageio.spi.[ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

  `extraImageMetadataFormatClassNames, extraImageMetadataFormatNames, extraStreamMetadataFormatClassNames, extraStreamMetadataFormatNames, MIMETypes, names, nativeImageMetadataFormatClassName, nativeImageMetadataFormatName, nativeStreamMetadataFormatClassName, nativeStreamMetadataFormatName, pluginClassName, suffixes, supportsStandardImageMetadataFormat, supportsStandardStreamMetadataFormat`

  ### Fields inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `vendorName, version`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ImageWriterSpi()`

  Constructs a blank `ImageWriterSpi`.

  `ImageWriterSpi(String vendorName,
  String version,
  String[] names,
  String[] suffixes,
  String[] MIMETypes,
  String writerClassName,
  Class<?>[] outputTypes,
  String[] readerSpiNames,
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

  Constructs an `ImageWriterSpi` with a given
  set of values.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `canEncodeImage(RenderedImage im)`

  Returns `true` if the `ImageWriter`
  implementation associated with this service provider is able to
  encode the given `RenderedImage` instance.

  `abstract boolean`

  `canEncodeImage(ImageTypeSpecifier type)`

  Returns `true` if the `ImageWriter`
  implementation associated with this service provider is able to
  encode an image with the given layout.

  `ImageWriter`

  `createWriterInstance()`

  Returns an instance of the `ImageWriter`
  implementation associated with this service provider.

  `abstract ImageWriter`

  `createWriterInstance(Object extension)`

  Returns an instance of the `ImageWriter`
  implementation associated with this service provider.

  `String[]`

  `getImageReaderSpiNames()`

  Returns an array of `String`s containing all the
  fully qualified names of all the `ImageReaderSpi`
  classes that can understand the internal metadata
  representation used by the `ImageWriter` associated
  with this service provider, or `null` if there are
  no such `ImageReaders` specified.

  `Class<?>[]`

  `getOutputTypes()`

  Returns an array of `Class` objects indicating what
  types of objects may be used as arguments to the writer's
  `setOutput` method.

  `boolean`

  `isFormatLossless()`

  Returns `true` if the format that this writer
  outputs preserves pixel data bit-accurately.

  `boolean`

  `isOwnWriter(ImageWriter writer)`

  Returns `true` if the `ImageWriter` object
  passed in is an instance of the `ImageWriter`
  associated with this service provider.

  ### Methods inherited from class javax.imageio.spi.[ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

  `getExtraImageMetadataFormatNames, getExtraStreamMetadataFormatNames, getFileSuffixes, getFormatNames, getImageMetadataFormat, getMIMETypes, getNativeImageMetadataFormatName, getNativeStreamMetadataFormatName, getPluginClassName, getStreamMetadataFormat, isStandardImageMetadataFormatSupported, isStandardStreamMetadataFormatSupported`

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### STANDARD\_OUTPUT\_TYPE

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] STANDARD\_OUTPUT\_TYPE

    Deprecated.

    Instead of using this field, directly create
    the equivalent array `{ ImageOutputStream.class }`.

    A single-element array, initially containing
    `ImageOutputStream.class`, to be returned from
    `getOutputTypes`.
  + ### outputTypes

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] outputTypes

    An array of `Class` objects to be returned from
    `getOutputTypes`, initially `null`.
  + ### readerSpiNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] readerSpiNames

    An array of strings to be returned from
    `getImageReaderSpiNames`, initially
    `null`.
* ## Constructor Details

  + ### ImageWriterSpi

    protected ImageWriterSpi()

    Constructs a blank `ImageWriterSpi`. It is up to
    the subclass to initialize instance variables and/or override
    method implementations in order to provide working versions of
    all methods.
  + ### ImageWriterSpi

    public ImageWriterSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] names,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] suffixes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] MIMETypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") writerClassName,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] outputTypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] readerSpiNames,
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

    Constructs an `ImageWriterSpi` with a given
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
        the format's MIME types. If no suffixes are defined,
        `null` should be supplied. An array of length 0
        will be normalized to `null`.
    :   `writerClassName` - the fully-qualified name of the
        associated `ImageWriterSpi` class, as a
        non-`null String`.
    :   `outputTypes` - an array of `Class` objects of
        length at least 1 indicating the legal output types.
    :   `readerSpiNames` - an array `String`s of length
        at least 1 naming the classes of all associated
        `ImageReader`s, or `null`. An array of
        length 0 is normalized to `null`.
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
    :   `IllegalArgumentException` - if `writerClassName`
        is `null`.
    :   `IllegalArgumentException` - if `outputTypes`
        is `null` or has length 0.
* ## Method Details

  + ### isFormatLossless

    public boolean isFormatLossless()

    Returns `true` if the format that this writer
    outputs preserves pixel data bit-accurately. The default
    implementation returns `true`.

    Returns:
    :   `true` if the format preserves full pixel
        accuracy.
  + ### getOutputTypes

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] getOutputTypes()

    Returns an array of `Class` objects indicating what
    types of objects may be used as arguments to the writer's
    `setOutput` method.

    For most writers, which only output to an
    `ImageOutputStream`, a single-element array
    containing `ImageOutputStream.class` should be
    returned.

    Returns:
    :   a non-`null` array of
        `Class` objects of length at least 1.
  + ### canEncodeImage

    public abstract boolean canEncodeImage([ImageTypeSpecifier](../ImageTypeSpecifier.md "class in javax.imageio") type)

    Returns `true` if the `ImageWriter`
    implementation associated with this service provider is able to
    encode an image with the given layout. The layout
    (*i.e.*, the image's `SampleModel` and
    `ColorModel`) is described by an
    `ImageTypeSpecifier` object.

    A return value of `true` is not an absolute
    guarantee of successful encoding; the encoding process may still
    produce errors due to factors such as I/O errors, inconsistent
    or malformed data structures, etc. The intent is that a
    reasonable inspection of the basic structure of the image be
    performed in order to determine if it is within the scope of
    the encoding format. For example, a service provider for a
    format that can only encode greyscale would return
    `false` if handed an RGB `BufferedImage`.
    Similarly, a service provider for a format that can encode
    8-bit RGB imagery might refuse to encode an image with an
    associated alpha channel.

    Different `ImageWriter`s, and thus service
    providers, may choose to be more or less strict. For example,
    they might accept an image with premultiplied alpha even though
    it will have to be divided out of each pixel, at some loss of
    precision, in order to be stored.

    Parameters:
    :   `type` - an `ImageTypeSpecifier` specifying the
        layout of the image to be written.

    Returns:
    :   `true` if this writer is likely to be able
        to encode images with the given layout.

    Throws:
    :   `IllegalArgumentException` - if `type`
        is `null`.
  + ### canEncodeImage

    public boolean canEncodeImage([RenderedImage](../../../java/awt/image/RenderedImage.md "interface in java.awt.image") im)

    Returns `true` if the `ImageWriter`
    implementation associated with this service provider is able to
    encode the given `RenderedImage` instance. Note
    that this includes instances of
    `java.awt.image.BufferedImage`.

    See the discussion for
    `canEncodeImage(ImageTypeSpecifier)` for information
    on the semantics of this method.

    Parameters:
    :   `im` - an instance of `RenderedImage` to be encoded.

    Returns:
    :   `true` if this writer is likely to be able
        to encode this image.

    Throws:
    :   `IllegalArgumentException` - if `im`
        is `null`.
  + ### createWriterInstance

    public [ImageWriter](../ImageWriter.md "class in javax.imageio") createWriterInstance()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageWriter`
    implementation associated with this service provider.
    The returned object will initially be in an initial state as if
    its `reset` method had been called.

    The default implementation simply returns
    `createWriterInstance(null)`.

    Returns:
    :   an `ImageWriter` instance.

    Throws:
    :   `IOException` - if an error occurs during loading,
        or initialization of the writer class, or during instantiation
        or initialization of the writer object.
  + ### createWriterInstance

    public abstract [ImageWriter](../ImageWriter.md "class in javax.imageio") createWriterInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") extension)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageWriter`
    implementation associated with this service provider.
    The returned object will initially be in an initial state
    as if its `reset` method had been called.

    An `Object` may be supplied to the plug-in at
    construction time. The nature of the object is entirely
    plug-in specific.

    Typically, a plug-in will implement this method using code
    such as `return new MyImageWriter(this)`.

    Parameters:
    :   `extension` - a plug-in specific extension object, which may
        be `null`.

    Returns:
    :   an `ImageWriter` instance.

    Throws:
    :   `IOException` - if the attempt to instantiate
        the writer fails.
    :   `IllegalArgumentException` - if the
        `ImageWriter`'s constructor throws an
        `IllegalArgumentException` to indicate that the
        extension object is unsuitable.
  + ### isOwnWriter

    public boolean isOwnWriter([ImageWriter](../ImageWriter.md "class in javax.imageio") writer)

    Returns `true` if the `ImageWriter` object
    passed in is an instance of the `ImageWriter`
    associated with this service provider.

    Parameters:
    :   `writer` - an `ImageWriter` instance.

    Returns:
    :   `true` if `writer` is recognized

    Throws:
    :   `IllegalArgumentException` - if `writer` is
        `null`.
  + ### getImageReaderSpiNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getImageReaderSpiNames()

    Returns an array of `String`s containing all the
    fully qualified names of all the `ImageReaderSpi`
    classes that can understand the internal metadata
    representation used by the `ImageWriter` associated
    with this service provider, or `null` if there are
    no such `ImageReaders` specified. If a
    non-`null` value is returned, it must have non-zero
    length.

    The first item in the array must be the name of the service
    provider for the "preferred" reader, as it will be used to
    instantiate the `ImageReader` returned by
    `ImageIO.getImageReader(ImageWriter)`.

    This mechanism may be used to obtain
    `ImageReaders` that will generated non-pixel
    meta-data (see `IIOExtraDataInfo`) in a structure
    understood by an `ImageWriter`. By reading the
    image and obtaining this data from one of the
    `ImageReaders` obtained with this method and passing
    it on to the `ImageWriter`, a client program can
    read an image, modify it in some way, and write it back out
    preserving all meta-data, without having to understand anything
    about the internal structure of the meta-data, or even about
    the image format.

    Returns:
    :   an array of `String`s of length at least 1
        containing names of `ImageReaderSpi`s, or
        `null`.

    See Also:
    :   - [`ImageIO.getImageReader(ImageWriter)`](../ImageIO.md#getImageReader(javax.imageio.ImageWriter))
        - [`ImageReaderSpi.getImageWriterSpiNames()`](ImageReaderSpi.md#getImageWriterSpiNames())