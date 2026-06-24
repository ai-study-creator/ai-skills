Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class IIOServiceProvider

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.spi.IIOServiceProvider

All Implemented Interfaces:
:   `RegisterableService`

Direct Known Subclasses:
:   `ImageInputStreamSpi`, `ImageOutputStreamSpi`, `ImageReaderWriterSpi`, `ImageTranscoderSpi`

---

public abstract class IIOServiceProvider
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RegisterableService](RegisterableService.md "interface in javax.imageio.spi")

A superinterface for functionality common to all Image I/O service
provider interfaces (SPIs). For more information on service
provider classes, see the class comment for the
`IIORegistry` class.

See Also:
:   * [`IIORegistry`](IIORegistry.md "class in javax.imageio.spi")
    * [`ImageReaderSpi`](ImageReaderSpi.md "class in javax.imageio.spi")
    * [`ImageWriterSpi`](ImageWriterSpi.md "class in javax.imageio.spi")
    * [`ImageTranscoderSpi`](ImageTranscoderSpi.md "class in javax.imageio.spi")
    * [`ImageInputStreamSpi`](ImageInputStreamSpi.md "class in javax.imageio.spi")
    * [`ImageOutputStreamSpi`](ImageOutputStreamSpi.md "class in javax.imageio.spi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `vendorName`

  A `String` to be returned from
  `getVendorName`, initially `null`.

  `protected String`

  `version`

  A `String` to be returned from
  `getVersion`, initially null.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IIOServiceProvider()`

  Constructs a blank `IIOServiceProvider`.

  `IIOServiceProvider(String vendorName,
  String version)`

  Constructs an `IIOServiceProvider` with a given
  vendor name and version identifier.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getDescription(Locale locale)`

  Returns a brief, human-readable description of this service
  provider and its associated implementation.

  `String`

  `getVendorName()`

  Returns the name of the vendor responsible for creating this
  service provider and its associated implementation.

  `String`

  `getVersion()`

  Returns a string describing the version
  number of this service provider and its associated
  implementation.

  `void`

  `onDeregistration(ServiceRegistry registry,
  Class<?> category)`

  A callback that will be whenever the Spi class has been
  deregistered from a `ServiceRegistry`.

  `void`

  `onRegistration(ServiceRegistry registry,
  Class<?> category)`

  A callback that will be called exactly once after the Spi class
  has been instantiated and registered in a
  `ServiceRegistry`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### vendorName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName

    A `String` to be returned from
    `getVendorName`, initially `null`.
    Constructors should set this to a non-`null` value.
  + ### version

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") version

    A `String` to be returned from
    `getVersion`, initially null. Constructors should
    set this to a non-`null` value.
* ## Constructor Details

  + ### IIOServiceProvider

    public IIOServiceProvider([String](../../../../java.base/java/lang/String.md "class in java.lang") vendorName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    Constructs an `IIOServiceProvider` with a given
    vendor name and version identifier.

    Parameters:
    :   `vendorName` - the vendor name.
    :   `version` - a version identifier.

    Throws:
    :   `IllegalArgumentException` - if `vendorName`
        is `null`.
    :   `IllegalArgumentException` - if `version`
        is `null`.
  + ### IIOServiceProvider

    public IIOServiceProvider()

    Constructs a blank `IIOServiceProvider`. It is up
    to the subclass to initialize instance variables and/or
    override method implementations in order to ensure that the
    `getVendorName` and `getVersion` methods
    will return non-`null` values.
* ## Method Details

  + ### onRegistration

    public void onRegistration([ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi") registry,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    A callback that will be called exactly once after the Spi class
    has been instantiated and registered in a
    `ServiceRegistry`. This may be used to verify that
    the environment is suitable for this service, for example that
    native libraries can be loaded. If the service cannot function
    in the environment where it finds itself, it should deregister
    itself from the registry.

    Only the registry should call this method.

    The default implementation does nothing.

    Specified by:
    :   `onRegistration` in interface `RegisterableService`

    Parameters:
    :   `registry` - a `ServiceRegistry` where this
        object has been registered.
    :   `category` - a `Class` object indicating the
        registry category under which this object has been registered.

    See Also:
    :   - [`ServiceRegistry.registerServiceProvider(Object provider)`](ServiceRegistry.md#registerServiceProvider(java.lang.Object))
  + ### onDeregistration

    public void onDeregistration([ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi") registry,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    A callback that will be whenever the Spi class has been
    deregistered from a `ServiceRegistry`.

    Only the registry should call this method.

    The default implementation does nothing.

    Specified by:
    :   `onDeregistration` in interface `RegisterableService`

    Parameters:
    :   `registry` - a `ServiceRegistry` from which this
        object is being (wholly or partially) deregistered.
    :   `category` - a `Class` object indicating the
        registry category from which this object is being deregistered.

    See Also:
    :   - [`ServiceRegistry.deregisterServiceProvider(Object provider)`](ServiceRegistry.md#deregisterServiceProvider(java.lang.Object))
  + ### getVendorName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getVendorName()

    Returns the name of the vendor responsible for creating this
    service provider and its associated implementation. Because
    the vendor name may be used to select a service provider,
    it is not localized.

    The default implementation returns the value of the
    `vendorName` instance variable.

    Returns:
    :   a non-`null String` containing
        the name of the vendor.
  + ### getVersion

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Returns a string describing the version
    number of this service provider and its associated
    implementation. Because the version may be used by transcoders
    to identify the service providers they understand, this method
    is not localized.

    The default implementation returns the value of the
    `version` instance variable.

    Returns:
    :   a non-`null String` containing
        the version of this service provider.
  + ### getDescription

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription([Locale](../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Returns a brief, human-readable description of this service
    provider and its associated implementation. The resulting
    string should be localized for the supplied
    `Locale`, if possible.

    Parameters:
    :   `locale` - a `Locale` for which the return value
        should be localized.

    Returns:
    :   a `String` containing a description of this
        service provider.