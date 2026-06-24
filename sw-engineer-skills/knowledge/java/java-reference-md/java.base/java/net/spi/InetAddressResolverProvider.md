Module [java.base](../../../module-summary.md)

Package [java.net.spi](package-summary.md)

# Class InetAddressResolverProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.net.spi.InetAddressResolverProvider

---

public abstract class InetAddressResolverProvider
extends [Object](../../lang/Object.md "class in java.lang")

Service-provider class for [InetAddress resolvers](InetAddressResolver.md "interface in java.net.spi").

A resolver provider is a factory for custom implementations of [InetAddress resolvers](InetAddressResolver.md "interface in java.net.spi"). A resolver defines operations for
looking up (resolving) host names and IP addresses.

A resolver provider is a concrete subclass of this class that has a
zero-argument constructor and implements the abstract methods specified below.

A given invocation of the Java virtual machine maintains a single
system-wide resolver instance, which is used by
[InetAddress](../InetAddress.md#host-name-resolution). It is set after the VM is fully initialized and when an
invocation of a method in [`InetAddress`](../InetAddress.md "class in java.net") class triggers the first lookup
operation.

A resolver provider is located and loaded by
[`InetAddress`](../InetAddress.md "class in java.net") to create the system-wide resolver as follows:

1. The [`ServiceLoader`](../../util/ServiceLoader.md "class in java.util") mechanism is used to locate an
   `InetAddressResolverProvider` using the
   system class loader. The order in which providers are located is
   [implementation specific](../../util/ServiceLoader.md#load(java.lang.Class,java.lang.ClassLoader)).
   The first provider found will be used to instantiate the
   [`InetAddressResolver`](InetAddressResolver.md "interface in java.net.spi") by invoking the
   [`get(InetAddressResolverProvider.Configuration)`](#get(java.net.spi.InetAddressResolverProvider.Configuration))
   method. The returned `InetAddressResolver` will be set as the
   system-wide resolver.- If the previous step fails to find any resolver provider the
     [built-in resolver](../InetAddress.md#built-in-resolver) will be set as the system-wide resolver.

If instantiating a custom resolver from a provider discovered in
step 1 throws an error or exception, the system-wide resolver will not be
set and the error or exception will be propagated to the caller of the method
that triggered the lookup operation.
Otherwise, any lookup operation will be performed using the
*system-wide resolver*.

Since:
:   18

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `InetAddressResolverProvider.Configuration`

  A `Configuration` object is supplied to the
  [`get(Configuration)`](#get(java.net.spi.InetAddressResolverProvider.Configuration)) method when
  setting the system-wide resolver.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InetAddressResolverProvider()`

  Creates a new instance of `InetAddressResolverProvider`.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract InetAddressResolver`

  `get(InetAddressResolverProvider.Configuration configuration)`

  Initialize and return an [`InetAddressResolver`](InetAddressResolver.md "interface in java.net.spi") provided by
  this provider.

  `abstract String`

  `name()`

  Returns the name of this provider, or `null` if unnamed.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InetAddressResolverProvider

    protected InetAddressResolverProvider()

    Creates a new instance of `InetAddressResolverProvider`.

    Throws:
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow the
        `RuntimePermission("inetAddressResolverProvider")`.
* ## Method Details

  + ### get

    public abstract [InetAddressResolver](InetAddressResolver.md "interface in java.net.spi") get([InetAddressResolverProvider.Configuration](InetAddressResolverProvider.Configuration.md "interface in java.net.spi") configuration)

    Initialize and return an [`InetAddressResolver`](InetAddressResolver.md "interface in java.net.spi") provided by
    this provider. This method is called by [`InetAddress`](../InetAddress.md "class in java.net") when
    [installing](#system-wide-resolver)
    the system-wide resolver implementation.

    Any error or exception thrown by this method is considered as
    a failure of `InetAddressResolver` instantiation and will be propagated to
    the caller of the method that triggered the lookup operation.

    Parameters:
    :   `configuration` - a [`InetAddressResolverProvider.Configuration`](InetAddressResolverProvider.Configuration.md "interface in java.net.spi") instance containing platform built-in address
        resolution configuration.

    Returns:
    :   the resolver provided by this provider
  + ### name

    public abstract [String](../../lang/String.md "class in java.lang") name()

    Returns the name of this provider, or `null` if unnamed.

    Returns:
    :   the name of this provider, or `null` if unnamed