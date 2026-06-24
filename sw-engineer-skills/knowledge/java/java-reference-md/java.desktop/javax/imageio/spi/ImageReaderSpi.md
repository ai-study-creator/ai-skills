Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageReaderSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

[javax.imageio.spi.ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

javax.imageio.spi.ImageReaderSpi

All Implemented Interfaces:
:   `RegisterableService`

---

public abstract class ImageReaderSpi
extends [ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

The service provider interface (SPI) for `ImageReader`s.
For more information on service provider classes, see the class comment
for the `IIORegistry` class.

Each `ImageReaderSpi` provides several types of information
about the `ImageReader` class with which it is associated.

The name of the vendor who defined the SPI class and a
brief description of the class are available via the
`getVendorName`, `getDescription`,
and `getVersion` methods.
These methods may be internationalized to provide locale-specific
output. These methods are intended mainly to provide short,
human-readable information that might be used to organize a pop-up
menu or other list.

Lists of format names, file suffixes, and MIME types associated
with the service may be obtained by means of the
`getFormatNames`, `getFileSuffixes`, and
`getMIMETypes` methods. These methods may be used to
identify candidate `ImageReader`s for decoding a
particular file or stream based on manual format selection, file
naming, or MIME associations (for example, when accessing a file
over HTTP or as an email attachment).

A more reliable way to determine which `ImageReader`s
are likely to be able to parse a particular data stream is provided
by the `canDecodeInput` method. This methods allows the
service provider to inspect the actual stream contents.

Finally, an instance of the `ImageReader` class
associated with this service provider may be obtained by calling
the `createReaderInstance` method. Any heavyweight
initialization, such as the loading of native libraries or creation
of large tables, should be deferred at least until the first
invocation of this method.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageReader`](../ImageReader.md "class in javax.imageio")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>[]`

  `inputTypes`

  An array of `Class` objects to be returned from
  `getInputTypes`, initially `null`.

  `static final Class<?>[]`

  `STANDARD_INPUT_TYPE`

  Deprecated.

  Instead of using this field, directly create
  the equivalent array `{ ImageInputStream.class }`.

  `protected String[]`

  `writerSpiNames`

  An array of strings to be returned from
  `getImageWriterSpiNames`, initially
  `null`.

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

  `ImageReaderSpi()`

  Constructs a blank `ImageReaderSpi`.

  `ImageReaderSpi(String vendorName,
  String version,
  String[] names,
  String[] suffixes,
  String[] MIMETypes,
  String readerClassName,
  Class<?>[] inputTypes,
  String[] writerSpiNames,
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

  Constructs an `ImageReaderSpi` with a given
  set of values.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `canDecodeInput(Object source)`

  Returns `true` if the supplied source object appears
  to be of the format supported by this reader.

  `ImageReader`

  `createReaderInstance()`

  Returns an instance of the `ImageReader`
  implementation associated with this service provider.

  `abstract ImageReader`

  `createReaderInstance(Object extension)`

  Returns an instance of the `ImageReader`
  implementation associated with this service provider.

  `String[]`

  `getImageWriterSpiNames()`

  Returns an array of `String`s containing the fully
  qualified names of all the `ImageWriterSpi` classes
  that can understand the internal metadata representation used
  by the `ImageReader` associated with this service
  provider, or `null` if there are no such
  `ImageWriter`s specified.

  `Class<?>[]`

  `getInputTypes()`

  Returns an array of `Class` objects indicating what
  types of objects may be used as arguments to the reader's
  `setInput` method.

  `boolean`

  `isOwnReader(ImageReader reader)`

  Returns `true` if the `ImageReader` object
  passed in is an instance of the `ImageReader`
  associated with this service provider.

  ### Methods inherited from class javax.imageio.spi.[ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

  `getExtraImageMetadataFormatNames, getExtraStreamMetadataFormatNames, getFileSuffixes, getFormatNames, getImageMetadataFormat, getMIMETypes, getNativeImageMetadataFormatName, getNativeStreamMetadataFormatName, getPluginClassName, getStreamMetadataFormat, isStandardImageMetadataFormatSupported, isStandardStreamMetadataFormatSupported`

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### STANDARD\_INPUT\_TYPE

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] STANDARD\_INPUT\_TYPE

    Deprecated.

    Instead of using this field, directly create
    the equivalent array `{ ImageInputStream.class }`.

    A single-element array, initially containing
    `ImageInputStream.class`, to be returned from
    `getInputTypes`.
  + ### inputTypes

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] inputTypes

    An array of `Class` objects to be returned from
    `getInputTypes`, initially `null`.
  + ### writerSpiNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] writerSpiNames

    An array of strings to be returned from
    `getImageWriterSpiNames`, initially
    `null`.
* ## Constructor Details

  + ### ImageReaderSpi

    protected ImageReaderSpi()

    Constructs a blank `ImageReaderSpi`. It is up to
    the subclass to initialize instance variables and/or override
    method implementations in order to provide working versions of
    all methods.
  + ### ImageReaderSpi

    public ImageReaderSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] names,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] suffixes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] MIMETypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") readerClassName,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] inputTypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] writerSpiNames,
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

    Constructs an `ImageReaderSpi` with a given
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
    :   `readerClassName` - the fully-qualified name of the
        associated `ImageReader` class, as a
        non-`null String`.
    :   `inputTypes` - a non-`null` array of
        `Class` objects of length at least 1 indicating the
        legal input types.
    :   `writerSpiNames` - an array `String`s naming the
        classes of all associated `ImageWriter`s, or
        `null`. An array of length 0 is normalized to
        `null`.
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
    :   `IllegalArgumentException` - if `readerClassName`
        is `null`.
    :   `IllegalArgumentException` - if `inputTypes`
        is `null` or has length 0.
* ## Method Details

  + ### getInputTypes

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] getInputTypes()

    Returns an array of `Class` objects indicating what
    types of objects may be used as arguments to the reader's
    `setInput` method.

    For most readers, which only accept input from an
    `ImageInputStream`, a single-element array
    containing `ImageInputStream.class` should be
    returned.

    Returns:
    :   a non-`null` array of
        `Class` objects of length at least 1.
  + ### canDecodeInput

    public abstract boolean canDecodeInput([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns `true` if the supplied source object appears
    to be of the format supported by this reader. Returning
    `true` from this method does not guarantee that
    reading will succeed, only that there appears to be a
    reasonable chance of success based on a brief inspection of the
    stream contents. If the source is an
    `ImageInputStream`, implementations will commonly
    check the first several bytes of the stream for a "magic
    number" associated with the format. Once actual reading has
    commenced, the reader may still indicate failure at any time
    prior to the completion of decoding.

    It is important that the state of the object not be
    disturbed in order that other `ImageReaderSpi`s can
    properly determine whether they are able to decode the object.
    In particular, if the source is an
    `ImageInputStream`, a
    `mark`/`reset` pair should be used to
    preserve the stream position.

    Formats such as "raw," which can potentially attempt
    to read nearly any stream, should return `false`
    in order to avoid being invoked in preference to a closer
    match.

    If `source` is not an instance of one of the
    classes returned by `getInputTypes`, the method
    should simply return `false`.

    Parameters:
    :   `source` - the object (typically an
        `ImageInputStream`) to be decoded.

    Returns:
    :   `true` if it is likely that this stream can
        be decoded.

    Throws:
    :   `IllegalArgumentException` - if `source` is
        `null`.
    :   `IOException` - if an I/O error occurs while reading the
        stream.
  + ### createReaderInstance

    public [ImageReader](../ImageReader.md "class in javax.imageio") createReaderInstance()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageReader`
    implementation associated with this service provider.
    The returned object will initially be in an initial state
    as if its `reset` method had been called.

    The default implementation simply returns
    `createReaderInstance(null)`.

    Returns:
    :   an `ImageReader` instance.

    Throws:
    :   `IOException` - if an error occurs during loading,
        or initialization of the reader class, or during instantiation
        or initialization of the reader object.
  + ### createReaderInstance

    public abstract [ImageReader](../ImageReader.md "class in javax.imageio") createReaderInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") extension)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageReader`
    implementation associated with this service provider.
    The returned object will initially be in an initial state
    as if its `reset` method had been called.

    An `Object` may be supplied to the plug-in at
    construction time. The nature of the object is entirely
    plug-in specific.

    Typically, a plug-in will implement this method using code
    such as `return new MyImageReader(this)`.

    Parameters:
    :   `extension` - a plug-in specific extension object, which may
        be `null`.

    Returns:
    :   an `ImageReader` instance.

    Throws:
    :   `IOException` - if the attempt to instantiate
        the reader fails.
    :   `IllegalArgumentException` - if the
        `ImageReader`'s constructor throws an
        `IllegalArgumentException` to indicate that the
        extension object is unsuitable.
  + ### isOwnReader

    public boolean isOwnReader([ImageReader](../ImageReader.md "class in javax.imageio") reader)

    Returns `true` if the `ImageReader` object
    passed in is an instance of the `ImageReader`
    associated with this service provider.

    The default implementation compares the fully-qualified
    class name of the `reader` argument with the class
    name passed into the constructor. This method may be overridden
    if more sophisticated checking is required.

    Parameters:
    :   `reader` - an `ImageReader` instance.

    Returns:
    :   `true` if `reader` is recognized.

    Throws:
    :   `IllegalArgumentException` - if `reader` is
        `null`.
  + ### getImageWriterSpiNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getImageWriterSpiNames()

    Returns an array of `String`s containing the fully
    qualified names of all the `ImageWriterSpi` classes
    that can understand the internal metadata representation used
    by the `ImageReader` associated with this service
    provider, or `null` if there are no such
    `ImageWriter`s specified. If a
    non-`null` value is returned, it must have non-zero
    length.

    The first item in the array must be the name of the service
    provider for the "preferred" writer, as it will be used to
    instantiate the `ImageWriter` returned by
    `ImageIO.getImageWriter(ImageReader)`.

    This mechanism may be used to obtain
    `ImageWriters` that will understand the internal
    structure of non-pixel meta-data (see
    `IIOTreeInfo`) generated by an
    `ImageReader`. By obtaining this data from the
    `ImageReader` and passing it on to one of the
    `ImageWriters` obtained with this method, a client
    program can read an image, modify it in some way, and write it
    back out while preserving all meta-data, without having to
    understand anything about the internal structure of the
    meta-data, or even about the image format.

    Returns:
    :   an array of `String`s of length at least 1
        containing names of `ImageWriterSpi`, or
        `null`.

    See Also:
    :   - [`ImageIO.getImageWriter(ImageReader)`](../ImageIO.md#getImageWriter(javax.imageio.ImageReader))