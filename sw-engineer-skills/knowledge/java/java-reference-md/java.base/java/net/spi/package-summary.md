Module [java.base](../../../module-summary.md)

# Package java.net.spi

---

package java.net.spi

Service-provider classes for the [`java.net`](../package-summary.md) package.

Only developers who are defining new URL stream handler providers or implementing
a custom resolver provider should need to make direct use of this package.

Since:
:   9

* Related Packages

  Module

  Package

  Description

  [java.base](../../../module-summary.md)

  [java.net](../package-summary.md)

  Provides the classes for implementing networking applications.

  [java.net.http](../../../../java.net.http/module-summary.md)

  [java.net.http](../../../../java.net.http/java/net/http/package-summary.md)

  HTTP Client and WebSocket APIs
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [InetAddressResolver](InetAddressResolver.md "interface in java.net.spi")

  This interface defines operations for looking up host names and IP addresses.

  [InetAddressResolver.LookupPolicy](InetAddressResolver.LookupPolicy.md "class in java.net.spi")

  A `LookupPolicy` object describes characteristics that can be applied to a lookup operation.

  [InetAddressResolverProvider](InetAddressResolverProvider.md "class in java.net.spi")

  Service-provider class for [InetAddress resolvers](InetAddressResolver.md "interface in java.net.spi").

  [InetAddressResolverProvider.Configuration](InetAddressResolverProvider.Configuration.md "interface in java.net.spi")

  A `Configuration` object is supplied to the
  [`InetAddressResolverProvider.get(Configuration)`](InetAddressResolverProvider.md#get(java.net.spi.InetAddressResolverProvider.Configuration)) method when
  setting the system-wide resolver.

  [URLStreamHandlerProvider](URLStreamHandlerProvider.md "class in java.net.spi")

  URL stream handler service-provider class.