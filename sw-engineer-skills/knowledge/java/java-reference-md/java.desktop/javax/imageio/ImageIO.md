Module [java.desktop](../../module-summary.md)

Package [javax.imageio](package-summary.md)

# Class ImageIO

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.ImageIO

---

public final class ImageIO
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A class containing static convenience methods for locating
`ImageReader`s and `ImageWriter`s, and
performing simple encoding and decoding.

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ImageInputStream`

  `createImageInputStream(Object input)`

  Returns an `ImageInputStream` that will take its
  input from the given `Object`.

  `static ImageOutputStream`

  `createImageOutputStream(Object output)`

  Returns an `ImageOutputStream` that will send its
  output to the given `Object`.

  `static File`

  `getCacheDirectory()`

  Returns the current value set by
  `setCacheDirectory`, or `null` if no
  explicit setting has been made.

  `static ImageReader`

  `getImageReader(ImageWriter writer)`

  Returns an `ImageReader` corresponding to the given
  `ImageWriter`, if there is one, or `null`
  if the plug-in for this `ImageWriter` does not
  specify a corresponding `ImageReader`, or if the
  given `ImageWriter` is not registered.

  `static Iterator<ImageReader>`

  `getImageReaders(Object input)`

  Returns an `Iterator` containing all currently
  registered `ImageReader`s that claim to be able to
  decode the supplied `Object`, typically an
  `ImageInputStream`.

  `static Iterator<ImageReader>`

  `getImageReadersByFormatName(String formatName)`

  Returns an `Iterator` containing all currently
  registered `ImageReader`s that claim to be able to
  decode the named format.

  `static Iterator<ImageReader>`

  `getImageReadersByMIMEType(String MIMEType)`

  Returns an `Iterator` containing all currently
  registered `ImageReader`s that claim to be able to
  decode files with the given MIME type.

  `static Iterator<ImageReader>`

  `getImageReadersBySuffix(String fileSuffix)`

  Returns an `Iterator` containing all currently
  registered `ImageReader`s that claim to be able to
  decode files with the given suffix.

  `static Iterator<ImageTranscoder>`

  `getImageTranscoders(ImageReader reader,
  ImageWriter writer)`

  Returns an `Iterator` containing all currently
  registered `ImageTranscoder`s that claim to be
  able to transcode between the metadata of the given
  `ImageReader` and `ImageWriter`.

  `static ImageWriter`

  `getImageWriter(ImageReader reader)`

  Returns an `ImageWriter` corresponding to the given
  `ImageReader`, if there is one, or `null`
  if the plug-in for this `ImageReader` does not
  specify a corresponding `ImageWriter`, or if the
  given `ImageReader` is not registered.

  `static Iterator<ImageWriter>`

  `getImageWriters(ImageTypeSpecifier type,
  String formatName)`

  Returns an `Iterator` containing all currently
  registered `ImageWriter`s that claim to be able to
  encode images of the given layout (specified using an
  `ImageTypeSpecifier`) in the given format.

  `static Iterator<ImageWriter>`

  `getImageWritersByFormatName(String formatName)`

  Returns an `Iterator` containing all currently
  registered `ImageWriter`s that claim to be able to
  encode the named format.

  `static Iterator<ImageWriter>`

  `getImageWritersByMIMEType(String MIMEType)`

  Returns an `Iterator` containing all currently
  registered `ImageWriter`s that claim to be able to
  encode files with the given MIME type.

  `static Iterator<ImageWriter>`

  `getImageWritersBySuffix(String fileSuffix)`

  Returns an `Iterator` containing all currently
  registered `ImageWriter`s that claim to be able to
  encode files with the given suffix.

  `static String[]`

  `getReaderFileSuffixes()`

  Returns an array of `String`s listing all of the
  file suffixes associated with the formats understood
  by the current set of registered readers.

  `static String[]`

  `getReaderFormatNames()`

  Returns an array of `String`s listing all of the
  informal format names understood by the current set of registered
  readers.

  `static String[]`

  `getReaderMIMETypes()`

  Returns an array of `String`s listing all of the
  MIME types understood by the current set of registered
  readers.

  `static boolean`

  `getUseCache()`

  Returns the current value set by `setUseCache`, or
  `true` if no explicit setting has been made.

  `static String[]`

  `getWriterFileSuffixes()`

  Returns an array of `String`s listing all of the
  file suffixes associated with the formats understood
  by the current set of registered writers.

  `static String[]`

  `getWriterFormatNames()`

  Returns an array of `String`s listing all of the
  informal format names understood by the current set of registered
  writers.

  `static String[]`

  `getWriterMIMETypes()`

  Returns an array of `String`s listing all of the
  MIME types understood by the current set of registered
  writers.

  `static BufferedImage`

  `read(File input)`

  Returns a `BufferedImage` as the result of decoding
  a supplied `File` with an `ImageReader`
  chosen automatically from among those currently registered.

  `static BufferedImage`

  `read(InputStream input)`

  Returns a `BufferedImage` as the result of decoding
  a supplied `InputStream` with an `ImageReader`
  chosen automatically from among those currently registered.

  `static BufferedImage`

  `read(URL input)`

  Returns a `BufferedImage` as the result of decoding
  a supplied `URL` with an `ImageReader`
  chosen automatically from among those currently registered.

  `static BufferedImage`

  `read(ImageInputStream stream)`

  Returns a `BufferedImage` as the result of decoding
  a supplied `ImageInputStream` with an
  `ImageReader` chosen automatically from among those
  currently registered.

  `static void`

  `scanForPlugins()`

  Scans for plug-ins on the application class path,
  loads their service provider classes, and registers a service
  provider instance for each one found with the
  `IIORegistry`.

  `static void`

  `setCacheDirectory(File cacheDirectory)`

  Sets the directory where cache files are to be created.

  `static void`

  `setUseCache(boolean useCache)`

  Sets a flag indicating whether a disk-based cache file should
  be used when creating `ImageInputStream`s and
  `ImageOutputStream`s.

  `static boolean`

  `write(RenderedImage im,
  String formatName,
  File output)`

  Writes an image using an arbitrary `ImageWriter`
  that supports the given format to a `File`.

  `static boolean`

  `write(RenderedImage im,
  String formatName,
  OutputStream output)`

  Writes an image using an arbitrary `ImageWriter`
  that supports the given format to an `OutputStream`.

  `static boolean`

  `write(RenderedImage im,
  String formatName,
  ImageOutputStream output)`

  Writes an image using an arbitrary `ImageWriter`
  that supports the given format to an
  `ImageOutputStream`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### scanForPlugins

    public static void scanForPlugins()

    Scans for plug-ins on the application class path,
    loads their service provider classes, and registers a service
    provider instance for each one found with the
    `IIORegistry`.

    This method is needed because the application class path can
    theoretically change, or additional plug-ins may become available.
    Rather than re-scanning the classpath on every invocation of the
    API, the class path is scanned automatically only on the first
    invocation. Clients can call this method to prompt a re-scan.
    Thus this method need only be invoked by sophisticated applications
    which dynamically make new plug-ins available at runtime.

    The `getResources` method of the context
    `ClassLoader` is used locate JAR files containing
    files named
    `META-INF/services/javax.imageio.spi.`*classname*,
    where *classname* is one of `ImageReaderSpi`,
    `ImageWriterSpi`, `ImageTranscoderSpi`,
    `ImageInputStreamSpi`, or
    `ImageOutputStreamSpi`, along the application class
    path.

    The contents of the located files indicate the names of
    actual implementation classes which implement the
    aforementioned service provider interfaces; the default class
    loader is then used to load each of these classes and to
    instantiate an instance of each class, which is then placed
    into the registry for later retrieval.

    The exact set of locations searched depends on the
    implementation of the Java runtime environment.

    See Also:
    :   - [`ClassLoader.getResources(java.lang.String)`](../../../java.base/java/lang/ClassLoader.md#getResources(java.lang.String))
  + ### setUseCache

    public static void setUseCache(boolean useCache)

    Sets a flag indicating whether a disk-based cache file should
    be used when creating `ImageInputStream`s and
    `ImageOutputStream`s.

    When reading from a standard `InputStream`, it
    may be necessary to save previously read information in a cache
    since the underlying stream does not allow data to be re-read.
    Similarly, when writing to a standard
    `OutputStream`, a cache may be used to allow a
    previously written value to be changed before flushing it to
    the final destination.

    The cache may reside in main memory or on disk. Setting
    this flag to `false` disallows the use of disk for
    future streams, which may be advantageous when working with
    small images, as the overhead of creating and destroying files
    is removed.

    On startup, the value is set to `true`.

    Parameters:
    :   `useCache` - a `boolean` indicating whether a
        cache file should be used, in cases where it is optional.

    See Also:
    :   - [`getUseCache()`](#getUseCache())
  + ### getUseCache

    public static boolean getUseCache()

    Returns the current value set by `setUseCache`, or
    `true` if no explicit setting has been made.

    Returns:
    :   true if a disk-based cache may be used for
        `ImageInputStream`s and
        `ImageOutputStream`s.

    See Also:
    :   - [`setUseCache(boolean)`](#setUseCache(boolean))
  + ### setCacheDirectory

    public static void setCacheDirectory([File](../../../java.base/java/io/File.md "class in java.io") cacheDirectory)

    Sets the directory where cache files are to be created. A
    value of `null` indicates that the system-dependent
    default temporary-file directory is to be used. If
    `getUseCache` returns false, this value is ignored.

    Parameters:
    :   `cacheDirectory` - a `File` specifying a directory.

    Throws:
    :   `SecurityException` - if the security manager denies
        access to the directory.
    :   `IllegalArgumentException` - if `cacheDir` is
        non-`null` but is not a directory.

    See Also:
    :   - [`File.createTempFile(String, String, File)`](../../../java.base/java/io/File.md#createTempFile(java.lang.String,java.lang.String,java.io.File))
        - [`getCacheDirectory()`](#getCacheDirectory())
  + ### getCacheDirectory

    public static [File](../../../java.base/java/io/File.md "class in java.io") getCacheDirectory()

    Returns the current value set by
    `setCacheDirectory`, or `null` if no
    explicit setting has been made.

    Returns:
    :   a `File` indicating the directory where
        cache files will be created, or `null` to indicate
        the system-dependent default temporary-file directory.

    See Also:
    :   - [`setCacheDirectory(java.io.File)`](#setCacheDirectory(java.io.File))
  + ### createImageInputStream

    public static [ImageInputStream](stream/ImageInputStream.md "interface in javax.imageio.stream") createImageInputStream([Object](../../../java.base/java/lang/Object.md "class in java.lang") input)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns an `ImageInputStream` that will take its
    input from the given `Object`. The set of
    `ImageInputStreamSpi`s registered with the
    `IIORegistry` class is queried and the first one
    that is able to take input from the supplied object is used to
    create the returned `ImageInputStream`. If no
    suitable `ImageInputStreamSpi` exists,
    `null` is returned.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching.

    Parameters:
    :   `input` - an `Object` to be used as an input
        source, such as a `File`, readable
        `RandomAccessFile`, or `InputStream`.

    Returns:
    :   an `ImageInputStream`, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `input`
        is `null`.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`ImageInputStreamSpi`](spi/ImageInputStreamSpi.md "class in javax.imageio.spi")
  + ### createImageOutputStream

    public static [ImageOutputStream](stream/ImageOutputStream.md "interface in javax.imageio.stream") createImageOutputStream([Object](../../../java.base/java/lang/Object.md "class in java.lang") output)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns an `ImageOutputStream` that will send its
    output to the given `Object`. The set of
    `ImageOutputStreamSpi`s registered with the
    `IIORegistry` class is queried and the first one
    that is able to send output from the supplied object is used to
    create the returned `ImageOutputStream`. If no
    suitable `ImageOutputStreamSpi` exists,
    `null` is returned.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching.

    Parameters:
    :   `output` - an `Object` to be used as an output
        destination, such as a `File`, writable
        `RandomAccessFile`, or `OutputStream`.

    Returns:
    :   an `ImageOutputStream`, or
        `null`.

    Throws:
    :   `IllegalArgumentException` - if `output` is
        `null`.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`ImageOutputStreamSpi`](spi/ImageOutputStreamSpi.md "class in javax.imageio.spi")
  + ### getReaderFormatNames

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getReaderFormatNames()

    Returns an array of `String`s listing all of the
    informal format names understood by the current set of registered
    readers.

    Returns:
    :   an array of `String`s.
  + ### getReaderMIMETypes

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getReaderMIMETypes()

    Returns an array of `String`s listing all of the
    MIME types understood by the current set of registered
    readers.

    Returns:
    :   an array of `String`s.
  + ### getReaderFileSuffixes

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getReaderFileSuffixes()

    Returns an array of `String`s listing all of the
    file suffixes associated with the formats understood
    by the current set of registered readers.

    Returns:
    :   an array of `String`s.

    Since:
    :   1.6
  + ### getImageReaders

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageReader](ImageReader.md "class in javax.imageio")> getImageReaders([Object](../../../java.base/java/lang/Object.md "class in java.lang") input)

    Returns an `Iterator` containing all currently
    registered `ImageReader`s that claim to be able to
    decode the supplied `Object`, typically an
    `ImageInputStream`.

    The stream position is left at its prior position upon
    exit from this method.

    Parameters:
    :   `input` - an `ImageInputStream` or other
        `Object` containing encoded image data.

    Returns:
    :   an `Iterator` containing `ImageReader`s.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        `null`.

    See Also:
    :   - [`ImageReaderSpi.canDecodeInput(java.lang.Object)`](spi/ImageReaderSpi.md#canDecodeInput(java.lang.Object))
  + ### getImageReadersByFormatName

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageReader](ImageReader.md "class in javax.imageio")> getImageReadersByFormatName([String](../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `Iterator` containing all currently
    registered `ImageReader`s that claim to be able to
    decode the named format.

    Parameters:
    :   `formatName` - a `String` containing the informal
        name of a format (*e.g.*, "jpeg" or "tiff".

    Returns:
    :   an `Iterator` containing
        `ImageReader`s.

    Throws:
    :   `IllegalArgumentException` - if `formatName`
        is `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getFormatNames()`](spi/ImageReaderWriterSpi.md#getFormatNames())
  + ### getImageReadersBySuffix

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageReader](ImageReader.md "class in javax.imageio")> getImageReadersBySuffix([String](../../../java.base/java/lang/String.md "class in java.lang") fileSuffix)

    Returns an `Iterator` containing all currently
    registered `ImageReader`s that claim to be able to
    decode files with the given suffix.

    Parameters:
    :   `fileSuffix` - a `String` containing a file
        suffix (*e.g.*, "jpg" or "tiff").

    Returns:
    :   an `Iterator` containing
        `ImageReader`s.

    Throws:
    :   `IllegalArgumentException` - if `fileSuffix`
        is `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getFileSuffixes()`](spi/ImageReaderWriterSpi.md#getFileSuffixes())
  + ### getImageReadersByMIMEType

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageReader](ImageReader.md "class in javax.imageio")> getImageReadersByMIMEType([String](../../../java.base/java/lang/String.md "class in java.lang") MIMEType)

    Returns an `Iterator` containing all currently
    registered `ImageReader`s that claim to be able to
    decode files with the given MIME type.

    Parameters:
    :   `MIMEType` - a `String` containing a file
        suffix (*e.g.*, "image/jpeg" or "image/x-bmp").

    Returns:
    :   an `Iterator` containing
        `ImageReader`s.

    Throws:
    :   `IllegalArgumentException` - if `MIMEType` is
        `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getMIMETypes()`](spi/ImageReaderWriterSpi.md#getMIMETypes())
  + ### getWriterFormatNames

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getWriterFormatNames()

    Returns an array of `String`s listing all of the
    informal format names understood by the current set of registered
    writers.

    Returns:
    :   an array of `String`s.
  + ### getWriterMIMETypes

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getWriterMIMETypes()

    Returns an array of `String`s listing all of the
    MIME types understood by the current set of registered
    writers.

    Returns:
    :   an array of `String`s.
  + ### getWriterFileSuffixes

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getWriterFileSuffixes()

    Returns an array of `String`s listing all of the
    file suffixes associated with the formats understood
    by the current set of registered writers.

    Returns:
    :   an array of `String`s.

    Since:
    :   1.6
  + ### getImageWritersByFormatName

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageWriter](ImageWriter.md "class in javax.imageio")> getImageWritersByFormatName([String](../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `Iterator` containing all currently
    registered `ImageWriter`s that claim to be able to
    encode the named format.

    Parameters:
    :   `formatName` - a `String` containing the informal
        name of a format (*e.g.*, "jpeg" or "tiff".

    Returns:
    :   an `Iterator` containing
        `ImageWriter`s.

    Throws:
    :   `IllegalArgumentException` - if `formatName` is
        `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getFormatNames()`](spi/ImageReaderWriterSpi.md#getFormatNames())
  + ### getImageWritersBySuffix

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageWriter](ImageWriter.md "class in javax.imageio")> getImageWritersBySuffix([String](../../../java.base/java/lang/String.md "class in java.lang") fileSuffix)

    Returns an `Iterator` containing all currently
    registered `ImageWriter`s that claim to be able to
    encode files with the given suffix.

    Parameters:
    :   `fileSuffix` - a `String` containing a file
        suffix (*e.g.*, "jpg" or "tiff").

    Returns:
    :   an `Iterator` containing `ImageWriter`s.

    Throws:
    :   `IllegalArgumentException` - if `fileSuffix` is
        `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getFileSuffixes()`](spi/ImageReaderWriterSpi.md#getFileSuffixes())
  + ### getImageWritersByMIMEType

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageWriter](ImageWriter.md "class in javax.imageio")> getImageWritersByMIMEType([String](../../../java.base/java/lang/String.md "class in java.lang") MIMEType)

    Returns an `Iterator` containing all currently
    registered `ImageWriter`s that claim to be able to
    encode files with the given MIME type.

    Parameters:
    :   `MIMEType` - a `String` containing a file
        suffix (*e.g.*, "image/jpeg" or "image/x-bmp").

    Returns:
    :   an `Iterator` containing `ImageWriter`s.

    Throws:
    :   `IllegalArgumentException` - if `MIMEType` is
        `null`.

    See Also:
    :   - [`ImageReaderWriterSpi.getMIMETypes()`](spi/ImageReaderWriterSpi.md#getMIMETypes())
  + ### getImageWriter

    public static [ImageWriter](ImageWriter.md "class in javax.imageio") getImageWriter([ImageReader](ImageReader.md "class in javax.imageio") reader)

    Returns an `ImageWriter` corresponding to the given
    `ImageReader`, if there is one, or `null`
    if the plug-in for this `ImageReader` does not
    specify a corresponding `ImageWriter`, or if the
    given `ImageReader` is not registered. This
    mechanism may be used to obtain an `ImageWriter`
    that will understand the internal structure of non-pixel
    metadata (as encoded by `IIOMetadata` objects)
    generated by the `ImageReader`. By obtaining this
    data from the `ImageReader` and passing it on to the
    `ImageWriter` obtained with this method, a client
    program can read an image, modify it in some way, and write it
    back out preserving all metadata, without having to understand
    anything about the structure of the metadata, or even about
    the image format. Note that this method returns the
    "preferred" writer, which is the first in the list returned by
    `javax.imageio.spi.ImageReaderSpi.getImageWriterSpiNames()`.

    Parameters:
    :   `reader` - an instance of a registered `ImageReader`.

    Returns:
    :   an `ImageWriter`, or null.

    Throws:
    :   `IllegalArgumentException` - if `reader` is
        `null`.

    See Also:
    :   - [`getImageReader(ImageWriter)`](#getImageReader(javax.imageio.ImageWriter))
        - [`ImageReaderSpi.getImageWriterSpiNames()`](spi/ImageReaderSpi.md#getImageWriterSpiNames())
  + ### getImageReader

    public static [ImageReader](ImageReader.md "class in javax.imageio") getImageReader([ImageWriter](ImageWriter.md "class in javax.imageio") writer)

    Returns an `ImageReader` corresponding to the given
    `ImageWriter`, if there is one, or `null`
    if the plug-in for this `ImageWriter` does not
    specify a corresponding `ImageReader`, or if the
    given `ImageWriter` is not registered. This method
    is provided principally for symmetry with
    `getImageWriter(ImageReader)`. Note that this
    method returns the "preferred" reader, which is the first in
    the list returned by
    javax.imageio.spi.ImageWriterSpi.`getImageReaderSpiNames()`.

    Parameters:
    :   `writer` - an instance of a registered `ImageWriter`.

    Returns:
    :   an `ImageReader`, or null.

    Throws:
    :   `IllegalArgumentException` - if `writer` is
        `null`.

    See Also:
    :   - [`getImageWriter(ImageReader)`](#getImageWriter(javax.imageio.ImageReader))
        - [`ImageWriterSpi.getImageReaderSpiNames()`](spi/ImageWriterSpi.md#getImageReaderSpiNames())
  + ### getImageWriters

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageWriter](ImageWriter.md "class in javax.imageio")> getImageWriters([ImageTypeSpecifier](ImageTypeSpecifier.md "class in javax.imageio") type,
    [String](../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `Iterator` containing all currently
    registered `ImageWriter`s that claim to be able to
    encode images of the given layout (specified using an
    `ImageTypeSpecifier`) in the given format.

    Parameters:
    :   `type` - an `ImageTypeSpecifier` indicating the
        layout of the image to be written.
    :   `formatName` - the informal name of the `format`.

    Returns:
    :   an `Iterator` containing `ImageWriter`s.

    Throws:
    :   `IllegalArgumentException` - if any parameter is
        `null`.

    See Also:
    :   - [`ImageWriterSpi.canEncodeImage(ImageTypeSpecifier)`](spi/ImageWriterSpi.md#canEncodeImage(javax.imageio.ImageTypeSpecifier))
  + ### getImageTranscoders

    public static [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[ImageTranscoder](ImageTranscoder.md "interface in javax.imageio")> getImageTranscoders([ImageReader](ImageReader.md "class in javax.imageio") reader,
    [ImageWriter](ImageWriter.md "class in javax.imageio") writer)

    Returns an `Iterator` containing all currently
    registered `ImageTranscoder`s that claim to be
    able to transcode between the metadata of the given
    `ImageReader` and `ImageWriter`.

    Parameters:
    :   `reader` - an `ImageReader`.
    :   `writer` - an `ImageWriter`.

    Returns:
    :   an `Iterator` containing
        `ImageTranscoder`s.

    Throws:
    :   `IllegalArgumentException` - if `reader` or
        `writer` is `null`.
  + ### read

    public static [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image") read([File](../../../java.base/java/io/File.md "class in java.io") input)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a `BufferedImage` as the result of decoding
    a supplied `File` with an `ImageReader`
    chosen automatically from among those currently registered.
    The `File` is wrapped in an
    `ImageInputStream`. If no registered
    `ImageReader` claims to be able to read the
    resulting stream, `null` is returned.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching in the
    `ImageInputStream` that is created.

    Note that there is no `read` method that takes a
    filename as a `String`; use this method instead after
    creating a `File` from the filename.

    This method does not attempt to locate
    `ImageReader`s that can read directly from a
    `File`; that may be accomplished using
    `IIORegistry` and `ImageReaderSpi`.

    Parameters:
    :   `input` - a `File` to read from.

    Returns:
    :   a `BufferedImage` containing the decoded
        contents of the input, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        `null`.
    :   `IOException` - if an error occurs during reading or when not
        able to create required ImageInputStream.
  + ### read

    public static [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image") read([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") input)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a `BufferedImage` as the result of decoding
    a supplied `InputStream` with an `ImageReader`
    chosen automatically from among those currently registered.
    The `InputStream` is wrapped in an
    `ImageInputStream`. If no registered
    `ImageReader` claims to be able to read the
    resulting stream, `null` is returned.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching in the
    `ImageInputStream` that is created.

    This method does not attempt to locate
    `ImageReader`s that can read directly from an
    `InputStream`; that may be accomplished using
    `IIORegistry` and `ImageReaderSpi`.

    This method *does not* close the provided
    `InputStream` after the read operation has completed;
    it is the responsibility of the caller to close the stream, if desired.

    Parameters:
    :   `input` - an `InputStream` to read from.

    Returns:
    :   a `BufferedImage` containing the decoded
        contents of the input, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        `null`.
    :   `IOException` - if an error occurs during reading or when not
        able to create required ImageInputStream.
  + ### read

    public static [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image") read([URL](../../../java.base/java/net/URL.md "class in java.net") input)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a `BufferedImage` as the result of decoding
    a supplied `URL` with an `ImageReader`
    chosen automatically from among those currently registered. An
    `InputStream` is obtained from the `URL`,
    which is wrapped in an `ImageInputStream`. If no
    registered `ImageReader` claims to be able to read
    the resulting stream, `null` is returned.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching in the
    `ImageInputStream` that is created.

    This method does not attempt to locate
    `ImageReader`s that can read directly from a
    `URL`; that may be accomplished using
    `IIORegistry` and `ImageReaderSpi`.

    Parameters:
    :   `input` - a `URL` to read from.

    Returns:
    :   a `BufferedImage` containing the decoded
        contents of the input, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        `null`.
    :   `IOException` - if an error occurs during reading or when not
        able to create required ImageInputStream.
  + ### read

    public static [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image") read([ImageInputStream](stream/ImageInputStream.md "interface in javax.imageio.stream") stream)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a `BufferedImage` as the result of decoding
    a supplied `ImageInputStream` with an
    `ImageReader` chosen automatically from among those
    currently registered. If no registered
    `ImageReader` claims to be able to read the stream,
    `null` is returned.

    Unlike most other methods in this class, this method *does*
    close the provided `ImageInputStream` after the read
    operation has completed, unless `null` is returned,
    in which case this method *does not* close the stream.

    Parameters:
    :   `stream` - an `ImageInputStream` to read from.

    Returns:
    :   a `BufferedImage` containing the decoded
        contents of the input, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `stream` is
        `null`.
    :   `IOException` - if an error occurs during reading.
  + ### write

    public static boolean write([RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") im,
    [String](../../../java.base/java/lang/String.md "class in java.lang") formatName,
    [ImageOutputStream](stream/ImageOutputStream.md "interface in javax.imageio.stream") output)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Writes an image using an arbitrary `ImageWriter`
    that supports the given format to an
    `ImageOutputStream`. The image is written to the
    `ImageOutputStream` starting at the current stream
    pointer, overwriting existing stream data from that point
    forward, if present.

    This method *does not* close the provided
    `ImageOutputStream` after the write operation has completed;
    it is the responsibility of the caller to close the stream, if desired.

    Parameters:
    :   `im` - a `RenderedImage` to be written.
    :   `formatName` - a `String` containing the informal
        name of the format.
    :   `output` - an `ImageOutputStream` to be written to.

    Returns:
    :   `false` if no appropriate writer is found.

    Throws:
    :   `IllegalArgumentException` - if any parameter is
        `null`.
    :   `IOException` - if an error occurs during writing.
  + ### write

    public static boolean write([RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") im,
    [String](../../../java.base/java/lang/String.md "class in java.lang") formatName,
    [File](../../../java.base/java/io/File.md "class in java.io") output)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Writes an image using an arbitrary `ImageWriter`
    that supports the given format to a `File`. If
    there is already a `File` present, its contents are
    discarded.

    Parameters:
    :   `im` - a `RenderedImage` to be written.
    :   `formatName` - a `String` containing the informal
        name of the format.
    :   `output` - a `File` to be written to.

    Returns:
    :   `false` if no appropriate writer is found.

    Throws:
    :   `IllegalArgumentException` - if any parameter is
        `null`.
    :   `IOException` - if an error occurs during writing or when not
        able to create required ImageOutputStream.
  + ### write

    public static boolean write([RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") im,
    [String](../../../java.base/java/lang/String.md "class in java.lang") formatName,
    [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") output)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Writes an image using an arbitrary `ImageWriter`
    that supports the given format to an `OutputStream`.

    This method *does not* close the provided
    `OutputStream` after the write operation has completed;
    it is the responsibility of the caller to close the stream, if desired.

    The current cache settings from `getUseCache` and
    `getCacheDirectory` will be used to control caching.

    Parameters:
    :   `im` - a `RenderedImage` to be written.
    :   `formatName` - a `String` containing the informal
        name of the format.
    :   `output` - an `OutputStream` to be written to.

    Returns:
    :   `false` if no appropriate writer is found.

    Throws:
    :   `IllegalArgumentException` - if any parameter is
        `null`.
    :   `IOException` - if an error occurs during writing or when not
        able to create required ImageOutputStream.