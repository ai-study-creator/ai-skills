Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Class IIORegistry

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.spi.ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi")

javax.imageio.spi.IIORegistry

---

public final class IIORegistry
extends [ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi")

A registry for Image I/O service provider instances. Service provider
classes may be discovered at runtime by the mechanisms documented in
[`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util").
The intent is that it be relatively inexpensive to load and inspect
all available Image I/O service provider classes.
These classes may then be used to locate and instantiate
more heavyweight classes that will perform actual work, in this
case instances of `ImageReader`,
`ImageWriter`, `ImageTranscoder`,
`ImageInputStream`, and `ImageOutputStream`.
Service providers included in the Java runtime are automatically
loaded as soon as this class is instantiated.

When the `registerApplicationClasspathSpis` method
is called, additional service provider instances will be discovered
using [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util").

It is also possible to manually add service providers not found
automatically, as well as to remove those that are using the
interfaces of the `ServiceRegistry` class. Thus
the application may customize the contents of the registry as it
sees fit.

For information on how to create and deploy service providers,
refer to the documentation on [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.imageio.spi.[ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi")

  `ServiceRegistry.Filter`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static IIORegistry`

  `getDefaultInstance()`

  Returns the default `IIORegistry` instance used by
  the Image I/O API.

  `void`

  `registerApplicationClasspathSpis()`

  Registers all available service providers found on the
  application class path, using the default
  `ClassLoader`.

  ### Methods inherited from class javax.imageio.spi.[ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi")

  `contains, deregisterAll, deregisterAll, deregisterServiceProvider, deregisterServiceProvider, finalize, getCategories, getServiceProviderByClass, getServiceProviders, getServiceProviders, lookupProviders, lookupProviders, registerServiceProvider, registerServiceProvider, registerServiceProviders, setOrdering, unsetOrdering`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getDefaultInstance

    public static [IIORegistry](IIORegistry.md "class in javax.imageio.spi") getDefaultInstance()

    Returns the default `IIORegistry` instance used by
    the Image I/O API. This instance should be used for all
    registry functions.

    Each `ThreadGroup` will receive its own
    instance; this allows different `Applet`s in the
    same browser (for example) to each have their own registry.

    Returns:
    :   the default registry for the current
        `ThreadGroup`.
  + ### registerApplicationClasspathSpis

    public void registerApplicationClasspathSpis()

    Registers all available service providers found on the
    application class path, using the default
    `ClassLoader`. This method is typically invoked by
    the `ImageIO.scanForPlugins` method.

    See Also:
    :   - [`ImageIO.scanForPlugins()`](../ImageIO.md#scanForPlugins())
        - [`ClassLoader.getResources(java.lang.String)`](../../../../java.base/java/lang/ClassLoader.md#getResources(java.lang.String))