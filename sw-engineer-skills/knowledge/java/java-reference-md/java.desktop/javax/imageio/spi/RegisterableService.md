Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Interface RegisterableService

All Known Implementing Classes:
:   `IIOServiceProvider`, `ImageInputStreamSpi`, `ImageOutputStreamSpi`, `ImageReaderSpi`, `ImageReaderWriterSpi`, `ImageTranscoderSpi`, `ImageWriterSpi`

---

public interface RegisterableService

An optional interface that may be provided by service provider
objects that will be registered with a
`ServiceRegistry`. If this interface is present,
notification of registration and deregistration will be performed.

See Also:
:   * [`ServiceRegistry`](ServiceRegistry.md "class in javax.imageio.spi")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `onDeregistration(ServiceRegistry registry,
  Class<?> category)`

  Called when an object implementing this interface is removed
  from the given `category` of the given
  `registry`.

  `void`

  `onRegistration(ServiceRegistry registry,
  Class<?> category)`

  Called when an object implementing this interface is added to
  the given `category` of the given
  `registry`.

* ## Method Details

  + ### onRegistration

    void onRegistration([ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi") registry,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Called when an object implementing this interface is added to
    the given `category` of the given
    `registry`. The object may already be registered
    under another category or categories.

    Parameters:
    :   `registry` - a `ServiceRegistry` where this
        object has been registered.
    :   `category` - a `Class` object indicating the
        registry category under which this object has been registered.
  + ### onDeregistration

    void onDeregistration([ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi") registry,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Called when an object implementing this interface is removed
    from the given `category` of the given
    `registry`. The object may still be registered
    under another category or categories.

    Parameters:
    :   `registry` - a `ServiceRegistry` from which this
        object is being (wholly or partially) deregistered.
    :   `category` - a `Class` object indicating the
        registry category from which this object is being deregistered.