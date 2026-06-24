Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageOutputStreamSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

javax.imageio.spi.ImageOutputStreamSpi

All Implemented Interfaces:
:   `RegisterableService`

---

public abstract class ImageOutputStreamSpi
extends [IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

The service provider interface (SPI) for
`ImageOutputStream`s. For more information on service
provider interfaces, see the class comment for the
`IIORegistry` class.

This interface allows arbitrary objects to be "wrapped" by
instances of `ImageOutputStream`. For example, a
particular `ImageOutputStreamSpi` might allow a generic
`OutputStream` to be used as a destination; another
might output to a `File` or to a device such as a serial
port.

By treating the creation of `ImageOutputStream`s as
a pluggable service, it becomes possible to handle future output
destinations without changing the API. Also, high-performance
implementations of `ImageOutputStream` (for example,
native implementations for a particular platform) can be installed
and used transparently by applications.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageOutputStream`](../stream/ImageOutputStream.md "interface in javax.imageio.stream")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>`

  `outputClass`

  A `Class` object indicating the legal object type
  for use by the `createInputStreamInstance` method.

  ### Fields inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `vendorName, version`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ImageOutputStreamSpi()`

  Constructs a blank `ImageOutputStreamSpi`.

  `ImageOutputStreamSpi(String vendorName,
  String version,
  Class<?> outputClass)`

  Constructs an `ImageOutputStreamSpi` with a given
  set of values.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `canUseCacheFile()`

  Returns `true` if the `ImageOutputStream`
  implementation associated with this service provider can
  optionally make use of a cache `File` for improved
  performance and/or memory footrprint.

  `ImageOutputStream`

  `createOutputStreamInstance(Object output)`

  Returns an instance of the `ImageOutputStream`
  implementation associated with this service provider.

  `abstract ImageOutputStream`

  `createOutputStreamInstance(Object output,
  boolean useCache,
  File cacheDir)`

  Returns an instance of the `ImageOutputStream`
  implementation associated with this service provider.

  `Class<?>`

  `getOutputClass()`

  Returns a `Class` object representing the class or
  interface type that must be implemented by an output
  destination in order to be "wrapped" in an
  `ImageOutputStream` via the
  `createOutputStreamInstance` method.

  `boolean`

  `needsCacheFile()`

  Returns `true` if the `ImageOutputStream`
  implementation associated with this service provider requires
  the use of a cache `File`.

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### outputClass

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> outputClass

    A `Class` object indicating the legal object type
    for use by the `createInputStreamInstance` method.
* ## Constructor Details

  + ### ImageOutputStreamSpi

    protected ImageOutputStreamSpi()

    Constructs a blank `ImageOutputStreamSpi`. It is up
    to the subclass to initialize instance variables and/or
    override method implementations in order to provide working
    versions of all methods.
  + ### ImageOutputStreamSpi

    public ImageOutputStreamSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> outputClass)

    Constructs an `ImageOutputStreamSpi` with a given
    set of values.

    Parameters:
    :   `vendorName` - the vendor name.
    :   `version` - a version identifier.
    :   `outputClass` - a `Class` object indicating the
        legal object type for use by the
        `createOutputStreamInstance` method.

    Throws:
    :   `IllegalArgumentException` - if `vendorName`
        is `null`.
    :   `IllegalArgumentException` - if `version`
        is `null`.
* ## Method Details

  + ### getOutputClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getOutputClass()

    Returns a `Class` object representing the class or
    interface type that must be implemented by an output
    destination in order to be "wrapped" in an
    `ImageOutputStream` via the
    `createOutputStreamInstance` method.

    Typical return values might include
    `OutputStream.class` or `File.class`, but
    any class may be used.

    Returns:
    :   a `Class` variable.

    See Also:
    :   - [`createOutputStreamInstance(Object, boolean, File)`](#createOutputStreamInstance(java.lang.Object,boolean,java.io.File))
  + ### canUseCacheFile

    public boolean canUseCacheFile()

    Returns `true` if the `ImageOutputStream`
    implementation associated with this service provider can
    optionally make use of a cache `File` for improved
    performance and/or memory footrprint. If `false`,
    the value of the `cacheFile` argument to
    `createOutputStreamInstance` will be ignored.

    The default implementation returns `false`.

    Returns:
    :   `true` if a cache file can be used by the
        output streams created by this service provider.
  + ### needsCacheFile

    public boolean needsCacheFile()

    Returns `true` if the `ImageOutputStream`
    implementation associated with this service provider requires
    the use of a cache `File`.

    The default implementation returns `false`.

    Returns:
    :   `true` if a cache file is needed by the
        output streams created by this service provider.
  + ### createOutputStreamInstance

    public abstract [ImageOutputStream](../stream/ImageOutputStream.md "interface in javax.imageio.stream") createOutputStreamInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") output,
    boolean useCache,
    [File](../../../../java.base/java/io/File.md "class in java.io") cacheDir)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageOutputStream`
    implementation associated with this service provider. If the
    use of a cache file is optional, the `useCache`
    parameter will be consulted. Where a cache is required, or
    not applicable, the value of `useCache` will be ignored.

    Parameters:
    :   `output` - an object of the class type returned by
        `getOutputClass`.
    :   `useCache` - a `boolean` indicating whether a
        cache file should be used, in cases where it is optional.
    :   `cacheDir` - a `File` indicating where the
        cache file should be created, or `null` to use the
        system directory.

    Returns:
    :   an `ImageOutputStream` instance.

    Throws:
    :   `IllegalArgumentException` - if `output` is
        not an instance of the correct class or is `null`.
    :   `IllegalArgumentException` - if a cache file is needed,
        but `cacheDir` is non-`null` and is not a
        directory.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`getOutputClass()`](#getOutputClass())
  + ### createOutputStreamInstance

    public [ImageOutputStream](../stream/ImageOutputStream.md "interface in javax.imageio.stream") createOutputStreamInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") output)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageOutputStream`
    implementation associated with this service provider. A cache
    file will be created in the system-dependent default
    temporary-file directory, if needed.

    Parameters:
    :   `output` - an object of the class type returned by
        `getOutputClass`.

    Returns:
    :   an `ImageOutputStream` instance.

    Throws:
    :   `IllegalArgumentException` - if `output` is
        not an instance of the correct class or is `null`.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`getOutputClass()`](#getOutputClass())