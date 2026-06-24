Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class ImageTranscoderSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

javax.imageio.spi.ImageTranscoderSpi

All Implemented Interfaces:
:   `RegisterableService`

---

public abstract class ImageTranscoderSpi
extends [IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

The service provider interface (SPI) for `ImageTranscoder`s.
For more information on service provider classes, see the class comment
for the `IIORegistry` class.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageTranscoder`](../ImageTranscoder.md "interface in javax.imageio")

* ## Field Summary

  ### Fields inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `vendorName, version`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ImageTranscoderSpi()`

  Constructs a blank `ImageTranscoderSpi`.

  `ImageTranscoderSpi(String vendorName,
  String version)`

  Constructs an `ImageTranscoderSpi` with a given set
  of values.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract ImageTranscoder`

  `createTranscoderInstance()`

  Returns an instance of the `ImageTranscoder`
  implementation associated with this service provider.

  `abstract String`

  `getReaderServiceProviderName()`

  Returns the fully qualified class name of an
  `ImageReaderSpi` class that generates
  `IIOMetadata` objects that may be used as input to
  this transcoder.

  `abstract String`

  `getWriterServiceProviderName()`

  Returns the fully qualified class name of an
  `ImageWriterSpi` class that generates
  `IIOMetadata` objects that may be used as input to
  this transcoder.

  ### Methods inherited from class javax.imageio.spi.[IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  `getDescription, getVendorName, getVersion, onDeregistration, onRegistration`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ImageTranscoderSpi

    protected ImageTranscoderSpi()

    Constructs a blank `ImageTranscoderSpi`. It is up
    to the subclass to initialize instance variables and/or
    override method implementations in order to provide working
    versions of all methods.
  + ### ImageTranscoderSpi

    public ImageTranscoderSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    Constructs an `ImageTranscoderSpi` with a given set
    of values.

    Parameters:
    :   `vendorName` - the vendor name.
    :   `version` - a version identifier.
* ## Method Details

  + ### getReaderServiceProviderName

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getReaderServiceProviderName()

    Returns the fully qualified class name of an
    `ImageReaderSpi` class that generates
    `IIOMetadata` objects that may be used as input to
    this transcoder.

    Returns:
    :   a `String` containing the fully-qualified
        class name of the `ImageReaderSpi` implementation class.

    See Also:
    :   - [`ImageReaderSpi`](ImageReaderSpi.md "class in javax.imageio.spi")
  + ### getWriterServiceProviderName

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getWriterServiceProviderName()

    Returns the fully qualified class name of an
    `ImageWriterSpi` class that generates
    `IIOMetadata` objects that may be used as input to
    this transcoder.

    Returns:
    :   a `String` containing the fully-qualified
        class name of the `ImageWriterSpi` implementation class.

    See Also:
    :   - [`ImageWriterSpi`](ImageWriterSpi.md "class in javax.imageio.spi")
  + ### createTranscoderInstance

    public abstract [ImageTranscoder](../ImageTranscoder.md "interface in javax.imageio") createTranscoderInstance()

    Returns an instance of the `ImageTranscoder`
    implementation associated with this service provider.

    Returns:
    :   an `ImageTranscoder` instance.