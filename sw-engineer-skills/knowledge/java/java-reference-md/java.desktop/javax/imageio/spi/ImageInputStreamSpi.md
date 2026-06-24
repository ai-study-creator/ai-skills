Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageInputStreamSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

javax.imageio.spi.ImageInputStreamSpi

All Implemented Interfaces:
:   `RegisterableService`

---

public abstract class ImageInputStreamSpi
extends [IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

The service provider interface (SPI) for
`ImageInputStream`s. For more information on service
provider interfaces, see the class comment for the
`IIORegistry` class.

This interface allows arbitrary objects to be "wrapped" by
instances of `ImageInputStream`. For example,
a particular `ImageInputStreamSpi` might allow
a generic `InputStream` to be used as an input source;
another might take input from a `URL`.

By treating the creation of `ImageInputStream`s as a
pluggable service, it becomes possible to handle future input
sources without changing the API. Also, high-performance
implementations of `ImageInputStream` (for example,
native implementations for a particular platform) can be installed
and used transparently by applications.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageInputStream`](../stream/ImageInputStream.md "interface in javax.imageio.stream")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>`

  `inputClass`

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

  `ImageInputStreamSpi()`

  Constructs a blank `ImageInputStreamSpi`.

  `ImageInputStreamSpi(String vendorName,
  String version,
  Class<?> inputClass)`

  Constructs an `ImageInputStreamSpi` with a given set
  of values.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `canUseCacheFile()`

  Returns `true` if the `ImageInputStream`
  implementation associated with this service provider can
  optionally make use of a cache file for improved performance
  and/or memory footrprint.

  `ImageInputStream`

  `createInputStreamInstance(Object input)`

  Returns an instance of the `ImageInputStream`
  implementation associated with this service provider.

  `abstract ImageInputStream`

  `createInputStreamInstance(Object input,
  boolean useCache,
  File cacheDir)`

  Returns an instance of the `ImageInputStream`
  implementation associated with this service provider.

  `Class<?>`

  `getInputClass()`

  Returns a `Class` object representing the class or
  interface type that must be implemented by an input source in
  order to be "wrapped" in an `ImageInputStream` via
  the `createInputStreamInstance` method.

  `boolean`

  `needsCacheFile()`

  Returns `true` if the `ImageInputStream`
  implementation associated with this service provider requires
  the use of a cache `File`.

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### inputClass

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> inputClass

    A `Class` object indicating the legal object type
    for use by the `createInputStreamInstance` method.
* ## Constructor Details

  + ### ImageInputStreamSpi

    protected ImageInputStreamSpi()

    Constructs a blank `ImageInputStreamSpi`. It is up
    to the subclass to initialize instance variables and/or
    override method implementations in order to provide working
    versions of all methods.
  + ### ImageInputStreamSpi

    public ImageInputStreamSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> inputClass)

    Constructs an `ImageInputStreamSpi` with a given set
    of values.

    Parameters:
    :   `vendorName` - the vendor name.
    :   `version` - a version identifier.
    :   `inputClass` - a `Class` object indicating the
        legal object type for use by the
        `createInputStreamInstance` method.

    Throws:
    :   `IllegalArgumentException` - if `vendorName`
        is `null`.
    :   `IllegalArgumentException` - if `version`
        is `null`.
* ## Method Details

  + ### getInputClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getInputClass()

    Returns a `Class` object representing the class or
    interface type that must be implemented by an input source in
    order to be "wrapped" in an `ImageInputStream` via
    the `createInputStreamInstance` method.

    Typical return values might include
    `InputStream.class` or `URL.class`, but
    any class may be used.

    Returns:
    :   a `Class` variable.

    See Also:
    :   - [`createInputStreamInstance(Object, boolean, File)`](#createInputStreamInstance(java.lang.Object,boolean,java.io.File))
  + ### canUseCacheFile

    public boolean canUseCacheFile()

    Returns `true` if the `ImageInputStream`
    implementation associated with this service provider can
    optionally make use of a cache file for improved performance
    and/or memory footrprint. If `false`, the value of
    the `useCache` argument to
    `createInputStreamInstance` will be ignored.

    The default implementation returns `false`.

    Returns:
    :   `true` if a cache file can be used by the
        input streams created by this service provider.
  + ### needsCacheFile

    public boolean needsCacheFile()

    Returns `true` if the `ImageInputStream`
    implementation associated with this service provider requires
    the use of a cache `File`. If `true`,
    the value of the `useCache` argument to
    `createInputStreamInstance` will be ignored.

    The default implementation returns `false`.

    Returns:
    :   `true` if a cache file is needed by the
        input streams created by this service provider.
  + ### createInputStreamInstance

    public abstract [ImageInputStream](../stream/ImageInputStream.md "interface in javax.imageio.stream") createInputStreamInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") input,
    boolean useCache,
    [File](../../../../java.base/java/io/File.md "class in java.io") cacheDir)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageInputStream`
    implementation associated with this service provider. If the
    use of a cache file is optional, the `useCache`
    parameter will be consulted. Where a cache is required, or
    not applicable, the value of `useCache` will be ignored.

    Parameters:
    :   `input` - an object of the class type returned by
        `getInputClass`.
    :   `useCache` - a `boolean` indicating whether a
        cache file should be used, in cases where it is optional.
    :   `cacheDir` - a `File` indicating where the
        cache file should be created, or `null` to use the
        system directory.

    Returns:
    :   an `ImageInputStream` instance.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        not an instance of the correct class or is `null`.
    :   `IllegalArgumentException` - if a cache file is needed
        but `cacheDir` is non-`null` and is not a
        directory.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`getInputClass()`](#getInputClass())
        - [`canUseCacheFile()`](#canUseCacheFile())
        - [`needsCacheFile()`](#needsCacheFile())
  + ### createInputStreamInstance

    public [ImageInputStream](../stream/ImageInputStream.md "interface in javax.imageio.stream") createInputStreamInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") input)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns an instance of the `ImageInputStream`
    implementation associated with this service provider. A cache
    file will be created in the system-dependent default
    temporary-file directory, if needed.

    Parameters:
    :   `input` - an object of the class type returned by
        `getInputClass`.

    Returns:
    :   an `ImageInputStream` instance.

    Throws:
    :   `IllegalArgumentException` - if `input` is
        not an instance of the correct class or is `null`.
    :   `IOException` - if a cache file is needed but cannot be
        created.

    See Also:
    :   - [`getInputClass()`](#getInputClass())